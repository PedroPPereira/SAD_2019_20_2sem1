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
	FNCALL	_main,_PWM1_Init
	FNCALL	_main,_PWM1_Set_Duty
	FNCALL	_main,_PWM1_Start
	FNCALL	_main,___lwdiv
	FNCALL	_main,___wmul
	FNCALL	_main,_adc_init
	FNCALL	_main,_delay_ms
	FNCALL	_main,_e2pext_w
	FNCALL	_main,_isr_init
	FNCALL	_main,_keyboard_init
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_dat
	FNCALL	_main,_lcd_init
	FNCALL	_main,_printlnL1LCD
	FNCALL	_main,_printlnL2LCD
	FNCALL	_main,_printlnLCD
	FNCALL	_main,_readADC
	FNCALL	_main,_serial_init
	FNCALL	_main,_serial_tx_str
	FNCALL	_main,_sprintf
	FNCALL	_main,_strcmp
	FNCALL	_main,_strlen
	FNCALL	_main,_strncpy
	FNCALL	_main,_switch_press_scan
	FNCALL	_switch_press_scan,_keypad_scanner
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_serial_tx_str,_serial_tx
	FNCALL	_printlnLCD,_lcd_cmd
	FNCALL	_printlnLCD,_lcd_str
	FNCALL	_printlnL2LCD,_lcd_cmd
	FNCALL	_printlnL2LCD,_lcd_str
	FNCALL	_printlnL1LCD,_lcd_cmd
	FNCALL	_printlnL1LCD,_lcd_str
	FNCALL	_lcd_str,_lcd_dat
	FNCALL	_lcd_dat,_delay_ms
	FNCALL	_lcd_dat,_lcd_wr
	FNCALL	_lcd_init,_delay_ms
	FNCALL	_lcd_init,_lcd_cmd
	FNCALL	_lcd_cmd,_delay_ms
	FNCALL	_lcd_cmd,_lcd_wr
	FNCALL	_e2pext_w,_e2pext_r
	FNCALL	_e2pext_w,_i2c_start
	FNCALL	_e2pext_w,_i2c_stop
	FNCALL	_e2pext_w,_i2c_wb
	FNCALL	_e2pext_r,_i2c_rb
	FNCALL	_e2pext_r,_i2c_start
	FNCALL	_e2pext_r,_i2c_stop
	FNCALL	_e2pext_r,_i2c_wb
	FNCALL	_i2c_wb,_delay
	FNCALL	_i2c_stop,_delay
	FNCALL	_i2c_start,_delay
	FNCALL	_i2c_rb,_delay
	FNCALL	_PWM1_Set_Duty,___lldiv
	FNCALL	_PWM1_Set_Duty,___lmul
	FNCALL	_PWM1_Init,___aldiv
	FNROOT	_main
	FNCALL	_isr,i1_serial_tx_str
	FNCALL	i1_serial_tx_str,i1_serial_tx
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_run
	global	main@F1079
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"main.c"
	line	31

;initializer for _run
	retlw	01h
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	line	90

;initializer for main@F1079
	retlw	030h
	retlw	038h
	retlw	036h
	retlw	032h
	retlw	low(0)
	global	_dpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
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
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
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
	global	_nSeconds
	global	_nMSeconds
	global	_str
	global	_T2CONbits
_T2CONbits	set	0x12
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_PORTDbits
_PORTDbits	set	0x8
	global	_PORTB
_PORTB	set	0x6
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
	global	_TRISDbits
_TRISDbits	set	0x88
	global	_TRISCbits
_TRISCbits	set	0x87
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TXSTAbits
_TXSTAbits	set	0x98
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
	
STR_4:	
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
psect	strings
	
STR_3:	
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
psect	strings
	
STR_1:	
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
psect	strings
	
STR_5:	
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	47	;'/'
	retlw	70	;'F'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	47	;'/'
	retlw	72	;'H'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	0
psect	strings
	
STR_8:	
	retlw	101	;'e'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	47	;'/'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	47	;'/'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_2:	
	retlw	80	;'P'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	58	;':'
	retlw	0
psect	strings
STR_7	equ	STR_5+0
STR_6	equ	STR_8+1
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
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_nSeconds:
       ds      2

_nMSeconds:
       ds      2

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"main.c"
	line	31
_run:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_str:
       ds      16

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"main.c"
	line	90
main@F1079:
       ds      5

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
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
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

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+010h)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	main@str_old
main@str_old:	; 16 bytes @ 0x0
	ds	16
	global	main@pass
main@pass:	; 5 bytes @ 0x10
	ds	5
	global	main@code
main@code:	; 5 bytes @ 0x15
	ds	5
	global	main@duty
main@duty:	; 2 bytes @ 0x1A
	ds	2
	global	main@tempRB3
main@tempRB3:	; 2 bytes @ 0x1C
	ds	2
	global	main@boolPass
main@boolPass:	; 1 bytes @ 0x1E
	ds	1
	global	main@bool_emerg
main@bool_emerg:	; 1 bytes @ 0x1F
	ds	1
	global	main@potP2
main@potP2:	; 2 bytes @ 0x20
	ds	2
	global	main@tempC
main@tempC:	; 2 bytes @ 0x22
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x24
	ds	2
	global	main@potP1
main@potP1:	; 2 bytes @ 0x26
	ds	2
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_serial_tx_str:	; 1 bytes @ 0x0
?_lcd_init:	; 1 bytes @ 0x0
?_keyboard_init:	; 1 bytes @ 0x0
?_lcd_cmd:	; 1 bytes @ 0x0
?_switch_press_scan:	; 1 bytes @ 0x0
?_lcd_dat:	; 1 bytes @ 0x0
?_serial_init:	; 1 bytes @ 0x0
?_adc_init:	; 1 bytes @ 0x0
?_PWM1_Start:	; 1 bytes @ 0x0
?_isr_init:	; 1 bytes @ 0x0
?_printlnL1LCD:	; 1 bytes @ 0x0
?_PWM1_Set_Duty:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
?_lcd_wr:	; 1 bytes @ 0x0
?_serial_tx:	; 1 bytes @ 0x0
?_keypad_scanner:	; 1 bytes @ 0x0
?_delay:	; 1 bytes @ 0x0
?_i2c_start:	; 1 bytes @ 0x0
?_i2c_stop:	; 1 bytes @ 0x0
?_i2c_wb:	; 1 bytes @ 0x0
?_i2c_rb:	; 1 bytes @ 0x0
?i1_serial_tx:	; 1 bytes @ 0x0
??i1_serial_tx:	; 1 bytes @ 0x0
?i1_serial_tx_str:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	i1serial_tx@val
i1serial_tx@val:	; 1 bytes @ 0x0
	ds	1
??i1_serial_tx_str:	; 1 bytes @ 0x1
	ds	1
	global	i1serial_tx_str@val
i1serial_tx_str@val:	; 1 bytes @ 0x2
	ds	1
	global	i1serial_tx_str@i
i1serial_tx_str@i:	; 1 bytes @ 0x3
	ds	1
??_isr:	; 1 bytes @ 0x4
	ds	4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_keyboard_init:	; 1 bytes @ 0x0
?_delay_ms:	; 1 bytes @ 0x0
??_serial_init:	; 1 bytes @ 0x0
??_adc_init:	; 1 bytes @ 0x0
??_PWM1_Start:	; 1 bytes @ 0x0
??_isr_init:	; 1 bytes @ 0x0
?_strncpy:	; 1 bytes @ 0x0
??_lcd_wr:	; 1 bytes @ 0x0
??_serial_tx:	; 1 bytes @ 0x0
??_keypad_scanner:	; 1 bytes @ 0x0
??_delay:	; 1 bytes @ 0x0
??_i2c_start:	; 1 bytes @ 0x0
??_i2c_stop:	; 1 bytes @ 0x0
??_i2c_wb:	; 1 bytes @ 0x0
??_i2c_rb:	; 1 bytes @ 0x0
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x0
	global	?_readADC
?_readADC:	; 2 bytes @ 0x0
	global	?_strlen
?_strlen:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	lcd_wr@val
lcd_wr@val:	; 1 bytes @ 0x0
	global	serial_tx@val
serial_tx@val:	; 1 bytes @ 0x0
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0x0
	global	strncpy@from
strncpy@from:	; 1 bytes @ 0x0
	global	delay_ms@val
delay_ms@val:	; 2 bytes @ 0x0
	global	keypad_scanner@i
keypad_scanner@i:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	ds	1
??_serial_tx_str:	; 1 bytes @ 0x1
	global	strncpy@size
strncpy@size:	; 2 bytes @ 0x1
	ds	1
??_strcmp:	; 1 bytes @ 0x2
??_delay_ms:	; 1 bytes @ 0x2
??_readADC:	; 1 bytes @ 0x2
??_strlen:	; 1 bytes @ 0x2
	global	serial_tx_str@i
serial_tx_str@i:	; 1 bytes @ 0x2
	global	i2c_wb@val
i2c_wb@val:	; 1 bytes @ 0x2
	global	i2c_rb@ack
i2c_rb@ack:	; 1 bytes @ 0x2
	global	keypad_scanner@i_613
keypad_scanner@i_613:	; 2 bytes @ 0x2
	ds	1
??_strncpy:	; 1 bytes @ 0x3
	global	serial_tx_str@val
serial_tx_str@val:	; 1 bytes @ 0x3
	global	i2c_wb@i
i2c_wb@i:	; 1 bytes @ 0x3
	global	i2c_rb@ret
i2c_rb@ret:	; 1 bytes @ 0x3
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x3
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x3
	ds	1
	global	i2c_rb@i
i2c_rb@i:	; 1 bytes @ 0x4
	global	strlen@s
strlen@s:	; 1 bytes @ 0x4
	global	strncpy@to
strncpy@to:	; 1 bytes @ 0x4
	global	keypad_scanner@i_614
keypad_scanner@i_614:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	ds	1
?_e2pext_r:	; 1 bytes @ 0x5
	global	delay_ms@j
delay_ms@j:	; 1 bytes @ 0x5
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x5
	global	strncpy@cp
strncpy@cp:	; 1 bytes @ 0x5
	global	e2pext_r@addr
e2pext_r@addr:	; 2 bytes @ 0x5
	ds	1
??_lcd_cmd:	; 1 bytes @ 0x6
??_lcd_dat:	; 1 bytes @ 0x6
	global	lcd_cmd@val
lcd_cmd@val:	; 1 bytes @ 0x6
	global	lcd_dat@val
lcd_dat@val:	; 1 bytes @ 0x6
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x6
	global	keypad_scanner@i_615
keypad_scanner@i_615:	; 2 bytes @ 0x6
	ds	1
??_lcd_init:	; 1 bytes @ 0x7
?_lcd_str:	; 1 bytes @ 0x7
??_e2pext_r:	; 1 bytes @ 0x7
	global	lcd_str@str
lcd_str@str:	; 2 bytes @ 0x7
	ds	1
??_switch_press_scan:	; 1 bytes @ 0x8
??___lmul:	; 1 bytes @ 0x8
??___aldiv:	; 1 bytes @ 0x8
	global	e2pext_r@ret
e2pext_r@ret:	; 1 bytes @ 0x8
	ds	1
??_lcd_str:	; 1 bytes @ 0x9
	global	readADC@ch
readADC@ch:	; 1 bytes @ 0x9
	global	switch_press_scan@key
switch_press_scan@key:	; 1 bytes @ 0x9
	global	e2pext_r@al
e2pext_r@al:	; 1 bytes @ 0x9
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x9
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x9
	ds	1
	global	?___wmul
?___wmul:	; 2 bytes @ 0xA
	global	lcd_str@i
lcd_str@i:	; 1 bytes @ 0xA
	global	e2pext_r@ah
e2pext_r@ah:	; 1 bytes @ 0xA
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0xA
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0xA
	ds	1
?_printlnLCD:	; 1 bytes @ 0xB
?_printlnL2LCD:	; 1 bytes @ 0xB
??_printlnL1LCD:	; 1 bytes @ 0xB
?_e2pext_w:	; 1 bytes @ 0xB
	global	printlnLCD@str2
printlnLCD@str2:	; 1 bytes @ 0xB
	global	printlnL1LCD@str1
printlnL1LCD@str1:	; 1 bytes @ 0xB
	global	printlnL2LCD@str1
printlnL2LCD@str1:	; 2 bytes @ 0xB
	global	e2pext_w@addr
e2pext_w@addr:	; 2 bytes @ 0xB
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0xB
	ds	1
??_printlnLCD:	; 1 bytes @ 0xC
	global	printlnLCD@str1
printlnLCD@str1:	; 1 bytes @ 0xC
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0xC
	ds	1
??_printlnL2LCD:	; 1 bytes @ 0xD
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0xD
	global	e2pext_w@val
e2pext_w@val:	; 1 bytes @ 0xD
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0xD
	ds	1
??_e2pext_w:	; 1 bytes @ 0xE
??___wmul:	; 1 bytes @ 0xE
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0xE
	ds	1
?_PWM1_Init:	; 1 bytes @ 0xF
	global	PWM1_Init@f
PWM1_Init@f:	; 2 bytes @ 0xF
	ds	1
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x10
	global	e2pext_w@ah
e2pext_w@ah:	; 1 bytes @ 0x10
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x10
	ds	1
??_PWM1_Init:	; 1 bytes @ 0x11
	global	e2pext_w@al
e2pext_w@al:	; 1 bytes @ 0x11
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x11
	ds	1
	global	e2pext_w@nt
e2pext_w@nt:	; 1 bytes @ 0x12
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x12
	ds	1
	global	e2pext_w@tmp
e2pext_w@tmp:	; 2 bytes @ 0x13
	ds	1
??___lwdiv:	; 1 bytes @ 0x14
	ds	1
??___lldiv:	; 1 bytes @ 0x15
	global	PWM1_Init@temp
PWM1_Init@temp:	; 2 bytes @ 0x15
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x15
	ds	1
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x16
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x17
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x18
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x18
	ds	2
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x1A
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x1A
	ds	1
??_PWM1_Set_Duty:	; 1 bytes @ 0x1B
	ds	1
??___lwmod:	; 1 bytes @ 0x1C
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x1D
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x1E
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x1E
	ds	3
	global	PWM1_Set_Duty@d
PWM1_Set_Duty@d:	; 1 bytes @ 0x21
	ds	1
	global	PWM1_Set_Duty@temp
PWM1_Set_Duty@temp:	; 2 bytes @ 0x22
	ds	3
??_sprintf:	; 1 bytes @ 0x25
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x28
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x29
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x2A
	ds	1
	global	sprintf@val
sprintf@val:	; 2 bytes @ 0x2B
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x2D
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x2E
	ds	1
??_main:	; 1 bytes @ 0x2F
	ds	2
