opt subtitle "Microchip MPLAB XC8 C Compiler v2.10 (Free license) build 20190730164152 Og9 "

opt pagewidth 120

	opt flic

	processor	16F877A
opt include "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,___lwdiv
	FNCALL	_main,___wmul
	FNCALL	_main,_delay_ms
	FNCALL	_main,_dutyPWM
	FNCALL	_main,_initADC
	FNCALL	_main,_initI2C
	FNCALL	_main,_initISR
	FNCALL	_main,_initLCD
	FNCALL	_main,_initMatricialKey
	FNCALL	_main,_initPWM
	FNCALL	_main,_initUART
	FNCALL	_main,_pressSwitch
	FNCALL	_main,_printlnL1LCD
	FNCALL	_main,_printlnL2LCD
	FNCALL	_main,_printlnLCD
	FNCALL	_main,_readADC
	FNCALL	_main,_readEEPROM
	FNCALL	_main,_readUART
	FNCALL	_main,_rsLCD
	FNCALL	_main,_sprintf
	FNCALL	_main,_strcmp
	FNCALL	_main,_strcpy
	FNCALL	_main,_strlen
	FNCALL	_main,_writeEEPROM
	FNCALL	_main,_writeUART
	FNCALL	_writeUART,_putUART
	FNCALL	_writeEEPROM,_readEEPROM
	FNCALL	_writeEEPROM,_startI2C
	FNCALL	_writeEEPROM,_stopI2C
	FNCALL	_writeEEPROM,_writeI2C
	FNCALL	_readEEPROM,_readI2C
	FNCALL	_readEEPROM,_startI2C
	FNCALL	_readEEPROM,_stopI2C
	FNCALL	_readEEPROM,_writeI2C
	FNCALL	_writeI2C,_delayI2C
	FNCALL	_stopI2C,_delayI2C
	FNCALL	_startI2C,_delayI2C
	FNCALL	_readI2C,_delayI2C
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_readUART,_getUART
	FNCALL	_printlnLCD,_rsLCD
	FNCALL	_printlnLCD,_strLCD
	FNCALL	_printlnL2LCD,_rsLCD
	FNCALL	_printlnL2LCD,_strLCD
	FNCALL	_printlnL1LCD,_rsLCD
	FNCALL	_printlnL1LCD,_strLCD
	FNCALL	_strLCD,_rsLCD
	FNCALL	_pressSwitch,_scanKeypad
	FNCALL	_initPWM,___aldiv
	FNCALL	_initLCD,_delay_ms
	FNCALL	_initLCD,_rsLCD
	FNCALL	_rsLCD,_delay_ms
	FNROOT	_main
	FNCALL	_isr,i1_rsLCD
	FNCALL	_isr,i1_sprintf
	FNCALL	_isr,i1_writeUART
	FNCALL	i1_writeUART,i1_putUART
	FNCALL	i1_sprintf,i1___lwdiv
	FNCALL	i1_sprintf,i1___lwmod
	FNCALL	i1_rsLCD,i1_delay_ms
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_oldPotP1
	global	_run
	global	main@F1072
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"main.c"
	line	29

;initializer for _oldPotP1
	retlw	0FFh
	retlw	0FFh

	line	28

;initializer for _run
	retlw	01h
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	line	94

;initializer for main@F1072
	retlw	030h
	retlw	038h
	retlw	036h
	retlw	032h
	retlw	low(0)
	global	_dpowers
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
	global __stringbase
__stringbase:
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	358
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_tempC
	global	_potP2
	global	_potP1
	global	_nSeconds
	global	_nMSeconds
	global	_strADC
	global	_strUART
	global	_T2CONbits
_T2CONbits	set	0x12
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_PORTDbits
_PORTDbits	set	0x8
	global	_RCREG
_RCREG	set	0x1A
	global	_TXREG
_TXREG	set	0x19
	global	_RCSTAbits
_RCSTAbits	set	0x18
	global	_PORTEbits
_PORTEbits	set	0x9
	global	_ADRESH
_ADRESH	set	0x1E
	global	_ADCON0bits
_ADCON0bits	set	0x1F
	global	_ADCON0
_ADCON0	set	0x1F
	global	_PORTD
_PORTD	set	0x8
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_T1CON
_T1CON	set	0x10
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_PORTCbits
_PORTCbits	set	0x7
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_TMR1L
_TMR1L	set	0xE
	global	_TMR1H
_TMR1H	set	0xF
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PR2
_PR2	set	0x92
	global	_TRISBbits
_TRISBbits	set	0x86
	global	_TRISDbits
_TRISDbits	set	0x88
	global	_TXSTAbits
_TXSTAbits	set	0x98
	global	_TRISCbits
_TRISCbits	set	0x87
	global	_SPBRG
_SPBRG	set	0x99
	global	_ADRESL
_ADRESL	set	0x9E
	global	_ADCON1
_ADCON1	set	0x9F
	global	_PIE1bits
_PIE1bits	set	0x8C
	global	_TRISE
_TRISE	set	0x89
	global	_TRISD
_TRISD	set	0x88
	global	_TRISC
_TRISC	set	0x87
	global	_TRISB
_TRISB	set	0x86
	global	_TRISA
_TRISA	set	0x85
	
STR_1:	
	retlw	123	;'{'
	retlw	34	;'"'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	34	;'"'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	114	;'r'
	retlw	103	;'g'
	retlw	34	;'"'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	116	;'t'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	119	;'w'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	104	;'h'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	125	;'}'
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	123	;'{'
	retlw	34	;'"'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	34	;'"'
	retlw	49	;'1'
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	34	;'"'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	116	;'t'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	119	;'w'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	104	;'h'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	125	;'}'
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	123	;'{'
	retlw	34	;'"'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	34	;'"'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	34	;'"'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	116	;'t'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	119	;'w'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	44	;','
	retlw	32	;' '
	retlw	34	;'"'
	retlw	104	;'h'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	125	;'}'
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	123	;'{'
	retlw	34	;'"'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	34	;'"'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	34	;'"'
	retlw	125	;'}'
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	123	;'{'
	retlw	34	;'"'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	34	;'"'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	66	;'B'
	retlw	34	;'"'
	retlw	125	;'}'
	retlw	0
psect	stringtext
	
STR_15:	
	retlw	123	;'{'
	retlw	34	;'"'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	34	;'"'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	34	;'"'
	retlw	125	;'}'
	retlw	0
psect	stringtext
	
STR_12:	
	retlw	123	;'{'
	retlw	34	;'"'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	58	;':'
	retlw	34	;'"'
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	34	;'"'
	retlw	125	;'}'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	80	;'P'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	119	;'w'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	80	;'P'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	119	;'w'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	87	;'W'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	47	;'/'
	retlw	87	;'W'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	47	;'/'
	retlw	72	;'H'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	47	;'/'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	47	;'/'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	80	;'P'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	58	;':'
	retlw	0
psect	stringtext
STR_10	equ	STR_1+0
STR_9	equ	STR_7+0
; #config settings
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
	file	"main.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_tempC:
       ds      2

_potP2:
       ds      2

_potP1:
       ds      2

_nSeconds:
       ds      2

_nMSeconds:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"main.c"
	line	29
_oldPotP1:
       ds      2

psect	dataBANK0
	file	"main.c"
	line	28
_run:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_strADC:
       ds      11

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"main.c"
	line	94
main@F1072:
       ds      5

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_strUART:
       ds      40

	file	"main.as"
	line	#
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
	fcall	__pidataBANK1+2		;fetch initializer
	movwf	__pdataBANK1+2&07fh		
	fcall	__pidataBANK1+3		;fetch initializer
	movwf	__pdataBANK1+3&07fh		
	fcall	__pidataBANK1+4		;fetch initializer
	movwf	__pdataBANK1+4&07fh		
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+028h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+0Bh)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+0Ah)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
	global	main@pass
main@pass:	; 5 bytes @ 0x0
	ds	5
	global	main@strOld
main@strOld:	; 11 bytes @ 0x5
	ds	11
	global	main@duty
main@duty:	; 2 bytes @ 0x10
	ds	2
	global	main@code
main@code:	; 5 bytes @ 0x12
	ds	5
	global	main@tempRB3
main@tempRB3:	; 2 bytes @ 0x17
	ds	2
	global	main@boolPass
main@boolPass:	; 1 bytes @ 0x19
	ds	1
	global	main@boolEmerg
main@boolEmerg:	; 1 bytes @ 0x1A
	ds	1
	global	main@constHum
main@constHum:	; 2 bytes @ 0x1B
	ds	2
	global	main@constTemp
main@constTemp:	; 2 bytes @ 0x1D
	ds	2
	global	main@constWind
main@constWind:	; 2 bytes @ 0x1F
	ds	2
	global	main@strConfig1
main@strConfig1:	; 1 bytes @ 0x21
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x22
	ds	2
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
??_initPWM:	; 1 bytes @ 0x0
??_writeEEPROM:	; 1 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	writeEEPROM@ah
writeEEPROM@ah:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	writeEEPROM@al
writeEEPROM@al:	; 1 bytes @ 0x3
	ds	1
	global	writeEEPROM@nt
writeEEPROM@nt:	; 1 bytes @ 0x4
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x4
	ds	1
	global	writeEEPROM@tmp
writeEEPROM@tmp:	; 2 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x7
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	ds	2
??___lwmod:	; 1 bytes @ 0xB
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xC
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xD
	global	sprintf@sp
sprintf@sp:	; 2 bytes @ 0xD
	ds	2
	global	sprintf@f
sprintf@f:	; 2 bytes @ 0xF
	ds	8
??_sprintf:	; 1 bytes @ 0x17
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x1A
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x1B
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x1C
	ds	1
	global	sprintf@val
sprintf@val:	; 2 bytes @ 0x1D
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x1F
	ds	1
??_main:	; 1 bytes @ 0x20
	ds	6
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_initLCD:	; 1 bytes @ 0x0
?_initMatricialKey:	; 1 bytes @ 0x0
?_pressSwitch:	; 1 bytes @ 0x0
?_initUART:	; 1 bytes @ 0x0
?_initADC:	; 1 bytes @ 0x0
?_initI2C:	; 1 bytes @ 0x0
?_initISR:	; 1 bytes @ 0x0
?_dutyPWM:	; 1 bytes @ 0x0
?_readUART:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
?_putUART:	; 1 bytes @ 0x0
?_getUART:	; 1 bytes @ 0x0
?_scanKeypad:	; 1 bytes @ 0x0
?_delayI2C:	; 1 bytes @ 0x0
?_startI2C:	; 1 bytes @ 0x0
?_stopI2C:	; 1 bytes @ 0x0
?_writeI2C:	; 1 bytes @ 0x0
?_readI2C:	; 1 bytes @ 0x0
?i1_delay_ms:	; 1 bytes @ 0x0
?i1_putUART:	; 1 bytes @ 0x0
??i1_putUART:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?i1___lwdiv
?i1___lwdiv:	; 2 bytes @ 0x0
	global	i1putUART@val
i1putUART@val:	; 1 bytes @ 0x0
	global	i1delay_ms@val
i1delay_ms@val:	; 2 bytes @ 0x0
	global	i1___lwdiv@divisor
i1___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
?i1_writeUART:	; 1 bytes @ 0x1
	global	i1writeUART@val
i1writeUART@val:	; 2 bytes @ 0x1
	ds	1
??i1_delay_ms:	; 1 bytes @ 0x2
	global	i1___lwdiv@dividend
i1___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??i1_writeUART:	; 1 bytes @ 0x3
	global	i1delay_ms@i
i1delay_ms@i:	; 2 bytes @ 0x3
	ds	1
??i1___lwdiv:	; 1 bytes @ 0x4
	global	i1writeUART@i
i1writeUART@i:	; 1 bytes @ 0x4
	ds	1
	global	i1delay_ms@j
i1delay_ms@j:	; 1 bytes @ 0x5
	global	i1___lwdiv@quotient
i1___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
?i1_rsLCD:	; 1 bytes @ 0x6
	global	i1rsLCD@string
i1rsLCD@string:	; 1 bytes @ 0x6
	ds	1
??i1_rsLCD:	; 1 bytes @ 0x7
	global	i1rsLCD@val
i1rsLCD@val:	; 1 bytes @ 0x7
	global	i1___lwdiv@counter
i1___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?i1___lwmod
?i1___lwmod:	; 2 bytes @ 0x8
	global	i1___lwmod@divisor
i1___lwmod@divisor:	; 2 bytes @ 0x8
	ds	2
	global	i1___lwmod@dividend
i1___lwmod@dividend:	; 2 bytes @ 0xA
	ds	2
??i1___lwmod:	; 1 bytes @ 0xC
	ds	1
	global	i1___lwmod@counter
i1___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?i1_sprintf
?i1_sprintf:	; 2 bytes @ 0x0
	global	i1sprintf@sp
i1sprintf@sp:	; 2 bytes @ 0x0
	ds	2
	global	i1sprintf@f
i1sprintf@f:	; 2 bytes @ 0x2
	ds	8
??i1_sprintf:	; 1 bytes @ 0xA
	ds	3
	global	i1sprintf@ap
i1sprintf@ap:	; 1 bytes @ 0xD
	ds	1
	global	i1sprintf@flag
i1sprintf@flag:	; 1 bytes @ 0xE
	ds	1
	global	i1sprintf@prec
i1sprintf@prec:	; 1 bytes @ 0xF
	ds	1
	global	i1sprintf@val
i1sprintf@val:	; 2 bytes @ 0x10
	ds	2
	global	i1sprintf@c
i1sprintf@c:	; 1 bytes @ 0x12
	ds	1
??_isr:	; 1 bytes @ 0x13
	ds	6
??_initMatricialKey:	; 1 bytes @ 0x19
?_delay_ms:	; 1 bytes @ 0x19
??_initUART:	; 1 bytes @ 0x19
??_initADC:	; 1 bytes @ 0x19
??_initI2C:	; 1 bytes @ 0x19
??_initISR:	; 1 bytes @ 0x19
??_dutyPWM:	; 1 bytes @ 0x19
?_strcpy:	; 1 bytes @ 0x19
??_readUART:	; 1 bytes @ 0x19
??_putUART:	; 1 bytes @ 0x19
??_getUART:	; 1 bytes @ 0x19
??_scanKeypad:	; 1 bytes @ 0x19
??_delayI2C:	; 1 bytes @ 0x19
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x19
	global	?_readADC
?_readADC:	; 2 bytes @ 0x19
	global	?_strlen
?_strlen:	; 2 bytes @ 0x19
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x19
	global	putUART@val
putUART@val:	; 1 bytes @ 0x19
	global	strcpy@from
strcpy@from:	; 1 bytes @ 0x19
	global	delay_ms@val
delay_ms@val:	; 2 bytes @ 0x19
	global	scanKeypad@i
scanKeypad@i:	; 2 bytes @ 0x19
	global	delayI2C@i
delayI2C@i:	; 2 bytes @ 0x19
	global	strcmp@s1
strcmp@s1:	; 2 bytes @ 0x19
	global	strlen@s
strlen@s:	; 2 bytes @ 0x19
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x19
	ds	1
?_writeUART:	; 1 bytes @ 0x1A
??_strcpy:	; 1 bytes @ 0x1A
	global	dutyPWM@d
dutyPWM@d:	; 1 bytes @ 0x1A
	global	writeUART@val
writeUART@val:	; 2 bytes @ 0x1A
	ds	1
??_delay_ms:	; 1 bytes @ 0x1B
??_readADC:	; 1 bytes @ 0x1B
??_strlen:	; 1 bytes @ 0x1B
??_startI2C:	; 1 bytes @ 0x1B
??_stopI2C:	; 1 bytes @ 0x1B
??_writeI2C:	; 1 bytes @ 0x1B
??_readI2C:	; 1 bytes @ 0x1B
	global	readUART@buf
readUART@buf:	; 1 bytes @ 0x1B
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0x1B
	global	strcpy@to
strcpy@to:	; 1 bytes @ 0x1B
	global	scanKeypad@i_707
scanKeypad@i_707:	; 2 bytes @ 0x1B
	global	strlen@cp
strlen@cp:	; 2 bytes @ 0x1B
	ds	1
??_writeUART:	; 1 bytes @ 0x1C
??_strcmp:	; 1 bytes @ 0x1C
	global	readUART@tmp
readUART@tmp:	; 1 bytes @ 0x1C
	global	strcpy@cp
strcpy@cp:	; 1 bytes @ 0x1C
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x1C
	ds	1
	global	writeUART@i
writeUART@i:	; 1 bytes @ 0x1D
	global	writeI2C@val
writeI2C@val:	; 1 bytes @ 0x1D
	global	readI2C@ack
readI2C@ack:	; 1 bytes @ 0x1D
	global	readUART@i
readUART@i:	; 2 bytes @ 0x1D
	global	scanKeypad@i_708
scanKeypad@i_708:	; 2 bytes @ 0x1D
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x1D
	ds	1
	global	delay_ms@j
delay_ms@j:	; 1 bytes @ 0x1E
	global	writeI2C@i
writeI2C@i:	; 1 bytes @ 0x1E
	global	readI2C@ret
readI2C@ret:	; 1 bytes @ 0x1E
	ds	1
?_rsLCD:	; 1 bytes @ 0x1F
	global	rsLCD@string
rsLCD@string:	; 1 bytes @ 0x1F
	global	readI2C@i
readI2C@i:	; 1 bytes @ 0x1F
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x1F
	global	scanKeypad@i_709
scanKeypad@i_709:	; 2 bytes @ 0x1F
	ds	1
??_rsLCD:	; 1 bytes @ 0x20
?_readEEPROM:	; 1 bytes @ 0x20
	global	rsLCD@val
rsLCD@val:	; 1 bytes @ 0x20
	global	readEEPROM@addr
readEEPROM@addr:	; 2 bytes @ 0x20
	ds	1
??_initLCD:	; 1 bytes @ 0x21
??_pressSwitch:	; 1 bytes @ 0x21
?_strLCD:	; 1 bytes @ 0x21
??___aldiv:	; 1 bytes @ 0x21
	global	strLCD@str
strLCD@str:	; 2 bytes @ 0x21
	ds	1
??_readEEPROM:	; 1 bytes @ 0x22
	global	readADC@ch
readADC@ch:	; 1 bytes @ 0x22
	global	pressSwitch@key
pressSwitch@key:	; 1 bytes @ 0x22
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x22
	ds	1
??_strLCD:	; 1 bytes @ 0x23
	global	?___wmul
?___wmul:	; 2 bytes @ 0x23
	global	readEEPROM@ret
readEEPROM@ret:	; 1 bytes @ 0x23
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x23
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x23
	ds	1
	global	strLCD@i
strLCD@i:	; 1 bytes @ 0x24
	global	readEEPROM@al
readEEPROM@al:	; 1 bytes @ 0x24
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x24
	ds	1
?_printlnLCD:	; 1 bytes @ 0x25
?_printlnL2LCD:	; 1 bytes @ 0x25
?_printlnL1LCD:	; 1 bytes @ 0x25
	global	readEEPROM@ah
readEEPROM@ah:	; 1 bytes @ 0x25
	global	printlnL1LCD@str1
printlnL1LCD@str1:	; 2 bytes @ 0x25
	global	printlnL2LCD@str1
printlnL2LCD@str1:	; 2 bytes @ 0x25
	global	printlnLCD@str1
printlnLCD@str1:	; 2 bytes @ 0x25
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x25
	ds	1
?_writeEEPROM:	; 1 bytes @ 0x26
	global	writeEEPROM@addr
writeEEPROM@addr:	; 2 bytes @ 0x26
	ds	1
??_printlnL2LCD:	; 1 bytes @ 0x27
??_printlnL1LCD:	; 1 bytes @ 0x27
??___wmul:	; 1 bytes @ 0x27
	global	printlnLCD@str2
printlnLCD@str2:	; 2 bytes @ 0x27
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x27
	ds	1
?_initPWM:	; 1 bytes @ 0x28
	global	writeEEPROM@val
writeEEPROM@val:	; 1 bytes @ 0x28
	global	initPWM@freq
