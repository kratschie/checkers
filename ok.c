#include <stdlib.h>
#include <stdio.h>

const int FD_IN  = 3;
const int FD_OUT = 4;




enum einzelfeld {
    NONE  = 0,
    BLACK = 1,
    WHITE = 2,
    KING  = 4,
    BLACKKING = BLACK | KING,
    WHITEKING = WHITE | KING,
};

void spielfeld() {  

char c;
int field[8][8];
int zeile;
int spalte;

	for (zeile = 0; zeile < 8; zeile++)
    	for (spalte = 0; spalte <= zeile; spalte++) {
        	if ((spalte & 7) == 0)
        	    printf ("+----+----+----+----+----+----+----+---\n");	
	    	    c = ' ';
	        if (field[zeile][spalte] & BLACK) c = 'b';
	        if (field[zeile][spalte] & WHITE) c = 'w';
	        if (field[zeile][spalte] & KING)  c -= 32;
		
	        if (((spalte & 8) && (spalte & 1)) || (!(spalte & 8) && !(spalte & 1))) {
		    	printf ("|    ");
	    	} else {
	        	printf("|%c%2d%c",c,(spalte/2)+1,c);
	    	}
	
	    	if ((spalte & 7) == 7)
	        	printf ("|\n");
			}
	    printf ("+----+----+----+----+----+----+----+----+\n");
	}
	
	




int main() {

	spielfeld();	
    return 0; 


    //while (1) {
        // program complete, enter when ready
        //
        // TODO write your own player here, have a look at example_player.cc
        // TODO input() and output() to understand the protocol between
        // TODO MCP and your player (receive game state, send move back)
    //}
}



