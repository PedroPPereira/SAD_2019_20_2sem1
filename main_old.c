#include <xc.h>
#include <stdio.h>
#include <string.h>
#include "adc.h"
#include "display7s.h"
#include "lcd.h"
#include "serial.h"
//xc8 --chip=16f877a main_old.c adc.c display7s.c lcd.c serial.c
//include eeprom,rtc,i2c,itoa,teclado ?

//configuration
#pragma config FOSC = HS // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF // Watchdog Timer Enable bit
#pragma config PWRTE = OFF // Power-up Timer Enable bit
#pragma config BOREN = OFF // Brown-out Reset Enable bit
#pragma config LVP = OFF // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit
#pragma config CPD = OFF // Data EEPROM Memory Code Protection bit
#pragma config WRT = OFF // Flash Program Memory Write Enable bits
#pragma config CP = OFF // Flash Program Memory Code Protection bit

//constans
#define TIME_MS 200
void delay_ms1(unsigned int val){
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

int main(void)
{
	//init ports
	TRISA=0xC3;
	TRISB=0x03;
	TRISC=0x81;
	TRISD=0x00;
	TRISE=0x00;

	//init components
	lcd_init();
	//testar
	serial_init();
	adc_init();

	//init variables
	int i = 0;
	unsigned char tmp;
	char str[6];
	PORTD = 0x00;


	while (1){
		printlnLCD("Bem vindo","20 a SAD");
		PORTD = 0x00;
		TRISA=0x07;
		//PORTA = selDISP(1);
		//PORTD=display7s(5); //write 5 on DIS1 segment display
		//delay_ms(TIME_MS);

		while(PORTBbits.RB1);

		serial_tx_str("\r\n Picsimlab\r\n Teste Serial TX\r\n");
    readSerial(str);
    printlnLCD("Carregou em B1",str);
    //while(PORTBbits.RB1);
		PORTCbits.RC1 = 1; //beep
		PORTD = 0x02;
		delay_ms1(TIME_MS);
		PORTD = 0x00;
		delay_ms1(TIME_MS);
		PORTCbits.RC5=1;

		tmp= ((unsigned int)readADC(2)*100)/202;
		sprintf(str,"%d", tmp);
		printlnLCD("ADC value:",str);
		while(PORTBbits.RB1);
	}
}