initPWM@freq:	; 2 bytes @ 0x28
	ds	1
??_printlnLCD:	; 1 bytes @ 0x29
??___lwdiv:	; 1 bytes @ 0x29
	ds	1
;!
;!Data Sizes:
;!    Strings     317
;!    Constant    10
;!    Data        8
;!    BSS         61
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     42      55
;!    BANK1            80     38      54
;!    BANK3            96     36      76
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    strlen@s	PTR const unsigned char  size(2) Largest target is 11
;!		 -> main@strOld(BANK3[11]), strADC(BANK1[11]), 
;!
;!    strlen@cp	PTR const unsigned char  size(2) Largest target is 11
;!		 -> main@strOld(BANK3[11]), strADC(BANK1[11]), 
;!
;!    strcpy@from	PTR const unsigned char  size(1) Largest target is 11
;!		 -> strADC(BANK1[11]), 
;!
;!    strcpy@to	PTR unsigned char  size(1) Largest target is 11
;!		 -> main@strOld(BANK3[11]), 
;!
;!    strcpy@cp	PTR unsigned char  size(1) Largest target is 11
;!		 -> main@strOld(BANK3[11]), 
;!
;!    strcmp@s2	PTR const unsigned char  size(1) Largest target is 11
;!		 -> main@strOld(BANK3[11]), main@pass(BANK3[5]), 
;!
;!    strcmp@s1	PTR const unsigned char  size(2) Largest target is 11
;!		 -> strADC(BANK1[11]), main@code(BANK3[5]), 
;!
;!    sprintf@f	PTR const unsigned char  size(2) Largest target is 37
;!		 -> STR_11(CODE[37]), STR_10(CODE[37]), STR_8(CODE[9]), STR_2(CODE[37]), 
;!		 -> STR_1(CODE[37]), 
;!
;!    sprintf@sp	PTR unsigned char  size(2) Largest target is 40
;!		 -> strADC(BANK1[11]), strUART(BANK3[40]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK1[2]), 
;!
;!    readUART@buf	PTR unsigned char  size(1) Largest target is 1
;!		 -> main@strConfig1(BANK3[1]), 
;!
;!    writeUART@val	PTR const unsigned char  size(2) Largest target is 40
;!		 -> STR_15(CODE[34]), STR_14(CODE[34]), STR_13(CODE[34]), STR_12(CODE[23]), 
;!		 -> strUART(BANK3[40]), 
;!
;!    printlnLCD@str2	PTR const unsigned char  size(2) Largest target is 6
;!		 -> STR_4(CODE[6]), 
;!
;!    printlnLCD@str1	PTR const unsigned char  size(2) Largest target is 16
;!		 -> STR_3(CODE[16]), 
;!
;!    printlnL2LCD@str1	PTR const unsigned char  size(2) Largest target is 19
;!		 -> strADC(BANK1[11]), STR_6(CODE[19]), STR_5(CODE[17]), 
;!
;!    printlnL1LCD@str1	PTR const unsigned char  size(2) Largest target is 14
;!		 -> STR_9(CODE[14]), STR_7(CODE[14]), 
;!
;!    strLCD@str	PTR const unsigned char  size(2) Largest target is 19
;!		 -> STR_9(CODE[14]), strADC(BANK1[11]), STR_7(CODE[14]), STR_6(CODE[19]), 
;!		 -> STR_5(CODE[17]), STR_4(CODE[6]), STR_3(CODE[16]), 
;!
;!    sp__strcpy	PTR unsigned char  size(1) Largest target is 11
;!		 -> main@strOld(BANK3[11]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _isr in COMMON
;!
;!    i1_writeUART->i1_putUART
;!    i1_sprintf->i1___lwmod
;!    i1___lwmod->i1___lwdiv
;!    i1_rsLCD->i1_delay_ms
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->___lwdiv
;!    _main->_initPWM
;!    _main->_printlnLCD
;!    _writeUART->_putUART
;!    _writeEEPROM->_readEEPROM
;!    _readEEPROM->_readI2C
;!    _writeI2C->_delayI2C
;!    _stopI2C->_delayI2C
;!    _startI2C->_delayI2C
;!    _readI2C->_delayI2C
;!    _sprintf->___lwdiv
;!    ___lwmod->___lwdiv
;!    ___lwdiv->___wmul
;!    _printlnLCD->_strLCD
;!    _printlnL2LCD->_strLCD
;!    _printlnL1LCD->_strLCD
;!    _strLCD->_rsLCD
;!    _pressSwitch->_scanKeypad
;!    _initPWM->___aldiv
;!    _initLCD->_rsLCD
;!    _rsLCD->_delay_ms
;!    ___wmul->_readADC
;!
;!Critical Paths under _isr in BANK0
;!
;!    _isr->i1_sprintf
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_sprintf
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 6, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                42    42      0   32483
;!                                             32 BANK1      6     6      0
;!                                              0 BANK3     36    36      0
;!                            ___lwdiv
;!                             ___wmul
;!                           _delay_ms
;!                            _dutyPWM
;!                            _initADC
;!                            _initI2C
;!                            _initISR
;!                            _initLCD
;!                   _initMatricialKey
;!                            _initPWM
;!                           _initUART
;!                        _pressSwitch
;!                       _printlnL1LCD
;!                       _printlnL2LCD
;!                         _printlnLCD
;!                            _readADC
;!                         _readEEPROM
;!                           _readUART
;!                              _rsLCD
;!                            _sprintf
;!                             _strcmp
;!                             _strcpy
;!                             _strlen
;!                        _writeEEPROM
;!                          _writeUART
;! ---------------------------------------------------------------------------------
;! (1) _writeUART                                            4     2      2     707
;!                                             26 BANK0      4     2      2
;!                            _putUART
;! ---------------------------------------------------------------------------------
;! (2) _putUART                                              1     1      0      31
;!                                             25 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _writeEEPROM                                         10     7      3    2245
;!                                             38 BANK0      3     0      3
;!                                              0 BANK1      7     7      0
;!                         _readEEPROM
;!                           _startI2C
;!                            _stopI2C
;!                           _writeI2C
;! ---------------------------------------------------------------------------------
;! (2) _readEEPROM                                           6     4      2    1152
;!                                             32 BANK0      6     4      2
;!                            _readI2C
;!                           _startI2C
;!                            _stopI2C
;!                           _writeI2C
;! ---------------------------------------------------------------------------------
;! (2) _writeI2C                                             4     4      0     198
;!                                             27 BANK0      4     4      0
;!                           _delayI2C
;! ---------------------------------------------------------------------------------
;! (2) _stopI2C                                              0     0      0      68
;!                           _delayI2C
;! ---------------------------------------------------------------------------------
;! (2) _startI2C                                             0     0      0      68
;!                           _delayI2C
;! ---------------------------------------------------------------------------------
;! (3) _readI2C                                              5     5      0     235
;!                                             27 BANK0      5     5      0
;!                           _delayI2C
;! ---------------------------------------------------------------------------------
;! (3) _delayI2C                                             2     2      0      68
;!                                             25 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _strlen                                               4     2      2     260
;!                                             25 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _strcpy                                               4     3      1     219
;!                                             25 BANK0      4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _strcmp                                               7     4      3     450
;!                                             25 BANK0      7     4      3
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             27    17     10    2585
;!                                             13 BANK1     19     9     10
;!                            ___lwdiv
;!                            ___lwmod
;!                         _readEEPROM (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     386
;!                                              7 BANK1      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4    1011
;!                                             41 BANK0      1     1      0
;!                                              0 BANK1      7     3      4
;!                             ___wmul (ARG)
;!                            _readADC (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _readUART                                             6     6      0     358
;!                                             25 BANK0      6     6      0
;!                            _getUART
;! ---------------------------------------------------------------------------------
;! (2) _getUART                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _readADC                                             10     8      2      31
;!                                             25 BANK0     10     8      2
;! ---------------------------------------------------------------------------------
;! (1) _printlnLCD                                           5     1      4    4976
;!                                             37 BANK0      5     1      4
;!                              _rsLCD
;!                             _strLCD
;! ---------------------------------------------------------------------------------
;! (1) _printlnL2LCD                                         3     1      2    5022
;!                                             37 BANK0      3     1      2
;!                              _rsLCD
;!                             _strLCD
;! ---------------------------------------------------------------------------------
;! (1) _printlnL1LCD                                         3     1      2    4945
;!                                             37 BANK0      3     1      2
;!                              _rsLCD
;!                             _strLCD
;! ---------------------------------------------------------------------------------
;! (2) _strLCD                                               4     2      2    2599
;!                                             33 BANK0      4     2      2
;!                              _rsLCD
;! ---------------------------------------------------------------------------------
;! (1) _pressSwitch                                          2     2      0     340
;!                                             33 BANK0      2     2      0
;!                         _scanKeypad
;! ---------------------------------------------------------------------------------
;! (2) _scanKeypad                                           8     8      0     272
;!                                             25 BANK0      8     8      0
;! ---------------------------------------------------------------------------------
;! (1) _initUART                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initPWM                                              4     2      2     707
;!                                             40 BANK0      2     0      2
;!                                              0 BANK1      2     2      0
;!                            ___aldiv
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             15     7      8     599
;!                                             25 BANK0     15     7      8
;! ---------------------------------------------------------------------------------
;! (1) _initMatricialKey                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              1     1      0    2836
;!                                             33 BANK0      1     1      0
;!                           _delay_ms
;!                              _rsLCD
;! ---------------------------------------------------------------------------------
;! (1) _rsLCD                                                2     1      1    2161
;!                                             31 BANK0      2     1      1
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (2) _delay_ms                                             6     4      2     675
;!                                             25 BANK0      6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _initISR                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initI2C                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initADC                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _dutyPWM                                              2     2      0      31
;!                                             25 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) ___wmul                                               6     2      4     752
;!                                             35 BANK0      6     2      4
;!                            _readADC (ARG)
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _isr                                                  6     6      0    1382
;!                                             19 BANK0      6     6      0
;!                            i1_rsLCD
;!                          i1_sprintf
;!                        i1_writeUART
;! ---------------------------------------------------------------------------------
;! (6) i1_writeUART                                          4     2      2     164
;!                                              1 COMMON     4     2      2
;!                          i1_putUART
;! ---------------------------------------------------------------------------------
;! (7) i1_putUART                                            1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (6) i1_sprintf                                           27    17     10     956
;!                                              0 BANK0     19     9     10
;!                          i1___lwdiv
;!                          i1___lwmod
;! ---------------------------------------------------------------------------------
;! (7) i1___lwmod                                            6     2      4     211
;!                                              8 COMMON     6     2      4
;!                          i1___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (7) i1___lwdiv                                            8     4      4     214
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (6) i1_rsLCD                                              2     1      1     262
;!                                              6 COMMON     2     1      1
;!                         i1_delay_ms
;! ---------------------------------------------------------------------------------
;! (7) i1_delay_ms                                           6     4      2     144
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___lwdiv
;!     ___wmul (ARG)
;!       _readADC (ARG)
;!     _readADC (ARG)
;!   ___wmul
;!     _readADC (ARG)
;!   _delay_ms
;!   _dutyPWM
;!   _initADC
;!   _initI2C
;!   _initISR
;!   _initLCD
;!     _delay_ms
;!     _rsLCD
;!       _delay_ms
;!   _initMatricialKey
;!   _initPWM
;!     ___aldiv
;!   _initUART
;!   _pressSwitch
;!     _scanKeypad
;!   _printlnL1LCD
;!     _rsLCD
;!       _delay_ms
;!     _strLCD
;!       _rsLCD
;!         _delay_ms
;!   _printlnL2LCD
;!     _rsLCD
;!       _delay_ms
;!     _strLCD
;!       _rsLCD
;!         _delay_ms
;!   _printlnLCD
;!     _rsLCD
;!       _delay_ms
;!     _strLCD
;!       _rsLCD
;!         _delay_ms
;!   _readADC
;!   _readEEPROM
;!     _readI2C
;!       _delayI2C
;!     _startI2C
;!       _delayI2C
;!     _stopI2C
;!       _delayI2C
;!     _writeI2C
;!       _delayI2C
;!   _readUART
;!     _getUART
;!   _rsLCD
;!     _delay_ms
;!   _sprintf
;!     ___lwdiv
;!       ___wmul (ARG)
;!         _readADC (ARG)
;!       _readADC (ARG)
;!     ___lwmod
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!           _readADC (ARG)
;!         _readADC (ARG)
;!     _readEEPROM (ARG)
;!       _readI2C
;!         _delayI2C
;!       _startI2C
;!         _delayI2C
;!       _stopI2C
;!         _delayI2C
;!       _writeI2C
;!         _delayI2C
;!   _strcmp
;!   _strcpy
;!   _strlen
;!   _writeEEPROM
;!     _readEEPROM
;!       _readI2C
;!         _delayI2C
;!       _startI2C
;!         _delayI2C
;!       _stopI2C
;!         _delayI2C
;!       _writeI2C
;!         _delayI2C
;!     _startI2C
;!       _delayI2C
;!     _stopI2C
;!       _delayI2C
;!     _writeI2C
;!       _delayI2C
;!   _writeUART
;!     _putUART
;!
;! _isr (ROOT)
;!   i1_rsLCD
;!     i1_delay_ms
;!   i1_sprintf
;!     i1___lwdiv
;!     i1___lwmod
;!       i1___lwdiv (ARG)
;!   i1_writeUART
;!     i1_putUART
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60     24      4C       9       79.2%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     26      36       7       67.5%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     2A      37       5       68.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      C7      12        0.0%
;!ABS                  0      0      C7       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 81 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   34[BANK3 ] int 
;;  strOld         11    5[BANK3 ] unsigned char [11]
;;  code            5   18[BANK3 ] unsigned char [5]
;;  pass            5    0[BANK3 ] unsigned char [5]
;;  constWind       2   31[BANK3 ] int 
;;  constTemp       2   29[BANK3 ] int 
;;  constHum        2   27[BANK3 ] int 
;;  tempRB3         2   23[BANK3 ] int 
;;  duty            2   16[BANK3 ] unsigned int 
;;  strConfig1      1   33[BANK3 ] unsigned char [1]
;;  boolEmerg       1   26[BANK3 ] unsigned char 
;;  boolPass        1   25[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2  111[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0      36       0
;;      Temps:          0       0       6       0       0
;;      Totals:         0       0       6      36       0
;;Total ram usage:       42 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___lwdiv
;;		___wmul
;;		_delay_ms
;;		_dutyPWM
;;		_initADC
;;		_initI2C
;;		_initISR
;;		_initLCD
;;		_initMatricialKey
;;		_initPWM
;;		_initUART
;;		_pressSwitch
;;		_printlnL1LCD
;;		_printlnL2LCD
;;		_printlnLCD
;;		_readADC
;;		_readEEPROM
;;		_readUART
;;		_rsLCD
;;		_sprintf
;;		_strcmp
;;		_strcpy
;;		_strlen
;;		_writeEEPROM
;;		_writeUART
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	81
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	81
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	callstack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	83
	
l3917:	
	movlw	low(0C3h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	84
	movlw	low(0FFh)
	movwf	(134)^080h	;volatile
	line	85
	movlw	low(080h)
	movwf	(135)^080h	;volatile
	line	86
	
l3919:	
	clrf	(136)^080h	;volatile
	line	87
	
l3921:	
	clrf	(137)^080h	;volatile
	line	89
	
l3923:	
	fcall	_initLCD
	line	90
	fcall	_initMatricialKey
	line	92
	
l3925:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@tempRB3)^0180h
	clrf	(main@tempRB3+1)^0180h
	line	94
	
l3927:	
	movlw	014h
	movwf	(main@constHum)^0180h
	movlw	0
	movwf	((main@constHum)^0180h)+1
	
l3929:	
	movlw	028h
	movwf	(main@constTemp)^0180h
	movlw	0
	movwf	((main@constTemp)^0180h)+1
	
l3931:	
	movlw	050h
	movwf	(main@constWind)^0180h
	movlw	0
	movwf	((main@constWind)^0180h)+1
	line	95
	
l3933:	
	movlw	(main@pass)&0ffh
	movwf	fsr0
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@F1072)^080h,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	incf	fsr0,f
	movf	(main@F1072)^080h+1,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1072)^080h+2,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1072)^080h+3,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1072)^080h+4,w
	movwf	indf
	line	96
	
l3935:	
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@boolPass)^0180h
	
l3937:	
	clrf	(main@boolEmerg)^0180h
	line	97
	
l3939:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),1	;volatile
	line	100
	goto	l3967
	line	101
	
l3941:	
	movlw	low(((STR_3)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printlnLCD@str1)
	movlw	high(((STR_3)|8000h))
	movwf	((printlnLCD@str1))+1
	movlw	low(((STR_4)|8000h))
	movwf	(printlnLCD@str2)
	movlw	high(((STR_4)|8000h))
	movwf	((printlnLCD@str2))+1
	fcall	_printlnLCD
	line	102
	
l3943:	
	movlw	low(063h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(rsLCD@string)
	movlw	low(0C5h)
	fcall	_rsLCD
	line	103
	
l3945:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@i)^0180h
	clrf	(main@i+1)^0180h
	line	104
	
l3951:	
	fcall	_pressSwitch
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@i)^0180h,w
	addlw	low(main@code|((0x1)<<8))&0ffh
	movwf	fsr0
	bcf	status, 6	;RP1=0, select bank1
	movf	(??_main+0)^080h+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	105
	
l3953:	
	movlw	low(064h)
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(rsLCD@string)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@i)^0180h,w
	addlw	low(main@code|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_rsLCD
	line	103
	
l3955:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@i)^0180h,f
	skipnc
	incf	(main@i+1)^0180h,f
	movlw	0
	addwf	(main@i+1)^0180h,f
	movf	(main@i+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u4475
	movlw	04h
	subwf	(main@i)^0180h,w
u4475:

	skipc
	goto	u4471
	goto	u4470
u4471:
	goto	l3951
u4470:
	line	107
	
l3957:	
	movlw	(low(main@code|((0x1)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(strcmp@s1)
	movlw	(0x1)
	movwf	(strcmp@s1+1)
	movlw	(low(main@pass|((0x1)<<8)))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strcmp@s2)
	fcall	_strcmp
	movf	((0+(?_strcmp))),w
iorwf	((1+(?_strcmp))),w
	btfss	status,2
	goto	u4481
	goto	u4480
u4481:
	goto	l3963
u4480:
	line	108
	
l3959:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@boolPass)^0180h
	incf	(main@boolPass)^0180h,f
	line	109
	
l3961:	
	movlw	low(((STR_5)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printlnL2LCD@str1)
	movlw	high(((STR_5)|8000h))
	movwf	((printlnL2LCD@str1))+1
	fcall	_printlnL2LCD
	line	110
	goto	l3965
	line	111
	
l3963:	
	movlw	low(((STR_6)|8000h))
	movwf	(printlnL2LCD@str1)
	movlw	high(((STR_6)|8000h))
	movwf	((printlnL2LCD@str1))+1
	fcall	_printlnL2LCD
	line	112
	
l3965:	
	movlw	032h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	100
	
l3967:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	((main@boolPass)^0180h),w
	btfsc	status,2
	goto	u4491
	goto	u4490
u4491:
	goto	l3941
u4490:
	line	116
	
l3969:	
	movlw	low(07h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	117
	
l3971:	
	fcall	_initUART
	line	118
	
l3973:	
	fcall	_initADC
	line	119
	
l3975:	
	movlw	0E8h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(initPWM@freq)
	movlw	03h
	movwf	((initPWM@freq))+1
	fcall	_initPWM
	line	120
	fcall	_initI2C
	line	121
	
l3977:	
	fcall	_initISR
	line	122
	
l3979:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_run)
	incf	(_run),f
	line	123
	
l3981:	
	bsf	(7),5	;volatile
	line	124
	
l3983:	
	movlw	low(((STR_7)|8000h))
	movwf	(printlnL1LCD@str1)
	movlw	high(((STR_7)|8000h))
	movwf	((printlnL1LCD@str1))+1
	fcall	_printlnL1LCD
	line	127
	
l3985:	
	movf	((_run)),w
	btfsc	status,2
	goto	u4501
	goto	u4500
u4501:
	goto	l3985
u4500:
	line	129
	
l3987:	
	btfsc	(6),3	;volatile
	goto	u4511
	goto	u4510
u4511:
	goto	l3993
u4510:
	
l3989:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	((main@tempRB3)^0180h),w
iorwf	((main@tempRB3+1)^0180h),w
	btfss	status,2
	goto	u4521
	goto	u4520
u4521:
	goto	l3993
u4520:
	
l3991:	
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(7),5	;volatile
	setc
	btfsc	status,0
	goto	u4531
	goto	u4530
	
u4531:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),5	;volatile
	goto	u4544
u4530:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),5	;volatile
u4544:
	line	130
	
l3993:	
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),3	;volatile
	setc
	movlw	0
	skipnc
	movlw	1

	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@tempRB3)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@tempRB3+1)^0180h
	line	133
	
