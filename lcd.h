
//ports
#define DATA_BUS PORTD   //data bus
#define RS PORTEbits.RE2 //RS (register select)
#define EN PORTEbits.RE1 //EN (enable)

//command lines
#define L_CFG 0x38 //LCD configuration
#define L_ON	0x0F //turn on
#define L_OFF	0x08 //turn off
#define L_CLR	0x01 //clear display and return home
#define L_L1	0x80 //write on row1
#define L_L2	0xC0 //write on row2

//functions
void initLCD(void);
void rsLCD(unsigned char val, unsigned char string);
void strLCD(const char* str);
void printlnLCD(const char* str1,const char* str2);
void delay_ms(unsigned int val);
void printlnL1LCD(const char* str1);
void printlnL2LCD(const char* str1);
