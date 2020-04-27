#include <xc.h>
#include "lcd.h"
#include "matricial_key.h"


void keyboard_init(void){
  PORTD = 0x00;
  PORTB = 0x00;
  TRISD = 0x00;
  TRISB = 0x0F;
  //OPTION_REG = 0x80;
  OPTION_REG &= 0x7F;
}


char keypad_scanner(void) {
  //while(COL1 && COL2 && COL3);
  ROW1 = 0; ROW2 = 1; ROW3 = 1; ROW4 = 1;
  //ROW = 0xFE; //11111110, D0
  for(int i=0; i<5; i++) {};
  if(COL1 == 0 && ROW1 == 0) { while (COL1==0); return '*'; }
  else if(COL2 == 0 && ROW1 == 0) {  while (COL2==0); return '0'; }
  else if (COL3 == 0 && ROW1 == 0) { while (COL3==0); return '#'; }

  ROW1 = 1; ROW2 = 0; ROW3 = 1; ROW4 = 1;
  //ROW = 0xFD; //11111101, D1
  for(int i=0; i<5; i++) {};
  if (COL1 == 0 && ROW2 == 0) { while (COL1==0); return '7'; }
  else if (COL2 == 0 && ROW2 == 0) { while (COL2==0); return '8'; }
  else if (COL3 == 0 && ROW2 == 0) { while (COL3==0); return '9'; }

  ROW1 = 1; ROW2 = 1; ROW3 = 0; ROW4 = 1;
  //ROW = 0xFB; //11111011, D2
  for(int i=0; i<5; i++) {};
  if (COL1 == 0 && ROW3 == 0) { while (COL1==0); return '4'; }
  else if (COL2 == 0 && ROW3 == 0) { while (COL2==0); return '5'; }
  else if (COL3 == 0 && ROW3 == 0) { while (COL3==0); return '6'; }

  ROW1 = 1; ROW2 = 1; ROW3 = 1; ROW4 = 0;
  //ROW = 0xF7; //11110111, D3
  for(int i=0; i<5; i++) {};
  if (COL1 == 0 && ROW4 == 0) { while (COL1==0); return '1'; }
  else if (COL2 == 0 && ROW4 == 0) { while (COL2==0); return '2'; }
  else if (COL3 == 0 && ROW4 == 0) { while (COL3==0); return '3'; }

  return 'x';
}


/*
ROW = 0xFE; //11111110, D0
if(COL1 == 0 && ROW1 == 0)       { delay_ms(100); if(COL1 == 0 && ROW1 == 0){ while (COL1==0); return '1'; }}
else if (COL2 == 0 && ROW1 == 0) { delay_ms(100); if(COL2 == 0 && ROW1 == 0){ while (COL2==0); return '2'; }}
else if (COL3 == 0 && ROW1 == 0) { delay_ms(100); if(COL3 == 0 && ROW1 == 0){ while (COL3==0); return '3'; }}

//ROW1 = 1; ROW2 = 0; ROW3 = 1; ROW4 = 1;
ROW = 0xFD; //11111101, D1
if (COL1 == 0 && ROW2 == 0)      { delay_ms(100); if(COL1 == 0 && ROW2 == 0){ while (COL1==0); return '4'; }}
else if (COL2 == 0 && ROW2 == 0) { delay_ms(100); if(COL2 == 0 && ROW2 == 0){ while (COL2==0); return '5'; }}
else if (COL3 == 0 && ROW2 == 0) { delay_ms(100); if(COL3 == 0 && ROW2 == 0){ while (COL3==0); return '6'; }}

//ROW1 = 1; ROW2 = 1; ROW3 = 0; ROW4 = 1;
ROW = 0xFB; //11111011, D2
if (COL1 == 0 && ROW3 == 0)      { delay_ms(100); if(COL1 == 0 && ROW3 == 0){ while (COL1==0); return '7'; }}
else if (COL2 == 0 && ROW3 == 0) { delay_ms(100); if(COL2 == 0 && ROW3 == 0){ while (COL2==0); return '8'; }}
else if (COL3 == 0 && ROW3 == 0) { delay_ms(100); if(COL3 == 0 && ROW3 == 0){ while (COL3==0); return '9'; }}

//ROW1 = 1; ROW2 = 1; ROW3 = 1; ROW4 = 0;
ROW = 0xF7; //11110111, D3
if (COL1 == 0 && ROW4 == 0)      { delay_ms(100); if(COL1 == 0 && ROW4 == 0){ while (COL1==0); return '*'; }}
else if (COL2 == 0 && ROW4 == 0) { delay_ms(100); if(COL2 == 0 && ROW4 == 0){ while (COL2==0); return '0'; }}
else if (COL3 == 0 && ROW4 == 0) { delay_ms(100); if(COL3 == 0 && ROW4 == 0){ while (COL3==0); return '#'; }}
*/

char switch_press_scan(void)  // Get key from user
{
  char key = 'x';              // 'x' is the default key
  while(key=='x')              // Wait untill a key is pressed
    key = keypad_scanner();   // Scan the keys again and again
  return key;                  //when key pressed then return its value
}


char* matricialCode(void) {
  char *code;
  for(int i=0; i<5; i++){
    code[i] = switch_press_scan();
  }
  return code;
}
