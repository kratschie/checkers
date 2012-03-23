#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <assert.h>
#include <unistd.h>
#include <signal.h>
#include <sys/time.h>
#include <sys/resource.h>

#define NORETURN __attribute__ ((noreturn))

const int FD_IN = 3;
const int FD_OUT = 4;
const unsigned BUFFER_SIZE = 512;

static struct rlimit cpu_limit[2] = {{ 0, 0 }, { 0, 0 }};
static struct rlimit mem_limit = { RLIM_INFINITY, RLIM_INFINITY };

volatile pid_t children[2];
static unsigned volatile turn = 0;

unsigned volatile timeout;

bool debug = false;

NORETURN
static void error (const char * fmt, ...)
{
    va_list vl;
    va_start (vl, fmt);
    vfprintf (stderr, fmt, vl);
    va_end (vl);
    exit (-1);
}

void move_fd (int i, int j)
{
    if (i==j) return;

    if (dup2 (i,j) == -1) error ("dup2 () %d -> %d failed\n", i, j);

    close (i);
}

void adjust_fd (int c0, int c1, int s0, int d0, int s1, int d1)
{
    // close unused ends
    if (close (c0)) error ("close(%d) failed", c0);
    if (close (c1)) error ("close(%d) failed", c1);

    move_fd (s0, d0);
    move_fd (s1, d1);
}

pid_t spawn_child (int id, char* exec)
{
    assert (id == 0 || id == 1);

    int pipe0[2], pipe1[2];
    pid_t pid;

    // create pipes
    if ((pipe (pipe0)) || (pipe (pipe1))) error ("pipe() failed");

    if ((pid = fork()) == -1) error ("fork() failed");

    if (pid) {

        fprintf (stderr, "spawn new child '%s' (pid %d)\n",exec, pid);

        // close unused ends, move to (id == 0) --> FD (3,4) or (id == 1) --> FD (5,6)
        adjust_fd (pipe0[0], pipe1[1], pipe0[1], 2 * id + FD_IN, pipe1[0], 2 * id + FD_OUT);

        if (kill (pid, SIGSTOP)) error ("kill(SIGSTOP) failed");

        return pid;

    } else {

        // close unused ends, move to FD (3,4)
        adjust_fd (pipe0[1], pipe1[0], pipe0[0], FD_IN, pipe1[1], FD_OUT);

        if (setrlimit (RLIMIT_AS, &mem_limit) || setrlimit (RLIMIT_DATA, &mem_limit)) error ("setrlimit() failed");

        execl (exec, exec, 0);

        error ("exec() failed");
    }
}

void getline (char* buffer, unsigned size)
{
    char* end = buffer + BUFFER_SIZE;
    while (buffer < end) {
        int r = read (2 * (turn & 1) + FD_OUT, buffer, end - buffer);
        if (r < 0) error ("read() failed\n");
        if (!r) {
            *buffer = 0;
            return;
        }
        if (memchr (buffer, '\n', r - 1)) error ("read premature '\\n'.\n");
        if (buffer[r-1] == '\n') {
            buffer[r-1] = 0;
            return;
        } else {
            buffer += r;
            if (buffer == end) error ("read buffer too small (%d bytes)\n", BUFFER_SIZE);
        }
    }
}

static void set_timer (long sec)
{
    struct itimerval iv = { {0,0} , {sec,0} };

    if (!sec) timeout = 0;

    if (setitimer (ITIMER_REAL, &iv, 0)) error ("setitimer() failed\n");
}

static void alarm_handler(int signum, siginfo_t*, void*)
{
    assert(signum == SIGALRM);

    if (timeout++) {
        if (kill (children[turn & 1], SIGKILL)) error ("kill(SIGKILL) failed");
    } else {
        if (kill (children[turn & 1], SIGXCPU)) error ("kill(SIGXCPU) failed");
        set_timer (cpu_limit[turn & 1].rlim_max - cpu_limit[turn & 1].rlim_cur);
    }
}