l3995:	
	movlw	066h
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___lwdiv@divisor)^080h
	movlw	0
	movwf	((___lwdiv@divisor)^080h)+1
	movlw	low(0)
	fcall	_readADC
	movf	(1+(?_readADC)),w
	movwf	(___wmul@multiplier+1)
	movf	(0+(?_readADC)),w
	movwf	(___wmul@multiplier)
	movlw	0Ah
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@dividend+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@dividend)^080h
	fcall	___lwdiv
	movf	(1+(?___lwdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_potP1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(0+(?___lwdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_potP1)
	line	134
	
l3997:	
	movlw	064h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@divisor)^080h
	movlw	0
	movwf	((___lwdiv@divisor)^080h)+1
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP1+1),w
	movwf	(___wmul@multiplier+1)
	movf	(_potP1),w
	movwf	(___wmul@multiplier)
	movlw	0FFh
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@dividend+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@dividend)^080h
	fcall	___lwdiv
	movf	(1+(?___lwdiv))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@duty+1)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___lwdiv))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@duty)^0180h
	line	135
	
l3999:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_potP1),w
	fcall	_dutyPWM
	line	136
	
l4001:	
	movlw	066h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@divisor)^080h
	movlw	0
	movwf	((___lwdiv@divisor)^080h)+1
	movlw	low(01h)
	fcall	_readADC
	movf	(1+(?_readADC)),w
	movwf	(___wmul@multiplier+1)
	movf	(0+(?_readADC)),w
	movwf	(___wmul@multiplier)
	movlw	0Ah
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@dividend+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@dividend)^080h
	fcall	___lwdiv
	movf	(1+(?___lwdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_potP2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(0+(?___lwdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_potP2)
	line	137
	
l4003:	
	movlw	0CAh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@divisor)^080h
	movlw	0
	movwf	((___lwdiv@divisor)^080h)+1
	movlw	low(02h)
	fcall	_readADC
	movf	(1+(?_readADC)),w
	movwf	(___wmul@multiplier+1)
	movf	(0+(?_readADC)),w
	movwf	(___wmul@multiplier)
	movlw	064h
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@dividend+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@dividend)^080h
	fcall	___lwdiv
	movf	(1+(?___lwdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_tempC+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(0+(?___lwdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_tempC)
	line	140
	
l4005:	
	movlw	(low(_strADC|((0x0)<<8))&0ffh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@sp)^080h
	movlw	(0x0)
	movwf	(sprintf@sp+1)^080h
	movlw	low(((STR_8)|8000h))
	movwf	(sprintf@f)^080h
	movlw	high(((STR_8)|8000h))
	movwf	((sprintf@f)^080h)+1
	bcf	status, 5	;RP0=0, select bank0
	movf	(_tempC+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(?_sprintf)^080h+04h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_tempC),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(?_sprintf)^080h+04h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP1+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(?_sprintf)^080h+06h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(?_sprintf)^080h+06h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP2+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(?_sprintf)^080h+08h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP2),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(?_sprintf)^080h+08h
	fcall	_sprintf
	line	141
	
l4007:	
	movlw	(low(_strADC|((0x0)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strcmp@s1)
	movlw	(0x0)
	movwf	(strcmp@s1+1)
	movlw	(low(main@strOld|((0x1)<<8)))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strcmp@s2)
	fcall	_strcmp
	movf	((0+(?_strcmp))),w
iorwf	((1+(?_strcmp))),w
	btfsc	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l4019
u4550:
	line	142
	
l4009:	
	movlw	(low(main@strOld|((0x1)<<8))&0ffh)
	movwf	(strlen@s)
	movlw	(0x1)
	movwf	(strlen@s+1)
	fcall	_strlen
	movf	(0+?_strlen),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+?_strlen),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	((??_main+0)^080h+0+1)
	movlw	(low(_strADC|((0x0)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strlen@s)
	movlw	(0x0)
	movwf	(strlen@s+1)
	fcall	_strlen
	movf	(1+(?_strlen)),w
	bsf	status, 5	;RP0=1, select bank1
	xorwf	1+(??_main+0)^080h+0,w
	skipz
	goto	u4565
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_strlen)),w
	bsf	status, 5	;RP0=1, select bank1
	xorwf	0+(??_main+0)^080h+0,w
u4565:

	skipnz
	goto	u4561
	goto	u4560
u4561:
	goto	l4015
u4560:
	line	143
	
l4011:	
	movlw	low(063h)
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(rsLCD@string)
	movlw	low(01h)
	fcall	_rsLCD
	line	144
	
l4013:	
	movlw	low(((STR_9)|8000h))
	movwf	(printlnL1LCD@str1)
	movlw	high(((STR_9)|8000h))
	movwf	((printlnL1LCD@str1))+1
	fcall	_printlnL1LCD
	line	146
	
l4015:	
	movlw	(low(_strADC|((0x0)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(printlnL2LCD@str1)
	movlw	(0x0)
	movwf	(printlnL2LCD@str1+1)
	fcall	_printlnL2LCD
	line	147
	
l4017:	
	movlw	(low(_strADC|((0x0)<<8)))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strcpy@from)
	movlw	(low(main@strOld|((0x1)<<8)))&0ffh
	fcall	_strcpy
	line	151
	
l4019:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@constHum+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_potP2+1),w
	skipz
	goto	u4575
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@constHum)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_potP2),w
u4575:
	skipnc
	goto	u4571
	goto	u4570
u4571:
	goto	l4041
u4570:
	
l4021:	
	movf	(_potP1+1),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(main@constWind+1)^0180h,w
	skipz
	goto	u4585
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_potP1),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(main@constWind)^0180h,w
u4585:
	skipnc
	goto	u4581
	goto	u4580
u4581:
	goto	l4041
u4580:
	
l4023:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tempC+1),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(main@constTemp+1)^0180h,w
	skipz
	goto	u4595
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tempC),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(main@constTemp)^0180h,w
u4595:
	skipnc
	goto	u4591
	goto	u4590
u4591:
	goto	l4041
u4590:
	line	152
	
l4025:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),1	;volatile
	line	153
	
l4027:	
	movlw	low(080h)
	movwf	(8)	;volatile
	line	154
	
l4029:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	((main@boolEmerg)^0180h),w
	btfss	status,2
	goto	u4601
	goto	u4600
u4601:
	goto	l4039
u4600:
	line	156
	
l4031:	
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@sp)^080h
	movlw	(0x1)
	movwf	(sprintf@sp+1)^080h
	movlw	low(((STR_10)|8000h))
	movwf	(sprintf@f)^080h
	movlw	high(((STR_10)|8000h))
	movwf	((sprintf@f)^080h)+1
	bcf	status, 5	;RP0=0, select bank0
	movf	(_tempC+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(?_sprintf)^080h+04h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_tempC),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(?_sprintf)^080h+04h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP1+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(?_sprintf)^080h+06h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(?_sprintf)^080h+06h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP2+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(?_sprintf)^080h+08h
	bcf	status, 5	;RP0=0, select bank0
	movf	(_potP2),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(?_sprintf)^080h+08h
	fcall	_sprintf
	line	157
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(writeUART@val)
	movlw	(0x1)
	movwf	(writeUART@val+1)
	fcall	_writeUART
	line	158
	
l4033:	
	movlw	01h
	movwf	(writeEEPROM@addr)
	movlw	0
	movwf	((writeEEPROM@addr))+1
	movf	(_tempC),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(writeEEPROM@val)
	fcall	_writeEEPROM
	line	159
	
l4035:	
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(writeEEPROM@addr)
	movlw	0
	movwf	((writeEEPROM@addr))+1
	movf	(_potP1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(writeEEPROM@val)
	fcall	_writeEEPROM
	line	160
	
l4037:	
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(writeEEPROM@addr)
	movlw	0
	movwf	((writeEEPROM@addr))+1
	movf	(_potP2),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(writeEEPROM@val)
	fcall	_writeEEPROM
	line	162
	
l4039:	
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@boolEmerg)^0180h
	incf	(main@boolEmerg)^0180h,f
	line	163
	goto	l4045
	line	165
	
l4041:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@boolEmerg)^0180h
	line	166
	
l4043:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),1	;volatile
	line	170
	
l4045:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),5	;volatile
	goto	u4611
	goto	u4610
u4611:
	goto	l4073
u4610:
	line	171
	
l4047:	
	movlw	(low(main@strConfig1|((0x1)<<8)))&0ffh
	fcall	_readUART
	line	172
	
l4049:	
	bcf	(12),5	;volatile
	line	173
	goto	l4071
	line	174
	
l4051:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(readEEPROM@addr)
	movlw	0
	movwf	((readEEPROM@addr))+1
	fcall	_readEEPROM
	xorlw	0FFh
	skipnz
	goto	u4621
	goto	u4620
u4621:
	goto	l4055
u4620:
	line	175
	
l4053:	
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@sp)^080h
	movlw	(0x1)
	movwf	(sprintf@sp+1)^080h
	movlw	low(((STR_11)|8000h))
	movwf	(sprintf@f)^080h
	movlw	high(((STR_11)|8000h))
	movwf	((sprintf@f)^080h)+1
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(readEEPROM@addr)
	movlw	0
	movwf	((readEEPROM@addr))+1
	fcall	_readEEPROM
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	0+(?_sprintf)^080h+04h
	movf	1+(??_main+0)^080h+0,w
	movwf	1+(?_sprintf)^080h+04h
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(readEEPROM@addr)
	movlw	0
	movwf	((readEEPROM@addr))+1
	fcall	_readEEPROM
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+2)^080h+0
	clrf	(??_main+2)^080h+0+1
	movf	0+(??_main+2)^080h+0,w
	movwf	0+(?_sprintf)^080h+06h
	movf	1+(??_main+2)^080h+0,w
	movwf	1+(?_sprintf)^080h+06h
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(readEEPROM@addr)
	movlw	0
	movwf	((readEEPROM@addr))+1
	fcall	_readEEPROM
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+4)^080h+0
	clrf	(??_main+4)^080h+0+1
	movf	0+(??_main+4)^080h+0,w
	movwf	0+(?_sprintf)^080h+08h
	movf	1+(??_main+4)^080h+0,w
	movwf	1+(?_sprintf)^080h+08h
	fcall	_sprintf
	line	176
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(writeUART@val)
	movlw	(0x1)
	movwf	(writeUART@val+1)
	fcall	_writeUART
	line	177
	goto	l4073
	
l4055:	
	movlw	low(((STR_12)|8000h))
	movwf	(writeUART@val)
	movlw	high(((STR_12)|8000h))
	movwf	((writeUART@val))+1
	fcall	_writeUART
	goto	l4073
	line	179
	
l4057:	
	movlw	0Ah
	movwf	(main@constHum)^0180h
	movlw	0
	movwf	((main@constHum)^0180h)+1
	movlw	032h
	movwf	(main@constTemp)^0180h
	movlw	0
	movwf	((main@constTemp)^0180h)+1
	movlw	05Ah
	movwf	(main@constWind)^0180h
	movlw	0
	movwf	((main@constWind)^0180h)+1
	line	180
	
l4059:	
	movlw	low(((STR_13)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(writeUART@val)
	movlw	high(((STR_13)|8000h))
	movwf	((writeUART@val))+1
	fcall	_writeUART
	goto	l4073
	line	181
	
l4061:	
	movlw	014h
	movwf	(main@constHum)^0180h
	movlw	0
	movwf	((main@constHum)^0180h)+1
	movlw	028h
	movwf	(main@constTemp)^0180h
	movlw	0
	movwf	((main@constTemp)^0180h)+1
	movlw	050h
	movwf	(main@constWind)^0180h
	movlw	0
	movwf	((main@constWind)^0180h)+1
	line	182
	
l4063:	
	movlw	low(((STR_14)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(writeUART@val)
	movlw	high(((STR_14)|8000h))
	movwf	((writeUART@val))+1
	fcall	_writeUART
	goto	l4073
	line	183
	
l4065:	
	movlw	01Eh
	movwf	(main@constHum)^0180h
	movlw	0
	movwf	((main@constHum)^0180h)+1
	movlw	01Eh
	movwf	(main@constTemp)^0180h
	movlw	0
	movwf	((main@constTemp)^0180h)+1
	movlw	046h
	movwf	(main@constWind)^0180h
	movlw	0
	movwf	((main@constWind)^0180h)+1
	line	184
	
l4067:	
	movlw	low(((STR_15)|8000h))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(writeUART@val)
	movlw	high(((STR_15)|8000h))
	movwf	((writeUART@val))+1
	fcall	_writeUART
	goto	l4073
	line	173
	
l4071:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@strConfig1)^0180h,w
	; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 97 to 104
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           35    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	97^0	; case 97
	skipnz
	goto	l4057
	xorlw	98^97	; case 98
	skipnz
	goto	l4061
	xorlw	99^98	; case 99
	skipnz
	goto	l4065
	xorlw	104^99	; case 104
	skipnz
	goto	l4051
	goto	l4073
	opt asmopt_pop

	line	188
	
l4073:	
	movlw	014h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	goto	l3985
	global	start
	ljmp	start
	opt callstack 0
	line	191
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_writeUART

;; *************** function _writeUART *****************
;; Defined at:
;;		line 30 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  val             2   26[BANK0 ] PTR const unsigned char 
;;		 -> STR_15(34), STR_14(34), STR_13(34), STR_12(23), 
;;		 -> strUART(40), 
;; Auto vars:     Size  Location     Type
;;  i               1   29[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_putUART
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"serial.c"
	line	30
global __ptext1
__ptext1:	;psect for function _writeUART
psect	text1
	file	"serial.c"
	line	30
	global	__size_of_writeUART
	__size_of_writeUART	equ	__end_of_writeUART-_writeUART
	
_writeUART:	
;incstack = 0
	opt	callstack 3
; Regs used in _writeUART: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l3529:	
	clrf	(writeUART@i)
	line	32
	goto	l3535
	
l3531:	
	movf	(writeUART@i),w
	addwf	(writeUART@val),w
	movwf	fsr0
	movf	(writeUART@val+1),w
	skipnc
	incf	(writeUART@val+1),w
	movwf	btemp+1
	fcall	stringtab
	fcall	_putUART
	
l3533:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_writeUART+0)+0
	movf	(??_writeUART+0)+0,w
	addwf	(writeUART@i),f
	
l3535:	
	movf	(writeUART@i),w
	addwf	(writeUART@val),w
	movwf	fsr0
	movf	(writeUART@val+1),w
	skipnc
	incf	(writeUART@val+1),w
	movwf	btemp+1
	fcall	stringtab
	xorlw	0
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l3531
u4060:
	line	33
	
l3537:	
	movlw	low(0Ah)
	fcall	_putUART
	line	34
	movlw	low(0Dh)
	fcall	_putUART
	line	35
	
l3539:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(12),5	;volatile
	line	36
	
l268:	
	return
	opt callstack 0
GLOBAL	__end_of_writeUART
	__end_of_writeUART:
	signat	_writeUART,4217
	global	_putUART

;; *************** function _putUART *****************
;; Defined at:
;;		line 24 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1   25[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 200/800
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_writeUART
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	24
global __ptext2
__ptext2:	;psect for function _putUART
psect	text2
	file	"serial.c"
	line	24
	global	__size_of_putUART
	__size_of_putUART	equ	__end_of_putUART-_putUART
	
_putUART:	
;incstack = 0
	opt	callstack 3
; Regs used in _putUART: [wreg]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(putUART@val)
	line	25
	
l3217:	
	movf	(putUART@val),w
	movwf	(25)	;volatile
	line	26
	
l259:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(152)^080h,1	;volatile
	goto	u3341
	goto	u3340
u3341:
	goto	l259
u3340:
	line	27
	
l262:	
	return
	opt callstack 0
GLOBAL	__end_of_putUART
	__end_of_putUART:
	signat	_putUART,4217
	global	_writeEEPROM

;; *************** function _writeEEPROM *****************
;; Defined at:
;;		line 25 in file "eeprom_ext.c"
;; Parameters:    Size  Location     Type
;;  addr            2   38[BANK0 ] unsigned int 
;;  val             1   40[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  tmp             2    5[BANK1 ] unsigned int 
;;  nt              1    4[BANK1 ] unsigned char 
;;  al              1    3[BANK1 ] unsigned char 
;;  ah              1    2[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       5       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       3       7       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_readEEPROM
;;		_startI2C
;;		_stopI2C
;;		_writeI2C
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"eeprom_ext.c"
	line	25
global __ptext3
__ptext3:	;psect for function _writeEEPROM
psect	text3
	file	"eeprom_ext.c"
	line	25
	global	__size_of_writeEEPROM
	__size_of_writeEEPROM	equ	__end_of_writeEEPROM-_writeEEPROM
	
_writeEEPROM:	
;incstack = 0
	opt	callstack 1
; Regs used in _writeEEPROM: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	26
	
l3673:	
	movf	(writeEEPROM@val),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_writeEEPROM+0)^080h+0
	clrf	(??_writeEEPROM+0)^080h+0+1
	movf	0+(??_writeEEPROM+0)^080h+0,w
	movwf	(writeEEPROM@tmp)^080h
	movf	1+(??_writeEEPROM+0)^080h+0,w
	movwf	(writeEEPROM@tmp+1)^080h
	line	27
	
l3675:	
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(writeEEPROM@addr)+01h,w
	andlw	01h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_writeEEPROM+0)^080h+0
	movf	(??_writeEEPROM+0)^080h+0,w
	movwf	(writeEEPROM@ah)^080h
	line	28
	
l3677:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(writeEEPROM@addr),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_writeEEPROM+0)^080h+0
	movf	(??_writeEEPROM+0)^080h+0,w
	movwf	(writeEEPROM@al)^080h
	line	29
	
l3679:	
	clrf	(writeEEPROM@nt)^080h
	line	32
	
l3681:	
	fcall	_startI2C
	line	33
	
l3683:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((writeEEPROM@ah)^080h),w
	btfsc	status,2
	goto	u4171
	goto	u4170
u4171:
	goto	l3687
u4170:
	
l3685:	
	movlw	low(0A2h)
	fcall	_writeI2C
	goto	l440
	line	34
	
l3687:	
	movlw	low(0A0h)
	fcall	_writeI2C
	
l440:	
	line	35
	bsf	status, 5	;RP0=1, select bank1
	movf	(writeEEPROM@al)^080h,w
	fcall	_writeI2C
	line	36
	bsf	status, 5	;RP0=1, select bank1
	movf	(writeEEPROM@tmp)^080h,w
	fcall	_writeI2C
	line	37
	fcall	_stopI2C
	line	38
	
l3689:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_writeEEPROM+0)^080h+0
	movf	(??_writeEEPROM+0)^080h+0,w
	addwf	(writeEEPROM@nt)^080h,f
	line	40
	
l3691:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(writeEEPROM@addr+1),w
	movwf	(readEEPROM@addr+1)
	movf	(writeEEPROM@addr),w
	movwf	(readEEPROM@addr)
	fcall	_readEEPROM
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_writeEEPROM+0)^080h+0
	clrf	(??_writeEEPROM+0)^080h+0+1
	movf	(writeEEPROM@tmp+1)^080h,w
	xorwf	1+(??_writeEEPROM+0)^080h+0,w
	skipz
	goto	u4185
	movf	(writeEEPROM@tmp)^080h,w
	xorwf	0+(??_writeEEPROM+0)^080h+0,w
u4185:

	skipnz
	goto	u4181
	goto	u4180
u4181:
	goto	l444
u4180:
	
l3693:	
	movlw	low(0Ah)
	subwf	(writeEEPROM@nt)^080h,w
	skipc
	goto	u4191
	goto	u4190
u4191:
	goto	l3681
u4190:
	line	41
	
l444:	
	return
	opt callstack 0
GLOBAL	__end_of_writeEEPROM
	__end_of_writeEEPROM:
	signat	_writeEEPROM,8313
	global	_readEEPROM

;; *************** function _readEEPROM *****************
;; Defined at:
;;		line 5 in file "eeprom_ext.c"
;; Parameters:    Size  Location     Type
;;  addr            2   32[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  ah              1   37[BANK0 ] unsigned char 
;;  al              1   36[BANK0 ] unsigned char 
;;  ret             1   35[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_readI2C
;;		_startI2C
;;		_stopI2C
;;		_writeI2C
;; This function is called by:
;;		_main
;;		_writeEEPROM
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	5
global __ptext4
__ptext4:	;psect for function _readEEPROM
psect	text4
	file	"eeprom_ext.c"
	line	5
	global	__size_of_readEEPROM
	__size_of_readEEPROM	equ	__end_of_readEEPROM-_readEEPROM
	
_readEEPROM:	
;incstack = 0
	opt	callstack 1
; Regs used in _readEEPROM: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l3187:	
	movf	0+(readEEPROM@addr)+01h,w
	andlw	01h
	movwf	(??_readEEPROM+0)+0
	movf	(??_readEEPROM+0)+0,w
	movwf	(readEEPROM@ah)
	line	8
	
l3189:	
	movf	(readEEPROM@addr),w
	movwf	(??_readEEPROM+0)+0
	movf	(??_readEEPROM+0)+0,w
	movwf	(readEEPROM@al)
	line	10
	
l3191:	
	fcall	_startI2C
	line	11
	
l3193:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((readEEPROM@ah)),w
	btfsc	status,2
	goto	u3311
	goto	u3310
u3311:
	goto	l3197
u3310:
	
l3195:	
	movlw	low(0A2h)
	fcall	_writeI2C
	goto	l432
	line	12
	
l3197:	
	movlw	low(0A0h)
	fcall	_writeI2C
	
l432:	
	line	13
	movf	(readEEPROM@al),w
	fcall	_writeI2C
	line	15
	fcall	_startI2C
	line	16
	
l3199:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((readEEPROM@ah)),w
	btfsc	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l3203
u3320:
	
l3201:	
	movlw	low(0A3h)
	fcall	_writeI2C
	goto	l434
	line	17
	
l3203:	
	movlw	low(0A1h)
	fcall	_writeI2C
	
l434:	
	line	19
	movlw	low(01h)
	fcall	_readI2C
	movwf	(??_readEEPROM+0)+0
	movf	(??_readEEPROM+0)+0,w
	movwf	(readEEPROM@ret)
	line	20
	fcall	_stopI2C
	line	21
	
l3205:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(readEEPROM@ret),w
	line	22
	
l435:	
	return
	opt callstack 0
GLOBAL	__end_of_readEEPROM
	__end_of_readEEPROM:
	signat	_readEEPROM,4217
	global	_writeI2C

;; *************** function _writeI2C *****************
;; Defined at:
;;		line 30 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1   29[BANK0 ] unsigned char 
;;  i               1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 200/900
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delayI2C
;; This function is called by:
;;		_readEEPROM
;;		_writeEEPROM
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"i2c.c"
	line	30
global __ptext5
__ptext5:	;psect for function _writeI2C
psect	text5
	file	"i2c.c"
	line	30
	global	__size_of_writeI2C
	__size_of_writeI2C	equ	__end_of_writeI2C-_writeI2C
	
_writeI2C:	
;incstack = 0
	opt	callstack 2
; Regs used in _writeI2C: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(writeI2C@val)
	line	32
	
l3125:	
	bcf	(7),3	;volatile
	line	34
	
l3127:	
	clrf	(writeI2C@i)
	line	35
	
l3133:	
	movf	(writeI2C@val),w
	movwf	(??_writeI2C+0)+0
	movf	(writeI2C@i),w
	sublw	07h
	addlw	1
	goto	u3264
u3265:
	clrc
	rrf	(??_writeI2C+0)+0,f
u3264:
	addlw	-1
	skipz
	goto	u3265
	movf	0+(??_writeI2C+0)+0,w
	andlw	01h
	movwf	(??_writeI2C+1)+0
	swapf	(??_writeI2C+1)+0,f
	movf	(7),w	;volatile
	xorwf	(??_writeI2C+1)+0,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_writeI2C+1)+0,w
	movwf	(7)	;volatile
	line	36
	
l3135:	
	bsf	(7),3	;volatile
	line	37
	
l3137:	
	fcall	_delayI2C
	line	38
	
l3139:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),3	;volatile
	line	34
	
l3141:	
	movlw	low(01h)
	movwf	(??_writeI2C+0)+0
	movf	(??_writeI2C+0)+0,w
	addwf	(writeI2C@i),f
	
l3143:	
	movlw	low(08h)
	subwf	(writeI2C@i),w
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l3133
u3270:
	
l412:	
	line	40
	bsf	(7),4	;volatile
	line	41
	
l3145:	
	fcall	_delayI2C
	line	42
	
l3147:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),3	;volatile
	line	43
	fcall	_delayI2C
	line	44
	
