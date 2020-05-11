
//outputs (rows)
#define ROW1    PORTDbits.RD3
#define ROW2    PORTDbits.RD2
#define ROW3    PORTDbits.RD1
#define ROW4    PORTDbits.RD0
//inputs (collumns)
#define COL1    PORTBbits.RB0
#define COL2    PORTBbits.RB1
#define COL3    PORTBbits.RB2

#define ROW PORTD
#define COL PORTB

void initMatricialKey(void);
char scanKeypad(void);
char pressSwitch(void);
