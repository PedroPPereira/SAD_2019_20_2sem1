#include <xc.h>
#include "matricial_key.h"


void initMatricialKey(void) {
  TRISDbits.TRISD0 = 0; //RD3:RD0 as outputs
  TRISDbits.TRISD1 = 0;
  TRISDbits.TRISD2 = 0;
  TRISDbits.TRISD3 = 0;
  //------------------
  TRISBbits.TRISB0 = 1; //RB2:RB0 as inputs
  TRISBbits.TRISB1 = 1;
  TRISBbits.TRISB2 = 1;
  //------------------
  ROW1 = 1;
  ROW2 = 1;
  ROW3 = 1;
  ROW4 = 1;
  //------------------
  COL1 = 1;
  COL2 = 1;
  COL3 = 1;
}


char scanKeypad(void) {
  ROW1 = 0; ROW2 = 1; ROW3 = 1; ROW4 = 1;
  for(int i=0; i<5; i++) {}; //delay
  if      (COL1 == 0 && ROW1 == 0) { while (COL1==0); return '1'; }
  else if (COL2 == 0 && ROW1 == 0) { while (COL2==0); return '2'; }
  else if (COL3 == 0 && ROW1 == 0) { while (COL3==0); return '3'; }
  //-----------------------------------------------------------------
  ROW1 = 1; ROW2 = 0; ROW3 = 1; ROW4 = 1;
  for(int i=0; i<5; i++) {}; //delay
  if      (COL1 == 0 && ROW2 == 0) { while (COL1==0); return '4'; }
  else if (COL2 == 0 && ROW2 == 0) { while (COL2==0); return '5'; }
  else if (COL3 == 0 && ROW2 == 0) { while (COL3==0); return '6'; }
  //-----------------------------------------------------------------
  ROW1 = 1; ROW2 = 1; ROW3 = 0; ROW4 = 1;
  for(int i=0; i<5; i++) {}; //delay
  if      (COL1 == 0 && ROW3 == 0) { while (COL1==0); return '7'; }
  else if (COL2 == 0 && ROW3 == 0) { while (COL2==0); return '8'; }
  else if (COL3 == 0 && ROW3 == 0) { while (COL3==0); return '9'; }
  //-----------------------------------------------------------------
  ROW1 = 1; ROW2 = 1; ROW3 = 1; ROW4 = 0;
  for(int i=0; i<5; i++) {}; //delay
  if      (COL1 == 0 && ROW4 == 0) { while (COL1==0); return '*'; }
  else if (COL2 == 0 && ROW4 == 0) { while (COL2==0); return '0'; }
  else if (COL3 == 0 && ROW4 == 0) { while (COL3==0); return '#'; }

  return 'x';
}

char pressSwitch(void) { //get key from user
  char key = 'x';        //'x' is the default key
  while(key=='x')        //scan until a key is pressed
    key = scanKeypad();
  return key;            //return key pressed
}
