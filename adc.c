#include <xc.h>
#include "adc.h"


void initADC(void) {
  ADCON0=0x41; //01000001
    //ADCS1:ADCS0 = 01
    //ADON        = 1
  ADCON1=0x02; //00000010
    //PCFG3:PCFG0 = 0010
}


unsigned int readADC(unsigned char ch) {
  switch(ch) { //select channel to convett
    case 0: //potenciometer 1
      ADCON0=0x01; //00000001
        //ADON      = 1
        //CHS2:CHS0 = 000
      break;
    case 1: //potenciometer 2
      ADCON0=0x09; //00001001
        //ADON      = 1
        //CHS2:CHS0 = 001
      break;
    case 2: //temperature sensor
      ADCON0=0x11; //00010001
        //ADON      = 1
        //CHS2:CHS0 = 010
      break;
  }
  ADCON0bits.GO = 1; //start conversion
  while(ADCON0bits.GO == 1); //wait until conversion is complete
  return ((((unsigned int)ADRESH)<<2)|(ADRESL>>6));
}