l3149:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),3	;volatile
	line	45
	
l413:	
	return
	opt callstack 0
GLOBAL	__end_of_writeI2C
	__end_of_writeI2C:
	signat	_writeI2C,4217
	global	_stopI2C

;; *************** function _stopI2C *****************
;; Defined at:
;;		line 22 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delayI2C
;; This function is called by:
;;		_readEEPROM
;;		_writeEEPROM
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	22
global __ptext6
__ptext6:	;psect for function _stopI2C
psect	text6
	file	"i2c.c"
	line	22
	global	__size_of_stopI2C
	__size_of_stopI2C	equ	__end_of_stopI2C-_stopI2C
	
_stopI2C:	
;incstack = 0
	opt	callstack 2
; Regs used in _stopI2C: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l3119:	
	bsf	(7),3	;volatile
	line	24
	bcf	(7),4	;volatile
	line	25
	
l3121:	
	fcall	_delayI2C
	line	26
	
l3123:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),4	;volatile
	line	27
	fcall	_delayI2C
	line	28
	
l408:	
	return
	opt callstack 0
GLOBAL	__end_of_stopI2C
	__end_of_stopI2C:
	signat	_stopI2C,89
	global	_startI2C

;; *************** function _startI2C *****************
;; Defined at:
;;		line 14 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 200/900
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delayI2C
;; This function is called by:
;;		_readEEPROM
;;		_writeEEPROM
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	14
global __ptext7
__ptext7:	;psect for function _startI2C
psect	text7
	file	"i2c.c"
	line	14
	global	__size_of_startI2C
	__size_of_startI2C	equ	__end_of_startI2C-_startI2C
	
_startI2C:	
;incstack = 0
	opt	callstack 2
; Regs used in _startI2C: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	15
	
l3113:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(7),3	;volatile
	line	16
	bsf	(7),4	;volatile
	line	17
	
l3115:	
	fcall	_delayI2C
	line	18
	
l3117:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),4	;volatile
	line	19
	fcall	_delayI2C
	line	20
	
l405:	
	return
	opt callstack 0
GLOBAL	__end_of_startI2C
	__end_of_startI2C:
	signat	_startI2C,89
	global	_readI2C

;; *************** function _readI2C *****************
;; Defined at:
;;		line 48 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  ack             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ack             1   29[BANK0 ] unsigned char 
;;  i               1   31[BANK0 ] unsigned char 
;;  ret             1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delayI2C
;; This function is called by:
;;		_readEEPROM
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	48
global __ptext8
__ptext8:	;psect for function _readI2C
psect	text8
	file	"i2c.c"
	line	48
	global	__size_of_readI2C
	__size_of_readI2C	equ	__end_of_readI2C-_readI2C
	
_readI2C:	
;incstack = 0
	opt	callstack 1
; Regs used in _readI2C: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(readI2C@ack)
	line	50
	
l3151:	
	clrf	(readI2C@ret)
	line	51
	
l3153:	
	bcf	(7),3	;volatile
	line	52
	
l3155:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h,4	;volatile
	line	53
	
l3157:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(7),4	;volatile
	line	55
	clrf	(readI2C@i)
	
l416:	
	line	56
	bsf	(7),3	;volatile
	line	57
	
l3163:	
	fcall	_delayI2C
	line	58
	
l3165:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	swapf	(7),w	;volatile
	andlw	(1<<1)-1
	movwf	(??_readI2C+0)+0
	movf	(readI2C@i),w
	sublw	07h
	addlw	1
	goto	u3284
u3285:
	clrc
	rlf	(??_readI2C+0)+0,f
u3284:
	addlw	-1
	skipz
	goto	u3285
	movf	0+(??_readI2C+0)+0,w
	movwf	(??_readI2C+1)+0
	movf	(??_readI2C+1)+0,w
	iorwf	(readI2C@ret),f
	line	59
	
l3167:	
	bcf	(7),3	;volatile
	line	55
	
l3169:	
	movlw	low(01h)
	movwf	(??_readI2C+0)+0
	movf	(??_readI2C+0)+0,w
	addwf	(readI2C@i),f
	
l3171:	
	movlw	low(08h)
	subwf	(readI2C@i),w
	skipc
	goto	u3291
	goto	u3290
u3291:
	goto	l416
u3290:
	
l417:	
	line	61
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h,4	;volatile
	line	62
	
l3173:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((readI2C@ack)),w
	btfsc	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l418
u3300:
	
l3175:	
	bcf	(7),4	;volatile
	goto	l3177
	line	63
	
l418:	
	bsf	(7),4	;volatile
	line	64
	
l3177:	
	fcall	_delayI2C
	line	65
	
l3179:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),3	;volatile
	line	66
	fcall	_delayI2C
	line	67
	
l3181:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),3	;volatile
	line	68
	
l3183:	
	movf	(readI2C@ret),w
	line	69
	
l420:	
	return
	opt callstack 0
GLOBAL	__end_of_readI2C
	__end_of_readI2C:
	signat	_readI2C,4217
	global	_delayI2C

;; *************** function _delayI2C *****************
;; Defined at:
;;		line 4 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   25[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_startI2C
;;		_stopI2C
;;		_writeI2C
;;		_readI2C
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	4
global __ptext9
__ptext9:	;psect for function _delayI2C
psect	text9
	file	"i2c.c"
	line	4
	global	__size_of_delayI2C
	__size_of_delayI2C	equ	__end_of_delayI2C-_delayI2C
	
_delayI2C:	
;incstack = 0
	opt	callstack 2
; Regs used in _delayI2C: [wreg+status,2+btemp+1]
	line	5
	
l3085:	
	clrf	(delayI2C@i)
	clrf	(delayI2C@i+1)
	
l3091:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delayI2C@i),f
	skipnc
	incf	(delayI2C@i+1),f
	movlw	0
	addwf	(delayI2C@i+1),f
	
l3093:	
	movf	(delayI2C@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3235
	movlw	05h
	subwf	(delayI2C@i),w
u3235:

	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l3091
u3230:
	line	6
	
l399:	
	return
	opt callstack 0
GLOBAL	__end_of_delayI2C
	__end_of_delayI2C:
	signat	_delayI2C,89
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               2   25[BANK0 ] PTR const unsigned char 
;;		 -> main@strOld(11), strADC(11), 
;; Auto vars:     Size  Location     Type
;;  cp              2   27[BANK0 ] PTR const unsigned char 
;;		 -> main@strOld(11), strADC(11), 
;; Return value:  Size  Location     Type
;;                  2   25[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strlen.c"
	line	4
global __ptext10
__ptext10:	;psect for function _strlen
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strlen.c"
	line	4
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:	
;incstack = 0
	opt	callstack 4
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0]
	line	8
	
l3907:	
		movf	(strlen@s),w
	movwf	(strlen@cp)
movf	(strlen@s+1),w
movwf	(strlen@cp+1)

	line	9
	goto	l3911
	line	10
	
l3909:	
	movlw	01h
	addwf	(strlen@cp),f
	skipnc
	incf	(strlen@cp+1),f
	movlw	0
	addwf	(strlen@cp+1),f
	line	9
	
l3911:	
	movf	(strlen@cp),w
	movwf	fsr0
	bsf	status,7
	btfss	(strlen@cp+1),0
	bcf	status,7
	movf	(indf),w
	btfss	status,2
	goto	u4461
	goto	u4460
u4461:
	goto	l3909
u4460:
	line	12
	
l3913:	
	movf	(strlen@s),w
	subwf	(strlen@cp),w
	movwf	(?_strlen)
	movf	(strlen@s+1),w
	skipc
	incf	(strlen@s+1),w
	subwf	(strlen@cp+1),w
	movwf	1+(?_strlen)
	line	13
	
l1001:	
	return
	opt callstack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	_strcpy

;; *************** function _strcpy *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcpy.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> main@strOld(11), 
;;  from            1   25[BANK0 ] PTR const unsigned char 
;;		 -> strADC(11), 
;; Auto vars:     Size  Location     Type
;;  to              1   27[BANK0 ] PTR unsigned char 
;;		 -> main@strOld(11), 
;;  cp              1   28[BANK0 ] PTR unsigned char 
;;		 -> main@strOld(11), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : B00/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcpy.c"
	line	8
global __ptext11
__ptext11:	;psect for function _strcpy
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcpy.c"
	line	8
	global	__size_of_strcpy
	__size_of_strcpy	equ	__end_of_strcpy-_strcpy
	
_strcpy:	
;incstack = 0
	opt	callstack 4
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0]
	movwf	(strcpy@to)
	line	18
	
l3667:	
	movf	(strcpy@to),w
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	movwf	(strcpy@cp)
	line	19
	goto	l3671
	line	20
	
l3669:	
	movlw	low(01h)
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	addwf	(strcpy@cp),f
	line	21
	movlw	low(01h)
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	addwf	(strcpy@from),f
	line	19
	
l3671:	
	movf	(strcpy@from),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcpy+0)+0
	movf	(strcpy@cp),w
	movwf	fsr0
	movf	(??_strcpy+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	movf	((indf)),w
	btfss	status,2
	goto	u4161
	goto	u4160
u4161:
	goto	l3669
u4160:
	line	24
	
l995:	
	return
	opt callstack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
	signat	_strcpy,8313
	global	_strcmp

;; *************** function _strcmp *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              2   25[BANK0 ] PTR const unsigned char 
;;		 -> strADC(11), main@code(5), 
;;  s2              1   27[BANK0 ] PTR const unsigned char 
;;		 -> main@strOld(11), main@pass(5), 
;; Auto vars:     Size  Location     Type
;;  r               1   31[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  2   25[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcmp.c"
	line	33
global __ptext12
__ptext12:	;psect for function _strcmp
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcmp.c"
	line	33
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:	
;incstack = 0
	opt	callstack 4
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0]
	line	37
	
l3893:	
	goto	l3899
	line	38
	
l3895:	
	movlw	01h
	addwf	(strcmp@s1),f
	skipnc
	incf	(strcmp@s1+1),f
	movlw	0
	addwf	(strcmp@s1+1),f
	line	39
	
l3897:	
	movlw	low(01h)
	movwf	(??_strcmp+0)+0
	movf	(??_strcmp+0)+0,w
	addwf	(strcmp@s2),f
	line	37
	
l3899:	
	movf	(strcmp@s2),w
	movwf	fsr
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(??_strcmp+0)+0
	movf	(strcmp@s1),w
	movwf	fsr0
	bsf	status,7
	btfss	(strcmp@s1+1),0
	bcf	status,7
	movf	indf,w
	movwf	(??_strcmp+1)+0
	movf	(??_strcmp+0)+0,w
	subwf	(??_strcmp+1)+0,w
	movwf	(??_strcmp+2)+0
	movf	(??_strcmp+2)+0,w
	movwf	(strcmp@r)
	movf	(((strcmp@r))),w
	btfss	status,2
	goto	u4441
	goto	u4440
u4441:
	goto	l3903
u4440:
	
l3901:	
	movf	(strcmp@s1),w
	movwf	fsr0
	bsf	status,7
	btfss	(strcmp@s1+1),0
	bcf	status,7
	movf	(indf),w
	btfss	status,2
	goto	u4451
	goto	u4450
u4451:
	goto	l3895
u4450:
	line	41
	
l3903:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	line	42
	
l989:	
	return
	opt callstack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
	signat	_strcmp,8314
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 505 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              2   13[BANK1 ] PTR unsigned char 
;;		 -> strADC(11), strUART(40), 
;;  f               2   15[BANK1 ] PTR const unsigned char 
;;		 -> STR_11(37), STR_10(37), STR_8(9), STR_2(37), 
;;		 -> STR_1(37), 
;; Auto vars:     Size  Location     Type
;;  tmpval          4    0        struct .
;;  val             2   29[BANK1 ] unsigned int 
;;  cp              2    0        PTR const unsigned char 
;;  len             2    0        unsigned int 
;;  c               1   31[BANK1 ] unsigned char 
;;  prec            1   28[BANK1 ] char 
;;  flag            1   27[BANK1 ] unsigned char 
;;  ap              1   26[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   13[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0      10       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0      19       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
global __ptext13
__ptext13:	;psect for function _sprintf
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	callstack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	550
	
l3471:	
	movlw	(low(?_sprintf|((0x0)<<8)+04h))&0ffh
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@ap)^080h
	line	553
	goto	l3523
	line	555
	
l3473:	
		movlw	37
	xorwf	((sprintf@c)^080h),w
	btfsc	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l3479
u3990:
	line	558
	
l3475:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1)^080h,0
	bcf	status,7
	movf	(??_sprintf+0)^080h+0,w
	movwf	indf
	
l3477:	
	movlw	01h
	addwf	(sprintf@sp)^080h,f
	skipnc
	incf	(sprintf@sp+1)^080h,f
	movlw	0
	addwf	(sprintf@sp+1)^080h,f
	line	559
	goto	l3523
	line	565
	
l3479:	
	clrf	(sprintf@flag)^080h
	line	661
	
l3483:	
	movf	(sprintf@f+1)^080h,w
	movwf	(??_sprintf+0)^080h+0+1
	movf	(sprintf@f)^080h,w
	movwf	(??_sprintf+0)^080h+0
	incf	(sprintf@f)^080h,f
	skipnz
	incf	(sprintf@f+1)^080h,f
	movf	1+(??_sprintf+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@c)^080h
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3525
	xorlw	100^0	; case 100
	skipnz
	goto	l3485
	xorlw	105^100	; case 105
	skipnz
	goto	l3485
	goto	l3523
	opt asmopt_pop

	line	1285
	
l3485:	
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@val)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@val+1)^080h
	
l3487:	
	movlw	low(02h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@ap)^080h,f
	line	1287
	
l3489:	
	btfss	(sprintf@val+1)^080h,7
	goto	u4001
	goto	u4000
u4001:
	goto	l3495
u4000:
	line	1288
	
l3491:	
	movlw	low(03h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	iorwf	(sprintf@flag)^080h,f
	line	1289
	
l3493:	
	comf	(sprintf@val)^080h,f
	comf	(sprintf@val+1)^080h,f
	incf	(sprintf@val)^080h,f
	skipnz
	incf	(sprintf@val+1)^080h,f
	line	1331
	
l3495:	
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	line	1332
	
l3501:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	addwf	(??_sprintf+0)^080h+0,w
	addlw	low(((_dpowers)|8000h))
	movwf	fsr0
	movlw	high(((_dpowers)|8000h))
	skipnc
	addlw	1
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_sprintf+1)^080h+0
	bcf	status, 5	;RP0=0, select bank0
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_sprintf+1)^080h+0+1
	movf	1+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@val+1)^080h,w
	skipz
	goto	u4015
	movf	0+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@val)^080h,w
