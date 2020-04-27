#include <xc.h>
#include "lcd.h"

void lcd_wr(unsigned char val) {
  LPORT=val;
}

void lcd_cmd(unsigned char val) {
	LENA=1;
  lcd_wr(val);
  LDAT=0;
  delay_ms(3);
  LENA=0;
  delay_ms(3);
	LENA=1;
}

void lcd_dat(unsigned char val) {
	LENA=1;
  lcd_wr(val);
  LDAT=1;
  delay_ms(3);
  LENA=0;
  delay_ms(3);
	LENA=1;
}

void lcd_init(void) {
	LENA=0;
	LDAT=0;
	delay_ms(20);
	LENA=1;

	lcd_cmd(L_CFG);
	delay_ms(5);
	lcd_cmd(L_CFG);
  delay_ms(1);
	lcd_cmd(L_CFG); //config
	lcd_cmd(L_OFF);
	lcd_cmd(L_ON); //turn on
	lcd_cmd(L_CLR); //clean
	lcd_cmd(L_CFG); //config
  lcd_cmd(L_L1);
}

void lcd_str(const char* str) {
 unsigned char i=0;
 while(str[i] != 0 )
 {
   lcd_dat(str[i]);
   i++;
 }
}

void printlnLCD(const char* str1,const char* str2) {
	lcd_cmd(L_CLR);
	lcd_cmd(L_L1);
	lcd_str(str1);
	lcd_cmd(L_L2);
	lcd_str(str2);
	//TODO: shift words
}

void printlnL1LCD(const char* str1) {
	lcd_cmd(L_L1);
	lcd_str(str1);
}
void printlnL2LCD(const char* str1) {
	lcd_cmd(L_L2);
	lcd_str(str1);
}

void delay_ms(unsigned int val){
  unsigned int  i;
  unsigned char j;
  for (i =0; i< val; i++) {
    for (j =0 ; j < 200; j++) {
      #asm
	     NOP
	      NOP
	       NOP
         NOP
	        NOP
      #endasm
    }
  }
}
