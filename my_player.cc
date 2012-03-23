#include <stdlib.h>

const int FD_IN  = 3;
const int FD_OUT = 4;

const int BUFFERSIZE = 39;

// read game state from MCP
//
// example: "B:bbbbbbbbbbbb--------wwwwwwwwwwww\n"
//
// encoding:
// 1st char B or W  --> black or white player to move
// 2nd char ':'     --> separator
// 32  char [-bwBW] --> 32 board positions
//                      - : empty
//                      b : black piece
//                      w : white piece
//                      B : black king
//                      W : white king
// terminating newline \n

void input (char* buffer)
{
    char* end = buffer + BUFFERSIZE_IN;
    while (buffer < end) {
        int bytes_read = read (FD_IN, buffer, end - buffer);
        if (bytes_read < 0) error ("error reading FD_IN\n");
        buffer += bytes_read;
    }
    end--;
    if (*end != '\n') error ("line does not end with newline\n");
    *end = 0;
}

// write move to MCP
//
// example: "10-15\n" or "26x17x10x1\n" :-)
//
// encoding:
// moves from field A to field B --> "A-B\n"
// jumps from field A over B to C --> "AxC\n"
// multijumps --> "AxCxE...\n"

void output (char* buffer)
{
    int l = strlen(buffer);
    if (buffer[l-1] != '\n') {
        fprintf (stderr, "too long, had to cut.\n");
        buffer[l-1] = '\n';
    }
    if (write (FD_OUT, buffer, l) != l) error ("error writing FD_OUT\n");
}

int main()
{
    char buffer[BUFFERSIZE];

    while (1) {
        // receive game state from MCP
        input(buffer);

        // program complete, enter when ready
        //
        // TODO write your own player here, have a look at example_player.cc
        // TODO input() and output() to understand the protocol between
        // TODO MCP and your player (receive game state, send move back)

        // send move back to MCP
        output(buffer);
    }
}
