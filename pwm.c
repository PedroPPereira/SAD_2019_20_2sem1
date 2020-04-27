
#include <xc.h>
#include"pwm.h"


void PWM1_Init(unsigned int f) {
   unsigned int temp;
   //PWM Period = [(PR2) + 1] * 4 * TOSC *(TMR2 Prescale Value)
   //PWM Duty Cycle = (CCPRXL:CCPXCON<5:4>) *TOSC * (TMR2 Prescale Value)

    //desliga PWM
    CCP1CON=0x00;//CCP disabled
    TRISCbits.TRISC2=1; //desliga sa�das PWM
    TRISDbits.TRISD5=1;
    PORTCbits.RC2=0; //deliga sa�das PWM
    PORTDbits.RD5=0;
    CCPR1L=0;//ou 255?

     //calculo TMR2
     T2CONbits.TMR2ON=0;
     temp=_XTAL_FREQ/(f*4l);

     if (temp < 256) {
       T2CONbits.T2CKPS=0;  //1
       PR2=temp;
     }
     else if(temp/4 < 256 ) {
       T2CONbits.T2CKPS=1;  //4
       PR2=(temp+2)/4;
     }
     else {
       PR2=(temp+8)/16;
       T2CONbits.T2CKPS=2;  //16
     }
     T2CONbits.TOUTPS=0;  //1-16
}


void PWM1_Start(void) {
  TRISCbits.TRISC2=0; //liga sa�das PWM
  TRISDbits.TRISD5=0;
  CCP1CON=0x0F; //CCP -> PWM mode 0x0F
  T2CONbits.TMR2ON=1;
  //espera PWM normalizar
  PIR1bits.TMR2IF=0;
  while(PIR1bits.TMR2IF == 0);
  PIR1bits.TMR2IF=0;
  while(PIR1bits.TMR2IF == 0);
}

void PWM1_Set_Duty(unsigned char d) {
  unsigned int temp;
  temp=(((unsigned long)(d))*((PR2<<2)|0x03))/255;
  CCPR1L= (0x03FC&temp)>>2;
  CCP1CON=((0x0003&temp)<<4)|0x0F;
}
