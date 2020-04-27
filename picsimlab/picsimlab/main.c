#include <xc.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "adc.h"
#include "display7s.h"
#include "lcd.h"
#include "serial.h"
#include "pwm.h"
#include "matricial_key.h"
#include "eeprom_ext.h"
#include "i2c.h"

//xc8 --chip=16f877a main.c adc.c display7s.c lcd.c serial.c matricial_key.c pwm.c i2c.c eeprom_ext.c

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

//global variables
int nMSeconds = 0;
int nSeconds = 0;
char str[16];
bool run = true;


//interrupts
void interrupt isr(){
	//send periodic msgs to the app
	if(PIR1bits.TMR1IF){ //timer1 overflow flag
		PIR1bits.TMR1IF = 0x00; //clean flag
		TMR1H = 0xCF;
		TMR1L = 0x2C;
		if(nMSeconds==10){
			nSeconds++;
			nMSeconds=0;
			if(nSeconds==51){ //should be 60
				serial_tx_str(str);
				nSeconds=0;
			}
		}
		else nMSeconds++;
	}

	//change machine state
	if(INTCONbits.INTF==1){
		INTCONbits.INTF = 0; //clean flag
		if(run){ //if it was ON, now is OFF
			PORTCbits.RC5 = 0; //turn off temp
			PORTCbits.RC2 = 0; //turn off fan
			//buzzer todo
			CCP1CON = 0x00;
			T1CON = 0x00; //turn off timer
			nSeconds = 0;
			nMSeconds = 0;
		}
		else{ //if it was OFF, now is ON
			PORTCbits.RC5 = 1; //turn on temp
			CCP1CON = 0x0F; //turn on fan
			T1CON = 0x31; //turn on timer
		}
		run = !run;
	}



}
//functions
void isr_init();


/******************************************************************************/
int main(void)
{
	//init ports
	TRISA=0xC3; //11000011
	TRISB=0xFF; //11111111  LED B7 / buttons
	TRISC=0x80; //10000000
	TRISD=0x00; //00000000  display DATAx for LCD / LEDS as outputs
	TRISE=0x00; //00000000  EN and RS from LCD
	//init components
	lcd_init();
	keyboard_init();
	//init variables
	int i = 0, tempRB3 = 0;
	unsigned int potP1, potP2, tempC, duty;
	char pass[5] = "4209";
	bool boolPass = false, bool_emerg = false; //boolean for password verification
	char code[5], str_old[16], str1[16];
	char strConfig[13];
	PORTCbits.RC1 = 1; //buzzer off

	//password verification
	while (!boolPass) {
		printlnLCD("Weather Station","Pass:");
		lcd_cmd(L_L2+5);
		for(int i=0; i<4; i++){
			code[i] = switch_press_scan();
			lcd_dat(code[i]);
		}
		if(!strcmp(code, pass)) {
			 boolPass = true; //correct password
			 printlnL2LCD("Password correct");
		}
		else printlnL2LCD("Password incorrect");
		delay_ms(100);
	}

	//init components
	TRISA=0x07; //for the temperature
	serial_init();
	adc_init();
	PWM1_Init(5000);
	PWM1_Start();
	isr_init();
	run = true;
	PORTCbits.RC5 = 1; //temperature on/off

	printlnL1LCD("Temp/Fan/Hum");

	while (1){
		if(run){
			//change heater state
			if(!PORTBbits.RB3 && !tempRB3) PORTCbits.RC5 = !PORTCbits.RC5;
			tempRB3 = !PORTBbits.RB3;

			//change fan velocity
			potP1 = ((unsigned int)readADC(0)*10)/102;
			duty = (potP1*255)/100;
			PWM1_Set_Duty(duty);
			potP2 = ((unsigned int)readADC(1)*10)/102;
			tempC = ((unsigned int)readADC(2)*100)/202;

			//print info to the LCD
			sprintf(str, "%d/%d/%d", tempC, potP1, potP2);
			if(strcmp(str, str_old)){
				if(strlen(str_old)!=strlen(str)){
					lcd_cmd(L_CLR);
					printlnL1LCD("Temp/Fan/Hum");
				}
				printlnL2LCD(str);
				strncpy(str_old, str, 16);
			}

			//check for dangerous situations
			if(potP2<20 && potP1>80 && tempC>40){
				PORTCbits.RC1 = 0; //buzzer on
				PORTD = 0x80; //turn LED D7
				if(!bool_emerg) {
					sprintf(str1, "e%d/%d/%d", tempC, potP1, potP2);
					serial_tx_str(str1); //send emergency msg to app
					e2pext_w(1,potP1); //send info to eeprom
					e2pext_w(2,potP2);
					e2pext_w(3,tempC);
				}
				bool_emerg = true;
				//sprintf(str1, "E %d/%d/%d", e2pext_r(1), e2pext_r(2), e2pext_r(3));
			}
			else {
				bool_emerg = false;
				PORTCbits.RC1 = 1;
			}

			//check for msg from the app (UART)
			//if(PIR1bits.RCIF){
				//strcpy(strConfig, ""); //clean array
				//readSerial(strConfig, sizeof(strConfig));
				//printlnL1LCD(strConfig);
			//}

			delay_ms(20);
		}
	}
}


void isr_init(){
	// timer1
	// Machine Cicle = 1/(4e6/4) = 1000ns = 1000e-9 s
	// Prescaler = 8
	// Overflow = TMRIH:TMR1L x Prescaler x Cicle = 100ms
	// TMRIH:TMR1L = 12500
	// (2^16 = 65536) - 12500 = 53036 = CF2C
	T1CON = 0x31;
	TMR1H = 0xCF;
	TMR1L = 0x2C;
	INTCONbits.GIE = 1;        //Enable Global Interrupt
	PIE1bits.TMR1IE = 1;       //Enable timer interrupt bit in PIE1 register
	INTCONbits.PEIE = 1;       //Enable the Peripheral Interrupt
	INTCONbits.INTE = 1;       //Enable RB0 as external Interrupt pin
	PIE1bits.RCIE = 1;         //for uart
}