u4015:
	skipnc
	goto	u4011
	goto	u4010
u4011:
	goto	l3505
u4010:
	goto	l3507
	line	1331
	
l3505:	
	movlw	low(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@c)^080h,f
		movlw	5
	xorwf	((sprintf@c)^080h),w
	btfss	status,2
	goto	u4021
	goto	u4020
u4021:
	goto	l3501
u4020:
	line	1464
	
l3507:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u4031
	goto	u4030
u4031:
	goto	l3513
u4030:
	line	1465
	
l3509:	
	movlw	low(02Dh)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1)^080h,0
	bcf	status,7
	movf	(??_sprintf+0)^080h+0,w
	movwf	indf
	
l3511:	
	movlw	01h
	addwf	(sprintf@sp)^080h,f
	skipnc
	incf	(sprintf@sp+1)^080h,f
	movlw	0
	addwf	(sprintf@sp+1)^080h,f
	line	1498
	
l3513:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@prec)^080h
	line	1500
	goto	l3521
	line	1515
	
l3515:	
	movlw	0Ah
	movwf	(___lwmod@divisor)^080h
	movlw	0
	movwf	((___lwmod@divisor)^080h)+1
	movf	(sprintf@prec)^080h,w
	movwf	(??_sprintf+0)^080h+0
	addwf	(??_sprintf+0)^080h+0,w
	addlw	low(((_dpowers)|8000h))
	movwf	fsr0
	movlw	high(((_dpowers)|8000h))
	skipnc
	addlw	1
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@divisor)^080h
	bcf	status, 5	;RP0=0, select bank0
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwdiv@divisor+1)^080h
	movf	(sprintf@val+1)^080h,w
	movwf	(___lwdiv@dividend+1)^080h
	movf	(sprintf@val)^080h,w
	movwf	(___lwdiv@dividend)^080h
	fcall	___lwdiv
	movf	(1+(?___lwdiv))^080h,w
	movwf	(___lwmod@dividend+1)^080h
	movf	(0+(?___lwdiv))^080h,w
	movwf	(___lwmod@dividend)^080h
	fcall	___lwmod
	movf	(0+(?___lwmod))^080h,w
	addlw	030h
	movwf	(??_sprintf+1)^080h+0
	movf	(??_sprintf+1)^080h+0,w
	movwf	(sprintf@c)^080h
	line	1550
	
l3517:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1)^080h,0
	bcf	status,7
	movf	(??_sprintf+0)^080h+0,w
	movwf	indf
	
l3519:	
	movlw	01h
	addwf	(sprintf@sp)^080h,f
	skipnc
	incf	(sprintf@sp+1)^080h,f
	movlw	0
	addwf	(sprintf@sp+1)^080h,f
	line	1500
	
l3521:	
	movlw	low(-1)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@prec)^080h,f
		incf	(((sprintf@prec)^080h)),w
	btfss	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l3515
u4040:
	line	553
	
l3523:	
	movf	(sprintf@f+1)^080h,w
	movwf	(??_sprintf+0)^080h+0+1
	movf	(sprintf@f)^080h,w
	movwf	(??_sprintf+0)^080h+0
	incf	(sprintf@f)^080h,f
	skipnz
	incf	(sprintf@f+1)^080h,f
	movf	1+(??_sprintf+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_sprintf+2)^080h+0
	movf	(??_sprintf+2)^080h+0,w
	movwf	(sprintf@c)^080h
	movf	(((sprintf@c)^080h)),w
	btfss	status,2
	goto	u4051
	goto	u4050
u4051:
	goto	l3473
u4050:
	line	1564
	
l3525:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1)^080h,0
	bcf	status,7
	clrf	indf
	line	1567
	
l554:	
	return
	opt callstack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[BANK1 ] unsigned int 