;!
;!Data Sizes:
;!    Strings     81
;!    Constant    10
;!    Data        6
;!    BSS         20
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      13
;!    BANK0            80     49      49
;!    BANK1            80     40      61
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    strncpy@from	PTR const unsigned char  size(1) Largest target is 16
;!		 -> str(BANK1[16]), 
;!
;!    strncpy@to	PTR unsigned char  size(1) Largest target is 16
;!		 -> main@str_old(BANK1[16]), 
;!
;!    strncpy@cp	PTR unsigned char  size(1) Largest target is 16
;!		 -> main@str_old(BANK1[16]), 
;!
;!    strlen@s	PTR const unsigned char  size(1) Largest target is 16
;!		 -> main@str_old(BANK1[16]), str(BANK1[16]), 
;!
;!    strlen@cp	PTR const unsigned char  size(1) Largest target is 16
;!		 -> main@str_old(BANK1[16]), str(BANK1[16]), 
;!
;!    strcmp@s2	PTR const unsigned char  size(1) Largest target is 16
;!		 -> main@str_old(BANK1[16]), main@pass(BANK1[5]), 
;!
;!    strcmp@s1	PTR const unsigned char  size(1) Largest target is 16
;!		 -> main@code(BANK1[5]), str(BANK1[16]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 10
;!		 -> STR_8(CODE[10]), STR_6(CODE[9]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 16
;!		 -> str(BANK1[16]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    sp__matricialCode	PTR unsigned char  size(1) Largest target is 0
;!
;!    sp__readSerial	PTR unsigned char  size(1) Largest target is 0
;!
;!    serial_tx_str@val	PTR const unsigned char  size(1) Largest target is 16
;!		 -> str(BANK1[16]), 
;!
;!    printlnL2LCD@str1	PTR const unsigned char  size(2) Largest target is 19
;!		 -> STR_4(CODE[19]), STR_3(CODE[17]), str(BANK1[16]), 
;!
;!    printlnL1LCD@str1	PTR const unsigned char  size(1) Largest target is 13
;!		 -> STR_7(CODE[13]), STR_5(CODE[13]), 
;!
;!    printlnLCD@str2	PTR const unsigned char  size(1) Largest target is 6
;!		 -> STR_2(CODE[6]), 
;!
;!    printlnLCD@str1	PTR const unsigned char  size(1) Largest target is 16
;!		 -> STR_1(CODE[16]), 
;!
;!    lcd_str@str	PTR const unsigned char  size(2) Largest target is 19
;!		 -> STR_7(CODE[13]), STR_5(CODE[13]), STR_4(CODE[19]), STR_3(CODE[17]), 
;!		 -> STR_2(CODE[6]), STR_1(CODE[16]), str(BANK1[16]), 
;!
;!    sp__strncpy	PTR unsigned char  size(1) Largest target is 16
;!		 -> main@str_old(BANK1[16]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _isr in COMMON
;!
;!    _isr->i1_serial_tx_str
;!    i1_serial_tx_str->i1_serial_tx
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_sprintf
;!    _switch_press_scan->_keypad_scanner
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    ___lwdiv->___wmul
;!    _serial_tx_str->_serial_tx
;!    _printlnLCD->_lcd_str
;!    _printlnL2LCD->_lcd_str
;!    _printlnL1LCD->_lcd_str
;!    _lcd_str->_lcd_dat
;!    _lcd_dat->_delay_ms
;!    _lcd_init->_lcd_cmd
;!    _lcd_cmd->_delay_ms
;!    _e2pext_w->_e2pext_r
;!    _e2pext_r->_i2c_rb
;!    ___wmul->_readADC
;!    _PWM1_Set_Duty->___lldiv
;!    ___lldiv->___lmul
;!    _PWM1_Init->___aldiv
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                42    42      0   16454
;!                                             47 BANK0      2     2      0
;!                                              0 BANK1     40    40      0
;!                          _PWM1_Init
;!                      _PWM1_Set_Duty
;!                         _PWM1_Start
;!                            ___lwdiv
;!                             ___wmul
;!                           _adc_init
;!                           _delay_ms
;!                           _e2pext_w
;!                           _isr_init
;!                      _keyboard_init
;!                            _lcd_cmd
;!                            _lcd_dat
;!                           _lcd_init
;!                       _printlnL1LCD
;!                       _printlnL2LCD
;!                         _printlnLCD
;!                            _readADC
;!                        _serial_init
;!                      _serial_tx_str
;!                            _sprintf
;!                             _strcmp
;!                             _strlen
;!                            _strncpy
;!                  _switch_press_scan
;! ---------------------------------------------------------------------------------
;! (1) _switch_press_scan                                    2     2      0     230
;!                                              8 BANK0      2     2      0
;!                     _keypad_scanner
;! ---------------------------------------------------------------------------------
;! (2) _keypad_scanner                                       8     8      0     184
;!                                              0 BANK0      8     8      0
;! ---------------------------------------------------------------------------------
;! (1) _strncpy                                              6     3      3     299
;!                                              0 BANK0      6     3      3
;! ---------------------------------------------------------------------------------
;! (1) _strlen                                               5     3      2     150
;!                                              0 BANK0      5     3      2
;! ---------------------------------------------------------------------------------
;! (1) _strcmp                                               7     5      2     279
;!                                              0 BANK0      7     5      2
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             25    18      7    1754
;!                                             30 BANK0     17    10      7
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     287
;!                                             24 BANK0      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     802
;!                                             16 BANK0      8     4      4
;!                             ___wmul (ARG)
;!                            _readADC (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _serial_tx_str                                        3     3      0     172
;!                                              1 BANK0      3     3      0
;!                          _serial_tx
;! ---------------------------------------------------------------------------------
;! (2) _serial_tx                                            1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _serial_init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _readADC                                             10     8      2      22
;!                                              0 BANK0     10     8      2
;! ---------------------------------------------------------------------------------
;! (1) _printlnLCD                                           2     1      1    1908
;!                                             11 BANK0      2     1      1
;!                            _lcd_cmd
;!                            _lcd_str
;! ---------------------------------------------------------------------------------
;! (1) _printlnL2LCD                                         2     0      2    1984
;!                                             11 BANK0      2     0      2
;!                            _lcd_cmd
;!                            _lcd_str
;! ---------------------------------------------------------------------------------
;! (1) _printlnL1LCD                                         1     1      0    1852
;!                                             11 BANK0      1     1      0
;!                            _lcd_cmd
;!                            _lcd_str
;! ---------------------------------------------------------------------------------
;! (2) _lcd_str                                              4     2      2    1058
;!                                              7 BANK0      4     2      2
;!                            _lcd_dat
;! ---------------------------------------------------------------------------------
;! (3) _lcd_dat                                              1     1      0     712
;!                                              6 BANK0      1     1      0
;!                           _delay_ms
;!                             _lcd_wr
;! ---------------------------------------------------------------------------------
;! (1) _lcd_init                                             0     0      0    1380
;!                           _delay_ms
;!                            _lcd_cmd
;! ---------------------------------------------------------------------------------
;! (2) _lcd_cmd                                              1     1      0     712
;!                                              6 BANK0      1     1      0
;!                           _delay_ms
;!                             _lcd_wr
;! ---------------------------------------------------------------------------------
;! (4) _lcd_wr                                               1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _delay_ms                                             6     4      2     668
;!                                              0 BANK0      6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _keyboard_init                                        1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _isr_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _e2pext_w                                            10     7      3    1082
;!                                             11 BANK0     10     7      3
;!                           _e2pext_r
;!                          _i2c_start
;!                           _i2c_stop
;!                             _i2c_wb
;! ---------------------------------------------------------------------------------
;! (2) _e2pext_r                                             6     4      2     404
;!                                              5 BANK0      6     4      2
;!                             _i2c_rb
;!                          _i2c_start
;!                           _i2c_stop
;!                             _i2c_wb
;! ---------------------------------------------------------------------------------
;! (2) _i2c_wb                                               4     4      0      90
;!                                              0 BANK0      4     4      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _i2c_stop                                             0     0      0       0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _i2c_start                                            0     0      0       0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _i2c_rb                                               5     5      0     114
;!                                              0 BANK0      5     5      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _adc_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) ___wmul                                               6     2      4     604
;!                                             10 BANK0      6     2      4
;!                            _readADC (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _PWM1_Start                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM1_Set_Duty                                        9     9      0     577
;!                                             27 BANK0      9     9      0
;!                            ___lldiv
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              13     5      8     220
;!                                              0 BANK0     13     5      8
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             14     6      8     290
;!                                             13 BANK0     14     6      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _PWM1_Init                                            8     6      2     625
;!                                             15 BANK0      8     6      2
;!                            ___aldiv
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             15     7      8     428
;!                                              0 BANK0     15     7      8
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _isr                                                  4     4      0     112
;!                                              4 COMMON     4     4      0
;!                    i1_serial_tx_str
;! ---------------------------------------------------------------------------------
;! (6) i1_serial_tx_str                                      3     3      0     112
;!                                              1 COMMON     3     3      0
;!                        i1_serial_tx
;! ---------------------------------------------------------------------------------
;! (7) i1_serial_tx                                          1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _PWM1_Init
;!     ___aldiv
;!   _PWM1_Set_Duty
;!     ___lldiv
;!       ___lmul (ARG)
;!     ___lmul
;!   _PWM1_Start
;!   ___lwdiv
;!     ___wmul (ARG)
;!       _readADC (ARG)
;!     _readADC (ARG)
;!   ___wmul
;!     _readADC (ARG)
;!   _adc_init
;!   _delay_ms
;!   _e2pext_w
;!     _e2pext_r
;!       _i2c_rb
;!         _delay
;!       _i2c_start
;!         _delay
;!       _i2c_stop
;!         _delay
;!       _i2c_wb
;!         _delay
;!     _i2c_start
;!       _delay
;!     _i2c_stop
;!       _delay
;!     _i2c_wb
;!       _delay
;!   _isr_init
;!   _keyboard_init
;!   _lcd_cmd
;!     _delay_ms
;!     _lcd_wr
;!   _lcd_dat
;!     _delay_ms
;!     _lcd_wr
;!   _lcd_init
;!     _delay_ms
;!     _lcd_cmd
;!       _delay_ms
;!       _lcd_wr
;!   _printlnL1LCD
;!     _lcd_cmd
;!       _delay_ms
;!       _lcd_wr
;!     _lcd_str
;!       _lcd_dat
;!         _delay_ms
;!         _lcd_wr
;!   _printlnL2LCD
;!     _lcd_cmd
;!       _delay_ms
;!       _lcd_wr
;!     _lcd_str
;!       _lcd_dat
;!         _delay_ms
;!         _lcd_wr
;!   _printlnLCD
;!     _lcd_cmd
;!       _delay_ms
;!       _lcd_wr
;!     _lcd_str
;!       _lcd_dat
;!         _delay_ms
;!         _lcd_wr
;!   _readADC
;!   _serial_init
;!   _serial_tx_str
;!     _serial_tx
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
;!   _strcmp
;!   _strlen
;!   _strncpy
;!   _switch_press_scan
;!     _keypad_scanner
;!
;! _isr (ROOT)
;!   i1_serial_tx_str
;!     i1_serial_tx
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     28      3D       7       76.3%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     31      31       5       61.3%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      8       D       1       92.9%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      7B      12        0.0%
;!ABS                  0      0      7B       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 77 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   36[BANK1 ] int 
;;  str_old        16    0[BANK1 ] unsigned char [16]
;;  code            5   21[BANK1 ] unsigned char [5]
;;  pass            5   16[BANK1 ] unsigned char [5]
;;  potP1           2   38[BANK1 ] unsigned int 
;;  tempC           2   34[BANK1 ] unsigned int 
;;  potP2           2   32[BANK1 ] unsigned int 
;;  tempRB3         2   28[BANK1 ] int 
;;  duty            2   26[BANK1 ] unsigned int 
;;  bool_emerg      1   31[BANK1 ] unsigned char 
;;  boolPass        1   30[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   98[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      40       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2      40       0       0
;;Total ram usage:       42 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_PWM1_Init
;;		_PWM1_Set_Duty
;;		_PWM1_Start
;;		___lwdiv
;;		___wmul
;;		_adc_init
;;		_delay_ms
;;		_e2pext_w
;;		_isr_init
;;		_keyboard_init
;;		_lcd_cmd
;;		_lcd_dat
;;		_lcd_init
;;		_printlnL1LCD
;;		_printlnL2LCD
;;		_printlnLCD
;;		_readADC
;;		_serial_init
;;		_serial_tx_str
;;		_sprintf
;;		_strcmp
;;		_strlen
;;		_strncpy
;;		_switch_press_scan
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	77
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	77
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	callstack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	80
	
l2656:	
	movlw	low(0C3h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	81
	movlw	low(0FFh)
	movwf	(134)^080h	;volatile
	line	82
	movlw	low(080h)
	movwf	(135)^080h	;volatile
	line	83
	
l2658:	
	clrf	(136)^080h	;volatile
	line	84
	
l2660:	
	clrf	(137)^080h	;volatile
	line	86
	
l2662:	
	fcall	_lcd_init
	line	87
	
l2664:	
	fcall	_keyboard_init
	line	89
	
l2666:	
	clrf	(main@tempRB3)^080h
	clrf	(main@tempRB3+1)^080h
	line	91
	
l2668:	
	movlw	(main@pass)&0ffh
	movwf	fsr0
	movf	(main@F1079)^080h,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movf	(main@F1079)^080h+1,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1079)^080h+2,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1079)^080h+3,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1079)^080h+4,w
	movwf	indf
	line	92
	
l2670:	
	clrf	(main@boolPass)^080h
	
l2672:	
	clrf	(main@bool_emerg)^080h
	line	94
	
l2674:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(7),1	;volatile
	line	97
	goto	l2702
	line	98
	
l2676:	
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(printlnLCD@str2)
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	fcall	_printlnLCD
	line	99
	
l2678:	
	movlw	low(0C5h)
	fcall	_lcd_cmd
	line	100
	
l2680:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(main@i)^080h
	clrf	(main@i+1)^080h
	line	101
	
l2686:	
	fcall	_switch_press_scan
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@i)^080h,w
	addlw	low(main@code|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	102
	
l2688:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@i)^080h,w
	addlw	low(main@code|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_lcd_dat
	line	100
	
l2690:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	addwf	(main@i)^080h,f
	skipnc
	incf	(main@i+1)^080h,f
	movlw	0
	addwf	(main@i+1)^080h,f
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u2675
	movlw	04h
	subwf	(main@i)^080h,w
u2675:

	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l2686
u2670:
	line	104
	
l2692:	
	movlw	(low(main@pass|((0x0)<<8)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(strcmp@s2)
	movlw	(low(main@code|((0x0)<<8)))&0ffh
	fcall	_strcmp
	movf	((0+(?_strcmp))),w
iorwf	((1+(?_strcmp))),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l2698
u2680:
	line	105
	
l2694:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(main@boolPass)^080h
	incf	(main@boolPass)^080h,f
	line	106
	
l2696:	
	movlw	(low((((STR_3)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(printlnL2LCD@str1)
	movlw	80h
	movwf	(printlnL2LCD@str1+1)
	fcall	_printlnL2LCD
	line	107
	goto	l2700
	line	108
	
l2698:	
	movlw	(low((((STR_4)-__stringbase)|8000h)))&0ffh
	movwf	(printlnL2LCD@str1)
	movlw	80h
	movwf	(printlnL2LCD@str1+1)
	fcall	_printlnL2LCD
	line	109
	
l2700:	
	movlw	032h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	97
	
l2702:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((main@boolPass)^080h),w
	btfsc	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l2676
u2690:
	line	113
	
l2704:	
	movlw	low(07h)
	movwf	(133)^080h	;volatile
	line	114
	
l2706:	
	fcall	_serial_init
	line	115
	
l2708:	
	fcall	_adc_init
	line	116
	
l2710:	
	movlw	088h
	movwf	(PWM1_Init@f)
	movlw	013h
	movwf	((PWM1_Init@f))+1
	fcall	_PWM1_Init
	line	117
	
l2712:	
	fcall	_PWM1_Start
	line	118
	
l2714:	
	fcall	_isr_init
	line	119
	
l2716:	
	clrf	(_run)
	incf	(_run),f
	line	120
	
l2718:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(7),5	;volatile
	line	121
	
l2720:	
	movlw	(low((((STR_5)-__stringbase)|8000h)))&0ffh
	fcall	_printlnL1LCD
	line	124
	
l2722:	
	movf	((_run)),w
	btfsc	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l2722
u2700:
	line	126
	
l2724:	
	btfsc	(6),3	;volatile
	goto	u2711
	goto	u2710
u2711:
	goto	l2730
u2710:
	
l2726:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((main@tempRB3)^080h),w
iorwf	((main@tempRB3+1)^080h),w
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l2730
u2720:
	
l2728:	
	clrc
	bcf	status, 5	;RP0=0, select bank0
	btfss	(7),5	;volatile
	setc
	btfsc	status,0
	goto	u2731
	goto	u2730
	
u2731:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),5	;volatile
	goto	u2744
u2730:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),5	;volatile
u2744:
	line	127
	
l2730:	
	clrc
	bcf	status, 5	;RP0=0, select bank0
	btfss	(6),3	;volatile
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@tempRB3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@tempRB3+1)^080h
	line	130
	
l2732:	
	movlw	066h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
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
	movwf	(___lwdiv@dividend+1)
	movf	(0+(?___wmul)),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@potP1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@potP1)^080h
	line	131
	
l2734:	
	movlw	064h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@potP1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___wmul@multiplier+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@potP1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___wmul@multiplier)
	movlw	0FFh
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(___lwdiv@dividend+1)
	movf	(0+(?___wmul)),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@duty+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@duty)^080h
	line	132
	
l2736:	
	movf	(main@duty)^080h,w
	fcall	_PWM1_Set_Duty
	line	133
	
l2738:	
	movlw	066h
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
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
	movwf	(___lwdiv@dividend+1)
	movf	(0+(?___wmul)),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@potP2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@potP2)^080h
	line	134
	
l2740:	
	movlw	0CAh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
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
	movwf	(___lwdiv@dividend+1)
	movf	(0+(?___wmul)),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@tempC+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@tempC)^080h
	line	137
	
l2742:	
	movlw	(low((((STR_6)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@tempC+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@tempC)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@potP1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@potP1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@potP2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?_sprintf)+05h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@potP2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+05h
	movlw	(low(_str|((0x0)<<8)))&0ffh
	fcall	_sprintf
	line	138
	
l2744:	
	movlw	(low(main@str_old|((0x0)<<8)))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(strcmp@s2)
	movlw	(low(_str|((0x0)<<8)))&0ffh
	fcall	_strcmp
	movf	((0+(?_strcmp))),w
iorwf	((1+(?_strcmp))),w
	btfsc	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l2756
u2750:
	line	139
	
l2746:	
	movlw	(low(main@str_old|((0x0)<<8)))&0ffh
	fcall	_strlen
	movf	(0+?_strlen),w
	movwf	(??_main+0)+0
	movf	(1+?_strlen),w
	movwf	((??_main+0)+0+1)
	movlw	(low(_str|((0x0)<<8)))&0ffh
	fcall	_strlen
	movf	(1+(?_strlen)),w
	xorwf	1+(??_main+0)+0,w
	skipz
	goto	u2765
	movf	(0+(?_strlen)),w
	xorwf	0+(??_main+0)+0,w
u2765:

	skipnz
	goto	u2761
	goto	u2760
u2761:
	goto	l2752
u2760:
	line	140
	
l2748:	
	movlw	low(01h)
	fcall	_lcd_cmd
	line	141
	
l2750:	
	movlw	(low((((STR_7)-__stringbase)|8000h)))&0ffh
	fcall	_printlnL1LCD
	line	143
	
l2752:	
	movlw	(low(_str|((0x0)<<8))&0ffh)
	movwf	(printlnL2LCD@str1)
	movlw	(0x0)
	movwf	(printlnL2LCD@str1+1)
	fcall	_printlnL2LCD
	line	144
	
l2754:	
	movlw	(low(_str|((0x0)<<8)))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(strncpy@from)
	movlw	010h
	movwf	(strncpy@size)
	movlw	0
	movwf	((strncpy@size))+1
	movlw	(low(main@str_old|((0x0)<<8)))&0ffh
	fcall	_strncpy
	line	148
	
l2756:	
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	subwf	(main@potP2+1)^080h,w
	movlw	014h
	skipnz
	subwf	(main@potP2)^080h,w
	skipnc
	goto	u2771
	goto	u2770
u2771:
	goto	l2780
u2770:
	
l2758:	
	movlw	0
	subwf	(main@potP1+1)^080h,w
	movlw	051h
	skipnz
	subwf	(main@potP1)^080h,w
	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l2780
u2780:
	
l2760:	
	movlw	0
	subwf	(main@tempC+1)^080h,w
	movlw	029h
	skipnz
	subwf	(main@tempC)^080h,w
	skipc
	goto	u2791
	goto	u2790
u2791:
	goto	l2780
u2790:
	line	149
	
l2762:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7),1	;volatile
	line	150
	
l2764:	
	movlw	low(080h)
	movwf	(8)	;volatile
	line	151
	
l2766:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((main@bool_emerg)^080h),w
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l2778
u2800:
	line	152
	
l2768:	
	movlw	(low((((STR_8)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@tempC+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@tempC)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@potP1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@potP1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@potP2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?_sprintf)+05h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@potP2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+05h
	movlw	(low(_str|((0x0)<<8)))&0ffh
	fcall	_sprintf
	line	153
	
l2770:	
	movlw	(low(_str|((0x0)<<8)))&0ffh
	fcall	_serial_tx_str
	line	154
	
l2772:	
	movlw	01h
	movwf	(e2pext_w@addr)
	movlw	0
	movwf	((e2pext_w@addr))+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@potP1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(e2pext_w@val)
	fcall	_e2pext_w
	line	155
	
l2774:	
	movlw	02h
	movwf	(e2pext_w@addr)
	movlw	0
	movwf	((e2pext_w@addr))+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@potP2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(e2pext_w@val)
	fcall	_e2pext_w
	line	156
	
l2776:	
	movlw	03h
	movwf	(e2pext_w@addr)
	movlw	0
	movwf	((e2pext_w@addr))+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@tempC)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(e2pext_w@val)
	fcall	_e2pext_w
	line	158
	
l2778:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(main@bool_emerg)^080h
	incf	(main@bool_emerg)^080h,f
	line	159
	goto	l2784
	line	161
	
l2780:	
	clrf	(main@bool_emerg)^080h
	line	162
	
l2782:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(7),1	;volatile
	line	172
	
l2784:	
	movlw	014h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	goto	l2722
	global	start
	ljmp	start
	opt callstack 0
	line	175
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_switch_press_scan

;; *************** function _switch_press_scan *****************
;; Defined at:
;;		line 75 in file "matricial_key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key             1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
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
;;		_keypad_scanner
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"matricial_key.c"
	line	75
global __ptext1
__ptext1:	;psect for function _switch_press_scan
psect	text1
	file	"matricial_key.c"
	line	75
	global	__size_of_switch_press_scan
	__size_of_switch_press_scan	equ	__end_of_switch_press_scan-_switch_press_scan
	
_switch_press_scan:	
;incstack = 0
	opt	callstack 3
; Regs used in _switch_press_scan: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	77
	
l2370:	
	movlw	low(078h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_switch_press_scan+0)+0
	movf	(??_switch_press_scan+0)+0,w
	movwf	(switch_press_scan@key)
	line	78
	goto	l2374
	line	79
	
l2372:	
	fcall	_keypad_scanner
	movwf	(??_switch_press_scan+0)+0
	movf	(??_switch_press_scan+0)+0,w
	movwf	(switch_press_scan@key)
	line	78
	
l2374:	
		movlw	120
	xorwf	((switch_press_scan@key)),w
	btfsc	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l2372
u2290:
	line	80
	
l2376:	
	movf	(switch_press_scan@key),w
	line	81
	
l349:	
	return
	opt callstack 0
GLOBAL	__end_of_switch_press_scan
	__end_of_switch_press_scan:
	signat	_switch_press_scan,89
	global	_keypad_scanner

;; *************** function _keypad_scanner *****************
;; Defined at:
;;		line 16 in file "matricial_key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    6[BANK0 ] int 
;;  i               2    4[BANK0 ] int 
;;  i               2    2[BANK0 ] int 
;;  i               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
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
;;		_switch_press_scan
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	16
global __ptext2
__ptext2:	;psect for function _keypad_scanner
psect	text2
	file	"matricial_key.c"
	line	16
	global	__size_of_keypad_scanner
	__size_of_keypad_scanner	equ	__end_of_keypad_scanner-_keypad_scanner
	
_keypad_scanner:	
;incstack = 0
	opt	callstack 3
; Regs used in _keypad_scanner: [wreg+status,2+btemp+1]
	line	18
	
l2030:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(8),0	;volatile
	bsf	(8),1	;volatile
	bsf	(8),2	;volatile
	bsf	(8),3	;volatile
	line	20
	
l2032:	
	clrf	(keypad_scanner@i)
	clrf	(keypad_scanner@i+1)
	
l2038:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(keypad_scanner@i),f
	skipnc
	incf	(keypad_scanner@i+1),f
	movlw	0
	addwf	(keypad_scanner@i+1),f
	
l2040:	
	movf	(keypad_scanner@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u1505
	movlw	05h
	subwf	(keypad_scanner@i),w
u1505:

	skipc
	goto	u1501
	goto	u1500
u1501:
	goto	l2038
u1500:
	
l280:	
	line	21
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),0	;volatile
	goto	u1511
	goto	u1510
u1511:
	goto	l281
u1510:
	
l2042:	
	btfsc	(8),0	;volatile
	goto	u1521
	goto	u1520
u1521:
	goto	l281
u1520:
	
l282:	
	btfss	(6),0	;volatile
	goto	u1531
	goto	u1530
u1531:
	goto	l282
u1530:
	
l2046:	
	movlw	low(02Ah)
	goto	l285
	line	22
	
l281:	
	btfsc	(6),1	;volatile
	goto	u1541
	goto	u1540
u1541:
	goto	l287
u1540:
	
l2052:	
	btfsc	(8),0	;volatile
	goto	u1551
	goto	u1550
u1551:
	goto	l287
u1550:
	
l288:	
	btfss	(6),1	;volatile
	goto	u1561
	goto	u1560
u1561:
	goto	l288
u1560:
	
l2056:	
	movlw	low(030h)
	goto	l285
	line	23
	
l287:	
	btfsc	(6),2	;volatile
	goto	u1571
	goto	u1570
u1571:
	goto	l286
u1570:
	
l2062:	
	btfsc	(8),0	;volatile
	goto	u1581
	goto	u1580
u1581:
	goto	l286
u1580:
	
l293:	
	btfss	(6),2	;volatile
	goto	u1591
	goto	u1590
u1591:
	goto	l293
u1590:
	
l2066:	
	movlw	low(023h)
	goto	l285
	line	25
	
l286:	
	bsf	(8),0	;volatile
	bcf	(8),1	;volatile
	bsf	(8),2	;volatile
	bsf	(8),3	;volatile
	line	27
	
l2070:	
	clrf	(keypad_scanner@i_613)
	clrf	(keypad_scanner@i_613+1)
	
l2076:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(keypad_scanner@i_613),f
	skipnc
	incf	(keypad_scanner@i_613+1),f
	movlw	0
	addwf	(keypad_scanner@i_613+1),f
	
l2078:	
	movf	(keypad_scanner@i_613+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u1605
	movlw	05h
	subwf	(keypad_scanner@i_613),w
u1605:

	skipc
	goto	u1601
	goto	u1600
u1601:
	goto	l2076
u1600:
	
l297:	
	line	28
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),0	;volatile
	goto	u1611
	goto	u1610
u1611:
	goto	l298
u1610:
	
l2080:	
	btfsc	(8),1	;volatile
	goto	u1621
	goto	u1620
u1621:
	goto	l298
u1620:
	
l299:	
	btfss	(6),0	;volatile
	goto	u1631
	goto	u1630
u1631:
	goto	l299
u1630:
	
l2084:	
	movlw	low(037h)
	goto	l285
	line	29
	
l298:	
	btfsc	(6),1	;volatile
	goto	u1641
	goto	u1640
u1641:
	goto	l303
u1640:
	
l2090:	
	btfsc	(8),1	;volatile
	goto	u1651
	goto	u1650
u1651:
	goto	l303
u1650:
	
l304:	
	btfss	(6),1	;volatile
	goto	u1661
	goto	u1660
u1661:
	goto	l304
u1660:
	
l2094:	
	movlw	low(038h)
	goto	l285
	line	30
	
l303:	
	btfsc	(6),2	;volatile
	goto	u1671
	goto	u1670
u1671:
	goto	l302
u1670:
	
l2100:	
	btfsc	(8),1	;volatile
	goto	u1681
	goto	u1680
u1681:
	goto	l302
u1680:
	
l309:	
	btfss	(6),2	;volatile
	goto	u1691
	goto	u1690
u1691:
	goto	l309
u1690:
	
l2104:	
	movlw	low(039h)
	goto	l285
	line	32
	
l302:	
	bsf	(8),0	;volatile
	bsf	(8),1	;volatile
	bcf	(8),2	;volatile
	bsf	(8),3	;volatile
	line	34
	
l2108:	
	clrf	(keypad_scanner@i_614)
	clrf	(keypad_scanner@i_614+1)
	
l2114:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(keypad_scanner@i_614),f
	skipnc
	incf	(keypad_scanner@i_614+1),f
	movlw	0
	addwf	(keypad_scanner@i_614+1),f
	
l2116:	
	movf	(keypad_scanner@i_614+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u1705
	movlw	05h
	subwf	(keypad_scanner@i_614),w
u1705:

	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l2114
u1700:
	
l313:	
	line	35
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),0	;volatile
	goto	u1711
	goto	u1710
u1711:
	goto	l314
u1710:
	
l2118:	
	btfsc	(8),2	;volatile
	goto	u1721
	goto	u1720
u1721:
	goto	l314
u1720:
	
l315:	
	btfss	(6),0	;volatile
	goto	u1731
	goto	u1730
u1731:
	goto	l315
u1730:
	
l2122:	
	movlw	low(034h)
	goto	l285
	line	36
	
l314:	
	btfsc	(6),1	;volatile
	goto	u1741
	goto	u1740
u1741:
	goto	l319
u1740:
	
l2128:	
	btfsc	(8),2	;volatile
	goto	u1751
	goto	u1750
u1751:
	goto	l319
u1750:
	
l320:	
	btfss	(6),1	;volatile
	goto	u1761
	goto	u1760
u1761:
	goto	l320
u1760:
	
l2132:	
	movlw	low(035h)
	goto	l285
	line	37
	
l319:	
	btfsc	(6),2	;volatile
	goto	u1771
	goto	u1770
u1771:
	goto	l318
u1770:
	
l2138:	
	btfsc	(8),2	;volatile
	goto	u1781
	goto	u1780
u1781:
	goto	l318
u1780:
	
l325:	
	btfss	(6),2	;volatile
	goto	u1791
	goto	u1790
u1791:
	goto	l325
u1790:
	
l2142:	
	movlw	low(036h)
	goto	l285
	line	39
	
l318:	
	bsf	(8),0	;volatile
	bsf	(8),1	;volatile
	bsf	(8),2	;volatile
	bcf	(8),3	;volatile
	line	41
	
l2146:	
	clrf	(keypad_scanner@i_615)
	clrf	(keypad_scanner@i_615+1)
	
l2152:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(keypad_scanner@i_615),f
	skipnc
	incf	(keypad_scanner@i_615+1),f
	movlw	0
	addwf	(keypad_scanner@i_615+1),f
	
l2154:	
	movf	(keypad_scanner@i_615+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u1805
	movlw	05h
	subwf	(keypad_scanner@i_615),w
u1805:

	skipc
	goto	u1801
	goto	u1800
u1801:
	goto	l2152
u1800:
	
l329:	
	line	42
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),0	;volatile
	goto	u1811
	goto	u1810
u1811:
	goto	l330
u1810:
	
l2156:	
	btfsc	(8),3	;volatile
	goto	u1821
	goto	u1820
u1821:
	goto	l330
u1820:
	
l331:	
	btfss	(6),0	;volatile
	goto	u1831
	goto	u1830
u1831:
	goto	l331
u1830:
	
l2160:	
	movlw	low(031h)
	goto	l285
	line	43
	
l330:	
	btfsc	(6),1	;volatile
	goto	u1841
	goto	u1840
u1841:
	goto	l335
u1840:
	
l2166:	
	btfsc	(8),3	;volatile
	goto	u1851
	goto	u1850
u1851:
	goto	l335
u1850:
	
l336:	
	btfss	(6),1	;volatile
	goto	u1861
	goto	u1860
u1861:
	goto	l336
u1860:
	
l2170:	
	movlw	low(032h)
	goto	l285
	line	44
	
l335:	
	btfsc	(6),2	;volatile
	goto	u1871
	goto	u1870
u1871:
	goto	l2184
u1870:
	
l2176:	
	btfsc	(8),3	;volatile
	goto	u1881
	goto	u1880
u1881:
	goto	l2184
u1880:
	
l341:	
	btfss	(6),2	;volatile
	goto	u1891
	goto	u1890
u1891:
	goto	l341
u1890:
	
l2180:	
	movlw	low(033h)
	goto	l285
	line	46
	
l2184:	
	movlw	low(078h)
	line	47
	
l285:	
	return
	opt callstack 0
GLOBAL	__end_of_keypad_scanner
	__end_of_keypad_scanner:
	signat	_keypad_scanner,89
	global	_strncpy

;; *************** function _strncpy *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strncpy.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> main@str_old(16), 
;;  from            1    0[BANK0 ] PTR const unsigned char 
;;		 -> str(16), 
;;  size            2    1[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  to              1    4[BANK0 ] PTR unsigned char 
;;		 -> main@str_old(16), 
;;  cp              1    5[BANK0 ] PTR unsigned char 
;;		 -> main@str_old(16), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
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
psect	text3,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strncpy.c"
	line	8
global __ptext3
__ptext3:	;psect for function _strncpy
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strncpy.c"
	line	8
	global	__size_of_strncpy
	__size_of_strncpy	equ	__end_of_strncpy-_strncpy
	
_strncpy:	
;incstack = 0
	opt	callstack 4
; Regs used in _strncpy: [wreg-fsr0h+status,2+status,0]
	movwf	(strncpy@to)
	line	18
	
l2556:	
	movf	(strncpy@to),w
	movwf	(??_strncpy+0)+0
	movf	(??_strncpy+0)+0,w
	movwf	(strncpy@cp)
	line	19
	goto	l2564
	line	20
	
l2558:	
	movlw	01h
	subwf	(strncpy@size),f
	movlw	0
	skipc
	decf	(strncpy@size+1),f
	subwf	(strncpy@size+1),f
	line	21
	
l2560:	
	movf	(strncpy@from),w
	movwf	fsr0
	movlw	01h
	addwf	(strncpy@from),f
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strncpy+0)+0
	movf	(strncpy@cp),w
	movwf	fsr0
	movlw	01h
	addwf	(strncpy@cp),f
	movf	(??_strncpy+0)+0,w
	movwf	indf
	movf	((indf)),w
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l2564
u2490:
	goto	l2570
	line	19
	
l2564:	
	movf	((strncpy@size)),w
iorwf	((strncpy@size+1)),w
	btfss	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l2558
u2500:
	goto	l2570
	line	25
	
l2566:	
	movf	(strncpy@cp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	
l2568:	
	movlw	low(01h)
	movwf	(??_strncpy+0)+0
	movf	(??_strncpy+0)+0,w
	addwf	(strncpy@cp),f
	line	24
	
l2570:	
	movlw	01h
	subwf	(strncpy@size),f
	movlw	0
	skipc
	decf	(strncpy@size+1),f
	subwf	(strncpy@size+1),f
		incf	(((strncpy@size))),w
	skipz
	goto	u2511
	incf	(((strncpy@size+1))),w
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l2566
u2510:
	line	27
	
l1004:	
	return
	opt callstack 0
GLOBAL	__end_of_strncpy
	__end_of_strncpy:
	signat	_strncpy,12409
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> main@str_old(16), str(16), 
;; Auto vars:     Size  Location     Type
;;  s               1    4[BANK0 ] PTR const unsigned char 
;;		 -> main@str_old(16), str(16), 
;;  cp              1    3[BANK0 ] PTR const unsigned char 
;;		 -> main@str_old(16), str(16), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strlen.c"
	line	4
global __ptext4
__ptext4:	;psect for function _strlen
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strlen.c"
	line	4
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:	
;incstack = 0
	opt	callstack 4
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0]
	movwf	(strlen@s)
	line	8
	
l2546:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l2550
	line	10
	
l2548:	
	movlw	low(01h)
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	addwf	(strlen@cp),f
	line	9
	
l2550:	
	movf	(strlen@cp),w
	movwf	fsr0
	movf	(indf),w
	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l2548
u2480:
	line	12
	
l2552:	
	movf	(strlen@s),w
	subwf	(strlen@cp),w
	movwf	(?_strlen)
	clrf	(?_strlen+1)
	btfsc	(?_strlen),7
	decf	(?_strlen+1),f
	line	13
	
l994:	
	return
	opt callstack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	_strcmp

;; *************** function _strcmp *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    wreg     PTR const unsigned char 
;;		 -> main@code(5), str(16), 
;;  s2              1    0[BANK0 ] PTR const unsigned char 
;;		 -> main@str_old(16), main@pass(5), 
;; Auto vars:     Size  Location     Type
;;  s1              1    6[BANK0 ] PTR const unsigned char 
;;		 -> main@code(5), str(16), 
;;  r               1    5[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
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
psect	text5,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcmp.c"
	line	33
global __ptext5
__ptext5:	;psect for function _strcmp
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcmp.c"
	line	33
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:	
;incstack = 0
	opt	callstack 4
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0]
	movwf	(strcmp@s1)
	line	37
	
l2380:	
	goto	l2386
	line	38
	
l2382:	
	movlw	low(01h)
	movwf	(??_strcmp+0)+0
	movf	(??_strcmp+0)+0,w
	addwf	(strcmp@s1),f
	line	39
	
l2384:	
	movlw	low(01h)
	movwf	(??_strcmp+0)+0
	movf	(??_strcmp+0)+0,w
	addwf	(strcmp@s2),f
	line	37
	
l2386:	
	movf	(strcmp@s2),w
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcmp+0)+0
	movf	(strcmp@s1),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_strcmp+1)+0
	movf	(??_strcmp+0)+0,w
	subwf	(??_strcmp+1)+0,w
	movwf	(??_strcmp+2)+0
	movf	(??_strcmp+2)+0,w
	movwf	(strcmp@r)
	movf	(((strcmp@r))),w
	btfss	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l2390
u2300:
	
l2388:	
	movf	(strcmp@s1),w
	movwf	fsr0
	movf	(indf),w
	btfss	status,2
	goto	u2311
	goto	u2310
u2311:
	goto	l2382
u2310:
	line	41
	
l2390:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	line	42
	
l988:	
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
;;  sp              1    wreg     PTR unsigned char 
;;		 -> str(16), 
;;  f               1   30[BANK0 ] PTR const unsigned char 
;;		 -> STR_8(10), STR_6(9), 
;; Auto vars:     Size  Location     Type
;;  sp              1   45[BANK0 ] PTR unsigned char 
;;		 -> str(16), 
;;  tmpval          4    0        struct .
;;  val             2   43[BANK0 ] unsigned int 
;;  cp              2    0        PTR const unsigned char 
;;  len             2    0        unsigned int 
;;  c               1   46[BANK0 ] unsigned char 
;;  prec            1   42[BANK0 ] char 
;;  flag            1   41[BANK0 ] unsigned char 
;;  ap              1   40[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   30[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       7       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      17       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
global __ptext6
__ptext6:	;psect for function _sprintf
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	callstack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(sprintf@sp)
	line	550
	
l2488:	
	movlw	(low(?_sprintf|((0x0)<<8)+01h))&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	553
	goto	l2540
	line	555
	
l2490:	
		movlw	37
	xorwf	((sprintf@c)),w
	btfsc	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l2496
u2410:
	line	558
	
l2492:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2494:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	559
	goto	l2540
	line	565
	
l2496:	
	clrf	(sprintf@flag)
	line	661
	
l2500:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
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
	goto	l2542
	xorlw	100^0	; case 100
	skipnz
	goto	l2502
	xorlw	105^100	; case 105
	skipnz
	goto	l2502
	goto	l2540
	opt asmopt_pop

	line	1285
	
l2502:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@val+1)
	
l2504:	
	movlw	low(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1287
	
l2506:	
	btfss	(sprintf@val+1),7
	goto	u2421
	goto	u2420
u2421:
	goto	l2512
u2420:
	line	1288
	
l2508:	
	movlw	low(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1289
	
l2510:	
	comf	(sprintf@val),f
	comf	(sprintf@val+1),f
	incf	(sprintf@val),f
	skipnz
	incf	(sprintf@val+1),f
	line	1331
	
l2512:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	line	1332
	
l2518:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@val+1),w
	skipz
	goto	u2435
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@val),w
u2435:
	skipnc
	goto	u2431
	goto	u2430
u2431:
	goto	l2522
u2430:
	goto	l2524
	line	1331
	
l2522:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
		movlw	5
	xorwf	((sprintf@c)),w
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l2518
u2440:
	line	1464
	
l2524:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2451
	goto	u2450
u2451:
	goto	l2530
u2450:
	line	1465
	
l2526:	
	movlw	low(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2528:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1498
	
l2530:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1500
	goto	l2538
	line	1515
	
l2532:	
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	movf	(sprintf@val+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(sprintf@val),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1550
	
l2534:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2536:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1500
	
l2538:	
	movlw	low(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
		incf	(((sprintf@prec))),w
	btfss	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l2532
u2460:
	line	553
	
l2540:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	(((sprintf@c))),w
	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l2490
u2470:
	line	1564
	
l2542:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1567
	
l553:	
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
;;  divisor         2   24[BANK0 ] unsigned int 
;;  dividend        2   26[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   29[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   24[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext7
__ptext7:	;psect for function ___lwmod
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	callstack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	12
	
l2316:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u2211
	goto	u2210
u2211:
	goto	l2334
u2210:
	line	13
	
l2318:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	14
	goto	l2324
	line	15
	
l2320:	
	movlw	01h
	
u2225:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2225
	line	16
	
l2322:	
	movlw	low(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	14
	
l2324:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l2320
u2230:
	line	19
	
l2326:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2245
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2245:
	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l2330
u2240:
	line	20
	
l2328:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	21
	
l2330:	
	movlw	01h
	
u2255:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2255
	line	22
	
l2332:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2261
	goto	u2260
u2261:
	goto	l2326
u2260:
	line	24
	
l2334:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	25
	
l975:	
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
;;  divisor         2   16[BANK0 ] unsigned int 
;;  dividend        2   18[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   21[BANK0 ] unsigned int 
;;  counter         1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   16[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
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
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext8
__ptext8:	;psect for function ___lwdiv
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	callstack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	13
	
l2290:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	14
	
l2292:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l2312
u2140:
	line	15
	
l2294:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	16
	goto	l2300
	line	17
	
l2296:	
	movlw	01h
	
u2155:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2155
	line	18
	
l2298:	
	movlw	low(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	16
	
l2300:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l2296
u2160:
	line	21
	
l2302:	
	movlw	01h
	
u2175:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2175
	line	22
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2185
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2185:
	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l2308
u2180:
	line	23
	
l2304:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	24
	
l2306:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
l2308:	
	movlw	01h
	
u2195:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2195
	line	27
	
l2310:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2201
	goto	u2200
u2201:
	goto	l2302
u2200:
	line	29
	
l2312:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	30
	
l965:	
	return
	opt callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_serial_tx_str

;; *************** function _serial_tx_str *****************
;; Defined at:
;;		line 32 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     PTR const unsigned char 
;;		 -> str(16), 
;; Auto vars:     Size  Location     Type
;;  val             1    3[BANK0 ] PTR const unsigned char 
;;		 -> str(16), 
;;  i               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_serial_tx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"serial.c"
	line	32
global __ptext9
__ptext9:	;psect for function _serial_tx_str
psect	text9
	file	"serial.c"
	line	32
	global	__size_of_serial_tx_str
	__size_of_serial_tx_str	equ	__end_of_serial_tx_str-_serial_tx_str
	
_serial_tx_str:	
;incstack = 0
	opt	callstack 3
; Regs used in _serial_tx_str: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(serial_tx_str@val)
	line	34
	
l2340:	
	clrf	(serial_tx_str@i)
	line	36
	goto	l2346
	line	38
	
l2342:	
	movf	(serial_tx_str@i),w
	addwf	(serial_tx_str@val),w
	movwf	(??_serial_tx_str+0)+0
	movf	0+(??_serial_tx_str+0)+0,w
	movwf	fsr0
	movf	indf,w
	fcall	_serial_tx
	line	39
	
l2344:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_serial_tx_str+0)+0
	movf	(??_serial_tx_str+0)+0,w
	addwf	(serial_tx_str@i),f
	line	36
	
l2346:	
	movf	(serial_tx_str@i),w
	addwf	(serial_tx_str@val),w
	movwf	(??_serial_tx_str+0)+0
	movf	0+(??_serial_tx_str+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	(indf),w
	btfss	status,2
	goto	u2281
	goto	u2280
u2281:
	goto	l2342
u2280:
	line	41
	
l2348:	
	movlw	low(0Ah)
	fcall	_serial_tx
	line	42
	movlw	low(0Dh)
	fcall	_serial_tx
	line	44
	
l2350:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(12),5	;volatile
	line	45
	
l245:	
	return
	opt callstack 0
GLOBAL	__end_of_serial_tx_str
	__end_of_serial_tx_str:
	signat	_serial_tx_str,4217
	global	_serial_tx

;; *************** function _serial_tx *****************
;; Defined at:
;;		line 26 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    0[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_serial_tx_str
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	26
global __ptext10
__ptext10:	;psect for function _serial_tx
psect	text10
	file	"serial.c"
	line	26
	global	__size_of_serial_tx
	__size_of_serial_tx	equ	__end_of_serial_tx-_serial_tx
	
_serial_tx:	
;incstack = 0
	opt	callstack 3
; Regs used in _serial_tx: [wreg]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(serial_tx@val)
	line	28
	
l2028:	
	movf	(serial_tx@val),w
	movwf	(25)	;volatile
	line	29
	
l236:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(152)^080h,1	;volatile
	goto	u1491
	goto	u1490
u1491:
	goto	l236
u1490:
	line	30
	
l239:	
	return
	opt callstack 0
GLOBAL	__end_of_serial_tx
	__end_of_serial_tx:
	signat	_serial_tx,4217
	global	_serial_init

;; *************** function _serial_init *****************
;; Defined at:
;;		line 6 in file "serial.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/100
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
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	6
global __ptext11
__ptext11:	;psect for function _serial_init
psect	text11
	file	"serial.c"
	line	6
	global	__size_of_serial_init
	__size_of_serial_init	equ	__end_of_serial_init-_serial_init
	
_serial_init:	
;incstack = 0
	opt	callstack 4
; Regs used in _serial_init: [wreg]
	line	8
	
l2398:	
	movlw	low(067h)
	movwf	(153)^080h	;volatile
	line	12
	
l2400:	
	bcf	(152)^080h,6	;volatile
	line	13
	
l2402:	
	bsf	(152)^080h,5	;volatile
	line	14
	
l2404:	
	bcf	(152)^080h,4	;volatile
	line	15
	
l2406:	
	bsf	(152)^080h,2	;volatile
	line	16
	
l2408:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(24),7	;volatile
	line	17
	
l2410:	
	bcf	(24),6	;volatile
	line	18
	
l2412:	
	bsf	(24),4	;volatile
	line	21
	
l2414:	
	bcf	(12),5	;volatile
	line	22
	
l233:	
	return
	opt callstack 0
GLOBAL	__end_of_serial_init
	__end_of_serial_init:
	signat	_serial_init,89
	global	_readADC

;; *************** function _readADC *****************
;; Defined at:
;;		line 11 in file "adc.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"adc.c"
	line	11
global __ptext12
__ptext12:	;psect for function _readADC
psect	text12
	file	"adc.c"
	line	11
	global	__size_of_readADC
	__size_of_readADC	equ	__end_of_readADC-_readADC
	
_readADC:	
;incstack = 0
	opt	callstack 4
; Regs used in _readADC: [wreg-fsr0h+status,2+status,0]
	movwf	(readADC@ch)
	line	12
	
l2466:	
	goto	l2476
	line	14
	
l2468:	
	movlw	low(01h)
	movwf	(31)	;volatile
	line	15
	goto	l139
	line	17
	
l2470:	
	movlw	low(09h)
	movwf	(31)	;volatile
	line	18
	goto	l139
	line	20
	
l2472:	
	movlw	low(011h)
	movwf	(31)	;volatile
	line	21
	goto	l139
	line	12
	
l2476:	
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
	goto	l2468
	xorlw	1^0	; case 1
	skipnz
	goto	l2470
	xorlw	2^1	; case 2
	skipnz
	goto	l2472
	goto	l139
	opt asmopt_pop

	line	22
	
l139:	
	line	23
	bsf	(31),2	;volatile
	line	24
	
l142:	
	btfsc	(31),2	;volatile
	goto	u2381
	goto	u2380
u2381:
	goto	l142
u2380:
	line	25
	
l2478:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_readADC+0)+0
	movlw	06h
u2395:
	clrc
	rrf	(??_readADC+0)+0,f
	addlw	-1
	skipz
	goto	u2395
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
	line	26
	
l145:	
	return
	opt callstack 0
GLOBAL	__end_of_readADC
	__end_of_readADC:
	signat	_readADC,4218
	global	_printlnLCD

;; *************** function _printlnLCD *****************
;; Defined at:
;;		line 55 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  str1            1    wreg     PTR const unsigned char 
;;		 -> STR_1(16), 
;;  str2            1   11[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(6), 
;; Auto vars:     Size  Location     Type
;;  str1            1   12[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(16), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_cmd
;;		_lcd_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"lcd.c"
	line	55
global __ptext13
__ptext13:	;psect for function _printlnLCD
psect	text13
	file	"lcd.c"
	line	55
	global	__size_of_printlnLCD
	__size_of_printlnLCD	equ	__end_of_printlnLCD-_printlnLCD
	
_printlnLCD:	
;incstack = 0
	opt	callstack 1
; Regs used in _printlnLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(printlnLCD@str1)
	line	56
	
l2364:	
	movlw	low(01h)
	fcall	_lcd_cmd
	line	57
	movlw	low(080h)
	fcall	_lcd_cmd
	line	58
	
l2366:	
		movf	(printlnLCD@str1),w
	movwf	(lcd_str@str)
	movlw	0
	btfss	status,2
	movlw	080h
	movwf	(lcd_str@str+1)

	fcall	_lcd_str
	line	59
	
l2368:	
	movlw	low(0C0h)
	fcall	_lcd_cmd
	line	60
		movf	(printlnLCD@str2),w
	movwf	(lcd_str@str)
	movlw	0
	btfss	status,2
	movlw	080h
	movwf	(lcd_str@str+1)

	fcall	_lcd_str
	line	62
	
l204:	
	return
	opt callstack 0
GLOBAL	__end_of_printlnLCD
	__end_of_printlnLCD:
	signat	_printlnLCD,8313
	global	_printlnL2LCD

;; *************** function _printlnL2LCD *****************
;; Defined at:
;;		line 68 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  str1            2   11[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(19), STR_3(17), str(16), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_cmd
;;		_lcd_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	68
global __ptext14
__ptext14:	;psect for function _printlnL2LCD
psect	text14
	file	"lcd.c"
	line	68
	global	__size_of_printlnL2LCD
	__size_of_printlnL2LCD	equ	__end_of_printlnL2LCD-_printlnL2LCD
	
_printlnL2LCD:	
;incstack = 0
	opt	callstack 1
; Regs used in _printlnL2LCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	69
	
l2394:	
	movlw	low(0C0h)
	fcall	_lcd_cmd
	line	70
	
l2396:	
		movf	(printlnL2LCD@str1),w
	movwf	(lcd_str@str)
movf	(printlnL2LCD@str1+1),w
movwf	(lcd_str@str+1)

	fcall	_lcd_str
	line	71
	
l210:	
	return
	opt callstack 0
GLOBAL	__end_of_printlnL2LCD
	__end_of_printlnL2LCD:
	signat	_printlnL2LCD,4217
	global	_printlnL1LCD

;; *************** function _printlnL1LCD *****************
;; Defined at:
;;		line 64 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  str1            1    wreg     PTR const unsigned char 
;;		 -> STR_7(13), STR_5(13), 
;; Auto vars:     Size  Location     Type
;;  str1            1   11[BANK0 ] PTR const unsigned char 
;;		 -> STR_7(13), STR_5(13), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_cmd
;;		_lcd_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	64
global __ptext15
__ptext15:	;psect for function _printlnL1LCD
psect	text15
	file	"lcd.c"
	line	64
	global	__size_of_printlnL1LCD
	__size_of_printlnL1LCD	equ	__end_of_printlnL1LCD-_printlnL1LCD
	
_printlnL1LCD:	
;incstack = 0
	opt	callstack 1
; Regs used in _printlnL1LCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(printlnL1LCD@str1)
	line	65
	
l2462:	
	movlw	low(080h)
	fcall	_lcd_cmd
	line	66
	
l2464:	
		movf	(printlnL1LCD@str1),w
	movwf	(lcd_str@str)
	movlw	0
	btfss	status,2
	movlw	080h
	movwf	(lcd_str@str+1)

	fcall	_lcd_str
	line	67
	
l207:	
	return
	opt callstack 0
GLOBAL	__end_of_printlnL1LCD
	__end_of_printlnL1LCD:
	signat	_printlnL1LCD,4217
	global	_lcd_str

;; *************** function _lcd_str *****************
;; Defined at:
;;		line 46 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  str             2    7[BANK0 ] PTR const unsigned char 
;;		 -> STR_7(13), STR_5(13), STR_4(19), STR_3(17), 
;;		 -> STR_2(6), STR_1(16), str(16), 
;; Auto vars:     Size  Location     Type
;;  i               1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
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
;;		_lcd_dat
;; This function is called by:
;;		_printlnLCD
;;		_printlnL1LCD
;;		_printlnL2LCD
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	46
global __ptext16
__ptext16:	;psect for function _lcd_str
psect	text16
	file	"lcd.c"
	line	46
	global	__size_of_lcd_str
	__size_of_lcd_str	equ	__end_of_lcd_str-_lcd_str
	
_lcd_str:	
;incstack = 0
	opt	callstack 1
; Regs used in _lcd_str: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	47
	
l2020:	
	clrf	(lcd_str@i)
	line	48
	goto	l2026
	line	50
	
l2022:	
	movf	(lcd_str@i),w
	addwf	(lcd_str@str),w
	movwf	fsr0
	movf	(lcd_str@str+1),w
	skipnc
	incf	(lcd_str@str+1),w
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcd_dat
	line	51
	
l2024:	
	movlw	low(01h)
	movwf	(??_lcd_str+0)+0
	movf	(??_lcd_str+0)+0,w
	addwf	(lcd_str@i),f
	line	48
	
l2026:	
	movf	(lcd_str@i),w
	addwf	(lcd_str@str),w
	movwf	fsr0
	movf	(lcd_str@str+1),w
	skipnc
	incf	(lcd_str@str+1),w
	movwf	btemp+1
	fcall	stringtab
	xorlw	0
	skipz
	goto	u1481
	goto	u1480
u1481:
	goto	l2022
u1480:
	line	53
	
l201:	
	return
	opt callstack 0
GLOBAL	__end_of_lcd_str
	__end_of_lcd_str:
	signat	_lcd_str,4217
	global	_lcd_dat

;; *************** function _lcd_dat *****************
;; Defined at:
;;		line 18 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay_ms
;;		_lcd_wr
;; This function is called by:
;;		_main
;;		_lcd_str
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	18
global __ptext17
__ptext17:	;psect for function _lcd_dat
psect	text17
	file	"lcd.c"
	line	18
	global	__size_of_lcd_dat
	__size_of_lcd_dat	equ	__end_of_lcd_dat-_lcd_dat
	
_lcd_dat:	
;incstack = 0
	opt	callstack 1
; Regs used in _lcd_dat: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(lcd_dat@val)
	line	19
	
l1926:	
	bsf	(9),1	;volatile
	line	20
	
l1928:	
	movf	(lcd_dat@val),w
	fcall	_lcd_wr
	line	21
	
l1930:	
	bsf	(9),2	;volatile
	line	22
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	23
	
l1932:	
	bcf	(9),1	;volatile
	line	24
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	25
	
l1934:	
	bsf	(9),1	;volatile
	line	26
	
l192:	
	return
	opt callstack 0
GLOBAL	__end_of_lcd_dat
	__end_of_lcd_dat:
	signat	_lcd_dat,4217
	global	_lcd_init

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 28 in file "lcd.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_delay_ms
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	28
global __ptext18
__ptext18:	;psect for function _lcd_init
psect	text18
	file	"lcd.c"
	line	28
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
;incstack = 0
	opt	callstack 2
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	29
	
l2352:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(9),1	;volatile
	line	30
	bcf	(9),2	;volatile
	line	31
	
l2354:	
	movlw	014h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	32
	
l2356:	
	bsf	(9),1	;volatile
	line	34
	movlw	low(038h)
	fcall	_lcd_cmd
	line	35
	movlw	05h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	36
	movlw	low(038h)
	fcall	_lcd_cmd
	line	37
	movlw	01h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	38
	movlw	low(038h)
	fcall	_lcd_cmd
	line	39
	movlw	low(08h)
	fcall	_lcd_cmd
	line	40
	movlw	low(0Fh)
	fcall	_lcd_cmd
	line	41
	movlw	low(01h)
	fcall	_lcd_cmd
	line	42
	movlw	low(038h)
	fcall	_lcd_cmd
	line	43
	movlw	low(080h)
	fcall	_lcd_cmd
	line	44
	
l195:	
	return
	opt callstack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
	signat	_lcd_init,89
	global	_lcd_cmd

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 8 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay_ms
;;		_lcd_wr
;; This function is called by:
;;		_main
;;		_lcd_init
;;		_printlnLCD
;;		_printlnL1LCD
;;		_printlnL2LCD
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	8
global __ptext19
__ptext19:	;psect for function _lcd_cmd
psect	text19
	file	"lcd.c"
	line	8
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
;incstack = 0
	opt	callstack 2
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
	movwf	(lcd_cmd@val)
	line	9
	
l2010:	
	bsf	(9),1	;volatile
	line	10
	
l2012:	
	movf	(lcd_cmd@val),w
	fcall	_lcd_wr
	line	11
	
l2014:	
	bcf	(9),2	;volatile
	line	12
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	13
	
l2016:	
	bcf	(9),1	;volatile
	line	14
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	15
	
l2018:	
	bsf	(9),1	;volatile
	line	16
	
l189:	
	return
	opt callstack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
	signat	_lcd_cmd,4217
	global	_lcd_wr

;; *************** function _lcd_wr *****************
;; Defined at:
;;		line 4 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
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
;;		_lcd_cmd
;;		_lcd_dat
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	4
global __ptext20
__ptext20:	;psect for function _lcd_wr
psect	text20
	file	"lcd.c"
	line	4
	global	__size_of_lcd_wr
	__size_of_lcd_wr	equ	__end_of_lcd_wr-_lcd_wr
	
_lcd_wr:	
;incstack = 0
	opt	callstack 1
; Regs used in _lcd_wr: [wreg]
	movwf	(lcd_wr@val)
	line	5
	
l1922:	
	movf	(lcd_wr@val),w
	movwf	(8)	;volatile
	line	6
	
l186:	
	return
	opt callstack 0
GLOBAL	__end_of_lcd_wr
	__end_of_lcd_wr:
	signat	_lcd_wr,4217
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 73 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  val             2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    3[BANK0 ] unsigned int 
;;  j               1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
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
;;		_lcd_cmd
;;		_lcd_dat
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	73
global __ptext21
__ptext21:	;psect for function _delay_ms
psect	text21
	file	"lcd.c"
	line	73
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	callstack 1
; Regs used in _delay_ms: [wreg+status,2+status,0]
	line	76
	
l1908:	
	clrf	(delay_ms@i)
	clrf	(delay_ms@i+1)
	goto	l213
	line	77
	
l1910:	
	clrf	(delay_ms@j)
	
l215:	
	line	79
# 79 "lcd.c"
NOP ;# 
	line	80
# 80 "lcd.c"
NOP ;# 
	line	81
# 81 "lcd.c"
NOP ;# 
	line	82
# 82 "lcd.c"
NOP ;# 
	line	83
# 83 "lcd.c"
NOP ;# 
psect	text21
	line	77
	
l1916:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_delay_ms+0)+0
	movf	(??_delay_ms+0)+0,w
	addwf	(delay_ms@j),f
	
l1918:	
	movlw	low(0C8h)
	subwf	(delay_ms@j),w
	skipc
	goto	u1411
	goto	u1410
u1411:
	goto	l215
u1410:
	line	76
	
l1920:	
	movlw	01h
	addwf	(delay_ms@i),f
	skipnc
	incf	(delay_ms@i+1),f
	movlw	0
	addwf	(delay_ms@i+1),f
	
l213:	
	movf	(delay_ms@val+1),w
	subwf	(delay_ms@i+1),w
	skipz
	goto	u1425
	movf	(delay_ms@val),w
	subwf	(delay_ms@i),w
u1425:
	skipc
	goto	u1421
	goto	u1420
u1421:
	goto	l1910
u1420:
	line	87
	
l218:	
	return
	opt callstack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4217
	global	_keyboard_init

;; *************** function _keyboard_init *****************
;; Defined at:
;;		line 6 in file "matricial_key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"matricial_key.c"
	line	6
global __ptext22
__ptext22:	;psect for function _keyboard_init
psect	text22
	file	"matricial_key.c"
	line	6
	global	__size_of_keyboard_init
	__size_of_keyboard_init	equ	__end_of_keyboard_init-_keyboard_init
	
_keyboard_init:	
;incstack = 0
	opt	callstack 4
; Regs used in _keyboard_init: [wreg+status,2+status,0]
	line	7
	
l2358:	
	clrf	(8)	;volatile
	line	8
	clrf	(6)	;volatile
	line	9
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	10
	
l2360:	
	movlw	low(0Fh)
	movwf	(134)^080h	;volatile
	line	12
	
l2362:	
	movlw	low(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_keyboard_init+0)+0
	movf	(??_keyboard_init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(129)^080h,f	;volatile
	line	13
	
l276:	
	return
	opt callstack 0
GLOBAL	__end_of_keyboard_init
	__end_of_keyboard_init:
	signat	_keyboard_init,89
	global	_isr_init

;; *************** function _isr_init *****************
;; Defined at:
;;		line 178 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
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
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	178
global __ptext23
__ptext23:	;psect for function _isr_init
psect	text23
	file	"main.c"
	line	178
	global	__size_of_isr_init
	__size_of_isr_init	equ	__end_of_isr_init-_isr_init
	
_isr_init:	
;incstack = 0
	opt	callstack 4
; Regs used in _isr_init: [wreg]
	line	185
	
l2452:	
	movlw	low(031h)
	movwf	(16)	;volatile
	line	186
	movlw	low(0CFh)
	movwf	(15)	;volatile
	line	187
	movlw	low(02Ch)
	movwf	(14)	;volatile
	line	188
	
l2454:	
	bsf	(11),7	;volatile
	line	189
	
l2456:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(140)^080h,0	;volatile
	line	190
	
l2458:	
	bsf	(11),6	;volatile
	line	191
	
l2460:	
	bsf	(11),4	;volatile
	line	193
	
l121:	
	return
	opt callstack 0
GLOBAL	__end_of_isr_init
	__end_of_isr_init:
	signat	_isr_init,89
	global	_e2pext_w

;; *************** function _e2pext_w *****************
;; Defined at:
;;		line 34 in file "eeprom_ext.c"
;; Parameters:    Size  Location     Type
;;  addr            2   11[BANK0 ] unsigned int 
;;  val             1   13[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  tmp             2   19[BANK0 ] unsigned int 
;;  nt              1   18[BANK0 ] unsigned char 
;;  al              1   17[BANK0 ] unsigned char 
;;  ah              1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_e2pext_r
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_wb
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	file	"eeprom_ext.c"
	line	34
global __ptext24
__ptext24:	;psect for function _e2pext_w
psect	text24
	file	"eeprom_ext.c"
	line	34
	global	__size_of_e2pext_w
	__size_of_e2pext_w	equ	__end_of_e2pext_w-_e2pext_w
	
_e2pext_w:	
;incstack = 0
	opt	callstack 1
; Regs used in _e2pext_w: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l2572:	
	movf	(e2pext_w@val),w
	movwf	(??_e2pext_w+0)+0
	clrf	(??_e2pext_w+0)+0+1
	movf	0+(??_e2pext_w+0)+0,w
	movwf	(e2pext_w@tmp)
	movf	1+(??_e2pext_w+0)+0,w
	movwf	(e2pext_w@tmp+1)
	line	41
	
l2574:	
	movf	0+(e2pext_w@addr)+01h,w
	andlw	01h
	movwf	(??_e2pext_w+0)+0
	movf	(??_e2pext_w+0)+0,w
	movwf	(e2pext_w@ah)
	line	42
	
l2576:	
	movf	(e2pext_w@addr),w
	movwf	(??_e2pext_w+0)+0
	movf	(??_e2pext_w+0)+0,w
	movwf	(e2pext_w@al)
	line	43
	
l2578:	
	clrf	(e2pext_w@nt)
	line	46
	
l2580:	
	fcall	_i2c_start
	line	47
	
l2582:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((e2pext_w@ah)),w
	btfsc	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l2586
u2520:
	line	48
	
l2584:	
	movlw	low(0A2h)
	fcall	_i2c_wb
	line	49
	goto	l439
	line	51
	
l2586:	
	movlw	low(0A0h)
	fcall	_i2c_wb
	line	52
	
l439:	
	line	53
	movf	(e2pext_w@al),w
	fcall	_i2c_wb
	line	54
	movf	(e2pext_w@tmp),w
	fcall	_i2c_wb
	line	55
	
l2588:	
	fcall	_i2c_stop
	line	56
	
l2590:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_e2pext_w+0)+0
	movf	(??_e2pext_w+0)+0,w
	addwf	(e2pext_w@nt),f
	line	58
	
l2592:	
	movf	(e2pext_w@addr+1),w
	movwf	(e2pext_r@addr+1)
	movf	(e2pext_w@addr),w
	movwf	(e2pext_r@addr)
	fcall	_e2pext_r
	movwf	(??_e2pext_w+0)+0
	clrf	(??_e2pext_w+0)+0+1
	movf	(e2pext_w@tmp+1),w
	xorwf	1+(??_e2pext_w+0)+0,w
	skipz
	goto	u2535
	movf	(e2pext_w@tmp),w
	xorwf	0+(??_e2pext_w+0)+0,w
u2535:

	skipnz
	goto	u2531
	goto	u2530
u2531:
	goto	l443
u2530:
	
l2594:	
	movlw	low(0Ah)
	subwf	(e2pext_w@nt),w
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l2580
u2540:
	line	59
	
l443:	
	return
	opt callstack 0
GLOBAL	__end_of_e2pext_w
	__end_of_e2pext_w:
	signat	_e2pext_w,8313
	global	_e2pext_r

;; *************** function _e2pext_r *****************
;; Defined at:
;;		line 5 in file "eeprom_ext.c"
;; Parameters:    Size  Location     Type
;;  addr            2    5[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  ah              1   10[BANK0 ] unsigned char 
;;  al              1    9[BANK0 ] unsigned char 
;;  ret             1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
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
;;		_i2c_rb
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_wb
;; This function is called by:
;;		_e2pext_w
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	line	5
global __ptext25
__ptext25:	;psect for function _e2pext_r
psect	text25
	file	"eeprom_ext.c"
	line	5
	global	__size_of_e2pext_r
	__size_of_e2pext_r	equ	__end_of_e2pext_r-_e2pext_r
	
_e2pext_r:	
;incstack = 0
	opt	callstack 1
; Regs used in _e2pext_r: [wreg+status,2+status,0+pclath+cstack]
	line	10
	
l2188:	
	movf	0+(e2pext_r@addr)+01h,w
	andlw	01h
	movwf	(??_e2pext_r+0)+0
	movf	(??_e2pext_r+0)+0,w
	movwf	(e2pext_r@ah)
	line	11
	
l2190:	
	movf	(e2pext_r@addr),w
	movwf	(??_e2pext_r+0)+0
	movf	(??_e2pext_r+0)+0,w
	movwf	(e2pext_r@al)
	line	13
	
l2192:	
	fcall	_i2c_start
	line	14
	
l2194:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((e2pext_r@ah)),w
	btfsc	status,2
	goto	u1901
	goto	u1900
u1901:
	goto	l2198
u1900:
	line	15
	
l2196:	
	movlw	low(0A2h)
	fcall	_i2c_wb
	line	16
	goto	l431
	line	18
	
l2198:	
	movlw	low(0A0h)
	fcall	_i2c_wb
	line	19
	
l431:	
	line	20
	movf	(e2pext_r@al),w
	fcall	_i2c_wb
	line	21
	
l2200:	
	fcall	_i2c_start
	line	22
	
l2202:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((e2pext_r@ah)),w
	btfsc	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l2206
u1910:
	line	23
	
l2204:	
	movlw	low(0A3h)
	fcall	_i2c_wb
	line	24
	goto	l433
	line	26
	
l2206:	
	movlw	low(0A1h)
	fcall	_i2c_wb
	line	27
	
l433:	
	line	28
	movlw	low(01h)
	fcall	_i2c_rb
	movwf	(??_e2pext_r+0)+0
	movf	(??_e2pext_r+0)+0,w
	movwf	(e2pext_r@ret)
	line	29
	
l2208:	
	fcall	_i2c_stop
	line	30
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(e2pext_r@ret),w
	line	31
	
l434:	
	return
	opt callstack 0
GLOBAL	__end_of_e2pext_r
	__end_of_e2pext_r:
	signat	_e2pext_r,4217
	global	_i2c_wb

;; *************** function _i2c_wb *****************
;; Defined at:
;;		line 40 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    2[BANK0 ] unsigned char 
;;  i               1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
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
;;		_delay
;; This function is called by:
;;		_e2pext_r
;;		_e2pext_w
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	file	"i2c.c"
	line	40
global __ptext26
__ptext26:	;psect for function _i2c_wb
psect	text26
	file	"i2c.c"
	line	40
	global	__size_of_i2c_wb
	__size_of_i2c_wb	equ	__end_of_i2c_wb-_i2c_wb
	
_i2c_wb:	
;incstack = 0
	opt	callstack 2
; Regs used in _i2c_wb: [wreg+status,2+status,0+pclath+cstack]
	movwf	(i2c_wb@val)
	line	42
	
l1948:	
	bcf	(7),3	;volatile
	line	43
	
l1950:	
	clrf	(i2c_wb@i)
	line	44
	
l1956:	
	movf	(i2c_wb@val),w
	movwf	(??_i2c_wb+0)+0
	movf	(i2c_wb@i),w
	sublw	07h
	addlw	1
	goto	u1434
u1435:
	clrc
	rrf	(??_i2c_wb+0)+0,f
u1434:
	addlw	-1
	skipz
	goto	u1435
	movf	0+(??_i2c_wb+0)+0,w
	andlw	01h
	movwf	(??_i2c_wb+1)+0
	swapf	(??_i2c_wb+1)+0,f
	movf	(7),w	;volatile
	xorwf	(??_i2c_wb+1)+0,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_i2c_wb+1)+0,w
	movwf	(7)	;volatile
	line	45
	
l1958:	
	bsf	(7),3	;volatile
	line	46
	
l1960:	
	fcall	_delay
	line	47
	
l1962:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),3	;volatile
	line	43
	
l1964:	
	movlw	low(01h)
	movwf	(??_i2c_wb+0)+0
	movf	(??_i2c_wb+0)+0,w
	addwf	(i2c_wb@i),f
	
l1966:	
	movlw	low(08h)
	subwf	(i2c_wb@i),w
	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l1956
u1440:
	
l411:	
	line	49
	bsf	(7),4	;volatile
	line	50
	
l1968:	
	fcall	_delay
	line	51
	
l1970:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),3	;volatile
	line	52
	fcall	_delay
	line	53
	
l1972:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),3	;volatile
	line	54
	
l412:	
	return
	opt callstack 0
GLOBAL	__end_of_i2c_wb
	__end_of_i2c_wb:
	signat	_i2c_wb,4217
	global	_i2c_stop

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 32 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
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
;;		_delay
;; This function is called by:
;;		_e2pext_r
;;		_e2pext_w
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	line	32
global __ptext27
__ptext27:	;psect for function _i2c_stop
psect	text27
	file	"i2c.c"
	line	32
	global	__size_of_i2c_stop
	__size_of_i2c_stop	equ	__end_of_i2c_stop-_i2c_stop
	
_i2c_stop:	
;incstack = 0
	opt	callstack 2
; Regs used in _i2c_stop: [status,2+status,0+pclath+cstack]
	line	33
	
l1942:	
	bsf	(7),3	;volatile
	line	34
	bcf	(7),4	;volatile
	line	35
	
l1944:	
	fcall	_delay
	line	36
	
l1946:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),4	;volatile
	line	37
	fcall	_delay
	line	38
	
l407:	
	return
	opt callstack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
	signat	_i2c_stop,89
	global	_i2c_start

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 24 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
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
;;		_delay
;; This function is called by:
;;		_e2pext_r
;;		_e2pext_w
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	line	24
global __ptext28
__ptext28:	;psect for function _i2c_start
psect	text28
	file	"i2c.c"
	line	24
	global	__size_of_i2c_start
	__size_of_i2c_start	equ	__end_of_i2c_start-_i2c_start
	
_i2c_start:	
;incstack = 0
	opt	callstack 2
; Regs used in _i2c_start: [status,2+status,0+pclath+cstack]
	line	25
	
l1936:	
	bsf	(7),3	;volatile
	line	26
	bsf	(7),4	;volatile
	line	27
	
l1938:	
	fcall	_delay
	line	28
	
l1940:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),4	;volatile
	line	29
	fcall	_delay
	line	30
	
l404:	
	return
	opt callstack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
	signat	_i2c_start,89
	global	_i2c_rb

;; *************** function _i2c_rb *****************
;; Defined at:
;;		line 56 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  ack             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ack             1    2[BANK0 ] unsigned char 
;;  i               1    4[BANK0 ] unsigned char 
;;  ret             1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
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
;;		_delay
;; This function is called by:
;;		_e2pext_r
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=0
	line	56
global __ptext29
__ptext29:	;psect for function _i2c_rb
psect	text29
	file	"i2c.c"
	line	56
	global	__size_of_i2c_rb
	__size_of_i2c_rb	equ	__end_of_i2c_rb-_i2c_rb
	
_i2c_rb:	
;incstack = 0
	opt	callstack 1
; Regs used in _i2c_rb: [wreg+status,2+status,0+pclath+cstack]
	movwf	(i2c_rb@ack)
	line	58
	
l1974:	
	clrf	(i2c_rb@ret)
	line	60
	
l1976:	
	bcf	(7),3	;volatile
	line	61
	
l1978:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h,4	;volatile
	line	62
	
l1980:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(7),4	;volatile
	line	63
	clrf	(i2c_rb@i)
	
l415:	
	line	64
	bsf	(7),3	;volatile
	line	65
	
l1986:	
	fcall	_delay
	line	66
	
l1988:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	swapf	(7),w	;volatile
	andlw	(1<<1)-1
	movwf	(??_i2c_rb+0)+0
	movf	(i2c_rb@i),w
	sublw	07h
	addlw	1
	goto	u1454
u1455:
	clrc
	rlf	(??_i2c_rb+0)+0,f
u1454:
	addlw	-1
	skipz
	goto	u1455
	movf	0+(??_i2c_rb+0)+0,w
	movwf	(??_i2c_rb+1)+0
	movf	(??_i2c_rb+1)+0,w
	iorwf	(i2c_rb@ret),f
	line	67
	
l1990:	
	bcf	(7),3	;volatile
	line	63
	
l1992:	
	movlw	low(01h)
	movwf	(??_i2c_rb+0)+0
	movf	(??_i2c_rb+0)+0,w
	addwf	(i2c_rb@i),f
	
l1994:	
	movlw	low(08h)
	subwf	(i2c_rb@i),w
	skipc
	goto	u1461
	goto	u1460
u1461:
	goto	l415
u1460:
	
l416:	
	line	69
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h,4	;volatile
	line	70
	
l1996:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((i2c_rb@ack)),w
	btfsc	status,2
	goto	u1471
	goto	u1470
u1471:
	goto	l417
u1470:
	line	71
	
l1998:	
	bcf	(7),4	;volatile
	goto	l2000
	line	72
	
l417:	
	line	73
	bsf	(7),4	;volatile
	line	74
	
l2000:	
	fcall	_delay
	line	75
	
l2002:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),3	;volatile
	line	76
	fcall	_delay
	line	77
	
l2004:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),3	;volatile
	line	79
	
l2006:	
	movf	(i2c_rb@ret),w
	line	80
	
l419:	
	return
	opt callstack 0
GLOBAL	__end_of_i2c_rb
	__end_of_i2c_rb:
	signat	_i2c_rb,4217
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 5 in file "i2c.c"
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
;;		On exit  : 0/0
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
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_wb
;;		_i2c_rb
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	line	5
global __ptext30
__ptext30:	;psect for function _delay
psect	text30
	file	"i2c.c"
	line	5
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	callstack 2
; Regs used in _delay: []
	line	7
	
l1924:	
# 7 "i2c.c"
NOP ;# 
	line	8
# 8 "i2c.c"
NOP ;# 
	line	9
# 9 "i2c.c"
NOP ;# 
	line	10
# 10 "i2c.c"
NOP ;# 
	line	11
# 11 "i2c.c"
NOP ;# 
	line	12
# 12 "i2c.c"
NOP ;# 
	line	13
# 13 "i2c.c"
NOP ;# 
	line	14
# 14 "i2c.c"
NOP ;# 
psect	text30
	line	16
	
l398:	
	return
	opt callstack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,89
	global	_adc_init

;; *************** function _adc_init *****************
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
psect	text31,local,class=CODE,delta=2,merge=1,group=0
	file	"adc.c"
	line	5
global __ptext31
__ptext31:	;psect for function _adc_init
psect	text31
	file	"adc.c"
	line	5
	global	__size_of_adc_init
	__size_of_adc_init	equ	__end_of_adc_init-_adc_init
	
_adc_init:	
;incstack = 0
	opt	callstack 4
; Regs used in _adc_init: [wreg]
	line	6
	
l2416:	
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	7
	movlw	low(041h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	8
	
l134:	
	return
	opt callstack 0
GLOBAL	__end_of_adc_init
	__end_of_adc_init:
	signat	_adc_init,89
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   10[BANK0 ] unsigned int 
;;  multiplicand    2   12[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   14[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   10[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
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
psect	text32,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul16.c"
	line	15
global __ptext32
__ptext32:	;psect for function ___wmul
psect	text32
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	callstack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l2596:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l2598:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l557
u2550:
	line	46
	
l2600:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l557:	
	line	47
	movlw	01h
	
u2565:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2565
	line	48
	
l2602:	
	movlw	01h
	
u2575:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2575
	line	49
	
l2604:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l2598
u2580:
	line	52
	
l2606:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l559:	
	return
	opt callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_PWM1_Start

;; *************** function _PWM1_Start *****************
;; Defined at:
;;		line 39 in file "pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
psect	text33,local,class=CODE,delta=2,merge=1,group=0
	file	"pwm.c"
	line	39
global __ptext33
__ptext33:	;psect for function _PWM1_Start
psect	text33
	file	"pwm.c"
	line	39
	global	__size_of_PWM1_Start
	__size_of_PWM1_Start	equ	__end_of_PWM1_Start-_PWM1_Start
	
_PWM1_Start:	
;incstack = 0
	opt	callstack 4
; Regs used in _PWM1_Start: [wreg]
	line	40
	
l2444:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h,2	;volatile
	line	41
	bcf	(136)^080h,5	;volatile
	line	42
	
l2446:	
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	43
	
l2448:	
	bsf	(18),2	;volatile
	line	45
	
l2450:	
	bcf	(12),1	;volatile
	line	46
	
l382:	
	btfss	(12),1	;volatile
	goto	u2361
	goto	u2360
u2361:
	goto	l382
u2360:
	
l384:	
	line	47
	bcf	(12),1	;volatile
	line	48
	
l385:	
	btfss	(12),1	;volatile
	goto	u2371
	goto	u2370
u2371:
	goto	l385
u2370:
	line	49
	
l388:	
	return
	opt callstack 0
GLOBAL	__end_of_PWM1_Start
	__end_of_PWM1_Start:
	signat	_PWM1_Start,89
	global	_PWM1_Set_Duty

;; *************** function _PWM1_Set_Duty *****************
;; Defined at:
;;		line 51 in file "pwm.c"
;; Parameters:    Size  Location     Type
;;  d               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  d               1   33[BANK0 ] unsigned char 
;;  temp            2   34[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lldiv
;;		___lmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=0
	line	51
global __ptext34
__ptext34:	;psect for function _PWM1_Set_Duty
psect	text34
	file	"pwm.c"
	line	51
	global	__size_of_PWM1_Set_Duty
	__size_of_PWM1_Set_Duty	equ	__end_of_PWM1_Set_Duty-_PWM1_Set_Duty
	
_PWM1_Set_Duty:	
;incstack = 0
	opt	callstack 3
; Regs used in _PWM1_Set_Duty: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(PWM1_Set_Duty@d)
	line	53
	
l2482:	
	movlw	0
	movwf	(___lldiv@divisor+3)
	movlw	0
	movwf	(___lldiv@divisor+2)
	movlw	0
	movwf	(___lldiv@divisor+1)
	movlw	0FFh
	movwf	(___lldiv@divisor)

	movf	(PWM1_Set_Duty@d),w
	movwf	(??_PWM1_Set_Duty+0)+0
	clrf	(??_PWM1_Set_Duty+0)+0+1
	clrf	(??_PWM1_Set_Duty+0)+0+2
	clrf	(??_PWM1_Set_Duty+0)+0+3
	movf	3+(??_PWM1_Set_Duty+0)+0,w
	movwf	(___lmul@multiplier+3)
	movf	2+(??_PWM1_Set_Duty+0)+0,w
	movwf	(___lmul@multiplier+2)
	movf	1+(??_PWM1_Set_Duty+0)+0,w
	movwf	(___lmul@multiplier+1)
	movf	0+(??_PWM1_Set_Duty+0)+0,w
	movwf	(___lmul@multiplier)

	bsf	status, 5	;RP0=1, select bank1
	movf	(146)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_PWM1_Set_Duty+4)+0
	clrf	(??_PWM1_Set_Duty+4)+0+1
	clrc
	rlf	(??_PWM1_Set_Duty+4)+0,f
	rlf	(??_PWM1_Set_Duty+4)+1,f
	clrc
	rlf	(??_PWM1_Set_Duty+4)+0,f
	rlf	(??_PWM1_Set_Duty+4)+1,f
	movlw	03h
	iorwf	0+(??_PWM1_Set_Duty+4)+0,w
	movwf	(___lmul@multiplicand)
	movlw	0
	iorwf	1+(??_PWM1_Set_Duty+4)+0,w
	movwf	1+(___lmul@multiplicand)
	clrf	(___lmul@multiplicand)+2
	btfsc	(___lmul@multiplicand)+1,7
	decf	2+(___lmul@multiplicand),f
	movf	(___lmul@multiplicand)+2,w
	movwf	3+(___lmul@multiplicand)
	fcall	___lmul
	movf	(3+(?___lmul)),w
	movwf	(___lldiv@dividend+3)
	movf	(2+(?___lmul)),w
	movwf	(___lldiv@dividend+2)
	movf	(1+(?___lmul)),w
	movwf	(___lldiv@dividend+1)
	movf	(0+(?___lmul)),w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(1+(?___lldiv)),w
	movwf	(PWM1_Set_Duty@temp+1)
	movf	(0+(?___lldiv)),w
	movwf	(PWM1_Set_Duty@temp)
	line	54
	
l2484:	
	movf	(PWM1_Set_Duty@temp+1),w
	movwf	(??_PWM1_Set_Duty+0)+0+1
	movf	(PWM1_Set_Duty@temp),w
	movwf	(??_PWM1_Set_Duty+0)+0
	clrc
	rrf	(??_PWM1_Set_Duty+0)+1,f
	rrf	(??_PWM1_Set_Duty+0)+0,f
	clrc
	rrf	(??_PWM1_Set_Duty+0)+1,f
	rrf	(??_PWM1_Set_Duty+0)+0,f
	movf	0+(??_PWM1_Set_Duty+0)+0,w
	movwf	(21)	;volatile
	line	55
	
l2486:	
	movf	(PWM1_Set_Duty@temp),w
	andlw	03h
	movwf	(??_PWM1_Set_Duty+0)+0
	movlw	(04h)-1
u2405:
	clrc
	rlf	(??_PWM1_Set_Duty+0)+0,f
	addlw	-1
	skipz
	goto	u2405
	clrc
	rlf	(??_PWM1_Set_Duty+0)+0,w
	iorlw	0Fh
	movwf	(23)	;volatile
	line	56
	
l391:	
	return
	opt callstack 0
GLOBAL	__end_of_PWM1_Set_Duty
	__end_of_PWM1_Set_Duty:
	signat	_PWM1_Set_Duty,4217
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[BANK0 ] unsigned long 
;;  multiplicand    4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    9[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM1_Set_Duty
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul32.c"
	line	15
global __ptext35
__ptext35:	;psect for function ___lmul
psect	text35
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
;incstack = 0
	opt	callstack 3
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	119
	
l2212:	
	movlw	high highword(0)
	movwf	(___lmul@product+3)
	movlw	low highword(0)
	movwf	(___lmul@product+2)
	movlw	high(0)
	movwf	(___lmul@product+1)
	movlw	low(0)
	movwf	(___lmul@product)

	line	121
	
l2214:	
	btfss	(___lmul@multiplier),(0)&7
	goto	u1921
	goto	u1920
u1921:
	goto	l2218
u1920:
	line	122
	
l2216:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1931
	addwf	(___lmul@product+1),f
u1931:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1932
	addwf	(___lmul@product+2),f
u1932:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1933
	addwf	(___lmul@product+3),f
u1933:

	line	123
	
l2218:	
	movlw	01h
	movwf	(??___lmul+0)+0
u1945:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0)+0
	goto	u1945
	line	124
	
l2220:	
	movlw	01h
u1955:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u1955

	line	125
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u1961
	goto	u1960
u1961:
	goto	l2214
u1960:
	line	128
	
l2222:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	129
	
l571:	
	return
	opt callstack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\__lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4   13[BANK0 ] unsigned long 
;;  dividend        4   17[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   22[BANK0 ] unsigned long 
;;  counter         1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   13[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM1_Set_Duty
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\__lldiv.c"
	line	5
global __ptext36
__ptext36:	;psect for function ___lldiv
psect	text36
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\__lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	callstack 3
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	13
	
l2226:	
	movlw	high highword(0)
	movwf	(___lldiv@quotient+3)
	movlw	low highword(0)
	movwf	(___lldiv@quotient+2)
	movlw	high(0)
	movwf	(___lldiv@quotient+1)
	movlw	low(0)
	movwf	(___lldiv@quotient)

	line	14
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u1971
	goto	u1970
u1971:
	goto	l2246
u1970:
	line	15
	
l2228:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	16
	goto	l2232
	line	17
	
l2230:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u1985:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u1985
	line	18
	movlw	low(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	line	16
	
l2232:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u1991
	goto	u1990
u1991:
	goto	l2230
u1990:
	line	21
	
l2234:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u2005:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u2005
	line	22
	
l2236:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u2015
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u2015
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u2015
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u2015:
	skipc
	goto	u2011
	goto	u2010
u2011:
	goto	l2242
u2010:
	line	23
	
l2238:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	24
	
l2240:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	26
	
l2242:	
	movlw	01h
u2025:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u2025

	line	27
	
l2244:	
	movlw	01h
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u2031
	goto	u2030
u2031:
	goto	l2234
u2030:
	line	29
	
l2246:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	30
	
l593:	
	return
	opt callstack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_PWM1_Init

;; *************** function _PWM1_Init *****************
;; Defined at:
;;		line 6 in file "pwm.c"
;; Parameters:    Size  Location     Type
;;  f               2   15[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  temp            2   21[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=0
	file	"pwm.c"
	line	6
global __ptext37
__ptext37:	;psect for function _PWM1_Init
psect	text37
	file	"pwm.c"
	line	6
	global	__size_of_PWM1_Init
	__size_of_PWM1_Init	equ	__end_of_PWM1_Init-_PWM1_Init
	
_PWM1_Init:	
;incstack = 0
	opt	callstack 3
; Regs used in _PWM1_Init: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l2418:	
	clrf	(23)	;volatile
	line	13
	
l2420:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h,2	;volatile
	line	14
	
l2422:	
	bsf	(136)^080h,5	;volatile
	line	15
	
l2424:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7),2	;volatile
	line	16
	
l2426:	
	bcf	(8),5	;volatile
	line	17
	clrf	(21)	;volatile
	line	20
	
l2428:	
	bcf	(18),2	;volatile
	line	21
	
l2430:	
	movf	(PWM1_Init@f),w
	movwf	((??_PWM1_Init+0)+0)
	movf	(PWM1_Init@f+1),w
	movwf	((??_PWM1_Init+0)+0+1)
	clrf	((??_PWM1_Init+0)+0+2)
	clrf	((??_PWM1_Init+0)+0+3)
	movlw	02h
u2325:
	clrc
	rlf	(??_PWM1_Init+0)+0,f
	rlf	(??_PWM1_Init+0)+1,f
	rlf	(??_PWM1_Init+0)+2,f
	rlf	(??_PWM1_Init+0)+3,f
u2320:
	addlw	-1
	skipz
	goto	u2325
	movf	3+(??_PWM1_Init+0)+0,w
	movwf	(___aldiv@divisor+3)
	movf	2+(??_PWM1_Init+0)+0,w
	movwf	(___aldiv@divisor+2)
	movf	1+(??_PWM1_Init+0)+0,w
	movwf	(___aldiv@divisor+1)
	movf	0+(??_PWM1_Init+0)+0,w
	movwf	(___aldiv@divisor)

	movlw	0
	movwf	(___aldiv@dividend+3)
	movlw	03Dh
	movwf	(___aldiv@dividend+2)
	movlw	09h
	movwf	(___aldiv@dividend+1)
	movlw	0
	movwf	(___aldiv@dividend)

	fcall	___aldiv
	movf	(1+(?___aldiv)),w
	movwf	(PWM1_Init@temp+1)
	movf	(0+(?___aldiv)),w
	movwf	(PWM1_Init@temp)
	line	23
	
l2432:	
	movlw	01h
	subwf	(PWM1_Init@temp+1),w
	movlw	0
	skipnz
	subwf	(PWM1_Init@temp),w
	skipnc
	goto	u2331
	goto	u2330
u2331:
	goto	l2438
u2330:
	line	24
	
l2434:	
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(18),f	;volatile
	line	25
	
l2436:	
	movf	(PWM1_Init@temp),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	26
	goto	l376
	line	27
	
l2438:	
	movf	(PWM1_Init@temp+1),w
	movwf	(??_PWM1_Init+0)+0+1
	movf	(PWM1_Init@temp),w
	movwf	(??_PWM1_Init+0)+0
	clrc
	rrf	(??_PWM1_Init+0)+1,f
	rrf	(??_PWM1_Init+0)+0,f
	clrc
	rrf	(??_PWM1_Init+0)+1,f
	rrf	(??_PWM1_Init+0)+0,f
	movlw	01h
	subwf	1+(??_PWM1_Init+0)+0,w
	movlw	0
	skipnz
	subwf	0+(??_PWM1_Init+0)+0,w
	skipnc
	goto	u2341
	goto	u2340
u2341:
	goto	l2442
u2340:
	line	28
	
l2440:	
	movf	(18),w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(01h & ((1<<2)-1))<<0
	movwf	(18)	;volatile
	line	29
	movf	(PWM1_Init@temp),w
	addlw	low(02h)
	movwf	(??_PWM1_Init+0)+0
	movf	(PWM1_Init@temp+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(??_PWM1_Init+0)+0
	clrc
	rrf	(??_PWM1_Init+0)+1,f
	rrf	(??_PWM1_Init+0)+0,f
	clrc
	rrf	(??_PWM1_Init+0)+1,f
	rrf	(??_PWM1_Init+0)+0,f
	movf	0+(??_PWM1_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	30
	goto	l376
	line	32
	
l2442:	
	movf	(PWM1_Init@temp),w
	addlw	low(08h)
	movwf	(??_PWM1_Init+0)+0
	movf	(PWM1_Init@temp+1),w
	skipnc
	addlw	1
	addlw	high(08h)
	movwf	1+(??_PWM1_Init+0)+0
	movlw	04h
u2355:
	clrc
	rrf	(??_PWM1_Init+0)+1,f
	rrf	(??_PWM1_Init+0)+0,f
	addlw	-1
	skipz
	goto	u2355
	movf	0+(??_PWM1_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	33
	bcf	status, 5	;RP0=0, select bank0
	movf	(18),w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(02h & ((1<<2)-1))<<0
	movwf	(18)	;volatile
	line	34
	
l376:	
	line	35
	movlw	((0 & ((1<<4)-1))<<3)|not (((1<<4)-1)<<3)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(18),f	;volatile
	line	36
	
l379:	
	return
	opt callstack 0
GLOBAL	__end_of_PWM1_Init
	__end_of_PWM1_Init:
	signat	_PWM1_Init,4217
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] long 
;;  dividend        4    4[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   11[BANK0 ] long 
;;  sign            1   10[BANK0 ] unsigned char 
;;  counter         1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
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
;;		_PWM1_Init
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\aldiv.c"
	line	5
global __ptext38
__ptext38:	;psect for function ___aldiv
psect	text38
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
;incstack = 0
	opt	callstack 3
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	13
	
l2250:	
	clrf	(___aldiv@sign)
	line	14
	
l2252:	
	btfss	(___aldiv@divisor+3),7
	goto	u2041
	goto	u2040
u2041:
	goto	l628
u2040:
	line	15
	
l2254:	
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
	
l628:	
	line	18
	btfss	(___aldiv@dividend+3),7
	goto	u2051
	goto	u2050
u2051:
	goto	l2260
u2050:
	line	19
	
l2256:	
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
	
l2258:	
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	line	22
	
l2260:	
	movlw	high highword(0)
	movwf	(___aldiv@quotient+3)
	movlw	low highword(0)
	movwf	(___aldiv@quotient+2)
	movlw	high(0)
	movwf	(___aldiv@quotient+1)
	movlw	low(0)
	movwf	(___aldiv@quotient)

	line	23
	
l2262:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u2061
	goto	u2060
u2061:
	goto	l2282
u2060:
	line	24
	
l2264:	
	clrf	(___aldiv@counter)
	incf	(___aldiv@counter),f
	line	25
	goto	l2268
	line	26
	
l2266:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u2075:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u2075
	line	27
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	line	25
	
l2268:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u2081
	goto	u2080
u2081:
	goto	l2266
u2080:
	line	30
	
l2270:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u2095:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u2095
	line	31
	
l2272:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u2105
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u2105
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u2105
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u2105:
	skipc
	goto	u2101
	goto	u2100
u2101:
	goto	l2278
u2100:
	line	32
	
l2274:	
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
	
l2276:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	line	35
	
l2278:	
	movlw	01h
u2115:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u2115

	line	36
	
l2280:	
	movlw	01h
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l2270
u2120:
	line	38
	
l2282:	
	movf	((___aldiv@sign)),w
	btfsc	status,2
	goto	u2131
	goto	u2130
u2131:
	goto	l2286
u2130:
	line	39
	
l2284:	
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
	
l2286:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	line	41
	
l638:	
	return
	opt callstack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 35 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_serial_tx_str
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	35
global __ptext39
__ptext39:	;psect for function _isr
psect	text39
	file	"main.c"
	line	35
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;incstack = 0
	opt	callstack 1
; Regs used in _isr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_isr+1)
	movf	fsr0,w
	movwf	(??_isr+2)
	movf	pclath,w
	movwf	(??_isr+3)
	ljmp	_isr
psect	text39
	line	37
	
i1l2622:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),0	;volatile
	goto	u260_21
	goto	u260_20
u260_21:
	goto	i1l2642
u260_20:
	line	38
	
i1l2624:	
	bcf	(12),0	;volatile
	line	39
	
i1l2626:	
	movlw	low(0CFh)
	movwf	(15)	;volatile
	line	40
	movlw	low(02Ch)
	movwf	(14)	;volatile
	line	41
	
i1l2628:	
		movlw	10
	xorwf	((_nMSeconds)),w
iorwf	((_nMSeconds+1)),w
	btfss	status,2
	goto	u261_21
	goto	u261_20
u261_21:
	goto	i1l2640
u261_20:
	line	42
	
i1l2630:	
	movlw	01h
	addwf	(_nSeconds),f
	skipnc
	incf	(_nSeconds+1),f
	movlw	0
	addwf	(_nSeconds+1),f
	line	43
	
i1l2632:	
	clrf	(_nMSeconds)
	clrf	(_nMSeconds+1)
	line	44
	
i1l2634:	
		movlw	51
	xorwf	((_nSeconds)),w
iorwf	((_nSeconds+1)),w
	btfss	status,2
	goto	u262_21
	goto	u262_20
u262_21:
	goto	i1l2642
u262_20:
	line	45
	
i1l2636:	
	movlw	(low(_str|((0x0)<<8)))&0ffh
	fcall	i1_serial_tx_str
	line	46
	
i1l2638:	
	clrf	(_nSeconds)
	clrf	(_nSeconds+1)
	goto	i1l2642
	line	49
	
i1l2640:	
	movlw	01h
	addwf	(_nMSeconds),f
	skipnc
	incf	(_nMSeconds+1),f
	movlw	0
	addwf	(_nMSeconds+1),f
	line	53
	
i1l2642:	
	btfss	(11),1	;volatile
	goto	u263_21
	goto	u263_20
u263_21:
	goto	i1l94
u263_20:
	line	54
	
i1l2644:	
	bcf	(11),1	;volatile
	line	55
	
i1l2646:	
	movf	((_run)),w
	btfsc	status,2
	goto	u264_21
	goto	u264_20
u264_21:
	goto	i1l92
u264_20:
	line	56
	
i1l2648:	
	bcf	(7),5	;volatile
	line	57
	bsf	(7),1	;volatile
	line	58
	bcf	(7),2	;volatile
	line	59
	
i1l2650:	
	clrf	(23)	;volatile
	line	60
	clrf	(16)	;volatile
	line	61
	clrf	(_nSeconds)
	clrf	(_nSeconds+1)
	line	62
	clrf	(_nMSeconds)
	clrf	(_nMSeconds+1)
	line	63
	goto	i1l2654
	line	64
	
i1l92:	
	line	65
	bsf	(7),5	;volatile
	line	66
	
i1l2652:	
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	67
	movlw	low(031h)
	movwf	(16)	;volatile
	line	69
	
i1l2654:	
	movf	((_run)),w
	btfsc	status,2
	goto	u265_21
	goto	u265_20
u265_21:
	movlw	1
	goto	u266_20
u265_20:
	movlw	0
u266_20:
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_run)
	line	71
	
i1l94:	
	movf	(??_isr+3),w
	movwf	pclath
	movf	(??_isr+2),w
	movwf	fsr0
	swapf	(??_isr+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt callstack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,89
	global	i1_serial_tx_str

;; *************** function i1_serial_tx_str *****************
;; Defined at:
;;		line 32 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     PTR const unsigned char 
;;		 -> str(16), 
;; Auto vars:     Size  Location     Type
;;  val             1    2[COMMON] PTR const unsigned char 
;;		 -> str(16), 
;;  serial_tx_st    1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_serial_tx
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1,group=0
	file	"serial.c"
	line	32
global __ptext40
__ptext40:	;psect for function i1_serial_tx_str
psect	text40
	file	"serial.c"
	line	32
	global	__size_ofi1_serial_tx_str
	__size_ofi1_serial_tx_str	equ	__end_ofi1_serial_tx_str-i1_serial_tx_str
	
i1_serial_tx_str:	
;incstack = 0
	opt	callstack 1
; Regs used in i1_serial_tx_str: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(i1serial_tx_str@val)
	line	34
	
i1l2610:	
	clrf	(i1serial_tx_str@i)
	line	36
	goto	i1l2616
	line	38
	
i1l2612:	
	movf	(i1serial_tx_str@i),w
	addwf	(i1serial_tx_str@val),w
	movwf	(??i1_serial_tx_str+0)+0
	movf	0+(??i1_serial_tx_str+0)+0,w
	movwf	fsr0
	movf	indf,w
	fcall	i1_serial_tx
	line	39
	
i1l2614:	
	movlw	low(01h)
	movwf	(??i1_serial_tx_str+0)+0
	movf	(??i1_serial_tx_str+0)+0,w
	addwf	(i1serial_tx_str@i),f
	line	36
	
i1l2616:	
	movf	(i1serial_tx_str@i),w
	addwf	(i1serial_tx_str@val),w
	movwf	(??i1_serial_tx_str+0)+0
	movf	0+(??i1_serial_tx_str+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	(indf),w
	btfss	status,2
	goto	u259_21
	goto	u259_20
u259_21:
	goto	i1l2612
u259_20:
	line	41
	
i1l2618:	
	movlw	low(0Ah)
	fcall	i1_serial_tx
	line	42
	movlw	low(0Dh)
	fcall	i1_serial_tx
	line	44
	
i1l2620:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(12),5	;volatile
	line	45
	
i1l245:	
	return
	opt callstack 0
GLOBAL	__end_ofi1_serial_tx_str
	__end_ofi1_serial_tx_str:
	signat	i1_serial_tx_str,4185
	global	i1_serial_tx

;; *************** function i1_serial_tx *****************
;; Defined at:
;;		line 26 in file "serial.c"
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
;;		i1_serial_tx_str
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1,group=0
	line	26
global __ptext41
__ptext41:	;psect for function i1_serial_tx
psect	text41
	file	"serial.c"
	line	26
	global	__size_ofi1_serial_tx
	__size_ofi1_serial_tx	equ	__end_ofi1_serial_tx-i1_serial_tx
	
i1_serial_tx:	
;incstack = 0
	opt	callstack 1
; Regs used in i1_serial_tx: [wreg]
	movwf	(i1serial_tx@val)
	line	28
	
i1l2338:	
	movf	(i1serial_tx@val),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(25)	;volatile
	line	29
	
i1l236:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(152)^080h,1	;volatile
	goto	u227_21
	goto	u227_20
u227_21:
	goto	i1l236
u227_20:
	line	30
	
i1l239:	
	return
	opt callstack 0
GLOBAL	__end_ofi1_serial_tx
	__end_ofi1_serial_tx:
	signat	i1_serial_tx,4185
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
