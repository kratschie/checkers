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

static void error (const char * fmt, ...) {
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

class Board {
    public:
        Field field[64];
        
        Field field2d[8][8];
        
        char best_draw[64];

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
        bool can_go_right_down(int zeile, int spalte);
        
        bool can_go_left_down(int zeile, int spalte);
        
        bool can_jump_right_down(int zeile, int spalte, Field color);

				bool can_jump_left_down(int zeile, int spalte, Field color);
				
				bool can_go_right_up(int zeile, int spalte);
        
        bool can_go_left_up(int zeile, int spalte);
        
        bool can_jump_right_up(int zeile, int spalte, Field color);

				bool can_jump_left_up(int zeile, int spalte, Field color);
				
				void compare_value(int *best_draw_value, int *draw_value, char *best_draw, char *draw);
				
			  void copy_field(Field original[8][8], Field copy[8][8]);		
};

void Board::from_string (char const * s) {
  
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

void Board::to_string (char * s) {
  for (int i=0; i<32; i++) {
    
    int j = (i / 4) & 1; // 0: Stein in der zweiten Spalte, 1: Stein in der ersten Spalte
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

void Board::draw() {
  for (int i=0; i<64; i++) {
    if ((i & 7) == 0) {
  		printf ("+----+----+----+----+----+----+----+----+\n");
  	}  		
    char c = ' ';
    if (field[i] & BLACK) c = 'b';
    if (field[i] & WHITE) c = 'w';
    if (field[i] & KING)  c -= 32;

    if (((i & 8) && (i & 1)) || (!(i & 8) && !(i & 1))) {
      printf ("|    ");
    } else {
      printf("|%c%2d%c",c,(i/2)+1,c);
    }

    if ((i & 7) == 7) {
      printf ("|\n");
    }  
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

void input (char* buffer) {
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

void output (char* buffer) {
  int l = strlen(buffer);
  
  if (buffer[l-1] != '\n') {
    fprintf (stderr, "too long, had to cut.\n");
    buffer[l-1] = '\n';
  }

  if (write (FD_OUT, buffer, l) != l) error ("error writing FD_OUT\n");
}

bool Board::can_go_right_down(int zeile, int spalte) {
  return (((zeile < 7) && (spalte < 7)) &&(field2d[zeile+1][spalte+1] == NONE));
}

bool Board::can_go_left_down(int zeile, int spalte) {
	return (((zeile < 7) && (spalte > 0)) && (field2d[zeile+1][spalte-1] == NONE)); 
}

bool Board::can_jump_right_down(int zeile, int spalte, Field color) {
	return (((zeile < 6) && (spalte < 6)) && (field2d[zeile+1][spalte+1] & color) && (field2d[zeile
	+2][spalte+2] == NONE)); 
}

bool Board::can_jump_left_down(int zeile, int spalte, Field color) {
	return (((zeile < 6) && (spalte > 1)) && (field2d[zeile+1][spalte-1] & color) && (field2d[zeile
	+2][spalte-2] == NONE));
}

bool Board::can_go_right_up(int zeile, int spalte) {
  return (((zeile > 0 ) && (spalte < 7)) &&(field2d[zeile-1][spalte+1] == NONE));
}

bool Board::can_go_left_up(int zeile, int spalte) {
	return (((zeile > 0) && (spalte > 0)) && (field2d[zeile-1][spalte-1] == NONE)); 
}

bool Board::can_jump_right_up(int zeile, int spalte, Field color) {
	return (((zeile > 1) && (spalte < 6)) && (field2d[zeile-1][spalte+1] & color) && (field2d[zeile
	-2][spalte+2] == NONE)); 
}

bool Board::can_jump_left_up(int zeile, int spalte, Field color) {
	return (((zeile > 1) && (spalte > 1)) && (field2d[zeile-1][spalte-1] & color) && (field2d[zeile
	-2][spalte-2] == NONE));
}

void Board::compare_value(int *best_draw_value, int *draw_value, char *best_draw, char *draw) {
	if (*best_draw_value < *draw_value) {
		*best_draw_value = *draw_value;
		strcpy(best_draw, draw);
		strcat(best_draw, "\n");								     
	}
	printf("Best move is now %s", best_draw);
}

void Board::copy_field(Field original[8][8], Field copy[8][8]){
	for (int zeile = 0; zeile < 8; zeile++) {
		for (int spalte = 0; spalte < 8; spalte++) {
			copy[zeile][spalte] = original[zeile][spalte];		
		}	
	}
}


void Board::possible_draw_black() {
	int zeile;
	int hilfszeile;
	int spalte;
	int hilfsspalte;
	int best_draw_value = 0; // Wert von bestem Zug
	int draw_value; // Wert  des aktuellen Zugs
	char draw[64]; // String für aktuellen Zug, der spekulativ gemacht wird
	int speculate_from = 0; // Index, ab dem von draw evtl. auch wieder Züge abgeschnitten werden können

	best_draw[0] = '\0';
  
	for (zeile = 0; zeile < 8; zeile++) {	
		for (spalte = 0; spalte < 8; spalte++) {		
	    char buf[5]; // Puffer für Umformungen von Zahlen in Strings 
			if (field2d[zeile][spalte] & BLACK) {
				if (field2d[zeile][spalte] == BLACK) { 	
					draw_value = 0;		
					sprintf(buf, "%d", damefeld(zeile, spalte));	
					draw[0] = '\0';
					strcat(draw, buf); // Zug beginnt mit aktuellem Feld
					speculate_from = strlen(draw); // Startfeld ist immer fest  				
					
					if (can_go_right_down(zeile, spalte)) {	
						draw_value = 1;	
						draw[speculate_from] = '\0';			
						sprintf(buf, "%d", damefeld(zeile + 1, spalte + 1));
						strcat(draw, "-");
						strcat(draw, buf);	
						printf("mgl. Zug rechts für (%i, %i) / %i --- %s\n", zeile, spalte, damefeld(zeile, spalte), draw);	
						compare_value(&best_draw_value, &draw_value, best_draw, draw);
					}	
					
					if (can_go_left_down(zeile, spalte)) {
						draw_value = 1;	  
						draw[speculate_from] = '\0';
				  	sprintf(buf, "%d", damefeld(zeile + 1, spalte - 1));
					  strcat(draw, "-");
					  strcat(draw, buf);  
					  printf("mgl. Zug links für (%i, %i) / %i --- %s\n", zeile, spalte, damefeld(zeile, spalte), draw);  
					  compare_value(&best_draw_value, &draw_value, best_draw, draw);				  
					}
					
					hilfszeile = zeile;
					hilfsspalte = spalte;	
	    		
	    		while (can_jump_right_down(hilfszeile, hilfsspalte, WHITE) || can_jump_left_down(hilfszeile, hilfsspalte, WHITE)) {
	    		  printf("TRYING TO JUMP from (%i, %i) / %i ...\n", hilfszeile, hilfsspalte, damefeld(hilfszeile, hilfsspalte)); 
	    			if (can_jump_right_down(hilfszeile, hilfsspalte, WHITE)) {    			
	    				hilfszeile = hilfszeile + 2;
							hilfsspalte = hilfsspalte + 2;
							draw_value = draw_value + 2;
							draw[speculate_from] = '\0';
							sprintf(buf, "%d", damefeld(hilfszeile, hilfsspalte));
							strcat(draw, "x");
							strcat(draw, buf);
							compare_value(&best_draw_value, &draw_value, best_draw, draw);
							speculate_from = strlen(draw);
				
						} else {
							hilfszeile = hilfszeile + 2;
							hilfsspalte = hilfsspalte - 2;
							draw_value = draw_value + 2;
							draw[speculate_from] = '\0';
							sprintf(buf, "%d", damefeld(hilfszeile, hilfsspalte));
							strcat(draw, "x");
							strcat(draw, buf);  
							compare_value(&best_draw_value, &draw_value, best_draw, draw);	
							speculate_from = strlen(draw); 
						}	
					}	 	
				
				} else {
					draw_value = 0;		
					sprintf(buf, "%d", damefeld(zeile, spalte));	
					draw[0] = '\0';
				  strcat(draw, buf); // Zug beginnt mit aktuellem Feld
					speculate_from = strlen(draw); // Startfeld ist immer fest  				
		
					if (can_go_right_down(zeile, spalte)) {		
				  	draw_value = 1;	
				  	draw[speculate_from] = '\0';			
						sprintf(buf, "%d", damefeld(zeile + 1, spalte + 1));
					 	strcat(draw, "-");
					 	strcat(draw, buf);	
					 	printf("mgl. Zug rechts für (%i, %i) / %i --- %s\n", zeile, spalte, damefeld(zeile, spalte), draw);		
					 	compare_value(&best_draw_value, &draw_value, best_draw, draw);	
				 	}
				
				 	if (can_go_left_down(zeile, spalte)) {
						draw_value = 1;	  
					 	draw[speculate_from] = '\0';
				 	  sprintf(buf, "%d", damefeld(zeile + 1, spalte - 1));
	 					strcat(draw, "-");
				  	strcat(draw, buf);  
				  	printf("mgl. Zug links für (%i, %i) / %i --- %s\n", zeile, spalte, damefeld(zeile, spalte), draw);  
				   	compare_value(&best_draw_value, &draw_value, best_draw, draw);
					}

				 	if (can_go_right_up(zeile, spalte)) {	
						draw_value = 1;			
						draw[speculate_from] = '\0';	
					 	sprintf(buf, "%d", damefeld(zeile - 1, spalte + 1));
					 	strcat(draw, "-");
					 	strcat(draw, buf);	
					 	printf("mgl. Zug rechts für (%i, %i) / %i --- %s\n", zeile, spalte, damefeld(zeile, spalte), draw);	
					 	compare_value(&best_draw_value, &draw_value, best_draw, draw);
				 	}
				
				 	if (can_go_left_up(zeile, spalte)) {
				 		draw_value = 1;
						draw[speculate_from] = '\0';
					  sprintf(buf, "%d", damefeld(zeile - 1, spalte - 1));
					  strcat(draw, "-");
					  strcat(draw, buf);
					  printf("mgl. Zug links für (%i, %i) / %i --- %s\n", zeile, spalte, damefeld(zeile, spalte), draw);	
						compare_value(&best_draw_value, &draw_value, best_draw, draw);
					}	
				
					hilfszeile = zeile;
					hilfsspalte = spalte;
					
					Field original[8][8];
					copy_field(field2d, original);
	  	  	
    			while (can_jump_right_down(hilfszeile, hilfsspalte, WHITE) || can_jump_left_down(hilfszeile, hilfsspalte, WHITE) || can_jump_right_up(hilfszeile, hilfsspalte, WHITE)||can_jump_left_up(hilfszeile, hilfsspalte, WHITE)) {
    		  	printf("TRYING TO JUMP from (%i, %i) / %i ...\n", hilfszeile, hilfsspalte, damefeld(hilfszeile, hilfsspalte)); 
    		
    		   
    				if (can_jump_right_down(hilfszeile, hilfsspalte, WHITE)) {
    				  field2d[hilfszeile + 1][hilfsspalte + 1] = NONE;
    				  field2d[hilfszeile][hilfsspalte] = NONE;
    					hilfszeile = hilfszeile + 2;
							hilfsspalte = hilfsspalte + 2;
							draw_value = draw_value + 2;
							draw[speculate_from] = '\0';
							sprintf(buf, "%d", damefeld(hilfszeile, hilfsspalte));
							strcat(draw, "x");
							strcat(draw, buf);
							compare_value(&best_draw_value, &draw_value, best_draw, draw);
							speculate_from = strlen(draw);
						}
					
						if (can_jump_left_down(hilfszeile, hilfsspalte, WHITE)) {
						  field2d[hilfszeile + 1][hilfsspalte - 1] = NONE;
							field2d[hilfszeile][hilfsspalte] = NONE;
							hilfszeile = hilfszeile + 2;
							hilfsspalte = hilfsspalte - 2;
	  					draw_value = draw_value + 2;
							draw[speculate_from] = '\0';
							sprintf(buf, "%d", damefeld(hilfszeile, hilfsspalte));
							strcat(draw, "x");
							strcat(draw, buf);  
							compare_value(&best_draw_value, &draw_value, best_draw, draw);	
							speculate_from = strlen(draw); 
						}	
					
						if (can_jump_right_up(hilfszeile, hilfsspalte, WHITE)) {
						  field2d[hilfszeile - 1][hilfsspalte + 1] = NONE;
    					field2d[hilfszeile][hilfsspalte] = NONE;
    					hilfszeile = hilfszeile - 2;
							hilfsspalte = hilfsspalte + 2;
							draw_value = draw_value + 2;			
							draw[speculate_from] = '\0';
							sprintf(buf, "%d", damefeld(hilfszeile, hilfsspalte));
							strcat(draw, "x");
							strcat(draw, buf);
							compare_value(&best_draw_value, &draw_value, best_draw, draw);
							speculate_from = strlen(draw);			
						}
				
						if (can_jump_left_up(hilfszeile, hilfsspalte, WHITE)) {
						  field2d[hilfszeile - 1][hilfsspalte - 1] = NONE;
						  field2d[hilfszeile][hilfsspalte] = NONE;
							hilfszeile = hilfszeile - 2;
							hilfsspalte = hilfsspalte - 2;							
							draw_value = draw_value + 2;
							draw[speculate_from] = '\0';
							sprintf(buf, "%d", damefeld(hilfszeile, hilfsspalte));
							strcat(draw, "x");
							strcat(draw, buf);  
  						compare_value(&best_draw_value, &draw_value, best_draw, draw);	
							speculate_from = strlen(draw);   
						}
					}
					copy_field(original, field2d);
				}
			}
		}	
	}
}

void Board::possible_draw_white() {
	int zeile;
	int hilfszeile;
	int spalte;
	int hilfsspalte;
	int best_draw_value = 0; // Wert von bestem Zug
	int draw_value; // Wert  des aktuellen Zugs
	char draw[64]; // String für aktuellen Zug, der spekulativ gemacht wird
	int speculate_from = 0; // Index, ab dem von draw evtl. auch wieder Züge abgeschnitten werden können

	best_draw[0] = '\0';
  
	for (zeile = 0; zeile < 8; zeile++) {	
		for (spalte = 0; spalte < 8; spalte++) {	
	    char buf[5]; // Puffer für Umformungen von Zahlen in Strings 
			if (field2d[zeile][spalte] & WHITE ) {
				if (field2d[zeile][spalte] == WHITE) {	
					draw_value = 0;		
					sprintf(buf, "%d", damefeld(zeile, spalte));		
					draw[0] = '\0';
					strcat(draw, buf); // Zug beginnt mit aktuellem Feld
					speculate_from = strlen(draw); // immer festes Startfeld  				
					
					if (can_go_right_up(zeile, spalte)) {	
						draw_value = 1;	
						draw[speculate_from] = '\0';			
						sprintf(buf, "%d", damefeld(zeile - 1, spalte + 1));
						strcat(draw, "-");
						strcat(draw, buf);	
						printf("mgl. Zug rechts für (%i, %i) / %i --- %s\n", zeile, spalte, damefeld(zeile, spalte), draw);
						compare_value(&best_draw_value, &draw_value, best_draw, draw);
					}
					
					if (can_go_left_up(zeile, spalte)) {
						draw_value = 1;
						draw[speculate_from] = '\0';
					  sprintf(buf, "%d", damefeld(zeile - 1, spalte - 1));
					  strcat(draw, "-");
					  strcat(draw, buf);
					  printf("mgl. Zug links für (%i, %i) / %i --- %s\n", zeile, spalte, damefeld(zeile, spalte), draw);
						compare_value(&best_draw_value, &draw_value, best_draw, draw);
					}
				
					hilfszeile = zeile;
					hilfsspalte = spalte;	
		    	
		    	while (can_jump_right_up(hilfszeile, hilfsspalte, BLACK) || can_jump_left_up(hilfszeile, hilfsspalte, BLACK)) {
	    	  printf("TRYING TO JUMP from (%i, %i) / %i ...\n", hilfszeile, hilfsspalte, damefeld(hilfszeile, hilfsspalte)); 
	    		
	    			if (can_jump_right_up(hilfszeile, hilfsspalte, BLACK)) {
	    				hilfszeile = hilfszeile - 2;
							hilfsspalte = hilfsspalte + 2;
							draw_value = draw_value + 2;			
							draw[speculate_from] = '\0';
							sprintf(buf, "%d", damefeld(hilfszeile, hilfsspalte));
							strcat(draw, "x");
							strcat(draw, buf);
							compare_value(&best_draw_value, &draw_value, best_draw, draw);
							speculate_from = strlen(draw);						
						} else {
							hilfszeile = hilfszeile - 2;
							hilfsspalte = hilfsspalte - 2;
							draw_value = draw_value + 2;
							draw[speculate_from] = '\0';
							sprintf(buf, "%d", damefeld(hilfszeile, hilfsspalte));
							strcat(draw, "x");
							strcat(draw, buf);  
							compare_value(&best_draw_value, &draw_value, best_draw, draw);	
							speculate_from = strlen(draw);   
						}		
					}					 	
				}	else	{	
					draw_value = 0;		
					sprintf(buf, "%d", damefeld(zeile, spalte));	
					draw[0] = '\0';
					strcat(draw, buf); // Zug beginnt mit aktuellem Feld
					speculate_from = strlen(draw); // Startfeld ist immer fest  				
				
					if (can_go_right_down(zeile, spalte)) {	
						draw_value = 1;		
						draw[speculate_from] = '\0';		
						sprintf(buf, "%d", damefeld(zeile + 1, spalte + 1));
						strcat(draw, "-");
						strcat(draw, buf);	
						printf("mgl. Zug rechts für (%i, %i) / %i --- %s\n", zeile, spalte, damefeld(zeile, spalte), draw);	
						compare_value(&best_draw_value, &draw_value, best_draw, draw);	
					}
					
					if (can_go_left_down(zeile, spalte)) {
						draw_value = 1;	  
						draw[speculate_from] = '\0';
				  	sprintf(buf, "%d", damefeld(zeile + 1, spalte - 1));
				  	strcat(draw, "-");
				  	strcat(draw, buf);  
				  	printf("mgl. Zug links für (%i, %i) / %i --- %s\n", zeile, spalte, damefeld(zeile, spalte), draw);  
				  	compare_value(&best_draw_value, &draw_value, best_draw, draw);
					}		
					
					if (can_go_right_up(zeile, spalte)) {	
						draw_value = 1;		
						draw[speculate_from] = '\0';		
						sprintf(buf, "%d", damefeld(zeile - 1, spalte + 1));
						strcat(draw, "-");
						strcat(draw, buf);	
						printf("mgl. Zug rechts für (%i, %i) / %i --- %s\n", zeile, spalte, damefeld(zeile, spalte), draw);	
						compare_value(&best_draw_value, &draw_value, best_draw, draw);
					}	
					
					if (can_go_left_up(zeile, spalte)) {
						draw_value = 1;
						draw[speculate_from] = '\0';
				  	sprintf(buf, "%d", damefeld(zeile - 1, spalte - 1));
				  	strcat(draw, "-");
				  	strcat(draw, buf);
				  	printf("mgl. Zug links für (%i, %i) / %i --- %s\n", zeile, spalte, damefeld(zeile, spalte), draw);
						compare_value(&best_draw_value, &draw_value, best_draw, draw);
					}	
					
					hilfszeile = zeile;
					hilfsspalte = spalte;
					
					Field original[8][8];
					copy_field(field2d, original);
	    		
	    		while (can_jump_right_down(hilfszeile, hilfsspalte, BLACK) || can_jump_left_down(hilfszeile, hilfsspalte, BLACK) || can_jump_right_up(hilfszeile, hilfsspalte, BLACK) || can_jump_left_up(hilfszeile, hilfsspalte, BLACK)) {
	    	  	printf("TRYING TO JUMP from (%i, %i) / %i ...\n", hilfszeile, hilfsspalte, damefeld(hilfszeile, hilfsspalte));
	    	  	
	    			if (can_jump_right_down(hilfszeile, hilfsspalte, BLACK)) {
	    				field2d[hilfszeile + 1][hilfsspalte + 1] = NONE;
	    				hilfszeile = hilfszeile + 2;
							hilfsspalte = hilfsspalte + 2;
							draw_value = draw_value + 2;
							draw[speculate_from] = '\0';
							sprintf(buf, "%d", damefeld(hilfszeile, hilfsspalte ));
							strcat(draw, "x");
							strcat(draw, buf);
							compare_value(&best_draw_value, &draw_value, best_draw, draw);
							speculate_from = strlen(draw);
						}
						
						if (can_jump_left_down(hilfszeile, hilfsspalte, BLACK)) {
							field2d[hilfszeile + 1][hilfsspalte - 1] = NONE;
							field2d[hilfszeile][hilfsspalte] = NONE;
							hilfszeile = hilfszeile + 2;
							hilfsspalte = hilfsspalte - 2;
							draw_value = draw_value + 2;
							draw[speculate_from] = '\0';
							sprintf(buf, "%d", damefeld(hilfszeile, hilfsspalte));
							strcat(draw, "x");
							strcat(draw, buf);  
							compare_value(&best_draw_value, &draw_value, best_draw, draw);	
							speculate_from = strlen(draw); 
						}
						
						if (can_jump_right_up(hilfszeile, hilfsspalte, BLACK)) {
	    				field2d[hilfszeile - 1][hilfsspalte + 1] = NONE;
	    				field2d[hilfszeile][hilfsspalte] = NONE;
	    				hilfszeile = hilfszeile - 2;
							hilfsspalte = hilfsspalte + 2;
							draw_value = draw_value + 2;			
							draw[speculate_from] = '\0';
							sprintf(buf, "%d", damefeld(hilfszeile, hilfsspalte));
							strcat(draw, "x");
							strcat(draw, buf);
							compare_value(&best_draw_value, &draw_value, best_draw, draw);
							speculate_from = strlen(draw);			
						}
						
						if (can_jump_left_up(hilfszeile, hilfsspalte, BLACK)) {
							field2d[hilfszeile - 1][hilfsspalte - 1] = NONE;
							field2d[hilfszeile][hilfsspalte] = NONE;
							hilfszeile = hilfszeile - 2;
							hilfsspalte = hilfsspalte - 2;
							draw_value = draw_value + 2;
							draw[speculate_from] = '\0';
							sprintf(buf, "%d", damefeld(hilfszeile, hilfsspalte));
							strcat(draw, "x");
							strcat(draw, buf);  
							compare_value(&best_draw_value, &draw_value, best_draw, draw);	
							speculate_from = strlen(draw);   
						}
					}
	
					copy_field(original, field2d);
				}	
			}	
		}
	}
}


int main(){
	char buffer[BUFFERSIZE];
	bool black;

	while (1) {
   
    input(buffer);
  
    Board board(buffer + 2);
    board.draw();
    board.draw2d();
        
    if (buffer[0] == 'B') {
    	black = true;
    } else {
    	black = false;
    }
        
    if (black) {
      board.possible_draw_black();
      printf("Tried all possible moves for black.\n");
    } else {
      board.possible_draw_white();
      printf("Tried all possible moves for white.\n");
    }

    printf("Sending move %s.\n", board.best_draw);
    output(board.best_draw);
  }
}

