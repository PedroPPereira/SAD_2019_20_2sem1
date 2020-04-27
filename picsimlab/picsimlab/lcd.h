

//ports
#define LENA  PORTEbits.RE1 //enable
#define LDAT  PORTEbits.RE2 //command RS
#define LPORT PORTD

//command lines
#define L_ON	0x0F //turn on
#define L_OFF	0x08 //turn off
#define L_CLR	0x01 //clear display
#define L_L1	0x80 //write on 1 row
#define L_L2	0xC0 //write on 2 row

#define L_CFG   0x38 //LCD configuration

//functions
void lcd_init(void);
void lcd_cmd(unsigned char val);
void lcd_dat(unsigned char val);
void lcd_str(const char* str);
void printlnLCD(const char* str1,const char* str2);
void delay_ms(unsigned int val);
void printlnL1LCD(const char* str1);
void printlnL2LCD(const char* str1);
