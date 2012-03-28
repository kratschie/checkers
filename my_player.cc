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

int damefeld(int zeile, int spalte) {
  return zeile * 4 + (spalte  / 2) + 1;
}

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
        
        char best_draw;

        Board() { from_string ("bbbbbbbbbbbb--------wwwwwwwwwwww"); }

        Board (Board const & b) { memcpy (&field, &b.field, sizeof(field)); }

        Board (char const* s) { from_string(s); }

        void from_string (char const * const s);

        void to_string (char * s);

        void draw();
        
        void draw2d();
        
        void possible_draw_black();
        
        void possible_draw_white();
        
    private:
        bool can_go_right(int zeile, int spalte);
        
        bool can_go_left(int zeile, int spalte);
        
        bool can_jump_right(int zeile, int spalte);

				bool can_jump_left(int zeile, int spalte);
				
				int compare_value(int *best_draw_value, int *draw_value, char best_draw[64], char draw[64]);
};

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
        
        field2d[i / 4][(i % 4) * 2 - j + 1] = f;
        field2d[i / 4][(i % 4) * 2 + j] = NONE;
        
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

void Board::draw2d() {
  printf("field2d, mehrdimensionales Array\n");
  
  for (int zeile = 0; zeile < 8; zeile++) {
    for (int spalte = 0; spalte < 8; spalte++) {
      printf("%i ", field2d[zeile][spalte]);
    }
    printf("\n");
  }
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

// erweitern: wenn der neue Zug besser ist, muss strcpy(best_draw, draw) gemacht werden, braucht also hier noch diese Parameter
int Board::compare_value(int *best_draw_value, int *draw_value,char best_draw[64], char draw[64]){
	if (*best_draw_value < *draw_value){
						*best_draw_value = *draw_value;	
									     
	}
	
 strcpy(best_draw, draw);
}


void Board::possible_draw_black(){
int zeile;
int spalte;
//int i;
int best_draw_value = 0; // Wert / Güte von bestem Zug
char best_draw[64]; // String für besten Zug, z.B. "13x17-21..."
int draw_value; // Wert / Güte des aktuellen Zugs
char draw[64]; // String für aktuellen Zug, der spekulativ gemacht wird
int speculate_from = 0; // Index, ab dem von draw evtl. auch wieder Züge abgeschnitten werden können

  best_draw[0] = '\0';
  
	for (zeile = 0; zeile < 8; zeile++){	
		for (spalte = 0; spalte < 8; spalte++){	
		
		    char buf[5]; // Puffer für Umformungen von Zahlen in Strings mittels itoa(..)
				if (field2d[zeile][spalte] == BLACK){	
					draw_value = 0;
					
					sprintf(buf, "%d", damefeld(zeile, spalte));
					
					draw[0] = '\0';
					strcat(draw, buf); // Zug beginnt mit aktuellem Feld
					speculate_from = strlen(draw); // Startfeld ist immer fest
				  				
					if (can_go_right(zeile, spalte)){	
						draw_value = 1;		
						
						sprintf(buf, "%d", damefeld(zeile + 1, spalte + 1));
						strcat(draw, "-");
						strcat(draw, buf);
						
						printf("mgl. Zug rechts für (%i, %i) / %i --- %s\n", zeile, spalte, damefeld(zeile, spalte), draw);
						
						compare_value(&best_draw_value, &draw_value, best_draw, draw);	
					}
					
					if (can_go_left(zeile, spalte)){
						draw_value = 1;
					  
					  draw[speculate_from] = '\0';
					  sprintf(buf, "%d", damefeld(zeile + 1, spalte - 1));
					  strcat(draw, "-");
					  strcat(draw, buf);
					  
					  printf("mgl. Zug links für (%i, %i) / %i --- %s\n", zeile, spalte, damefeld(zeile, spalte), draw);
					  
					  compare_value(&best_draw_value, &draw_value, best_draw, draw);
					}	
		    	while (can_jump_right(zeile, spalte) || can_jump_left(zeile, spalte)) {
		    	  printf("TRYING TO JUMP from (%i, %i) / %i ...", zeile, spalte, damefeld(zeile, spalte)); 
		    		if (can_jump_right(zeile, spalte)){
		    			zeile = zeile + 2;
							spalte = spalte + 2;
							draw_value = draw_value + 2;
							
							draw[speculate_from] = '\0';
							sprintf(buf, "%d", damefeld(zeile + 2, spalte + 2));
							strcat(draw, "X");
							strcat(draw, buf);
							compare_value(&best_draw_value, &draw_value, best_draw, draw);
							// draw ab speculate_from löschen (siehe oben), Züge entsprechend anfügen
							speculate_from = strlen(draw);
						}else{
							zeile = zeile + 2;
							spalte = spalte - 2;
							draw_value = draw_value + 2;
							compare_value(&best_draw_value, &draw_value, best_draw, draw);	
							draw[speculate_from] = '\0';
							sprintf(buf, "%d", damefeld(zeile + 2, spalte + 2));
							strcat(draw, "X");
							strcat(draw, buf);     
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
    board.draw();
    board.draw2d();
        
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
        // das muss natürlich nicht mehr "buffer" sondern "best_draw" sein
    output(buffer);
  }
}
