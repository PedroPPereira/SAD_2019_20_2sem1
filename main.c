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

//global variables
int nMSeconds = 0; //represents 100ms
int nSeconds = 0; //represents 1sec
char strUART[40], strADC[11]; //contains temperature, wind velocity and humidity
bool run = true; //machine status

//interrupt
void interrupt isr(){
	//send periodic (1min) msgs to the app
	if(PIR1bits.TMR1IF) { //timer1 overflow flag
		PIR1bits.TMR1IF = 0x00; //clean flag
		TMR1H = 0xCF; //reset default values
		TMR1L = 0x2C;
		if(nMSeconds==10) { //1 second
			nSeconds++;
			nMSeconds = 0;
			if(nSeconds==51) { //should be 60 //1 minute TODO
				sprintf(strUART, "1min-%s", strADC);
				serial_tx_str(strUART);
				nSeconds = 0;
			}
		}
		else nMSeconds++;
	}


	//change machine status state
	if(INTCONbits.INTF==1) { //RBO on flag
		INTCONbits.INTF = 0; //clean flag
		if(run){ //if it was ON, now is OFF
			PORTCbits.RC5 = 0; //turn off temp
			PORTCbits.RC1 = 1; //turn off buzzer
			PORTCbits.RC2 = 0; //turn off fan
			CCP1CON = 0x00;
			T1CON = 0x00; //turn off timer
			nSeconds = 0;
			nMSeconds = 0;
		}
		else { //if it was OFF, now is ON
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
int main(void) {
	//init ports
	TRISA=0xC3; //11000011
	TRISB=0xFF; //11111111  LED B7 / buttons
	TRISC=0x80; //10000000
	TRISD=0x00; //00000000  display DATAx for LCD / LEDS as outputs
	TRISE=0x00; //00000000  EN and RS from LCD
	//init components
	lcd_init();
	keyboard_init(); //matricial keyboard
	//init variables
	int tempRB3 = 0; //temp value for RB3 (debounce)
	unsigned int potP1, potP2, tempC, duty; //for ADC values
	int constHum=20, constTemp=40, constWind=80;//emergency constants
	char pass[5] = "0862", code[5], str_old[11], strConfig1[1];
	bool boolPass = false, bool_emerg = false; //boolean for password verification and emergency situation
	PORTCbits.RC1 = 1; //buzzer off


	//password verification
	/*while (!boolPass) {
		printlnLCD("Weather Station", "Pass:");
		lcd_cmd(L_L2+5);
		for(int i=0; i<4; i++) {
			code[i] = switch_press_scan();
			lcd_dat(code[i]);
		}
		if(!strcmp(code, pass)) {
			 boolPass = true; //correct password
			 printlnL2LCD("Password correct");
		}
		else printlnL2LCD("Password incorrect");
		delay_ms(50);
	}*/

	//init components
	TRISA=0x07; //for the temperature
	serial_init(); //uart
	adc_init();
	PWM1_Init(5000);
	PWM1_Start();
	isr_init(); //interrupt
	run = true;
	PORTCbits.RC5 = 1; //temperature on
	printlnL1LCD("Temp/Wind/Hum");

	while (1) {
		if(run) {
			//change heater state
			if(!PORTBbits.RB3 && !tempRB3) PORTCbits.RC5 = !PORTCbits.RC5;
			tempRB3 = !PORTBbits.RB3; //bebounce button RB3

			//read from the ADC to get Temperature/Fan velocity/Humidity
			potP1 = ((unsigned int)readADC(0)*10)/102; //get fan velocity
			duty = (potP1*255)/100;
			PWM1_Set_Duty(duty);
			potP2 = ((unsigned int)readADC(1)*10)/102; //get humidity
			tempC = ((unsigned int)readADC(2)*100)/202; //get temperature

			//print info retrieved to the LCD
			sprintf(strADC, "%d/%d/%d", tempC, potP1, potP2);
			if(strcmp(strADC, str_old)){
				if(strlen(str_old)!=strlen(strADC)){
					lcd_cmd(L_CLR);
					printlnL1LCD("Temp/Wind/Hum");
				}
				printlnL2LCD(strADC);
				strcpy(str_old, strADC);
			}

			//check for dangerous situations
			if(potP2<constHum && potP1>constWind && tempC>constTemp) {
				PORTCbits.RC1 = 0; //buzzer on
				PORTD = 0x80; //turn on LED D7
				if(!bool_emerg) {
					sprintf(strUART, "emergency-%d/%d/%d", tempC, potP1, potP2);
					serial_tx_str(strUART); //send emergency msg to app
					e2pext_w(1,tempC); //store info to eeprom
					e2pext_w(2,potP1);
					e2pext_w(3,potP2);
				}
				bool_emerg = true;
			}
			else {
				bool_emerg = false;
				PORTCbits.RC1 = 1; //buzzer off
			}

			//check for msg from the app (UART)
			if(PIR1bits.RCIF) {
				readSerial(strConfig1);
				//strConfig =serial_rx();
				PIR1bits.RCIF = 0; //clean flag
				switch (strConfig1[0]) {
					case 'h': if(e2pext_r(1)!=255) {
											sprintf(strUART, "last registered emergency %d/%d/%d", e2pext_r(1), e2pext_r(2), e2pext_r(3));
											serial_tx_str(strUART);
										} else serial_tx_str("emergencies not registered yet");
										break;
					case 'a': constHum=10; constTemp=50; constWind=90;
										serial_tx_str("emergency changed to option A"); break;
					case 'b': constHum=20; constTemp=40; constWind=80;
										serial_tx_str("emergency changed to option B"); break;
					case 'c': constHum=30; constTemp=30; constWind=70;
										serial_tx_str("emergency changed to option C"); break;
					default: break;
				}
			}
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
	//PIE1bits.RCIE = 1;         //for uart
}