;;  dividend        2    9[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   12[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext14
__ptext14:	;psect for function ___lwmod
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	callstack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	12
	
l3449:	
	movf	((___lwmod@divisor)^080h),w
iorwf	((___lwmod@divisor+1)^080h),w
	btfsc	status,2
	goto	u3931
	goto	u3930
u3931:
	goto	l3467
u3930:
	line	13
	
l3451:	
	clrf	(___lwmod@counter)^080h
	incf	(___lwmod@counter)^080h,f
	line	14
	goto	l3457
	line	15
	
l3453:	
	movlw	01h
	
u3945:
	clrc
	rlf	(___lwmod@divisor)^080h,f
	rlf	(___lwmod@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u3945
	line	16
	
l3455:	
	movlw	low(01h)
	movwf	(??___lwmod+0)^080h+0
	movf	(??___lwmod+0)^080h+0,w
	addwf	(___lwmod@counter)^080h,f
	line	14
	
l3457:	
	btfss	(___lwmod@divisor+1)^080h,(15)&7
	goto	u3951
	goto	u3950
u3951:
	goto	l3453
u3950:
	line	19
	
l3459:	
	movf	(___lwmod@divisor+1)^080h,w
	subwf	(___lwmod@dividend+1)^080h,w
	skipz
	goto	u3965
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,w
u3965:
	skipc
	goto	u3961
	goto	u3960
u3961:
	goto	l3463
u3960:
	line	20
	
l3461:	
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,f
	movf	(___lwmod@divisor+1)^080h,w
	skipc
	decf	(___lwmod@dividend+1)^080h,f
	subwf	(___lwmod@dividend+1)^080h,f
	line	21
	
l3463:	
	movlw	01h
	
u3975:
	clrc
	rrf	(___lwmod@divisor+1)^080h,f
	rrf	(___lwmod@divisor)^080h,f
	addlw	-1
	skipz
	goto	u3975
	line	22
	
l3465:	
	movlw	01h
	subwf	(___lwmod@counter)^080h,f
	btfss	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l3459
u3980:
	line	24
	
l3467:	
	movf	(___lwmod@dividend+1)^080h,w
	movwf	(?___lwmod+1)^080h
	movf	(___lwmod@dividend)^080h,w
	movwf	(?___lwmod)^080h
	line	25
	
l976:	
	return
	opt callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK1 ] unsigned int 
;;  dividend        2    2[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK1 ] unsigned int 
;;  counter         1    4[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       7       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext15
__ptext15:	;psect for function ___lwdiv
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	callstack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	13
	
l3423:	
	clrf	(___lwdiv@quotient)^080h
	clrf	(___lwdiv@quotient+1)^080h
	line	14
	
l3425:	
	movf	((___lwdiv@divisor)^080h),w
iorwf	((___lwdiv@divisor+1)^080h),w
	btfsc	status,2
	goto	u3861
	goto	u3860
u3861:
	goto	l3445
u3860:
	line	15
	
l3427:	
	clrf	(___lwdiv@counter)^080h
	incf	(___lwdiv@counter)^080h,f
	line	16
	goto	l3433
	line	17
	
l3429:	
	movlw	01h
	
u3875:
	clrc
	rlf	(___lwdiv@divisor)^080h,f
	rlf	(___lwdiv@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u3875
	line	18
	
l3431:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	addwf	(___lwdiv@counter)^080h,f
	line	16
	
l3433:	
	btfss	(___lwdiv@divisor+1)^080h,(15)&7
	goto	u3881
	goto	u3880
u3881:
	goto	l3429
u3880:
	line	21
	
l3435:	
	movlw	01h
	
u3895:
	clrc
	rlf	(___lwdiv@quotient)^080h,f
	rlf	(___lwdiv@quotient+1)^080h,f
	addlw	-1
	skipz
	goto	u3895
	line	22
	movf	(___lwdiv@divisor+1)^080h,w
	subwf	(___lwdiv@dividend+1)^080h,w
	skipz
	goto	u3905
	movf	(___lwdiv@divisor)^080h,w
	subwf	(___lwdiv@dividend)^080h,w
u3905:
	skipc
	goto	u3901
	goto	u3900
u3901:
	goto	l3441
u3900:
	line	23
	
l3437:	
	movf	(___lwdiv@divisor)^080h,w
	subwf	(___lwdiv@dividend)^080h,f
	movf	(___lwdiv@divisor+1)^080h,w
	skipc
	decf	(___lwdiv@dividend+1)^080h,f
	subwf	(___lwdiv@dividend+1)^080h,f
	line	24
	
l3439:	
	bsf	(___lwdiv@quotient)^080h+(0/8),(0)&7
	line	26
	
l3441:	
	movlw	01h
	
u3915:
	clrc
	rrf	(___lwdiv@divisor+1)^080h,f
	rrf	(___lwdiv@divisor)^080h,f
	addlw	-1
	skipz
	goto	u3915
	line	27
	
l3443:	
	movlw	01h
	subwf	(___lwdiv@counter)^080h,f
	btfss	status,2
	goto	u3921
	goto	u3920
u3921:
	goto	l3435
u3920:
	line	29
	
l3445:	
	movf	(___lwdiv@quotient+1)^080h,w
	movwf	(?___lwdiv+1)^080h
	movf	(___lwdiv@quotient)^080h,w
	movwf	(?___lwdiv)^080h
	line	30
	
l966:	
	return
	opt callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_readUART

;; *************** function _readUART *****************
;; Defined at:
;;		line 45 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  buf             1    wreg     PTR unsigned char 
;;		 -> main@strConfig1(1), 
;; Auto vars:     Size  Location     Type
;;  buf             1   27[BANK0 ] PTR unsigned char 
;;		 -> main@strConfig1(1), 
;;  i               2   29[BANK0 ] unsigned int 
;;  tmp             1   28[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : B00/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_getUART
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"serial.c"
	line	45
global __ptext16
__ptext16:	;psect for function _readUART
psect	text16
	file	"serial.c"
	line	45
	global	__size_of_readUART
	__size_of_readUART	equ	__end_of_readUART-_readUART
	
_readUART:	
;incstack = 0
	opt	callstack 3
; Regs used in _readUART: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(readUART@buf)
	line	46
	
l3695:	
	line	47
	
l3697:	
	clrf	(readUART@i)
	clrf	(readUART@i+1)
	line	48
	clrf	(readUART@i)
	clrf	(readUART@i+1)
	line	49
	
l3703:	
	fcall	_getUART
	movwf	(??_readUART+0)+0
	movf	(??_readUART+0)+0,w
	movwf	(readUART@tmp)
	line	50
	
l3705:	
	bcf	(12),5	;volatile
	line	52
	
l3707:	
	movf	((readUART@tmp)),w
	btfsc	status,2
	goto	u4201
	goto	u4200
u4201:
	goto	l3719
u4200:
	
l3709:	
		movlw	10
	xorwf	((readUART@tmp)),w
	btfsc	status,2
	goto	u4211
	goto	u4210
u4211:
	goto	l3719
u4210:
	
l3711:	
		movlw	13
	xorwf	((readUART@tmp)),w
	btfss	status,2
	goto	u4221
	goto	u4220
u4221:
	goto	l3713
u4220:
	goto	l3719
	line	53
	
l3713:	
	movf	(readUART@tmp),w
	movwf	(??_readUART+0)+0
	movf	(readUART@i),w
	addwf	(readUART@buf),w
	movwf	(??_readUART+1)+0
	movf	0+(??_readUART+1)+0,w
	movwf	fsr0
	movf	(??_readUART+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	line	48
	
l3715:	
	movlw	01h
	addwf	(readUART@i),f
	skipnc
	incf	(readUART@i+1),f
	movlw	0
	addwf	(readUART@i+1),f
	
l3717:	
	movf	((readUART@i)),w
iorwf	((readUART@i+1)),w
	btfsc	status,2
	goto	u4231
	goto	u4230
u4231:
	goto	l3703
u4230:
	line	55
	
l3719:	
	movf	(readUART@i),w
	addwf	(readUART@buf),w
	movwf	(??_readUART+0)+0
	movf	0+(??_readUART+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	clrf	indf
	line	56
	
l282:	
	return
	opt callstack 0
GLOBAL	__end_of_readUART
	__end_of_readUART:
	signat	_readUART,4217
	global	_getUART

;; *************** function _getUART *****************
;; Defined at:
;;		line 39 in file "serial.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readUART
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	39
global __ptext17
__ptext17:	;psect for function _getUART
psect	text17
	file	"serial.c"
	line	39
	global	__size_of_getUART
	__size_of_getUART	equ	__end_of_getUART-_getUART
	
_getUART:	
;incstack = 0
	opt	callstack 3
; Regs used in _getUART: [wreg]
	line	40
	
l3219:	
	
l271:	
	btfss	(12),5	;volatile
	goto	u3351
	goto	u3350
u3351:
	goto	l271
u3350:
	line	41
	
l3221:	
	movf	(26),w	;volatile
	line	42
	
l274:	
	return
	opt callstack 0
GLOBAL	__end_of_getUART
	__end_of_getUART:
	signat	_getUART,89
	global	_readADC

;; *************** function _readADC *****************
;; Defined at:
;;		line 14 in file "adc.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1   34[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   25[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       7       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"adc.c"
	line	14
global __ptext18
__ptext18:	;psect for function _readADC
psect	text18
	file	"adc.c"
	line	14
	global	__size_of_readADC
	__size_of_readADC	equ	__end_of_readADC-_readADC
	
_readADC:	
;incstack = 0
	opt	callstack 4
; Regs used in _readADC: [wreg-fsr0h+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(readADC@ch)
	line	15
	
l3635:	
	goto	l3645
	line	17
	
l3637:	
	movlw	low(01h)
	movwf	(31)	;volatile
	line	20
	goto	l162
	line	22
	
l3639:	
	movlw	low(09h)
	movwf	(31)	;volatile
	line	25
	goto	l162
	line	27
	
l3641:	
	movlw	low(011h)
	movwf	(31)	;volatile
	line	30
	goto	l162
	line	15
	
l3645:	
	movf	(readADC@ch),w
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           17     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3637
	xorlw	1^0	; case 1
	skipnz
	goto	l3639
	xorlw	2^1	; case 2
	skipnz
	goto	l3641
	goto	l162
	opt asmopt_pop

	line	31
	
l162:	
	line	32
	bsf	(31),2	;volatile
	line	33
	
l165:	
	btfsc	(31),2	;volatile
	goto	u4121
	goto	u4120
u4121:
	goto	l165
u4120:
	line	34
	
l3647:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_readADC+0)+0
	movlw	06h
u4135:
	clrc
	rrf	(??_readADC+0)+0,f
	addlw	-1
	skipz
	goto	u4135
	movf	0+(??_readADC+0)+0,w
	movwf	(??_readADC+1)+0
	clrf	(??_readADC+1)+0+1
	movf	(30),w	;volatile
	movwf	(??_readADC+3)+0
	clrf	(??_readADC+3)+0+1
	clrc
	rlf	(??_readADC+3)+0,f
	rlf	(??_readADC+3)+1,f
	clrc
	rlf	(??_readADC+3)+0,f
	rlf	(??_readADC+3)+1,f
	movf	0+(??_readADC+1)+0,w
	iorwf	0+(??_readADC+3)+0,w
	movwf	(??_readADC+5)+0
	movf	1+(??_readADC+1)+0,w
	iorwf	1+(??_readADC+3)+0,w
	movwf	1+(??_readADC+5)+0
	movf	0+(??_readADC+5)+0,w
	movwf	(?_readADC)
	movf	1+(??_readADC+5)+0,w
	movwf	(?_readADC+1)
	line	35
	
l168:	
	return
	opt callstack 0
GLOBAL	__end_of_readADC
	__end_of_readADC:
	signat	_readADC,4218
	global	_printlnLCD

;; *************** function _printlnLCD *****************
;; Defined at:
;;		line 50 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  str1            2   37[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(16), 
;;  str2            2   39[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(6), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_rsLCD
;;		_strLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"lcd.c"
	line	50
global __ptext19
__ptext19:	;psect for function _printlnLCD
psect	text19
	file	"lcd.c"
	line	50
	global	__size_of_printlnLCD
	__size_of_printlnLCD	equ	__end_of_printlnLCD-_printlnLCD
	
_printlnLCD:	
;incstack = 0
	opt	callstack 1
; Regs used in _printlnLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	51
	
l3549:	
	movlw	low(063h)
	movwf	(??_printlnLCD+0)+0
	movf	(??_printlnLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(01h)
	fcall	_rsLCD
	line	52
	movlw	low(063h)
	movwf	(??_printlnLCD+0)+0
	movf	(??_printlnLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(080h)
	fcall	_rsLCD
	line	53
	
l3551:	
		movf	(printlnLCD@str1),w
	movwf	(strLCD@str)
movf	(printlnLCD@str1+1),w
movwf	(strLCD@str+1)

	fcall	_strLCD
	line	54
	
l3553:	
	movlw	low(063h)
	movwf	(??_printlnLCD+0)+0
	movf	(??_printlnLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(0C0h)
	fcall	_rsLCD
	line	55
		movf	(printlnLCD@str2),w
	movwf	(strLCD@str)
movf	(printlnLCD@str2+1),w
movwf	(strLCD@str+1)

	fcall	_strLCD
	line	56
	
l231:	
	return
	opt callstack 0
GLOBAL	__end_of_printlnLCD
	__end_of_printlnLCD:
	signat	_printlnLCD,8313
	global	_printlnL2LCD

;; *************** function _printlnL2LCD *****************
;; Defined at:
;;		line 46 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  str1            2   37[BANK0 ] PTR const unsigned char 
;;		 -> strADC(11), STR_6(19), STR_5(17), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_rsLCD
;;		_strLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	46
global __ptext20
__ptext20:	;psect for function _printlnL2LCD
psect	text20
	file	"lcd.c"
	line	46
	global	__size_of_printlnL2LCD
	__size_of_printlnL2LCD	equ	__end_of_printlnL2LCD-_printlnL2LCD
	
_printlnL2LCD:	
;incstack = 0
	opt	callstack 1
; Regs used in _printlnL2LCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	47
	
l3579:	
	movlw	low(063h)
	movwf	(??_printlnL2LCD+0)+0
	movf	(??_printlnL2LCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(0C0h)
	fcall	_rsLCD
	line	48
	
l3581:	
		movf	(printlnL2LCD@str1),w
	movwf	(strLCD@str)
movf	(printlnL2LCD@str1+1),w
movwf	(strLCD@str+1)

	fcall	_strLCD
	line	49
	
l228:	
	return
	opt callstack 0
GLOBAL	__end_of_printlnL2LCD
	__end_of_printlnL2LCD:
	signat	_printlnL2LCD,4217
	global	_printlnL1LCD

;; *************** function _printlnL1LCD *****************
;; Defined at:
;;		line 42 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  str1            2   37[BANK0 ] PTR const unsigned char 
;;		 -> STR_9(14), STR_7(14), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_rsLCD
;;		_strLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	42
global __ptext21
__ptext21:	;psect for function _printlnL1LCD
psect	text21
	file	"lcd.c"
	line	42
	global	__size_of_printlnL1LCD
	__size_of_printlnL1LCD	equ	__end_of_printlnL1LCD-_printlnL1LCD
	
_printlnL1LCD:	
;incstack = 0
	opt	callstack 1
; Regs used in _printlnL1LCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	43
	
l3631:	
	movlw	low(063h)
	movwf	(??_printlnL1LCD+0)+0
	movf	(??_printlnL1LCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(080h)
	fcall	_rsLCD
	line	44
	
l3633:	
		movf	(printlnL1LCD@str1),w
	movwf	(strLCD@str)
movf	(printlnL1LCD@str1+1),w
movwf	(strLCD@str+1)

	fcall	_strLCD
	line	45
	
l225:	
	return
	opt callstack 0
GLOBAL	__end_of_printlnL1LCD
	__end_of_printlnL1LCD:
	signat	_printlnL1LCD,4217
	global	_strLCD

;; *************** function _strLCD *****************
;; Defined at:
;;		line 36 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  str             2   33[BANK0 ] PTR const unsigned char 
;;		 -> STR_9(14), strADC(11), STR_7(14), STR_6(19), 
;;		 -> STR_5(17), STR_4(6), STR_3(16), 
;; Auto vars:     Size  Location     Type
;;  i               1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_rsLCD
;; This function is called by:
;;		_printlnL1LCD
;;		_printlnL2LCD
;;		_printlnLCD
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	36
global __ptext22
__ptext22:	;psect for function _strLCD
psect	text22
	file	"lcd.c"
	line	36
	global	__size_of_strLCD
	__size_of_strLCD	equ	__end_of_strLCD-_strLCD
	
_strLCD:	
;incstack = 0
	opt	callstack 1
; Regs used in _strLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	37
	
l3209:	
	clrf	(strLCD@i)
	line	38
	goto	l3215
	
l3211:	
	movlw	low(064h)
	movwf	(??_strLCD+0)+0
	movf	(??_strLCD+0)+0,w
	movwf	(rsLCD@string)
	movf	(strLCD@i),w
	addwf	(strLCD@str),w
	movwf	fsr0
	movf	(strLCD@str+1),w
	skipnc
	incf	(strLCD@str+1),w
	movwf	btemp+1
	fcall	stringtab
	fcall	_rsLCD
	
l3213:	
	movlw	low(01h)
	movwf	(??_strLCD+0)+0
	movf	(??_strLCD+0)+0,w
	addwf	(strLCD@i),f
	
l3215:	
	movf	(strLCD@i),w
	addwf	(strLCD@str),w
	movwf	fsr0
	movf	(strLCD@str+1),w
	skipnc
	incf	(strLCD@str+1),w
	movwf	btemp+1
	fcall	stringtab
	xorlw	0
	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l3211
u3330:
	line	39
	
l222:	
	return
	opt callstack 0
GLOBAL	__end_of_strLCD
	__end_of_strLCD:
	signat	_strLCD,4217
	global	_pressSwitch

;; *************** function _pressSwitch *****************
;; Defined at:
;;		line 54 in file "matricial_key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key             1   34[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/B00
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_scanKeypad
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"matricial_key.c"
	line	54
global __ptext23
__ptext23:	;psect for function _pressSwitch
psect	text23
	file	"matricial_key.c"
	line	54
	global	__size_of_pressSwitch
	__size_of_pressSwitch	equ	__end_of_pressSwitch-_pressSwitch
	
_pressSwitch:	
;incstack = 0
	opt	callstack 3
; Regs used in _pressSwitch: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	55
	
l3555:	
	movlw	low(078h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_pressSwitch+0)+0
	movf	(??_pressSwitch+0)+0,w
	movwf	(pressSwitch@key)
	line	56
	goto	l3559
	line	57
	
l3557:	
	fcall	_scanKeypad
	movwf	(??_pressSwitch+0)+0
	movf	(??_pressSwitch+0)+0,w
	movwf	(pressSwitch@key)
	line	56
	
l3559:	
		movlw	120
	xorwf	((pressSwitch@key)),w
	btfsc	status,2
	goto	u4071
	goto	u4070
u4071:
	goto	l3557
u4070:
	line	58
	
l3561:	
	movf	(pressSwitch@key),w
	line	59
	
l366:	
	return
	opt callstack 0
GLOBAL	__end_of_pressSwitch
	__end_of_pressSwitch:
	signat	_pressSwitch,89
	global	_scanKeypad

;; *************** function _scanKeypad *****************
;; Defined at:
;;		line 26 in file "matricial_key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   31[BANK0 ] int 
;;  i               2   29[BANK0 ] int 
;;  i               2   27[BANK0 ] int 
;;  i               2   25[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       8       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pressSwitch
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	26
global __ptext24
__ptext24:	;psect for function _scanKeypad
psect	text24
	file	"matricial_key.c"
	line	26
	global	__size_of_scanKeypad
	__size_of_scanKeypad	equ	__end_of_scanKeypad-_scanKeypad
	
_scanKeypad:	
;incstack = 0
	opt	callstack 3
; Regs used in _scanKeypad: [wreg+status,2+btemp+1]
	line	27
	
l3225:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(8),3	;volatile
	bsf	(8),2	;volatile
	bsf	(8),1	;volatile
	bsf	(8),0	;volatile
	line	28
	
l3227:	
	clrf	(scanKeypad@i)
	clrf	(scanKeypad@i+1)
	
l3233:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(scanKeypad@i),f
	skipnc
	incf	(scanKeypad@i+1),f
	movlw	0
	addwf	(scanKeypad@i+1),f
	
l3235:	
	movf	(scanKeypad@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3365
	movlw	05h
	subwf	(scanKeypad@i),w
u3365:

	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l3233
u3360:
	
l297:	
	line	29
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),0	;volatile
	goto	u3371
	goto	u3370
u3371:
	goto	l298
u3370:
	
l3237:	
	btfsc	(8),3	;volatile
	goto	u3381
	goto	u3380
u3381:
	goto	l298
u3380:
	
l299:	
	btfss	(6),0	;volatile
	goto	u3391
	goto	u3390
u3391:
	goto	l299
u3390:
	
l3241:	
	movlw	low(031h)
	goto	l302
	line	30
	
l298:	
	btfsc	(6),1	;volatile
	goto	u3401
	goto	u3400
u3401:
	goto	l304
u3400:
	
l3247:	
	btfsc	(8),3	;volatile
	goto	u3411
	goto	u3410
u3411:
	goto	l304
u3410:
	
l305:	
	btfss	(6),1	;volatile
	goto	u3421
	goto	u3420
u3421:
	goto	l305
u3420:
	
l3251:	
	movlw	low(032h)
	goto	l302
	line	31
	
l304:	
	btfsc	(6),2	;volatile
	goto	u3431
	goto	u3430
u3431:
	goto	l303
u3430:
	
l3257:	
	btfsc	(8),3	;volatile
	goto	u3441
	goto	u3440
u3441:
	goto	l303
u3440:
	
l310:	
	btfss	(6),2	;volatile
	goto	u3451
	goto	u3450
u3451:
	goto	l310
u3450:
	
l3261:	
	movlw	low(033h)
	goto	l302
	line	33
	
l303:	
	bsf	(8),3	;volatile
	bcf	(8),2	;volatile
	bsf	(8),1	;volatile
	bsf	(8),0	;volatile
	line	34
	
l3265:	
	clrf	(scanKeypad@i_707)
	clrf	(scanKeypad@i_707+1)
	
l3271:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(scanKeypad@i_707),f
	skipnc
	incf	(scanKeypad@i_707+1),f
	movlw	0
	addwf	(scanKeypad@i_707+1),f
	
l3273:	
	movf	(scanKeypad@i_707+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3465
	movlw	05h
	subwf	(scanKeypad@i_707),w
u3465:

	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l3271
u3460:
	
l314:	
	line	35
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),0	;volatile
	goto	u3471
	goto	u3470
u3471:
	goto	l315
u3470:
	
l3275:	
	btfsc	(8),2	;volatile
	goto	u3481
	goto	u3480
u3481:
	goto	l315
u3480:
	
l316:	
	btfss	(6),0	;volatile
	goto	u3491
	goto	u3490
u3491:
	goto	l316
u3490:
	
l3279:	
	movlw	low(034h)
	goto	l302
	line	36
	
l315:	
	btfsc	(6),1	;volatile
	goto	u3501
	goto	u3500
u3501:
	goto	l320
u3500:
	
l3285:	
	btfsc	(8),2	;volatile
	goto	u3511
	goto	u3510
u3511:
	goto	l320
u3510:
	
l321:	
	btfss	(6),1	;volatile
	goto	u3521
	goto	u3520
u3521:
	goto	l321
u3520:
	
l3289:	
	movlw	low(035h)
	goto	l302
	line	37
	
l320:	
	btfsc	(6),2	;volatile
	goto	u3531
	goto	u3530
u3531:
	goto	l319
u3530:
	
l3295:	
	btfsc	(8),2	;volatile
	goto	u3541
	goto	u3540
u3541:
	goto	l319
u3540:
	
l326:	
	btfss	(6),2	;volatile
	goto	u3551
	goto	u3550
u3551:
	goto	l326
u3550:
	
l3299:	
	movlw	low(036h)
	goto	l302
	line	39
	
l319:	
	bsf	(8),3	;volatile
	bsf	(8),2	;volatile
	bcf	(8),1	;volatile
	bsf	(8),0	;volatile
	line	40
	
l3303:	
	clrf	(scanKeypad@i_708)
	clrf	(scanKeypad@i_708+1)
	
l3309:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(scanKeypad@i_708),f
	skipnc
	incf	(scanKeypad@i_708+1),f
	movlw	0
	addwf	(scanKeypad@i_708+1),f
	
l3311:	
	movf	(scanKeypad@i_708+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3565
	movlw	05h
	subwf	(scanKeypad@i_708),w
u3565:

	skipc
	goto	u3561
	goto	u3560
u3561:
	goto	l3309
u3560:
	
l330:	
	line	41
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),0	;volatile
	goto	u3571
	goto	u3570
u3571:
	goto	l331
u3570:
	
l3313:	
	btfsc	(8),1	;volatile
	goto	u3581
	goto	u3580
u3581:
	goto	l331
u3580:
	
l332:	
	btfss	(6),0	;volatile
	goto	u3591
	goto	u3590
u3591:
	goto	l332
u3590:
	
l3317:	
	movlw	low(037h)
	goto	l302
	line	42
	
l331:	
	btfsc	(6),1	;volatile
	goto	u3601
	goto	u3600
u3601:
	goto	l336
u3600:
	
l3323:	
	btfsc	(8),1	;volatile
	goto	u3611
	goto	u3610
u3611:
	goto	l336
u3610:
	
l337:	
	btfss	(6),1	;volatile
	goto	u3621
	goto	u3620
u3621:
	goto	l337
u3620:
	
l3327:	
	movlw	low(038h)
	goto	l302
	line	43
	
l336:	
	btfsc	(6),2	;volatile
	goto	u3631
	goto	u3630
u3631:
	goto	l335
u3630:
	
l3333:	
	btfsc	(8),1	;volatile
	goto	u3641
	goto	u3640
u3641:
	goto	l335
u3640:
	
l342:	
	btfss	(6),2	;volatile
	goto	u3651
	goto	u3650
u3651:
	goto	l342
u3650:
	
l3337:	
	movlw	low(039h)
	goto	l302
	line	45
	
l335:	
	bsf	(8),3	;volatile
	bsf	(8),2	;volatile
	bsf	(8),1	;volatile
	bcf	(8),0	;volatile
	line	46
	
l3341:	
	clrf	(scanKeypad@i_709)
	clrf	(scanKeypad@i_709+1)
	
l3347:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(scanKeypad@i_709),f
	skipnc
	incf	(scanKeypad@i_709+1),f
	movlw	0
	addwf	(scanKeypad@i_709+1),f
	
l3349:	
	movf	(scanKeypad@i_709+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3665
	movlw	05h
	subwf	(scanKeypad@i_709),w
u3665:

	skipc
	goto	u3661
	goto	u3660
u3661:
	goto	l3347
u3660:
	
l346:	
	line	47
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),0	;volatile
	goto	u3671
	goto	u3670
u3671:
	goto	l347
u3670:
	
l3351:	
	btfsc	(8),0	;volatile
	goto	u3681
	goto	u3680
u3681:
	goto	l347
u3680:
	
l348:	
	btfss	(6),0	;volatile
	goto	u3691
	goto	u3690
u3691:
	goto	l348
u3690:
	
l3355:	
	movlw	low(02Ah)
	goto	l302
	line	48
	
l347:	
	btfsc	(6),1	;volatile
	goto	u3701
	goto	u3700
u3701:
	goto	l352
u3700:
	
l3361:	
	btfsc	(8),0	;volatile
	goto	u3711
	goto	u3710
u3711:
	goto	l352
u3710:
	
l353:	
	btfss	(6),1	;volatile
	goto	u3721
	goto	u3720
u3721:
	goto	l353
u3720:
	
l3365:	
	movlw	low(030h)
	goto	l302
	line	49
	
l352:	
	btfsc	(6),2	;volatile
	goto	u3731
	goto	u3730
u3731:
	goto	l3379
u3730:
	
l3371:	
	btfsc	(8),0	;volatile
	goto	u3741
	goto	u3740
u3741:
	goto	l3379
u3740:
	
l358:	
	btfss	(6),2	;volatile
	goto	u3751
	goto	u3750
u3751:
	goto	l358
u3750:
	
l3375:	
	movlw	low(023h)
	goto	l302
	line	51
	
l3379:	
	movlw	low(078h)
	line	52
	
l302:	
	return
	opt callstack 0
GLOBAL	__end_of_scanKeypad
	__end_of_scanKeypad:
	signat	_scanKeypad,89
	global	_initUART

;; *************** function _initUART *****************
;; Defined at:
;;		line 5 in file "serial.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/900
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"serial.c"
	line	5
global __ptext25
__ptext25:	;psect for function _initUART
psect	text25
	file	"serial.c"
	line	5
	global	__size_of_initUART
	__size_of_initUART	equ	__end_of_initUART-_initUART
	
_initUART:	
;incstack = 0
	opt	callstack 4
; Regs used in _initUART: [wreg]
	line	7
	
l3583:	
	movlw	low(019h)
	movwf	(153)^080h	;volatile
	line	8
	
l3585:	
	bsf	(135)^080h,7	;volatile
	line	9
	
l3587:	
	bcf	(135)^080h,6	;volatile
	line	11
	
l3589:	
	bcf	(152)^080h,6	;volatile
	line	12
	
l3591:	
	bsf	(152)^080h,5	;volatile
	line	13
	
l3593:	
	bcf	(152)^080h,4	;volatile
	line	14
	
l3595:	
	bsf	(152)^080h,2	;volatile
	line	16
	
l3597:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(24),7	;volatile
	line	17
	
l3599:	
	bcf	(24),6	;volatile
	line	18
	
l3601:	
	bsf	(24),4	;volatile
	line	20
	
l3603:	
	bcf	(12),5	;volatile
	line	21
	
l256:	
	return
	opt callstack 0
GLOBAL	__end_of_initUART
	__end_of_initUART:
	signat	_initUART,89
	global	_initPWM

;; *************** function _initPWM *****************
;; Defined at:
;;		line 5 in file "pwm.c"
;; Parameters:    Size  Location     Type
;;  freq            2   40[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       2       2       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	file	"pwm.c"
	line	5
global __ptext26
__ptext26:	;psect for function _initPWM
psect	text26
	file	"pwm.c"
	line	5
	global	__size_of_initPWM
	__size_of_initPWM	equ	__end_of_initPWM-_initPWM
	
_initPWM:	
;incstack = 0
	opt	callstack 3
; Regs used in _initPWM: [wreg+status,2+status,0+pclath+cstack]
	line	6
	
l3607:	
	movf	(initPWM@freq+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_initPWM+0)^080h+0+1
	bcf	status, 5	;RP0=0, select bank0
	movf	(initPWM@freq),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_initPWM+0)^080h+0
	clrc
	rlf	(??_initPWM+0)^080h+0,f
	rlf	(??_initPWM+0)^080h+1,f
	clrc
	rlf	(??_initPWM+0)^080h+0,f
	rlf	(??_initPWM+0)^080h+1,f
	clrc
	rlf	(??_initPWM+0)^080h+0,f
	rlf	(??_initPWM+0)^080h+1,f
	clrc
	rlf	(??_initPWM+0)^080h+0,f
	rlf	(??_initPWM+0)^080h+1,f
	movf	0+(??_initPWM+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___aldiv@divisor)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(??_initPWM+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	((___aldiv@divisor))+1
	clrf	2+((___aldiv@divisor))
	clrf	3+((___aldiv@divisor))
	movlw	0
	movwf	(___aldiv@dividend+3)
	movlw	03Dh
	movwf	(___aldiv@dividend+2)
	movlw	09h
	movwf	(___aldiv@dividend+1)
	movlw	0
	movwf	(___aldiv@dividend)

	fcall	___aldiv
	movf	(0+(?___aldiv)),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	8
	
l3609:	
	bcf	(135)^080h,2	;volatile
	line	9
	
l3611:	
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	10
	
l3613:	
	movlw	low(0FFh)
	movwf	(21)	;volatile
	line	11
	
l3615:	
	bsf	(18),2	;volatile
	line	13
	
l3617:	
	bcf	(12),1	;volatile
	line	14
	
l381:	
	btfss	(12),1	;volatile
	goto	u4101
	goto	u4100
u4101:
	goto	l381
u4100:
	
l383:	
	line	15
	bcf	(12),1	;volatile
	line	16
	
l384:	
	btfss	(12),1	;volatile
	goto	u4111
	goto	u4110
u4111:
	goto	l384
u4110:
	line	17
	
l387:	
	return
	opt callstack 0
GLOBAL	__end_of_initPWM
	__end_of_initPWM:
	signat	_initPWM,4217
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4   25[BANK0 ] long 
;;  dividend        4   29[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   36[BANK0 ] long 
;;  sign            1   35[BANK0 ] unsigned char 
;;  counter         1   34[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   25[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initPWM
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\aldiv.c"
	line	5
global __ptext27
__ptext27:	;psect for function ___aldiv
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
;incstack = 0
	opt	callstack 3
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	13
	
l3383:	
	clrf	(___aldiv@sign)
	line	14
	
l3385:	
	btfss	(___aldiv@divisor+3),7
	goto	u3761
	goto	u3760
u3761:
	goto	l629
u3760:
	line	15
	
l3387:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	16
	clrf	(___aldiv@sign)
	incf	(___aldiv@sign),f
	line	17
	
l629:	
	line	18
	btfss	(___aldiv@dividend+3),7
	goto	u3771
	goto	u3770
u3771:
	goto	l3393
u3770:
	line	19
	
l3389:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	20
	
l3391:	
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	line	22
	
l3393:	
	movlw	high highword(0)
	movwf	(___aldiv@quotient+3)
	movlw	low highword(0)
	movwf	(___aldiv@quotient+2)
	movlw	high(0)
	movwf	(___aldiv@quotient+1)
	movlw	low(0)
	movwf	(___aldiv@quotient)

	line	23
	
l3395:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u3781
	goto	u3780
u3781:
	goto	l3415
u3780:
	line	24
	
l3397:	
	clrf	(___aldiv@counter)
	incf	(___aldiv@counter),f
	line	25
	goto	l3401
	line	26
	
l3399:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u3795:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u3795
	line	27
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	line	25
	
l3401:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u3801
	goto	u3800
u3801:
	goto	l3399
u3800:
	line	30
	
l3403:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u3815:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u3815
	line	31
	
l3405:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u3825
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u3825
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u3825
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u3825:
	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l3411
u3820:
	line	32
	
l3407:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	line	33
	
l3409:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	line	35
	
l3411:	
	movlw	01h
u3835:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u3835

	line	36
	
l3413:	
	movlw	01h
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u3841
	goto	u3840
u3841:
	goto	l3403
u3840:
	line	38
	
l3415:	
	movf	((___aldiv@sign)),w
	btfsc	status,2
	goto	u3851
	goto	u3850
u3851:
	goto	l3419
u3850:
	line	39
	
l3417:	
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	line	40
	
l3419:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	line	41
	
l639:	
	return
	opt callstack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_initMatricialKey

;; *************** function _initMatricialKey *****************
;; Defined at:
;;		line 5 in file "matricial_key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	file	"matricial_key.c"
	line	5
global __ptext28
__ptext28:	;psect for function _initMatricialKey
psect	text28
	file	"matricial_key.c"
	line	5
	global	__size_of_initMatricialKey
	__size_of_initMatricialKey	equ	__end_of_initMatricialKey-_initMatricialKey
	
_initMatricialKey:	
;incstack = 0
	opt	callstack 4
; Regs used in _initMatricialKey: []
	line	6
	
l3547:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(136)^080h,0	;volatile
	line	7
	bcf	(136)^080h,1	;volatile
	line	8
	bcf	(136)^080h,2	;volatile
	line	9
	bcf	(136)^080h,3	;volatile
	line	11
	bsf	(134)^080h,0	;volatile
	line	12
	bsf	(134)^080h,1	;volatile
	line	13
	bsf	(134)^080h,2	;volatile
	line	15
	bcf	status, 5	;RP0=0, select bank0
	bsf	(8),3	;volatile
	line	16
	bsf	(8),2	;volatile
	line	17
	bsf	(8),1	;volatile
	line	18
	bsf	(8),0	;volatile
	line	20
	bsf	(6),0	;volatile
	line	21
	bsf	(6),1	;volatile
	line	22
	bsf	(6),2	;volatile
	line	23
	
l293:	
	return
	opt callstack 0
GLOBAL	__end_of_initMatricialKey
	__end_of_initMatricialKey:
	signat	_initMatricialKey,89
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 4 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_delay_ms
;;		_rsLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=0
	file	"lcd.c"
	line	4
global __ptext29
__ptext29:	;psect for function _initLCD
psect	text29
	file	"lcd.c"
	line	4
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	callstack 2
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	5
	
l3541:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(9),1	;volatile
	line	6
	bcf	(9),2	;volatile
	line	7
	
l3543:	
	movlw	014h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	8
	
l3545:	
	bsf	(9),1	;volatile
	line	10
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(038h)
	fcall	_rsLCD
	line	11
	movlw	05h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	12
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(038h)
	fcall	_rsLCD
	line	13
	movlw	01h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	14
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(038h)
	fcall	_rsLCD
	line	15
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(08h)
	fcall	_rsLCD
	line	16
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(0Fh)
	fcall	_rsLCD
	line	17
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(01h)
	fcall	_rsLCD
	line	18
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(038h)
	fcall	_rsLCD
	line	19
	movlw	low(063h)
	movwf	(??_initLCD+0)+0
	movf	(??_initLCD+0)+0,w
	movwf	(rsLCD@string)
	movlw	low(080h)
	fcall	_rsLCD
	line	20
	
l211:	
	return
	opt callstack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,89
	global	_rsLCD

;; *************** function _rsLCD *****************
;; Defined at:
;;		line 23 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;;  string          1   31[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1   32[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay_ms
;; This function is called by:
;;		_main
;;		_initLCD
;;		_strLCD
;;		_printlnL1LCD
;;		_printlnL2LCD
;;		_printlnLCD
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	line	23
global __ptext30
__ptext30:	;psect for function _rsLCD
psect	text30
	file	"lcd.c"
	line	23
	global	__size_of_rsLCD
	__size_of_rsLCD	equ	__end_of_rsLCD-_rsLCD
	
_rsLCD:	
;incstack = 0
	opt	callstack 3
; Regs used in _rsLCD: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(rsLCD@val)
	line	24
	
l3095:	
	bsf	(9),1	;volatile
	line	25
	
l3097:	
	movf	(rsLCD@val),w
	movwf	(8)	;volatile
	line	26
	
l3099:	
		movlw	99
	xorwf	((rsLCD@string)),w
	btfss	status,2
	goto	u3241
	goto	u3240
u3241:
	goto	l3103
u3240:
	
l3101:	
	bcf	(9),2	;volatile
	line	27
	
l3103:	
		movlw	100
	xorwf	((rsLCD@string)),w
	btfss	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l3107
u3250:
	
l3105:	
	bsf	(9),2	;volatile
	line	28
	
l3107:	
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	29
	
l3109:	
	bcf	(9),1	;volatile
	line	30
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	31
	
l3111:	
	bsf	(9),1	;volatile
	line	32
	
l216:	
	return
	opt callstack 0
GLOBAL	__end_of_rsLCD
	__end_of_rsLCD:
	signat	_rsLCD,8313
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 59 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  val             2   25[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2   28[BANK0 ] unsigned int 
;;  j               1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_initLCD
;;		_rsLCD
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=0
	line	59
global __ptext31
__ptext31:	;psect for function _delay_ms
psect	text31
	file	"lcd.c"
	line	59
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	callstack 3
; Regs used in _delay_ms: [wreg+status,2+status,0]
	line	62
	
l3071:	
	clrf	(delay_ms@i)
	clrf	(delay_ms@i+1)
	goto	l234
	line	63
	
l3073:	
	clrf	(delay_ms@j)
	
l236:	
	line	65
# 65 "lcd.c"
NOP ;# 
	line	66
# 66 "lcd.c"
NOP ;# 
	line	67
# 67 "lcd.c"
NOP ;# 
	line	68
# 68 "lcd.c"
NOP ;# 
	line	69
# 69 "lcd.c"
NOP ;# 
psect	text31
	line	63
	
l3079:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_delay_ms+0)+0
	movf	(??_delay_ms+0)+0,w
	addwf	(delay_ms@j),f
	
l3081:	
	movlw	low(0C8h)
	subwf	(delay_ms@j),w
	skipc
	goto	u3211
	goto	u3210
u3211:
	goto	l236
u3210:
	line	62
	
l3083:	
	movlw	01h
	addwf	(delay_ms@i),f
	skipnc
	incf	(delay_ms@i+1),f
	movlw	0
	addwf	(delay_ms@i+1),f
	
l234:	
	movf	(delay_ms@val+1),w
	subwf	(delay_ms@i+1),w
	skipz
	goto	u3225
	movf	(delay_ms@val),w
	subwf	(delay_ms@i),w
u3225:
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l3073
u3220:
	line	73
	
l239:	
	return
	opt callstack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4217
	global	_initISR

;; *************** function _initISR *****************
;; Defined at:
;;		line 194 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	194
global __ptext32
__ptext32:	;psect for function _initISR
psect	text32
	file	"main.c"
	line	194
	global	__size_of_initISR
	__size_of_initISR	equ	__end_of_initISR-_initISR
	
_initISR:	
;incstack = 0
	opt	callstack 4
; Regs used in _initISR: [wreg]
	line	195
	
l3621:	
	movlw	low(031h)
	movwf	(16)	;volatile
	line	198
	movlw	low(0CFh)
	movwf	(15)	;volatile
	line	199
	movlw	low(02Ch)
	movwf	(14)	;volatile
	line	201
	
l3623:	
	bsf	(11),7	;volatile
	line	202
	
l3625:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(140)^080h,0	;volatile
	line	203
	
l3627:	
	bsf	(11),6	;volatile
	line	204
	
l3629:	
	bsf	(11),4	;volatile
	line	205
	
l144:	
	return
	opt callstack 0
GLOBAL	__end_of_initISR
	__end_of_initISR:
	signat	_initISR,89
	global	_initI2C

;; *************** function _initI2C *****************
;; Defined at:
;;		line 8 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=0
	file	"i2c.c"
	line	8
global __ptext33
__ptext33:	;psect for function _initI2C
psect	text33
	file	"i2c.c"
	line	8
	global	__size_of_initI2C
	__size_of_initI2C	equ	__end_of_initI2C-_initI2C
	
_initI2C:	
;incstack = 0
	opt	callstack 4
; Regs used in _initI2C: []
	line	9
	
l3619:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h,4	;volatile
	line	10
	bcf	status, 5	;RP0=0, select bank0
	bsf	(7),3	;volatile
	line	11
	bsf	(7),4	;volatile
	line	12
	
l402:	
	return
	opt callstack 0
GLOBAL	__end_of_initI2C
	__end_of_initI2C:
	signat	_initI2C,89
	global	_initADC

;; *************** function _initADC *****************
;; Defined at:
;;		line 5 in file "adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=0
	file	"adc.c"
	line	5
global __ptext34
__ptext34:	;psect for function _initADC
psect	text34
	file	"adc.c"
	line	5
	global	__size_of_initADC
	__size_of_initADC	equ	__end_of_initADC-_initADC
	
_initADC:	
;incstack = 0
	opt	callstack 4
; Regs used in _initADC: [wreg]
	line	6
	
l3605:	
	movlw	low(041h)
	movwf	(31)	;volatile
	line	9
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	11
	
l157:	
	return
	opt callstack 0
GLOBAL	__end_of_initADC
	__end_of_initADC:
	signat	_initADC,89
	global	_dutyPWM

;; *************** function _dutyPWM *****************
;; Defined at:
;;		line 20 in file "pwm.c"
;; Parameters:    Size  Location     Type
;;  d               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  d               1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=0
	file	"pwm.c"
	line	20
global __ptext35
__ptext35:	;psect for function _dutyPWM
psect	text35
	file	"pwm.c"
	line	20
	global	__size_of_dutyPWM
	__size_of_dutyPWM	equ	__end_of_dutyPWM-_dutyPWM
	
_dutyPWM:	
;incstack = 0
	opt	callstack 4
; Regs used in _dutyPWM: [wreg+status,2+status,0]
	movwf	(dutyPWM@d)
	line	27
	
l3651:	
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	28
	
l3653:	
	movf	(dutyPWM@d),w
	movwf	(??_dutyPWM+0)+0
	movlw	02h
u4145:
	clrc
	rrf	(??_dutyPWM+0)+0,f
	addlw	-1
	skipz
	goto	u4145
	movf	0+(??_dutyPWM+0)+0,w
	movwf	(21)	;volatile
	line	29
	
l3655:	
	bsf	(18),2	;volatile
	line	30
	
l390:	
	return
	opt callstack 0
GLOBAL	__end_of_dutyPWM
	__end_of_dutyPWM:
	signat	_dutyPWM,4217
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   35[BANK0 ] unsigned int 
;;  multiplicand    2   37[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   39[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   35[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul16.c"
	line	15
global __ptext36
__ptext36:	;psect for function ___wmul
psect	text36
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	callstack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l3721:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l3723:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l558
u4240:
	line	46
	
l3725:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l558:	
	line	47
	movlw	01h
	
u4255:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u4255
	line	48
	
l3727:	
	movlw	01h
	
u4265:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u4265
	line	49
	
l3729:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u4271
	goto	u4270
u4271:
	goto	l3723
u4270:
	line	52
	
l3731:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l560:	
	return
	opt callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 31 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_rsLCD
;;		i1_sprintf
;;		i1_writeUART
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	31
global __ptext37
__ptext37:	;psect for function _isr
psect	text37
	file	"main.c"
	line	31
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;incstack = 0
	opt	callstack 1
; Regs used in _isr: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_isr+2)
	movf	fsr0,w
	movwf	(??_isr+3)
	movf	pclath,w
	movwf	(??_isr+4)
	movf	btemp+1,w
	movwf	(??_isr+5)
	ljmp	_isr
psect	text37
	line	33
	
i1l2865:	
	btfss	(12),0	;volatile
	goto	u295_21
	goto	u295_20
u295_21:
	goto	i1l2895
u295_20:
	line	34
	
i1l2867:	
	bcf	(12),0	;volatile
	line	35
	
i1l2869:	
	movlw	low(0CFh)
	movwf	(15)	;volatile
	line	36
	movlw	low(02Ch)
	movwf	(14)	;volatile
	line	37
	
i1l2871:	
		movlw	10
	xorwf	((_nMSeconds)),w
iorwf	((_nMSeconds+1)),w
	btfss	status,2
	goto	u296_21
	goto	u296_20
u296_21:
	goto	i1l2893
u296_20:
	line	38
	
i1l2873:	
		incf	((_oldPotP1)),w
	skipz
	goto	u297_20
	incf	((_oldPotP1+1)),w
	btfsc	status,2
	goto	u297_21
	goto	u297_20
u297_21:
	goto	i1l2881
u297_20:
	
i1l2875:	
	movf	(_oldPotP1),w
	subwf	(_potP1),w
	movwf	(??_isr+0)+0
	movf	(_oldPotP1+1),w
	skipc
	incf	(_oldPotP1+1),w
	subwf	(_potP1+1),w
	movwf	1+(??_isr+0)+0
	movlw	0
	subwf	1+(??_isr+0)+0,w
	movlw	047h
	skipnz
	subwf	0+(??_isr+0)+0,w
	skipc
	goto	u298_21
	goto	u298_20
u298_21:
	goto	i1l2881
u298_20:
	
i1l2877:	
	movf	(_potP1+1),w
	subwf	(_oldPotP1+1),w
	skipz
	goto	u299_25
	movf	(_potP1),w
	subwf	(_oldPotP1),w
u299_25:
	skipnc
	goto	u299_21
	goto	u299_20
u299_21:
	goto	i1l2881
u299_20:
	line	39
	
i1l2879:	
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	movwf	(i1sprintf@sp)
	movlw	(0x1)
	movwf	(i1sprintf@sp+1)
	movlw	low(((STR_1)|8000h))
	movwf	(i1sprintf@f)
	movlw	high(((STR_1)|8000h))
	movwf	((i1sprintf@f))+1
	movf	(_tempC+1),w
	movwf	1+(?i1_sprintf)+04h
	movf	(_tempC),w
	movwf	0+(?i1_sprintf)+04h
	movf	(_potP1+1),w
	movwf	1+(?i1_sprintf)+06h
	movf	(_potP1),w
	movwf	0+(?i1_sprintf)+06h
	movf	(_potP2+1),w
	movwf	1+(?i1_sprintf)+08h
	movf	(_potP2),w
	movwf	0+(?i1_sprintf)+08h
	fcall	i1_sprintf
	line	40
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	movwf	(i1writeUART@val)
	movlw	(0x1)
	movwf	(i1writeUART@val+1)
	fcall	i1_writeUART
	line	42
	
i1l2881:	
	movf	(_potP1+1),w
	movwf	(_oldPotP1+1)
	movf	(_potP1),w
	movwf	(_oldPotP1)
	line	43
	
i1l2883:	
	movlw	01h
	addwf	(_nSeconds),f
	skipnc
	incf	(_nSeconds+1),f
	movlw	0
	addwf	(_nSeconds+1),f
	line	44
	
i1l2885:	
	clrf	(_nMSeconds)
	clrf	(_nMSeconds+1)
	line	45
	
i1l2887:	
		movlw	51
	xorwf	((_nSeconds)),w
iorwf	((_nSeconds+1)),w
	btfss	status,2
	goto	u300_21
	goto	u300_20
u300_21:
	goto	i1l2895
u300_20:
	line	47
	
i1l2889:	
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	movwf	(i1sprintf@sp)
	movlw	(0x1)
	movwf	(i1sprintf@sp+1)
	movlw	low(((STR_2)|8000h))
	movwf	(i1sprintf@f)
	movlw	high(((STR_2)|8000h))
	movwf	((i1sprintf@f))+1
	movf	(_tempC+1),w
	movwf	1+(?i1_sprintf)+04h
	movf	(_tempC),w
	movwf	0+(?i1_sprintf)+04h
	movf	(_potP1+1),w
	movwf	1+(?i1_sprintf)+06h
	movf	(_potP1),w
	movwf	0+(?i1_sprintf)+06h
	movf	(_potP2+1),w
	movwf	1+(?i1_sprintf)+08h
	movf	(_potP2),w
	movwf	0+(?i1_sprintf)+08h
	fcall	i1_sprintf
	line	48
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	movwf	(i1writeUART@val)
	movlw	(0x1)
	movwf	(i1writeUART@val+1)
	fcall	i1_writeUART
	line	49
	
i1l2891:	
	clrf	(_nSeconds)
	clrf	(_nSeconds+1)
	goto	i1l2895
	line	52
	
i1l2893:	
	movlw	01h
	addwf	(_nMSeconds),f
	skipnc
	incf	(_nMSeconds+1),f
	movlw	0
	addwf	(_nMSeconds+1),f
	line	56
	
i1l2895:	
	btfss	(11),1	;volatile
	goto	u301_21
	goto	u301_20
u301_21:
	goto	i1l107
u301_20:
	line	57
	
i1l2897:	
	bcf	(11),1	;volatile
	line	58
	
i1l2899:	
	movf	((_run)),w
	btfsc	status,2
	goto	u302_21
	goto	u302_20
u302_21:
	goto	i1l105
u302_20:
	line	59
	
i1l2901:	
	bcf	(7),5	;volatile
	line	60
	bsf	(7),1	;volatile
	line	61
	bcf	(7),2	;volatile
	line	62
	
i1l2903:	
	clrf	(23)	;volatile
	line	63
	clrf	(16)	;volatile
	line	64
	clrf	(_nSeconds)
	clrf	(_nSeconds+1)
	line	65
	clrf	(_nMSeconds)
	clrf	(_nMSeconds+1)
	line	66
	
i1l2905:	
	movlw	low(063h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(i1rsLCD@string)
	movlw	low(08h)
	fcall	i1_rsLCD
	line	67
	goto	i1l2911
	line	68
	
i1l105:	
	line	69
	bsf	(7),5	;volatile
	line	70
	
i1l2907:	
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	71
	movlw	low(031h)
	movwf	(16)	;volatile
	line	72
	
i1l2909:	
	movlw	low(063h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(i1rsLCD@string)
	movlw	low(0Fh)
	fcall	i1_rsLCD
	line	74
	
i1l2911:	
	movf	((_run)),w
	btfsc	status,2
	goto	u303_21
	goto	u303_20
u303_21:
	movlw	1
	goto	u304_20
u303_20:
	movlw	0
u304_20:
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_run)
	line	76
	
i1l107:	
	movf	(??_isr+5),w
	movwf	btemp+1
	movf	(??_isr+4),w
	movwf	pclath
	movf	(??_isr+3),w
	movwf	fsr0
	swapf	(??_isr+2)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt callstack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,89
	global	i1_writeUART

;; *************** function i1_writeUART *****************
;; Defined at:
;;		line 30 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  val             2    1[COMMON] PTR const unsigned char 
;;		 -> STR_15(34), STR_14(34), STR_13(34), STR_12(23), 
;;		 -> strUART(40), 
;; Auto vars:     Size  Location     Type
;;  writeUART       1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_putUART
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=0
	file	"serial.c"
	line	30
global __ptext38
__ptext38:	;psect for function i1_writeUART
psect	text38
	file	"serial.c"
	line	30
	global	__size_ofi1_writeUART
	__size_ofi1_writeUART	equ	__end_ofi1_writeUART-i1_writeUART
	
i1_writeUART:	
;incstack = 0
	opt	callstack 1
; Regs used in i1_writeUART: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
i1l2795:	
	clrf	(i1writeUART@i)
	line	32
	goto	i1l2801
	
i1l2797:	
	movf	(i1writeUART@i),w
	addwf	(i1writeUART@val),w
	movwf	fsr0
	movf	(i1writeUART@val+1),w
	skipnc
	incf	(i1writeUART@val+1),w
	movwf	btemp+1
	fcall	stringtab
	fcall	i1_putUART
	
i1l2799:	
	movlw	low(01h)
	movwf	(??i1_writeUART+0)+0
	movf	(??i1_writeUART+0)+0,w
	addwf	(i1writeUART@i),f
	
i1l2801:	
	movf	(i1writeUART@i),w
	addwf	(i1writeUART@val),w
	movwf	fsr0
	movf	(i1writeUART@val+1),w
	skipnc
	incf	(i1writeUART@val+1),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	xorlw	0
	skipz
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l2797
u286_20:
	line	33
	
i1l2803:	
	movlw	low(0Ah)
	fcall	i1_putUART
	line	34
	movlw	low(0Dh)
	fcall	i1_putUART
	line	35
	
i1l2805:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(12),5	;volatile
	line	36
	
i1l268:	
	return
	opt callstack 0
GLOBAL	__end_ofi1_writeUART
	__end_ofi1_writeUART:
	signat	i1_writeUART,4185
	global	i1_putUART

;; *************** function i1_putUART *****************
;; Defined at:
;;		line 24 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_writeUART
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=0
	line	24
global __ptext39
__ptext39:	;psect for function i1_putUART
psect	text39
	file	"serial.c"
	line	24
	global	__size_ofi1_putUART
	__size_ofi1_putUART	equ	__end_ofi1_putUART-i1_putUART
	
i1_putUART:	
;incstack = 0
	opt	callstack 1
; Regs used in i1_putUART: [wreg]
	movwf	(i1putUART@val)
	line	25
	
i1l2463:	
	movf	(i1putUART@val),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(25)	;volatile
	line	26
	
i1l259:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(152)^080h,1	;volatile
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l259
u241_20:
	line	27
	
i1l262:	
	return
	opt callstack 0
GLOBAL	__end_ofi1_putUART
	__end_ofi1_putUART:
	signat	i1_putUART,4185
	global	i1_sprintf

;; *************** function i1_sprintf *****************
;; Defined at:
;;		line 505 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              2    0[BANK0 ] PTR unsigned char 
;;		 -> strADC(11), strUART(40), 
;;  f               2    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_11(37), STR_10(37), STR_8(9), STR_2(37), 
;;		 -> STR_1(37), 
;; Auto vars:     Size  Location     Type
;;  sprintf         4    0        struct .
;;  sprintf         2   16[BANK0 ] unsigned int 
;;  sprintf         2    0        PTR const unsigned char 
;;  sprintf         2    0        unsigned int 
;;  sprintf         1   18[BANK0 ] unsigned char 
;;  sprintf         1   15[BANK0 ] char 
;;  sprintf         1   14[BANK0 ] unsigned char 
;;  sprintf         1   13[BANK0 ] PTR void [1]
;;		 -> ?i1_sprintf(2), ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0      10       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      19       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___lwdiv
;;		i1___lwmod
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
global __ptext40
__ptext40:	;psect for function i1_sprintf
psect	text40
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
	global	__size_ofi1_sprintf
	__size_ofi1_sprintf	equ	__end_ofi1_sprintf-i1_sprintf
	
i1_sprintf:	
;incstack = 0
	opt	callstack 1
; Regs used in i1_sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	550
	
i1l2807:	
	movlw	(low(?i1_sprintf|((0x0)<<8)+04h))&0ffh
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	movwf	(i1sprintf@ap)
	line	553
	goto	i1l2859
	line	555
	
i1l2809:	
		movlw	37
	xorwf	((i1sprintf@c)),w
	btfsc	status,2
	goto	u287_21
	goto	u287_20
u287_21:
	goto	i1l2815
u287_20:
	line	558
	
i1l2811:	
	movf	(i1sprintf@c),w
	movwf	(??i1_sprintf+0)+0
	movf	(i1sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1sprintf@sp+1),0
	bcf	status,7
	movf	(??i1_sprintf+0)+0,w
	movwf	indf
	
i1l2813:	
	movlw	01h
	addwf	(i1sprintf@sp),f
	skipnc
	incf	(i1sprintf@sp+1),f
	movlw	0
	addwf	(i1sprintf@sp+1),f
	line	559
	goto	i1l2859
	line	565
	
i1l2815:	
	clrf	(i1sprintf@flag)
	line	661
	
i1l2819:	
	movf	(i1sprintf@f+1),w
	movwf	(??i1_sprintf+0)+0+1
	movf	(i1sprintf@f),w
	movwf	(??i1_sprintf+0)+0
	incf	(i1sprintf@f),f
	skipnz
	incf	(i1sprintf@f+1),f
	movf	1+(??i1_sprintf+0)+0,w
	movwf	btemp+1
	movf	0+(??i1_sprintf+0)+0,w
	movwf	fsr0
	fcall	stringtab
	movwf	(i1sprintf@c)
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l2861
	xorlw	100^0	; case 100
	skipnz
	goto	i1l2821
	xorlw	105^100	; case 105
	skipnz
	goto	i1l2821
	goto	i1l2859
	opt asmopt_pop

	line	1285
	
i1l2821:	
	movf	(i1sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(i1sprintf@val)
	incf	fsr0,f
	movf	indf,w
	movwf	(i1sprintf@val+1)
	
i1l2823:	
	movlw	low(02h)
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	addwf	(i1sprintf@ap),f
	line	1287
	
i1l2825:	
	btfss	(i1sprintf@val+1),7
	goto	u288_21
	goto	u288_20
u288_21:
	goto	i1l2831
u288_20:
	line	1288
	
i1l2827:	
	movlw	low(03h)
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	iorwf	(i1sprintf@flag),f
	line	1289
	
i1l2829:	
	comf	(i1sprintf@val),f
	comf	(i1sprintf@val+1),f
	incf	(i1sprintf@val),f
	skipnz
	incf	(i1sprintf@val+1),f
	line	1331
	
i1l2831:	
	clrf	(i1sprintf@c)
	incf	(i1sprintf@c),f
	
i1l2833:	
		movlw	5
	xorwf	((i1sprintf@c)),w
	btfss	status,2
	goto	u289_21
	goto	u289_20
u289_21:
	goto	i1l2837
u289_20:
	goto	i1l2843
	line	1332
	
i1l2837:	
	movf	(i1sprintf@c),w
	movwf	(??i1_sprintf+0)+0
	addwf	(??i1_sprintf+0)+0,w
	addlw	low(((_dpowers)|8000h))
	movwf	fsr0
	movlw	high(((_dpowers)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??i1_sprintf+1)+0
	fcall	stringtab
	movwf	(??i1_sprintf+1)+0+1
	movf	1+(??i1_sprintf+1)+0,w
	subwf	(i1sprintf@val+1),w
	skipz
	goto	u290_25
	movf	0+(??i1_sprintf+1)+0,w
	subwf	(i1sprintf@val),w
u290_25:
	skipnc
	goto	u290_21
	goto	u290_20
u290_21:
	goto	i1l2841
u290_20:
	goto	i1l2843
	line	1331
	
i1l2841:	
	movlw	low(01h)
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	addwf	(i1sprintf@c),f
		movlw	5
	xorwf	((i1sprintf@c)),w
	btfss	status,2
	goto	u291_21
	goto	u291_20
u291_21:
	goto	i1l2837
u291_20:
	line	1464
	
i1l2843:	
	movf	(i1sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u292_21
	goto	u292_20
u292_21:
	goto	i1l2849
u292_20:
	line	1465
	
i1l2845:	
	movlw	low(02Dh)
	movwf	(??i1_sprintf+0)+0
	movf	(i1sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1sprintf@sp+1),0
	bcf	status,7
	movf	(??i1_sprintf+0)+0,w
	movwf	indf
	
i1l2847:	
	movlw	01h
	addwf	(i1sprintf@sp),f
	skipnc
	incf	(i1sprintf@sp+1),f
	movlw	0
	addwf	(i1sprintf@sp+1),f
	line	1498
	
i1l2849:	
	movf	(i1sprintf@c),w
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	movwf	(i1sprintf@prec)
	line	1500
	goto	i1l2857
	line	1515
	
i1l2851:	
	movlw	0Ah
	movwf	(i1___lwmod@divisor)
	movlw	0
	movwf	((i1___lwmod@divisor))+1
	movf	(i1sprintf@prec),w
	movwf	(??i1_sprintf+0)+0
	addwf	(??i1_sprintf+0)+0,w
	addlw	low(((_dpowers)|8000h))
	movwf	fsr0
	movlw	high(((_dpowers)|8000h))
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(i1___lwdiv@divisor)
	fcall	stringtab
	movwf	(i1___lwdiv@divisor+1)
	movf	(i1sprintf@val+1),w
	movwf	(i1___lwdiv@dividend+1)
	movf	(i1sprintf@val),w
	movwf	(i1___lwdiv@dividend)
	fcall	i1___lwdiv
	movf	(1+(?i1___lwdiv)),w
	movwf	(i1___lwmod@dividend+1)
	movf	(0+(?i1___lwdiv)),w
	movwf	(i1___lwmod@dividend)
	fcall	i1___lwmod
	movf	(0+(?i1___lwmod)),w
	addlw	030h
	movwf	(??i1_sprintf+1)+0
	movf	(??i1_sprintf+1)+0,w
	movwf	(i1sprintf@c)
	line	1550
	
i1l2853:	
	movf	(i1sprintf@c),w
	movwf	(??i1_sprintf+0)+0
	movf	(i1sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1sprintf@sp+1),0
	bcf	status,7
	movf	(??i1_sprintf+0)+0,w
	movwf	indf
	
i1l2855:	
	movlw	01h
	addwf	(i1sprintf@sp),f
	skipnc
	incf	(i1sprintf@sp+1),f
	movlw	0
	addwf	(i1sprintf@sp+1),f
	line	1500
	
i1l2857:	
	movlw	low(-1)
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	addwf	(i1sprintf@prec),f
		incf	(((i1sprintf@prec))),w
	btfss	status,2
	goto	u293_21
	goto	u293_20
u293_21:
	goto	i1l2851
u293_20:
	line	553
	
i1l2859:	
	movf	(i1sprintf@f+1),w
	movwf	(??i1_sprintf+0)+0+1
	movf	(i1sprintf@f),w
	movwf	(??i1_sprintf+0)+0
	incf	(i1sprintf@f),f
	skipnz
	incf	(i1sprintf@f+1),f
	movf	1+(??i1_sprintf+0)+0,w
	movwf	btemp+1
	movf	0+(??i1_sprintf+0)+0,w
	movwf	fsr0
	fcall	stringtab
	movwf	(??i1_sprintf+2)+0
	movf	(??i1_sprintf+2)+0,w
	movwf	(i1sprintf@c)
	movf	(((i1sprintf@c))),w
	btfss	status,2
	goto	u294_21
	goto	u294_20
u294_21:
	goto	i1l2809
u294_20:
	line	1564
	
i1l2861:	
	movf	(i1sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1sprintf@sp+1),0
	bcf	status,7
	clrf	indf
	line	1567
	
i1l554:	
	return
	opt callstack 0
GLOBAL	__end_ofi1_sprintf
	__end_ofi1_sprintf:
	signat	i1_sprintf,4186
	global	i1___lwmod

;; *************** function i1___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[COMMON] unsigned int 
;;  dividend        2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __lwmod         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_sprintf
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext41
__ptext41:	;psect for function i1___lwmod
psect	text41
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
	global	__size_ofi1___lwmod
	__size_ofi1___lwmod	equ	__end_ofi1___lwmod-i1___lwmod
	
i1___lwmod:	
;incstack = 0
	opt	callstack 1
; Regs used in i1___lwmod: [wreg+status,2+status,0]
	line	12
	
i1l2491:	
	movf	((i1___lwmod@divisor)),w
iorwf	((i1___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u249_21
	goto	u249_20
u249_21:
	goto	i1l2509
u249_20:
	line	13
	
i1l2493:	
	clrf	(i1___lwmod@counter)
	incf	(i1___lwmod@counter),f
	line	14
	goto	i1l2499
	line	15
	
i1l2495:	
	movlw	01h
	
u250_25:
	clrc
	rlf	(i1___lwmod@divisor),f
	rlf	(i1___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u250_25
	line	16
	
i1l2497:	
	movlw	low(01h)
	movwf	(??i1___lwmod+0)+0
	movf	(??i1___lwmod+0)+0,w
	addwf	(i1___lwmod@counter),f
	line	14
	
i1l2499:	
	btfss	(i1___lwmod@divisor+1),(15)&7
	goto	u251_21
	goto	u251_20
u251_21:
	goto	i1l2495
u251_20:
	line	19
	
i1l2501:	
	movf	(i1___lwmod@divisor+1),w
	subwf	(i1___lwmod@dividend+1),w
	skipz
	goto	u252_25
	movf	(i1___lwmod@divisor),w
	subwf	(i1___lwmod@dividend),w
u252_25:
	skipc
	goto	u252_21
	goto	u252_20
u252_21:
	goto	i1l2505
u252_20:
	line	20
	
i1l2503:	
	movf	(i1___lwmod@divisor),w
	subwf	(i1___lwmod@dividend),f
	movf	(i1___lwmod@divisor+1),w
	skipc
	decf	(i1___lwmod@dividend+1),f
	subwf	(i1___lwmod@dividend+1),f
	line	21
	
i1l2505:	
	movlw	01h
	
u253_25:
	clrc
	rrf	(i1___lwmod@divisor+1),f
	rrf	(i1___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u253_25
	line	22
	
i1l2507:	
	movlw	01h
	subwf	(i1___lwmod@counter),f
	btfss	status,2
	goto	u254_21
	goto	u254_20
u254_21:
	goto	i1l2501
u254_20:
	line	24
	
i1l2509:	
	movf	(i1___lwmod@dividend+1),w
	movwf	(?i1___lwmod+1)
	movf	(i1___lwmod@dividend),w
	movwf	(?i1___lwmod)
	line	25
	
i1l976:	
	return
	opt callstack 0
GLOBAL	__end_ofi1___lwmod
	__end_ofi1___lwmod:
	signat	i1___lwmod,8282
	global	i1___lwdiv

;; *************** function i1___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __lwdiv         2    5[COMMON] unsigned int 
;;  __lwdiv         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_sprintf
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext42
__ptext42:	;psect for function i1___lwdiv
psect	text42
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
	global	__size_ofi1___lwdiv
	__size_ofi1___lwdiv	equ	__end_ofi1___lwdiv-i1___lwdiv
	
i1___lwdiv:	
;incstack = 0
	opt	callstack 1
; Regs used in i1___lwdiv: [wreg+status,2+status,0]
	line	13
	
i1l2465:	
	clrf	(i1___lwdiv@quotient)
	clrf	(i1___lwdiv@quotient+1)
	line	14
	
i1l2467:	
	movf	((i1___lwdiv@divisor)),w
iorwf	((i1___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u242_21
	goto	u242_20
u242_21:
	goto	i1l2487
u242_20:
	line	15
	
i1l2469:	
	clrf	(i1___lwdiv@counter)
	incf	(i1___lwdiv@counter),f
	line	16
	goto	i1l2475
	line	17
	
i1l2471:	
	movlw	01h
	
u243_25:
	clrc
	rlf	(i1___lwdiv@divisor),f
	rlf	(i1___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u243_25
	line	18
	
i1l2473:	
	movlw	low(01h)
	movwf	(??i1___lwdiv+0)+0
	movf	(??i1___lwdiv+0)+0,w
	addwf	(i1___lwdiv@counter),f
	line	16
	
i1l2475:	
	btfss	(i1___lwdiv@divisor+1),(15)&7
	goto	u244_21
	goto	u244_20
u244_21:
	goto	i1l2471
u244_20:
	line	21
	
i1l2477:	
	movlw	01h
	
u245_25:
	clrc
	rlf	(i1___lwdiv@quotient),f
	rlf	(i1___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u245_25
	line	22
	movf	(i1___lwdiv@divisor+1),w
	subwf	(i1___lwdiv@dividend+1),w
	skipz
	goto	u246_25
	movf	(i1___lwdiv@divisor),w
	subwf	(i1___lwdiv@dividend),w
u246_25:
	skipc
	goto	u246_21
	goto	u246_20
u246_21:
	goto	i1l2483
u246_20:
	line	23
	
i1l2479:	
	movf	(i1___lwdiv@divisor),w
	subwf	(i1___lwdiv@dividend),f
	movf	(i1___lwdiv@divisor+1),w
	skipc
	decf	(i1___lwdiv@dividend+1),f
	subwf	(i1___lwdiv@dividend+1),f
	line	24
	
i1l2481:	
	bsf	(i1___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
i1l2483:	
	movlw	01h
	
u247_25:
	clrc
	rrf	(i1___lwdiv@divisor+1),f
	rrf	(i1___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u247_25
	line	27
	
i1l2485:	
	movlw	01h
	subwf	(i1___lwdiv@counter),f
	btfss	status,2
	goto	u248_21
	goto	u248_20
u248_21:
	goto	i1l2477
u248_20:
	line	29
	
i1l2487:	
	movf	(i1___lwdiv@quotient+1),w
	movwf	(?i1___lwdiv+1)
	movf	(i1___lwdiv@quotient),w
	movwf	(?i1___lwdiv)
	line	30
	
i1l966:	
	return
	opt callstack 0
GLOBAL	__end_ofi1___lwdiv
	__end_ofi1___lwdiv:
	signat	i1___lwdiv,8282
	global	i1_rsLCD

;; *************** function i1_rsLCD *****************
;; Defined at:
;;		line 23 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;;  string          1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_delay_ms
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1,group=0
	file	"lcd.c"
	line	23
global __ptext43
__ptext43:	;psect for function i1_rsLCD
psect	text43
	file	"lcd.c"
	line	23
	global	__size_ofi1_rsLCD
	__size_ofi1_rsLCD	equ	__end_ofi1_rsLCD-i1_rsLCD
	
i1_rsLCD:	
;incstack = 0
	opt	callstack 1
; Regs used in i1_rsLCD: [wreg+status,2+status,0+pclath+cstack]
	movwf	(i1rsLCD@val)
	line	24
	
i1l2777:	
	bsf	(9),1	;volatile
	line	25
	
i1l2779:	
	movf	(i1rsLCD@val),w
	movwf	(8)	;volatile
	line	26
	
i1l2781:	
		movlw	99
	xorwf	((i1rsLCD@string)),w
	btfss	status,2
	goto	u284_21
	goto	u284_20
u284_21:
	goto	i1l2785
u284_20:
	
i1l2783:	
	bcf	(9),2	;volatile
	line	27
	
i1l2785:	
		movlw	100
	xorwf	((i1rsLCD@string)),w
	btfss	status,2
	goto	u285_21
	goto	u285_20
u285_21:
	goto	i1l2789
u285_20:
	
i1l2787:	
	bsf	(9),2	;volatile
	line	28
	
i1l2789:	
	movlw	03h
	movwf	(i1delay_ms@val)
	movlw	0
	movwf	((i1delay_ms@val))+1
	fcall	i1_delay_ms
	line	29
	
i1l2791:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	30
	movlw	03h
	movwf	(i1delay_ms@val)
	movlw	0
	movwf	((i1delay_ms@val))+1
	fcall	i1_delay_ms
	line	31
	
i1l2793:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9),1	;volatile
	line	32
	
i1l216:	
	return
	opt callstack 0
GLOBAL	__end_ofi1_rsLCD
	__end_ofi1_rsLCD:
	signat	i1_rsLCD,8281
	global	i1_delay_ms

;; *************** function i1_delay_ms *****************
;; Defined at:
;;		line 59 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  val             2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  delay_ms        2    3[COMMON] unsigned int 
;;  delay_ms        1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_rsLCD
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1,group=0
	line	59
global __ptext44
__ptext44:	;psect for function i1_delay_ms
psect	text44
	file	"lcd.c"
	line	59
	global	__size_ofi1_delay_ms
	__size_ofi1_delay_ms	equ	__end_ofi1_delay_ms-i1_delay_ms
	
i1_delay_ms:	
;incstack = 0
	opt	callstack 1
; Regs used in i1_delay_ms: [wreg+status,2+status,0]
	line	62
	
i1l2449:	
	clrf	(i1delay_ms@i)
	clrf	(i1delay_ms@i+1)
	goto	i1l234
	line	63
	
i1l2451:	
	clrf	(i1delay_ms@j)
	
i1l236:	
	line	65
# 65 "lcd.c"
NOP ;# 
	line	66
# 66 "lcd.c"
NOP ;# 
	line	67
# 67 "lcd.c"
NOP ;# 
	line	68
# 68 "lcd.c"
NOP ;# 
	line	69
# 69 "lcd.c"
NOP ;# 
psect	text44
	line	63
	
i1l2457:	
	movlw	low(01h)
	movwf	(??i1_delay_ms+0)+0
	movf	(??i1_delay_ms+0)+0,w
	addwf	(i1delay_ms@j),f
	
i1l2459:	
	movlw	low(0C8h)
	subwf	(i1delay_ms@j),w
	skipc
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l236
u239_20:
	line	62
	
i1l2461:	
	movlw	01h
	addwf	(i1delay_ms@i),f
	skipnc
	incf	(i1delay_ms@i+1),f
	movlw	0
	addwf	(i1delay_ms@i+1),f
	
i1l234:	
	movf	(i1delay_ms@val+1),w
	subwf	(i1delay_ms@i+1),w
	skipz
	goto	u240_25
	movf	(i1delay_ms@val),w
	subwf	(i1delay_ms@i),w
u240_25:
	skipc
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l2451
u240_20:
	line	73
	
i1l239:	
	return
	opt callstack 0
GLOBAL	__end_ofi1_delay_ms
	__end_ofi1_delay_ms:
	signat	i1_delay_ms,4185
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
