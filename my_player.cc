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
        Field field[8][8];

        Board() { from_string ("bbbbbbbbbbbb--------wwwwwwwwwwww"); }

        Board (Board const & b) { memcpy (&field, &b.field, sizeof(field)); }

        Board (char const* s) { from_string(s); }

        void from_string (char const * const s);

        void to_string (char * s);

        void draw();
        
        void moeglicherzug_black();
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

// void Board::moeglicherzug_black()...

void Board::moeglicherzug_black(){
 // zweidimensionales feld, um Problem Rand zu lösen
int z;
int s;
int zug_rechts = 0:
int zug_links = 0;
int sprung_rechts = 0;
int sprung_links = 0;
char zug[64];
int bester_zug_wert;
char bester_zug [64];

	for (z = 0; z < 8; z++){
		for (s = 0; s < 8; s++){		
			if (field[z][s] == BLACK){   				
				if ((s < 7) && (z < 7) && (field[z+1][s+1] != WHITE)){ 
					if (field[z+1][s+1] == NONE){
						zug_rechts = 1; 
						if (bester_zug_wert < zug_rechts){
							bester_zug_wert = zug_rechts;	     
						}
					}else{		
				    while ((s < 7) && (z < 7) && (field[z+1][s+1] == WHITE) && 
						   (field[z+2][s+2] == NONE))||((s > 1) && (z > 1 ) && 
						   (field[z+1][s-1] == WHITE) && (field[z+2][s-2] == NONE)){
						if ((s < 7) && (z < 7) && (field[z+1][s+1] == WHITE) && 
							(field[z+2][s+2] == NONE)){
							z = z + 2;
							s = s + 2;
							sprung_rechts = sprung_rechts + 1;
							if (bester_zug_wert < sprung_rechts){
								bester_zug_wert = sprung_rechts;	     
						    }
						}else{
							((s > 1) && (z > 1 ) && (field[z+1][s-1] == WHITE) && 
							(field[z+2][s-2] == NONE)){
							z = z + 2;
							s = s - 2;
							sprung_rechts = sprung_links + 1;
							if (bester_zug_wert < sprung_links){
								bester_zug_wert = sprung_links;	     
						    }
							
						}
					   
					}
				}
			}
		}
	}
}
					
					
					
	/*				
						
				//nach rechts für spalte 1-6 
				if ((spalte != 0) && (spalte != 7)){
				if (field[i+9] != WHITE){	
					if (field[i+9] & NONE){
						field[i+9] = BLACK;
						spalte = spalte + 1;
					}else{
		  			while (spalte != 7){
						if ((field[i+9] & WHITE) & (field[i+18] & NONE)){
							field[i+18] = BLACK;
							i = i + 18;
							spalte = spalte + 2; 
						}
					}
					}
				}	
			}	
			// nach links für Spalte 2-7
			if ((spalte != 0) & (spalte != 7) ){
				if (field[i+7] != WHITE){
					if (field[i+7] & NONE){
						field [i+7] = BLACK;
						spalte = spalte - 1;
					}else{
					while (spalte != 0){
						if ((field[i+7] & WHITE) & (field[i+14] & NONE)){
						field[i+14] = BLACK;
						i = i + 14;
						spalte = spalte + 2;
						}
					}
					}	
				}
		    }
		    
		    if (spalte == 7){
		    	if (field[i+7] != WHITE){
					if (field[i+7] & NONE){
						field [i+7] = BLACK;
						spalte = spalte - 1;
						}else{
					while (spalte == 7){
						if ((field[i+7] & WHITE) & (field[i+14] & NONE)){
						field[i+14] = BLACK;
						i = i + 14;
						spalte = spalte - 2;
						}
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

*/

void moeglicherzug_white(){

}




int main(){
    char buffer[BUFFERSIZE];
    bool black; // bin ich der schwarze Spieler?

    while (1) {
        // receive game state from MCP
        input(buffer);

        // parse game state
        Board board(buffer + 2);
        
        if (buffer[0] == 'B') {
        	black = true;
        }else{
        	black = false;
        }
        
        if (black) {
          moeglicherzug_black();
        } else {
          moeglicherzug_white();    
        }

        

        // TODO write your own player here

        // send move back to MCP
        output(buffer);
    }
}