static void print_usage(void)
{
    fprintf(stderr,
            "Usage: mcp [-m soft-player-mem] [-M hard-player-mem]\n"
            "           [-t soft-player-time] [-T hard-player-time]\n"
            "           [-r soft-player0-time] [-R hard-player0-time]\n"
            "           [-s soft-player1-time] [-S hard-player1-time]\n"
            "           [-i initial state]\n"
            "           [-d]\n"
            "           player1 player2\n"
            " player-time - CPU time per turn in seconds\n"
            " player-mem  - Memory limit per player in megabytes\n"
            " -i state    - initial game state\n"
            " -d          - debugging mode, soft reject invalid moves\n");
    exit(0);
}

static void end_of_line(void)
{
    kill (children[0], SIGKILL);
    kill (children[1], SIGKILL);
    fprintf(stderr, "\nEnd of Line.\n\n");
}

void sanitize (char * b)
{
    for (unsigned int i=0; i<BUFFER_SIZE; i++) {
        if (b[i] != '\n' && b[i] != '-' && b[i] != 'x' && (b[i] < '0' || b[i] > '9')) {
            if (!b[i]) return;
            fprintf (stderr, "[mcp] sanitizing user buffer[%d] = %#x failed.\n", i, b[i]);
            b[i] = 0;
            return;
        }
    }
}

void init(char const *);

char const * serialize();

int deserialize(char *);

int main(int argc, char** argv)
{
    fprintf(stderr, "\nMaster Control Program\n\n");
    atexit(end_of_line);

    char * initial_state = 0;

    int opt;
    while ((opt = getopt(argc, argv, "r:R:s:S:t:T:m:M:di:?")) != -1) {
        switch (opt) {
            case 'r': cpu_limit[0].rlim_cur = strtoul(optarg, NULL, 0); break;
            case 'R': cpu_limit[0].rlim_max = strtoul(optarg, NULL, 0); break;
            case 's': cpu_limit[1].rlim_cur = strtoul(optarg, NULL, 0); break;
            case 'S': cpu_limit[1].rlim_max = strtoul(optarg, NULL, 0); break;
            case 't': cpu_limit[0].rlim_cur = cpu_limit[1].rlim_cur = strtoul(optarg, NULL, 0); break;
            case 'T': cpu_limit[0].rlim_max = cpu_limit[1].rlim_max = strtoul(optarg, NULL, 0); break;
            case 'm': mem_limit.rlim_cur = strtoul(optarg, NULL, 0) << 20; break;
            case 'M': mem_limit.rlim_max = strtoul(optarg, NULL, 0) << 20; break;
            case 'd': debug = true; break;
            case 'i': initial_state = optarg; break;
            case '?': print_usage();
        }
    }

    if (optind + 2 > argc) print_usage();

    if (initial_state && initial_state[0] == 'W')
        turn++;

    struct sigaction pact;
    pact.sa_handler = SIG_IGN;
    if (sigaction(SIGPIPE, &pact, NULL) != 0) error ("sigaction(SIGPIPE) failed");

    struct sigaction aact;
    aact.sa_sigaction = alarm_handler;
    aact.sa_flags = SA_SIGINFO | SA_RESTART;
    if (sigaction(SIGALRM, &aact, NULL) != 0) error ("sigaction(SIGALRM) failed");

    children[0] = spawn_child (0, argv[optind + 0]);
    children[1] = spawn_child (1, argv[optind + 1]);

    char buffer[BUFFER_SIZE];

    init (initial_state);

    while (1) {

        char const * p = serialize();

        fprintf (stderr, "[mcp] turn %d > %s", turn, p);

        int i = strlen (p);

        // send to player
        if (write (2 * (turn & 1) + FD_IN, p, i) != i) error ("write() failed.\n");

        // set soft timeout
        set_timer (cpu_limit[turn & 1].rlim_cur);

        if (kill (children[turn & 1], SIGCONT)) error ("kill(SIGCONT) failed");

        // recv from player
        getline (buffer, BUFFER_SIZE);

        // disable timer
        set_timer (0);

        if (kill (children[turn & 1], SIGSTOP)) error ("kill(SIGSTOP) failed");

        sanitize (buffer);

        fprintf (stderr, "[mcp] turn %d < '%s'\n", turn, buffer);

        if (debug) {
            if (deserialize (buffer)) turn++;
        } else {
            turn++;
            deserialize (buffer);
        }
    }
}
