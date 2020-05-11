#include <xc.h>
#include "lcd.h"

void initLCD(void) {
	EN = 0; //turn off LCD
	RS = 0;
	delay_ms(20);
	EN = 1; //turn on LCD
  //---------------------
	rsLCD(L_CFG, 'c'); //config
	delay_ms(5);
	rsLCD(L_CFG, 'c'); //config
  delay_ms(1);
	rsLCD(L_CFG, 'c'); //config
	rsLCD(L_OFF, 'c');
	rsLCD(L_ON,  'c');  //turn on
	rsLCD(L_CLR, 'c'); //clean and return home
	rsLCD(L_CFG, 'c'); //config
  rsLCD(L_L1,  'c');  //select row1
}


void rsLCD(unsigned char val, unsigned char string) {
	EN = 1;
  DATA_BUS = val;
  if(string=='c') RS = 0; //set RS to select the command register
  if(string=='d') RS = 1; //set RS to select the data register
  delay_ms(3);
  EN = 0;
  delay_ms(3);
	EN = 1;
}



void strLCD(const char* str) {
 unsigned char i = 0;
 while(str[i] != 0 ) rsLCD(str[i++], 'd');
}


void printlnL1LCD(const char* str1) {
	rsLCD(L_L1, 'c');
	strLCD(str1);
}
void printlnL2LCD(const char* str1) {
	rsLCD(L_L2, 'c');
	strLCD(str1);
}
void printlnLCD(const char* str1,const char* str2) {
	rsLCD(L_CLR, 'c');
	rsLCD(L_L1, 'c');
	strLCD(str1);
	rsLCD(L_L2, 'c');
	strLCD(str2);
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
