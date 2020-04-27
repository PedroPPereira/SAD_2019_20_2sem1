
//outputs (rows)
#define ROW1    PORTDbits.RD0
#define ROW2    PORTDbits.RD1
#define ROW3    PORTDbits.RD2
#define ROW4    PORTDbits.RD3
//inputs (collumns)
#define COL1    PORTBbits.RB0
#define COL2    PORTBbits.RB1
#define COL3    PORTBbits.RB2

#define ROW PORTD
#define COL PORTB

void keyboard_init(void);
char keypad_scanner(void);
char switch_press_scan(void);
char* matricialCode(void);
