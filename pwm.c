#include <xc.h>
#include"pwm.h"


void initPWM(unsigned int freq) {
  //turn off CCP, PWM, outputs and timer
  CCP1CON = 0x00;       //CCP disabled, PWM turn off
  TRISCbits.TRISC2 = 1;
  PORTCbits.RC2 = 0;    //turn off PWM output for fan
  CCPR1L = 0;           //set duty clcle to 0
  T2CONbits.TMR2ON = 0; //turn off timer2
  //set PR2 = Fosc/(4*Fpwm*TMR2prescale) - 1
  T2CONbits.T2CKPS = 1; //prescale 4
  PR2 = OSC_FREQ/(freq*4*4) - 1; //249
  T2CONbits.TOUTPS=0;

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
