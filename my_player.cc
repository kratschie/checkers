#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include <unistd.h>
#include <assert.h>

const int FD_IN  = 3;
const int FD_OUT = 4;

const int BUFFERSIZE_IN  = 35;
const int BUFFERSIZE_OUT = 39;
const int BUFFERSIZE = BUFFERSIZE_IN < BUFFERSIZE_OUT ? BUFFERSIZE_OUT : BUFFERSIZE_IN;

static void error (const char * fmt, ...)
{
    va_list vl;
    va_start (vl, fmt);
    vfprintf (stderr, fmt, vl);
    va_end (vl);
    exit (-1);
}

enum Field {
    NONE  = 0,
    BLACK = 1,
    WHITE = 2,
    KING  = 4,
    BLACKKING = BLACK | KING,
    WHITEKING = WHITE | KING,
};

class Board
{
    public:
        Field field[64];
        
        Field field2d[8][8];

        Board() { from_string ("bbbbbbbbbbbb--------wwwwwwwwwwww"); }

        Board (Board const & b) { memcpy (&field, &b.field, sizeof(field)); }

        Board (char const* s) { from_string(s); }

        void from_string (char const * const s);

        void to_string (char * s);

        void draw();
        
        void possible_draw_black();
        
        void possible_draw_white();
        
    private:
        bool can_go_right(int zeile, int spalte);
        
        bool can_go_left(int zeile, int spalte);
        
        bool can_jump_right(int zeile, int spalte);

				bool can_jump_left(int zeile, int spalte);
				
				int compare value(int best_draw_value, int draw_value);
};ZH

void Board::from_string (char const * s)
{
    assert (strlen(s) == 32);

    int i = 0;
    while (s[i]) {
        Field f = NONE;
        switch (s[i]) {
            case 'b' : f = BLACK; break;
            case 'w' : f = WHITE; break;
            case 'B' : f = BLACKKING; break;
            case 'W' : f = WHITEKING; break;
            case '-' : f = NONE; break;
            default : error ("unknown char '%c' in input string\n", s[i]);
        }
        int j = (i / 4) & 1;
        field[2*i-j+1] = f;
        field[2*i+j] = NONE;
        
        field2d[i / 4][(i % 4) - j + 1] = f;
        field2d[i / 4][(i % 4) + j] = NONE;
        
        i++;
    }
}

void Board::to_string (char * s)
{
    for (int i=0; i<32; i++) {
        int j = (i / 4) & 1; // 0: Stein in der zweiten Spalte, 1: Stein in der ersten Spalte  ???
        switch (field[2*i-j+1]) { // Zugriff auf entsprechendes Feld im "0 bis 63" Brett
            case BLACK:     s[i] = 'b'; break;
            case WHITE:     s[i] = 'w'; break;
            case BLACKKING: s[i] = 'B'; break;
            case WHITEKING: s[i] = 'W'; break;
            case NONE:      s[i] = '-'; break;
            default:        assert (0);
        }
        s[32] = 0;
    }
}

void Board::draw()
{
    for (int i=0; i<64; i++) {
        if ((i & 7) == 0)
            printf ("+----+----+----+----+----+----+----+----+\n");
        char c = ' ';
        if (field[i] & BLACK) c = 'b';
        if (field[i] & WHITE) c = 'w';
        if (field[i] & KING)  c -= 32;

        if (((i & 8) && (i & 1)) || (!(i & 8) && !(i & 1))) {
            printf ("|    ");
        } else {
            printf("|%c%2d%c",c,(i/2)+1,c);
        }

        if ((i & 7) == 7)
            printf ("|\n");
    }
    printf ("+----+----+----+----+----+----+----+----+\n");
}

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


bool Board::can_go_right(int zeile, int spalte){
  return (((zeile < 7) && (spalte < 7)) && ((field2d[zeile+1][spalte+1] != WHITE)) &&(field2d[zeile+1][spalte+1] == NONE));
}


bool Board::can_go_left (int zeile, int spalte){
	return (((zeile > 0) && (spalte > 0)) && (field2d[zeile+1][spalte-1] != WHITE) && (field2d[zeile+1][spalte-1] == NONE)); 
}


bool Board::can_jump_right(int zeile, int spalte){
	return (((zeile < 6) && (spalte < 6)) && (field2d[zeile+1][spalte+1] == WHITE) && (field2d[zeile
	+2][spalte+2] == NONE)); 
}


bool Board::can_jump_left(int zeile, int spalte){
	return (((zeile > 1) && (spalte > 1)) && (field2d[zeile+1][spalte-1] == WHITE) && (field2d[zeile
	+2][spalte-2] == NONE));
}

int Board::compare value(int best_draw_value, int draw_value){
	if (best_draw_value < draw_value){
						best_draw_value = draw_value;	     
	}

}


void Board::possible_draw_black(){
int zeile;
int spalte;
/*int draw_right;
int draw_left;
int jump_right;
int jump_left;*/
int best_draw_value;
char best_draw [64];
int draw_value;
char draw_value [64];

	for (zeile = 0; zeile < 8; zeile++){	
		for (spalte = 0; spalte < 8; spalte++){	
			if (field2d[zeile][spalte] == BLACK){	
				draw_right = 0;
				draw_left = 0;
				jump_right = 0;
				jump_left = 0;
				best_draw_value = 0;
				draw_value = 0;			  				
				if (can_go_right(zeile, spalte)){	
					draw_value = 1;		
					compare_value(best_draw_value, draw_value)	
				}
				if (can_go_left(zeile, spalte)){
					draw_value = 1;
				  compare_value(best_draw_value, draw_value);
				}		
		    while (can_jump_right(zeile, spalte) || can_jump_left(zeile, spalte)){						if 						if (can_jump_right(zeile, spalte)){
		    		zeile = zeile + 2;
						spalte = spalte + 2;
						draw_value = draw_value + 2;
						compare_value(best_draw_value, draw_value);
					}else{
						if (can_jump_left(zeile, spalte)){
							zeile = zeile + 2;
							spalte = spalte - 2;
							draw_value = draw_value + 2;
							compare_value(best_draw_value, draw_value);	     
						}	
					}	 	
				}
			}
		}	
	}	
}	
 
//wenn weiß und spalte 0 bis feld >=5: gehe feld = feld - 4
// wenn weiß und spalte 1bis feld  >=9 : gehe links: feld = feld -4
// gehe rechts feld = feld -3
// spalte 2: links: feld = feld - 5
// rechts: feld = feld - 4
//spalte 3-6: links: feld = feld - 4
// rechts: feld = feld - 4
//spalte 7: nur links: feld= feld -4 


// wenn mögliches feld besetzt mit eigenem stein, checke
// andere Richtungen(links-rechts)
// wenn anderer stein, checke, ob feld danach frei: springe



void Board::possible_draw_white(){

}




int main(){
char buffer[BUFFERSIZE];
bool black; // bin ich der schwarze Spieler?

	while (1) {
    // receive game state from MCP
    input(buffer);

    // parse game state, füllt Board.field
    Board board(buffer + 2);
        
    if (buffer[0] == 'B') {
    	black = true;
    }else{
    	black = false;
    }
        
    if (black) {
      board.possible_draw_black();
    }else{
      board.possible_draw_white();    
    }

       
        // TODO write your own player here

        // send move back to MCP
    output(buffer);
  }
}
