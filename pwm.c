#include <xc.h>
#include"pwm.h"


void initPWM(unsigned int freq) {
  PR2 = OSC_FREQ/(freq*4*4) - 1; //249
  //turn on CCP, PWM, outputs and timer
  TRISCbits.TRISC2 = 0;
  CCP1CON = 0x0F;       //00001111, PWM mode 0x0F
  T2CONbits.TMR2ON = 1; //turn on timer2
  //wait for PWM to settle
  PIR1bits.TMR2IF = 0;
  while(PIR1bits.TMR2IF == 0);
  PIR1bits.TMR2IF = 0;
  while(PIR1bits.TMR2IF == 0);
}


void dutyPWM(unsigned char d) {
  //CCPR1L:CCP1CON<5:4> = Fosc*Dpwm/TMR2prescale
  unsigned int temp;
  temp = (((unsigned long)(d))*((PR2<<2)|0x03))/255;
  CCPR1L  = (0x03FC&temp)>>2;
  CCP1CON = ((0x0003&temp)<<4)|0x0F;
}
