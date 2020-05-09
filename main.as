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
	FNCALL	_main,_e2pext_r
	FNCALL	_main,_e2pext_w
	FNCALL	_main,_isr_init
	FNCALL	_main,_keyboard_init
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_init
	FNCALL	_main,_printlnL1LCD
	FNCALL	_main,_printlnL2LCD
	FNCALL	_main,_readADC
	FNCALL	_main,_readSerial
	FNCALL	_main,_serial_init
	FNCALL	_main,_serial_tx_str
	FNCALL	_main,_sprintf
	FNCALL	_main,_strcmp
	FNCALL	_main,_strcpy
	FNCALL	_main,_strlen
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_serial_tx_str,_serial_tx
	FNCALL	_readSerial,_serial_rx
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
	FNCALL	_isr,i1_sprintf
	FNCALL	i1_sprintf,i1___lwdiv
	FNCALL	i1_sprintf,i1___lwmod
	FNCALL	i1_serial_tx_str,i1_serial_tx
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_run
	global	main@F1082
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"main.c"
	line	29

;initializer for _run
	retlw	01h
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	line	88

;initializer for main@F1082
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
	global	_strADC
	global	_strUART
	global	_T2CONbits
_T2CONbits	set	0x12
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_PORTDbits
_PORTDbits	set	0x8
	global	_PORTB
_PORTB	set	0x6
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
	global	_TRISDbits
_TRISDbits	set	0x88
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISCbits
_TRISCbits	set	0x87
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
	
STR_6:	
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	103	;'g'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
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
	
STR_7:	
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
	retlw	32	;' '
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	103	;'g'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	121	;'y'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	0
psect	strings
	
STR_8:	
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
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	0
psect	strings
	
STR_9:	
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
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	66	;'B'
	retlw	0
psect	strings
	
STR_10:	
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
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	0
psect	strings
	
STR_5:	
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	121	;'y'
	retlw	45	;'-'
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
psect	strings
	
STR_1:	
	retlw	49	;'1'
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	45	;'-'
	retlw	37	;'%'
	retlw	115	;'s'
	retlw	0
psect	strings
	
STR_11:	
	retlw	40	;'('
	retlw	110	;'n'
	retlw	117	;'u'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	41	;')'
	retlw	0
psect	strings
STR_4	equ	STR_2+0
STR_3	equ	STR_6+26
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
_nSeconds:
       ds      2

_nMSeconds:
       ds      2

_strADC:
       ds      11

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"main.c"
	line	29
_run:
       ds      1

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"main.c"
	line	88
main@F1082:
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+0Fh)
	fcall	clear_ram0
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
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	global	PWM1_Init@temp
PWM1_Init@temp:	; 2 bytes @ 0x0
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x0
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x3
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x3
	ds	1
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x4
	ds	1
??_PWM1_Set_Duty:	; 1 bytes @ 0x5
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x5
	ds	2
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x7
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x8
	global	sprintf@sp
sprintf@sp:	; 2 bytes @ 0x8
	ds	2
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0xA
	ds	1
	global	PWM1_Set_Duty@d
PWM1_Set_Duty@d:	; 1 bytes @ 0xB
	ds	1
	global	PWM1_Set_Duty@temp
PWM1_Set_Duty@temp:	; 2 bytes @ 0xC
	ds	5
??_sprintf:	; 1 bytes @ 0x11
	ds	3
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x14
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x15
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x16
	ds	1
	global	sprintf@cp
sprintf@cp:	; 2 bytes @ 0x17
	ds	2
	global	sprintf@val
sprintf@val:	; 2 bytes @ 0x19
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x1B
	ds	1
??_main:	; 1 bytes @ 0x1C
	ds	7
	global	main@pass
main@pass:	; 5 bytes @ 0x23
	ds	5
	global	main@str_old
main@str_old:	; 11 bytes @ 0x28
	ds	12
	global	main@duty
main@duty:	; 2 bytes @ 0x34
	ds	2
	global	main@tempRB3
main@tempRB3:	; 2 bytes @ 0x36
	ds	2
	global	main@bool_emerg
main@bool_emerg:	; 1 bytes @ 0x38
	ds	1
	global	main@constHum
main@constHum:	; 2 bytes @ 0x39
	ds	2
	global	main@constTemp
main@constTemp:	; 2 bytes @ 0x3B
	ds	2
	global	main@constWind
main@constWind:	; 2 bytes @ 0x3D
	ds	2
	global	main@strConfig1
main@strConfig1:	; 1 bytes @ 0x3F
	ds	1
	global	main@potP2
main@potP2:	; 2 bytes @ 0x40
	ds	2
	global	main@tempC
main@tempC:	; 2 bytes @ 0x42
	ds	2
	global	main@potP1
main@potP1:	; 2 bytes @ 0x44
	ds	2
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_lcd_init:	; 1 bytes @ 0x0
?_keyboard_init:	; 1 bytes @ 0x0
?_serial_init:	; 1 bytes @ 0x0
?_adc_init:	; 1 bytes @ 0x0
?_PWM1_Start:	; 1 bytes @ 0x0
?_isr_init:	; 1 bytes @ 0x0
?_printlnL1LCD:	; 1 bytes @ 0x0
?_PWM1_Set_Duty:	; 1 bytes @ 0x0
?_lcd_cmd:	; 1 bytes @ 0x0
?_printlnL2LCD:	; 1 bytes @ 0x0
?_readSerial:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
?_lcd_wr:	; 1 bytes @ 0x0
?_lcd_dat:	; 1 bytes @ 0x0
?_serial_tx:	; 1 bytes @ 0x0
?_serial_rx:	; 1 bytes @ 0x0
?_delay:	; 1 bytes @ 0x0
?_i2c_start:	; 1 bytes @ 0x0
?_i2c_stop:	; 1 bytes @ 0x0
?_i2c_wb:	; 1 bytes @ 0x0
?_i2c_rb:	; 1 bytes @ 0x0
?i1_serial_tx:	; 1 bytes @ 0x0
??i1_serial_tx:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?i1___lwdiv
?i1___lwdiv:	; 2 bytes @ 0x0
	global	i1serial_tx@val
i1serial_tx@val:	; 1 bytes @ 0x0
	global	i1___lwdiv@divisor
i1___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
?i1_serial_tx_str:	; 1 bytes @ 0x1
	global	i1serial_tx_str@val
i1serial_tx_str@val:	; 2 bytes @ 0x1
	ds	1
	global	i1___lwdiv@dividend
i1___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??i1_serial_tx_str:	; 1 bytes @ 0x3
	ds	1
??i1___lwdiv:	; 1 bytes @ 0x4
	global	i1serial_tx_str@i
i1serial_tx_str@i:	; 1 bytes @ 0x4
	ds	1
	global	i1___lwdiv@quotient
i1___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
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
i1sprintf@f:	; 1 bytes @ 0x2
	ds	2
??i1_sprintf:	; 1 bytes @ 0x4
	ds	3
	global	i1sprintf@flag
i1sprintf@flag:	; 1 bytes @ 0x7
	ds	1
	global	i1sprintf@prec
i1sprintf@prec:	; 1 bytes @ 0x8
	ds	1
	global	i1sprintf@ap
i1sprintf@ap:	; 1 bytes @ 0x9
	ds	1
	global	i1sprintf@cp
i1sprintf@cp:	; 2 bytes @ 0xA
	ds	2
	global	i1sprintf@val
i1sprintf@val:	; 2 bytes @ 0xC
	ds	2
	global	i1sprintf@c
i1sprintf@c:	; 1 bytes @ 0xE
	ds	1
??_isr:	; 1 bytes @ 0xF
	ds	6
??_keyboard_init:	; 1 bytes @ 0x15
??_serial_init:	; 1 bytes @ 0x15
??_adc_init:	; 1 bytes @ 0x15
??_PWM1_Start:	; 1 bytes @ 0x15
??_isr_init:	; 1 bytes @ 0x15
?_strcpy:	; 1 bytes @ 0x15
??_readSerial:	; 1 bytes @ 0x15
?_delay_ms:	; 1 bytes @ 0x15
??_lcd_wr:	; 1 bytes @ 0x15
??_serial_tx:	; 1 bytes @ 0x15
??_serial_rx:	; 1 bytes @ 0x15
??_delay:	; 1 bytes @ 0x15
??_i2c_start:	; 1 bytes @ 0x15
??_i2c_stop:	; 1 bytes @ 0x15
??_i2c_wb:	; 1 bytes @ 0x15
??_i2c_rb:	; 1 bytes @ 0x15
	global	?_readADC
?_readADC:	; 2 bytes @ 0x15
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x15
	global	?_strlen
?_strlen:	; 2 bytes @ 0x15
	global	?___lmul
?___lmul:	; 4 bytes @ 0x15
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x15
	global	lcd_wr@val
lcd_wr@val:	; 1 bytes @ 0x15
	global	serial_tx@val
serial_tx@val:	; 1 bytes @ 0x15
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0x15
	global	strcpy@from
strcpy@from:	; 1 bytes @ 0x15
	global	delay_ms@val
delay_ms@val:	; 2 bytes @ 0x15
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x15
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x15
	ds	1
?_serial_tx_str:	; 1 bytes @ 0x16
??_strcpy:	; 1 bytes @ 0x16
	global	serial_tx_str@val
serial_tx_str@val:	; 2 bytes @ 0x16
	ds	1
??_readADC:	; 1 bytes @ 0x17
??_strcmp:	; 1 bytes @ 0x17
??_strlen:	; 1 bytes @ 0x17
??_delay_ms:	; 1 bytes @ 0x17
	global	readSerial@buf
readSerial@buf:	; 1 bytes @ 0x17
	global	i2c_wb@val
i2c_wb@val:	; 1 bytes @ 0x17
	global	i2c_rb@ack
i2c_rb@ack:	; 1 bytes @ 0x17
	global	strcpy@to
strcpy@to:	; 1 bytes @ 0x17
	ds	1
??_serial_tx_str:	; 1 bytes @ 0x18
	global	i2c_wb@i
i2c_wb@i:	; 1 bytes @ 0x18
	global	i2c_rb@ret
i2c_rb@ret:	; 1 bytes @ 0x18
	global	strcpy@cp
strcpy@cp:	; 1 bytes @ 0x18
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x18
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x18
	global	readSerial@i
readSerial@i:	; 2 bytes @ 0x18
	ds	1
	global	serial_tx_str@i
serial_tx_str@i:	; 1 bytes @ 0x19
	global	i2c_rb@i
i2c_rb@i:	; 1 bytes @ 0x19
	global	strlen@s
strlen@s:	; 1 bytes @ 0x19
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x19
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x19
	ds	1
?_e2pext_r:	; 1 bytes @ 0x1A
	global	delay_ms@j
delay_ms@j:	; 1 bytes @ 0x1A
	global	readSerial@tmp
readSerial@tmp:	; 1 bytes @ 0x1A
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x1A
	global	e2pext_r@addr
e2pext_r@addr:	; 2 bytes @ 0x1A
	ds	1
??_lcd_cmd:	; 1 bytes @ 0x1B
??_lcd_dat:	; 1 bytes @ 0x1B
	global	lcd_cmd@val
lcd_cmd@val:	; 1 bytes @ 0x1B
	global	lcd_dat@val
lcd_dat@val:	; 1 bytes @ 0x1B
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x1B
	ds	1
??_lcd_init:	; 1 bytes @ 0x1C
??_e2pext_r:	; 1 bytes @ 0x1C
?_lcd_str:	; 1 bytes @ 0x1C
	global	lcd_str@str
lcd_str@str:	; 2 bytes @ 0x1C
	ds	1
??___lmul:	; 1 bytes @ 0x1D
??___aldiv:	; 1 bytes @ 0x1D
	global	e2pext_r@ret
e2pext_r@ret:	; 1 bytes @ 0x1D
	ds	1
??_lcd_str:	; 1 bytes @ 0x1E
	global	readADC@ch
readADC@ch:	; 1 bytes @ 0x1E
	global	e2pext_r@al
e2pext_r@al:	; 1 bytes @ 0x1E
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x1E
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x1E
	ds	1
	global	?___wmul
?___wmul:	; 2 bytes @ 0x1F
	global	lcd_str@i
lcd_str@i:	; 1 bytes @ 0x1F
	global	e2pext_r@ah
e2pext_r@ah:	; 1 bytes @ 0x1F
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x1F
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x1F
	ds	1
??_printlnL1LCD:	; 1 bytes @ 0x20
??_printlnL2LCD:	; 1 bytes @ 0x20
?_e2pext_w:	; 1 bytes @ 0x20
	global	printlnL1LCD@str1
printlnL1LCD@str1:	; 1 bytes @ 0x20
	global	printlnL2LCD@str1
printlnL2LCD@str1:	; 1 bytes @ 0x20
	global	e2pext_w@addr
e2pext_w@addr:	; 2 bytes @ 0x20
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x20
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x21
	ds	1
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x22
	global	e2pext_w@val
e2pext_w@val:	; 1 bytes @ 0x22
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x22
	ds	1
??_e2pext_w:	; 1 bytes @ 0x23
??___wmul:	; 1 bytes @ 0x23
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x23
	ds	1
?_PWM1_Init:	; 1 bytes @ 0x24
	global	PWM1_Init@f
PWM1_Init@f:	; 2 bytes @ 0x24
	ds	1
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x25
	global	e2pext_w@ah
e2pext_w@ah:	; 1 bytes @ 0x25
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x25
	ds	1
??_PWM1_Init:	; 1 bytes @ 0x26
	global	e2pext_w@al
e2pext_w@al:	; 1 bytes @ 0x26
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x26
	ds	1
	global	e2pext_w@nt
e2pext_w@nt:	; 1 bytes @ 0x27
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x27
	ds	1
	global	e2pext_w@tmp
e2pext_w@tmp:	; 2 bytes @ 0x28
	ds	1
??___lwdiv:	; 1 bytes @ 0x29
	ds	1
??___lldiv:	; 1 bytes @ 0x2A
??___lwmod:	; 1 bytes @ 0x2A
	ds	1
;!
;!Data Sizes:
;!    Strings     204
;!    Constant    10
;!    Data        6
;!    BSS         55
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     43      59
;!    BANK1            80     70      75
;!    BANK3            96      0      40
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    strlen@s	PTR const unsigned char  size(1) Largest target is 11
;!		 -> main@str_old(BANK1[11]), strADC(BANK0[11]), 
;!
;!    strlen@cp	PTR const unsigned char  size(1) Largest target is 11
;!		 -> main@str_old(BANK1[11]), strADC(BANK0[11]), 
;!
;!    strcpy@from	PTR const unsigned char  size(1) Largest target is 11
;!		 -> strADC(BANK0[11]), 
;!
;!    strcpy@to	PTR unsigned char  size(1) Largest target is 11
;!		 -> main@str_old(BANK1[11]), 
;!
;!    strcpy@cp	PTR unsigned char  size(1) Largest target is 11
;!		 -> main@str_old(BANK1[11]), 
;!
;!    strcmp@s2	PTR const unsigned char  size(1) Largest target is 11
;!		 -> main@str_old(BANK1[11]), 
;!
;!    strcmp@s1	PTR const unsigned char  size(1) Largest target is 11
;!		 -> strADC(BANK0[11]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 35
;!		 -> STR_6(CODE[35]), STR_5(CODE[19]), STR_3(CODE[9]), STR_1(CODE[8]), 
;!
;!    sprintf@cp	PTR const unsigned char  size(2) Largest target is 11
;!		 -> STR_11(CODE[7]), ?_sprintf(BANK1[2]), strADC(BANK0[11]), 
;!
;!    sprintf@sp	PTR unsigned char  size(2) Largest target is 40
;!		 -> strADC(BANK0[11]), strUART(BANK3[40]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK1[2]), 
;!
;!    sp__matricialCode	PTR unsigned char  size(1) Largest target is 0
;!
;!    readSerial@buf	PTR unsigned char  size(1) Largest target is 1
;!		 -> main@strConfig1(BANK1[1]), 
;!
;!    serial_tx_str@val	PTR const unsigned char  size(2) Largest target is 40
;!		 -> STR_10(CODE[30]), STR_9(CODE[30]), STR_8(CODE[30]), STR_7(CODE[31]), 
;!		 -> strUART(BANK3[40]), 
;!
;!    printlnL2LCD@str1	PTR const unsigned char  size(1) Largest target is 11
;!		 -> strADC(BANK0[11]), 
;!
;!    printlnL1LCD@str1	PTR const unsigned char  size(1) Largest target is 14
;!		 -> STR_4(CODE[14]), STR_2(CODE[14]), 
;!
;!    lcd_str@str	PTR const unsigned char  size(2) Largest target is 14
;!		 -> STR_4(CODE[14]), STR_2(CODE[14]), strADC(BANK0[11]), 
;!
;!    sp__strcpy	PTR unsigned char  size(1) Largest target is 11
;!		 -> main@str_old(BANK1[11]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _isr in COMMON
;!
;!    i1_sprintf->i1___lwmod
;!    i1___lwmod->i1___lwdiv
;!    i1_serial_tx_str->i1_serial_tx
;!
;!Critical Paths under _main in BANK0
;!
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    ___lwdiv->___wmul
;!    _serial_tx_str->_serial_tx
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
;!    _isr->i1_sprintf
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_sprintf
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _PWM1_Set_Duty->___lldiv
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
;;Main: autosize = 0, tempsize = 7, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                47    47      0   15961
;!                                             28 BANK1     42    42      0
;!                          _PWM1_Init
;!                      _PWM1_Set_Duty
;!                         _PWM1_Start
;!                            ___lwdiv
;!                             ___wmul
;!                           _adc_init
;!                           _delay_ms
;!                           _e2pext_r
;!                           _e2pext_w
;!                           _isr_init
;!                      _keyboard_init
;!                            _lcd_cmd
;!                           _lcd_init
;!                       _printlnL1LCD
;!                       _printlnL2LCD
;!                            _readADC
;!                         _readSerial
;!                        _serial_init
;!                      _serial_tx_str
;!                            _sprintf
;!                             _strcmp
;!                             _strcpy
;!                             _strlen
;! ---------------------------------------------------------------------------------
;! (1) _strlen                                               5     3      2     150
;!                                             21 BANK0      5     3      2
;! ---------------------------------------------------------------------------------
;! (1) _strcpy                                               4     3      1     169
;!                                             21 BANK0      4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _strcmp                                               7     5      2     185
;!                                             21 BANK0      7     5      2
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             26    17      9    2680
;!                                              8 BANK1     20    11      9
;!                            ___lwdiv
;!                            ___lwmod
;!                           _e2pext_r (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     386
;!                                             42 BANK0      1     1      0
;!                                              3 BANK1      5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4    1011
;!                                             37 BANK0      5     1      4
;!                                              0 BANK1      3     3      0
;!                             ___wmul (ARG)
;!                            _readADC (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _serial_tx_str                                        4     2      2     534
;!                                             22 BANK0      4     2      2
;!                          _serial_tx
;! ---------------------------------------------------------------------------------
;! (2) _serial_tx                                            1     1      0      22
;!                                             21 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _serial_init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _readSerial                                           6     6      0     255
;!                                             21 BANK0      6     6      0
;!                          _serial_rx
;! ---------------------------------------------------------------------------------
;! (2) _serial_rx                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _readADC                                             10     8      2      22
;!                                             21 BANK0     10     8      2
;! ---------------------------------------------------------------------------------
;! (1) _printlnL2LCD                                         1     1      0    1668
;!                                             32 BANK0      1     1      0
;!                            _lcd_cmd
;!                            _lcd_str
;! ---------------------------------------------------------------------------------
;! (1) _printlnL1LCD                                         1     1      0    1698
;!                                             32 BANK0      1     1      0
;!                            _lcd_cmd
;!                            _lcd_str
;! ---------------------------------------------------------------------------------
;! (2) _lcd_str                                              4     2      2     968
;!                                             28 BANK0      4     2      2
;!                            _lcd_dat
;! ---------------------------------------------------------------------------------
;! (3) _lcd_dat                                              1     1      0     648
;!                                             27 BANK0      1     1      0
;!                           _delay_ms
;!                             _lcd_wr
;! ---------------------------------------------------------------------------------
;! (1) _lcd_init                                             0     0      0    1252
;!                           _delay_ms
;!                            _lcd_cmd
;! ---------------------------------------------------------------------------------
;! (2) _lcd_cmd                                              1     1      0     648
;!                                             27 BANK0      1     1      0
;!                           _delay_ms
;!                             _lcd_wr
;! ---------------------------------------------------------------------------------
;! (4) _lcd_wr                                               1     1      0      22
;!                                             21 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _delay_ms                                             6     4      2     604
;!                                             21 BANK0      6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _keyboard_init                                        1     1      0       0
;!                                             21 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _isr_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _e2pext_w                                            10     7      3    1338
;!                                             32 BANK0     10     7      3
;!                           _e2pext_r
;!                          _i2c_start
;!                           _i2c_stop
;!                             _i2c_wb
;! ---------------------------------------------------------------------------------
;! (2) _e2pext_r                                             6     4      2     660
;!                                             26 BANK0      6     4      2
;!                             _i2c_rb
;!                          _i2c_start
;!                           _i2c_stop
;!                             _i2c_wb
;! ---------------------------------------------------------------------------------
;! (2) _i2c_wb                                               4     4      0      90
;!                                             21 BANK0      4     4      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _i2c_stop                                             0     0      0       0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _i2c_start                                            0     0      0       0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _i2c_rb                                               5     5      0     114
;!                                             21 BANK0      5     5      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _adc_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) ___wmul                                               6     2      4     604
;!                                             31 BANK0      6     2      4
;!                            _readADC (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _PWM1_Start                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM1_Set_Duty                                        9     9      0     781
;!                                              5 BANK1      9     9      0
;!                            ___lldiv
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              13     5      8     290
;!                                             21 BANK0     13     5      8
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             14     6      8     395
;!                                             34 BANK0      9     1      8
;!                                              0 BANK1      5     5      0
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _PWM1_Init                                            8     6      2     865
;!                                             36 BANK0      6     4      2
;!                                              0 BANK1      2     2      0
;!                            ___aldiv
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             15     7      8     599
;!                                             21 BANK0     15     7      8
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _isr                                                  6     6      0    1182
;!                                             15 BANK0      6     6      0
;!                    i1_serial_tx_str
;!                          i1_sprintf
;! ---------------------------------------------------------------------------------
;! (6) i1_sprintf                                           21    17      4    1044
;!                                              0 BANK0     15    11      4
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
;! (6) i1_serial_tx_str                                      4     2      2     138
;!                                              1 COMMON     4     2      2
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
;!   _e2pext_r
;!     _i2c_rb
;!       _delay
;!     _i2c_start
;!       _delay
;!     _i2c_stop
;!       _delay
;!     _i2c_wb
;!       _delay
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
;!   _readADC
;!   _readSerial
;!     _serial_rx
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
;!     _e2pext_r (ARG)
;!       _i2c_rb
;!         _delay
;!       _i2c_start
;!         _delay
;!       _i2c_stop
;!         _delay
;!       _i2c_wb
;!         _delay
;!   _strcmp
;!   _strcpy
;!   _strlen
;!
;! _isr (ROOT)
;!   i1_serial_tx_str
;!     i1_serial_tx
;!   i1_sprintf
;!     i1___lwdiv
;!     i1___lwmod
;!       i1___lwdiv (ARG)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0      28       9       41.7%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     46      4B       7       93.8%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     2B      3B       5       73.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      BC      12        0.0%
;!ABS                  0      0      BC       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 75 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  str_old        11   40[BANK1 ] unsigned char [11]
;;  pass            5   35[BANK1 ] unsigned char [5]
;;  code            5    0        unsigned char [5]
;;  potP1           2   68[BANK1 ] unsigned int 
;;  tempC           2   66[BANK1 ] unsigned int 
;;  potP2           2   64[BANK1 ] unsigned int 
;;  constWind       2   61[BANK1 ] int 
;;  constTemp       2   59[BANK1 ] int 
;;  constHum        2   57[BANK1 ] int 
;;  tempRB3         2   54[BANK1 ] int 
;;  duty            2   52[BANK1 ] unsigned int 
;;  strConfig1      1   63[BANK1 ] unsigned char [1]
;;  bool_emerg      1   56[BANK1 ] unsigned char 
;;  boolPass        1    0        unsigned char 
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
;;      Locals:         0       0      35       0       0
;;      Temps:          0       0       7       0       0
;;      Totals:         0       0      42       0       0
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
;;		_e2pext_r
;;		_e2pext_w
;;		_isr_init
;;		_keyboard_init
;;		_lcd_cmd
;;		_lcd_init
;;		_printlnL1LCD
;;		_printlnL2LCD
;;		_readADC
;;		_readSerial
;;		_serial_init
;;		_serial_tx_str
;;		_sprintf
;;		_strcmp
;;		_strcpy
;;		_strlen
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	75
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	75
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	callstack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	77
	
l3015:	
	movlw	low(0C3h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	78
	movlw	low(0FFh)
	movwf	(134)^080h	;volatile
	line	79
	movlw	low(080h)
	movwf	(135)^080h	;volatile
	line	80
	
l3017:	
	clrf	(136)^080h	;volatile
	line	81
	
l3019:	
	clrf	(137)^080h	;volatile
	line	83
	
l3021:	
	fcall	_lcd_init
	line	84
	
l3023:	
	fcall	_keyboard_init
	line	86
	
l3025:	
	clrf	(main@tempRB3)^080h
	clrf	(main@tempRB3+1)^080h
	line	88
	
l3027:	
	movlw	014h
	movwf	(main@constHum)^080h
	movlw	0
	movwf	((main@constHum)^080h)+1
	
l3029:	
	movlw	028h
	movwf	(main@constTemp)^080h
	movlw	0
	movwf	((main@constTemp)^080h)+1
	
l3031:	
	movlw	050h
	movwf	(main@constWind)^080h
	movlw	0
	movwf	((main@constWind)^080h)+1
	line	89
	
l3033:	
	movlw	(main@pass)&0ffh
	movwf	fsr0
	movf	(main@F1082)^080h,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movf	(main@F1082)^080h+1,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1082)^080h+2,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1082)^080h+3,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1082)^080h+4,w
	movwf	indf
	line	90
	
l3035:	
	
l3037:	
	clrf	(main@bool_emerg)^080h
	line	91
	
l3039:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(7),1	;volatile
	line	111
	
l3041:	
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	112
	
l3043:	
	fcall	_serial_init
	line	113
	
l3045:	
	fcall	_adc_init
	line	114
	
l3047:	
	movlw	088h
	movwf	(PWM1_Init@f)
	movlw	013h
	movwf	((PWM1_Init@f))+1
	fcall	_PWM1_Init
	line	115
	
l3049:	
	fcall	_PWM1_Start
	line	116
	
l3051:	
	fcall	_isr_init
	line	117
	
l3053:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_run)
	incf	(_run),f
	line	118
	
l3055:	
	bsf	(7),5	;volatile
	line	119
	
l3057:	
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	fcall	_printlnL1LCD
	line	122
	
l3059:	
	movf	((_run)),w
	btfsc	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l3059
u3060:
	line	124
	
l3061:	
	btfsc	(6),3	;volatile
	goto	u3071
	goto	u3070
u3071:
	goto	l3067
u3070:
	
l3063:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((main@tempRB3)^080h),w
iorwf	((main@tempRB3+1)^080h),w
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l3067
u3080:
	
l3065:	
	clrc
	bcf	status, 5	;RP0=0, select bank0
	btfss	(7),5	;volatile
	setc
	btfsc	status,0
	goto	u3091
	goto	u3090
	
u3091:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),5	;volatile
	goto	u3104
u3090:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),5	;volatile
u3104:
	line	125
	
l3067:	
	clrc
	bcf	status, 5	;RP0=0, select bank0
	btfss	(6),3	;volatile
	setc
	movlw	0
	skipnc
	movlw	1

	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(main@tempRB3)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(main@tempRB3+1)^080h
	line	128
	
l3069:	
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
	line	129
	
l3071:	
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
	line	130
	
l3073:	
	movf	(main@duty)^080h,w
	fcall	_PWM1_Set_Duty
	line	131
	
l3075:	
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
	line	132
	
l3077:	
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
	line	135
	
l3079:	
	movlw	(low(_strADC|((0x0)<<8))&0ffh)
	movwf	(sprintf@sp)^080h
	movlw	(0x0)
	movwf	(sprintf@sp+1)^080h
	movlw	(low((((STR_3)-__stringbase)|8000h)))&0ffh
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(sprintf@f)^080h
	movf	(main@tempC+1)^080h,w
	movwf	1+(?_sprintf)^080h+03h
	movf	(main@tempC)^080h,w
	movwf	0+(?_sprintf)^080h+03h
	movf	(main@potP1+1)^080h,w
	movwf	1+(?_sprintf)^080h+05h
	movf	(main@potP1)^080h,w
	movwf	0+(?_sprintf)^080h+05h
	movf	(main@potP2+1)^080h,w
	movwf	1+(?_sprintf)^080h+07h
	movf	(main@potP2)^080h,w
	movwf	0+(?_sprintf)^080h+07h
	fcall	_sprintf
	line	136
	
l3081:	
	movlw	(low(main@str_old|((0x0)<<8)))&0ffh
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strcmp@s2)
	movlw	(low(_strADC|((0x0)<<8)))&0ffh
	fcall	_strcmp
	movf	((0+(?_strcmp))),w
iorwf	((1+(?_strcmp))),w
	btfsc	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l3093
u3110:
	line	137
	
l3083:	
	movlw	(low(main@str_old|((0x0)<<8)))&0ffh
	fcall	_strlen
	movf	(0+?_strlen),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+?_strlen),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	((??_main+0)^080h+0+1)
	movlw	(low(_strADC|((0x0)<<8)))&0ffh
	fcall	_strlen
	movf	(1+(?_strlen)),w
	bsf	status, 5	;RP0=1, select bank1
	xorwf	1+(??_main+0)^080h+0,w
	skipz
	goto	u3125
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_strlen)),w
	bsf	status, 5	;RP0=1, select bank1
	xorwf	0+(??_main+0)^080h+0,w
u3125:

	skipnz
	goto	u3121
	goto	u3120
u3121:
	goto	l3089
u3120:
	line	138
	
l3085:	
	movlw	low(01h)
	fcall	_lcd_cmd
	line	139
	
l3087:	
	movlw	(low((((STR_4)-__stringbase)|8000h)))&0ffh
	fcall	_printlnL1LCD
	line	141
	
l3089:	
	movlw	(low(_strADC|((0x0)<<8)))&0ffh
	fcall	_printlnL2LCD
	line	142
	
l3091:	
	movlw	(low(_strADC|((0x0)<<8)))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strcpy@from)
	movlw	(low(main@str_old|((0x0)<<8)))&0ffh
	fcall	_strcpy
	line	146
	
l3093:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@constHum+1)^080h,w
	subwf	(main@potP2+1)^080h,w
	skipz
	goto	u3135
	movf	(main@constHum)^080h,w
	subwf	(main@potP2)^080h,w
u3135:
	skipnc
	goto	u3131
	goto	u3130
u3131:
	goto	l3115
u3130:
	
l3095:	
	movf	(main@potP1+1)^080h,w
	subwf	(main@constWind+1)^080h,w
	skipz
	goto	u3145
	movf	(main@potP1)^080h,w
	subwf	(main@constWind)^080h,w
u3145:
	skipnc
	goto	u3141
	goto	u3140
u3141:
	goto	l3115
u3140:
	
l3097:	
	movf	(main@tempC+1)^080h,w
	subwf	(main@constTemp+1)^080h,w
	skipz
	goto	u3155
	movf	(main@tempC)^080h,w
	subwf	(main@constTemp)^080h,w
u3155:
	skipnc
	goto	u3151
	goto	u3150
u3151:
	goto	l3115
u3150:
	line	147
	
l3099:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7),1	;volatile
	line	148
	
l3101:	
	movlw	low(080h)
	movwf	(8)	;volatile
	line	149
	
l3103:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((main@bool_emerg)^080h),w
	btfss	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l3113
u3160:
	line	150
	
l3105:	
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	movwf	(sprintf@sp)^080h
	movlw	(0x1)
	movwf	(sprintf@sp+1)^080h
	movlw	(low((((STR_5)-__stringbase)|8000h)))&0ffh
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(sprintf@f)^080h
	movf	(main@tempC+1)^080h,w
	movwf	1+(?_sprintf)^080h+03h
	movf	(main@tempC)^080h,w
	movwf	0+(?_sprintf)^080h+03h
	movf	(main@potP1+1)^080h,w
	movwf	1+(?_sprintf)^080h+05h
	movf	(main@potP1)^080h,w
	movwf	0+(?_sprintf)^080h+05h
	movf	(main@potP2+1)^080h,w
	movwf	1+(?_sprintf)^080h+07h
	movf	(main@potP2)^080h,w
	movwf	0+(?_sprintf)^080h+07h
	fcall	_sprintf
	line	151
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(serial_tx_str@val)
	movlw	(0x1)
	movwf	(serial_tx_str@val+1)
	fcall	_serial_tx_str
	line	152
	
l3107:	
	movlw	01h
	movwf	(e2pext_w@addr)
	movlw	0
	movwf	((e2pext_w@addr))+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@tempC)^080h,w
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(e2pext_w@val)
	fcall	_e2pext_w
	line	153
	
l3109:	
	movlw	02h
	movwf	(e2pext_w@addr)
	movlw	0
	movwf	((e2pext_w@addr))+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@potP1)^080h,w
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(e2pext_w@val)
	fcall	_e2pext_w
	line	154
	
l3111:	
	movlw	03h
	movwf	(e2pext_w@addr)
	movlw	0
	movwf	((e2pext_w@addr))+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@potP2)^080h,w
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(e2pext_w@val)
	fcall	_e2pext_w
	line	156
	
l3113:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(main@bool_emerg)^080h
	incf	(main@bool_emerg)^080h,f
	line	157
	goto	l3119
	line	159
	
l3115:	
	clrf	(main@bool_emerg)^080h
	line	160
	
l3117:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(7),1	;volatile
	line	164
	
l3119:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(12),5	;volatile
	goto	u3171
	goto	u3170
u3171:
	goto	l3147
u3170:
	line	165
	
l3121:	
	movlw	(low(main@strConfig1|((0x0)<<8)))&0ffh
	fcall	_readSerial
	line	167
	
l3123:	
	bcf	(12),5	;volatile
	line	168
	goto	l3145
	line	169
	
l3125:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(e2pext_r@addr)
	movlw	0
	movwf	((e2pext_r@addr))+1
	fcall	_e2pext_r
	xorlw	0FFh
	skipnz
	goto	u3181
	goto	u3180
u3181:
	goto	l3129
u3180:
	line	170
	
l3127:	
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@sp)^080h
	movlw	(0x1)
	movwf	(sprintf@sp+1)^080h
	movlw	(low((((STR_6)-__stringbase)|8000h)))&0ffh
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(sprintf@f)^080h
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(e2pext_r@addr)
	movlw	0
	movwf	((e2pext_r@addr))+1
	fcall	_e2pext_r
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+1)^080h+0
	clrf	(??_main+1)^080h+0+1
	movf	0+(??_main+1)^080h+0,w
	movwf	0+(?_sprintf)^080h+03h
	movf	1+(??_main+1)^080h+0,w
	movwf	1+(?_sprintf)^080h+03h
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(e2pext_r@addr)
	movlw	0
	movwf	((e2pext_r@addr))+1
	fcall	_e2pext_r
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+3)^080h+0
	clrf	(??_main+3)^080h+0+1
	movf	0+(??_main+3)^080h+0,w
	movwf	0+(?_sprintf)^080h+05h
	movf	1+(??_main+3)^080h+0,w
	movwf	1+(?_sprintf)^080h+05h
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(e2pext_r@addr)
	movlw	0
	movwf	((e2pext_r@addr))+1
	fcall	_e2pext_r
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+5)^080h+0
	clrf	(??_main+5)^080h+0+1
	movf	0+(??_main+5)^080h+0,w
	movwf	0+(?_sprintf)^080h+07h
	movf	1+(??_main+5)^080h+0,w
	movwf	1+(?_sprintf)^080h+07h
	fcall	_sprintf
	line	171
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(serial_tx_str@val)
	movlw	(0x1)
	movwf	(serial_tx_str@val+1)
	fcall	_serial_tx_str
	line	172
	goto	l3147
	
l3129:	
	movlw	(low((((STR_7)-__stringbase)|8000h)))&0ffh
	movwf	(serial_tx_str@val)
	movlw	80h
	movwf	(serial_tx_str@val+1)
	fcall	_serial_tx_str
	goto	l3147
	line	174
	
l3131:	
	movlw	0Ah
	movwf	(main@constHum)^080h
	movlw	0
	movwf	((main@constHum)^080h)+1
	movlw	032h
	movwf	(main@constTemp)^080h
	movlw	0
	movwf	((main@constTemp)^080h)+1
	movlw	05Ah
	movwf	(main@constWind)^080h
	movlw	0
	movwf	((main@constWind)^080h)+1
	line	175
	
l3133:	
	movlw	(low((((STR_8)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(serial_tx_str@val)
	movlw	80h
	movwf	(serial_tx_str@val+1)
	fcall	_serial_tx_str
	goto	l3147
	line	176
	
l3135:	
	movlw	014h
	movwf	(main@constHum)^080h
	movlw	0
	movwf	((main@constHum)^080h)+1
	movlw	028h
	movwf	(main@constTemp)^080h
	movlw	0
	movwf	((main@constTemp)^080h)+1
	movlw	050h
	movwf	(main@constWind)^080h
	movlw	0
	movwf	((main@constWind)^080h)+1
	line	177
	
l3137:	
	movlw	(low((((STR_9)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(serial_tx_str@val)
	movlw	80h
	movwf	(serial_tx_str@val+1)
	fcall	_serial_tx_str
	goto	l3147
	line	178
	
l3139:	
	movlw	01Eh
	movwf	(main@constHum)^080h
	movlw	0
	movwf	((main@constHum)^080h)+1
	movlw	01Eh
	movwf	(main@constTemp)^080h
	movlw	0
	movwf	((main@constTemp)^080h)+1
	movlw	046h
	movwf	(main@constWind)^080h
	movlw	0
	movwf	((main@constWind)^080h)+1
	line	179
	
l3141:	
	movlw	(low((((STR_10)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(serial_tx_str@val)
	movlw	80h
	movwf	(serial_tx_str@val+1)
	fcall	_serial_tx_str
	goto	l3147
	line	168
	
l3145:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@strConfig1)^080h,w
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
	goto	l3131
	xorlw	98^97	; case 98
	skipnz
	goto	l3135
	xorlw	99^98	; case 99
	skipnz
	goto	l3139
	xorlw	104^99	; case 104
	skipnz
	goto	l3125
	goto	l3147
	opt asmopt_pop

	line	183
	
l3147:	
	movlw	014h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	goto	l3059
	global	start
	ljmp	start
	opt callstack 0
	line	186
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> main@str_old(11), strADC(11), 
;; Auto vars:     Size  Location     Type
;;  s               1   25[BANK0 ] PTR const unsigned char 
;;		 -> main@str_old(11), strADC(11), 
;;  cp              1   24[BANK0 ] PTR const unsigned char 
;;		 -> main@str_old(11), strADC(11), 
;; Return value:  Size  Location     Type
;;                  2   21[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : A00/0
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
psect	text1,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strlen.c"
	line	4
global __ptext1
__ptext1:	;psect for function _strlen
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strlen.c"
	line	4
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:	
;incstack = 0
	opt	callstack 4
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(strlen@s)
	line	8
	
l2449:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l2453
	line	10
	
l2451:	
	movlw	low(01h)
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	addwf	(strlen@cp),f
	line	9
	
l2453:	
	movf	(strlen@cp),w
	movwf	fsr0
	movf	(indf),w
	btfss	status,2
	goto	u2131
	goto	u2130
u2131:
	goto	l2451
u2130:
	line	12
	
l2455:	
	movf	(strlen@s),w
	subwf	(strlen@cp),w
	movwf	(?_strlen)
	clrf	(?_strlen+1)
	btfsc	(?_strlen),7
	decf	(?_strlen+1),f
	line	13
	
l1015:	
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
;;		 -> main@str_old(11), 
;;  from            1   21[BANK0 ] PTR const unsigned char 
;;		 -> strADC(11), 
;; Auto vars:     Size  Location     Type
;;  to              1   23[BANK0 ] PTR unsigned char 
;;		 -> main@str_old(11), 
;;  cp              1   24[BANK0 ] PTR unsigned char 
;;		 -> main@str_old(11), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
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
psect	text2,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcpy.c"
	line	8
global __ptext2
__ptext2:	;psect for function _strcpy
psect	text2
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
	
l2463:	
	movf	(strcpy@to),w
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	movwf	(strcpy@cp)
	line	19
	goto	l2467
	line	20
	
l2465:	
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
	
l2467:	
	movf	(strcpy@from),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcpy+0)+0
	movf	(strcpy@cp),w
	movwf	fsr0
	movf	(??_strcpy+0)+0,w
	movwf	indf
	movf	((indf)),w
	btfss	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l2465
u2140:
	line	24
	
l1009:	
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
;;  s1              1    wreg     PTR const unsigned char 
;;		 -> strADC(11), 
;;  s2              1   21[BANK0 ] PTR const unsigned char 
;;		 -> main@str_old(11), 
;; Auto vars:     Size  Location     Type
;;  s1              1   27[BANK0 ] PTR const unsigned char 
;;		 -> strADC(11), 
;;  r               1   26[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  2   21[BANK0 ] int 
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
psect	text3,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\strcmp.c"
	line	33
global __ptext3
__ptext3:	;psect for function _strcmp
psect	text3
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
	
l2435:	
	goto	l2441
	line	38
	
l2437:	
	movlw	low(01h)
	movwf	(??_strcmp+0)+0
	movf	(??_strcmp+0)+0,w
	addwf	(strcmp@s1),f
	line	39
	
l2439:	
	movlw	low(01h)
	movwf	(??_strcmp+0)+0
	movf	(??_strcmp+0)+0,w
	addwf	(strcmp@s2),f
	line	37
	
l2441:	
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
	goto	u2111
	goto	u2110
u2111:
	goto	l2445
u2110:
	
l2443:	
	movf	(strcmp@s1),w
	movwf	fsr0
	movf	(indf),w
	btfss	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l2437
u2120:
	line	41
	
l2445:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	line	42
	
l1003:	
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
;;  sp              2    8[BANK1 ] PTR unsigned char 
;;		 -> strADC(11), strUART(40), 
;;  f               1   10[BANK1 ] PTR const unsigned char 
;;		 -> STR_6(35), STR_5(19), STR_3(9), STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  tmpval          4    0        struct .
;;  val             2   25[BANK1 ] unsigned int 
;;  cp              2   23[BANK1 ] PTR const unsigned char 
;;		 -> STR_11(7), ?_sprintf(2), strADC(11), 
;;  len             2    0        unsigned int 
;;  c               1   27[BANK1 ] unsigned char 
;;  ap              1   22[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  prec            1   21[BANK1 ] char 
;;  flag            1   20[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       9       0       0
;;      Locals:         0       0       8       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0      20       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
global __ptext4
__ptext4:	;psect for function _sprintf
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	callstack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	550
	
l2911:	
	movlw	(low(?_sprintf|((0x0)<<8)+03h))&0ffh
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@ap)^080h
	line	553
	goto	l2977
	line	555
	
l2913:	
		movlw	37
	xorwf	((sprintf@c)^080h),w
	btfsc	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l2919
u2920:
	line	558
	
l2915:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1)^080h,0
	bcf	status,7
	movf	(??_sprintf+0)^080h+0,w
	movwf	indf
	
l2917:	
	movlw	01h
	addwf	(sprintf@sp)^080h,f
	skipnc
	incf	(sprintf@sp+1)^080h,f
	movlw	0
	addwf	(sprintf@sp+1)^080h,f
	line	559
	goto	l2977
	line	565
	
l2919:	
	clrf	(sprintf@flag)^080h
	line	661
	goto	l2937
	line	760
	
l2921:	
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@cp)^080h
	movlw	(0x0)
	movwf	(sprintf@cp+1)^080h
	
l2923:	
	movlw	low(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@ap)^080h,f
	line	766
	
l2925:	
	movf	((sprintf@cp)^080h),w
iorwf	((sprintf@cp+1)^080h),w
	btfss	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l555
u2930:
	line	767
	
l2927:	
	movlw	(low((((STR_11)-__stringbase)|8000h)))&0ffh
	movwf	(sprintf@cp)^080h
	movlw	80h
	movwf	(sprintf@cp+1)^080h
	goto	l555
	line	804
	
l2929:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@cp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@cp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1)^080h,0
	bcf	status,7
	movf	(??_sprintf+0)^080h+0,w
	movwf	indf
	
l2931:	
	movlw	01h
	addwf	(sprintf@cp)^080h,f
	skipnc
	incf	(sprintf@cp+1)^080h,f
	movlw	0
	addwf	(sprintf@cp+1)^080h,f
	
l2933:	
	movlw	01h
	addwf	(sprintf@sp)^080h,f
	skipnc
	incf	(sprintf@sp+1)^080h,f
	movlw	0
	addwf	(sprintf@sp+1)^080h,f
	
l555:	
	line	803
	movf	(sprintf@cp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@cp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l2929
u2940:
	goto	l2977
	line	661
	
l2937:	
	movlw	01h
	addwf	(sprintf@f)^080h,f
	movlw	-01h
	addwf	(sprintf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)^080h
	; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 0 to 115
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2979
	xorlw	100^0	; case 100
	skipnz
	goto	l2939
	xorlw	105^100	; case 105
	skipnz
	goto	l2939
	xorlw	115^105	; case 115
	skipnz
	goto	l2921
	goto	l2977
	opt asmopt_pop

	line	1285
	
l2939:	
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@val)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@val+1)^080h
	
l2941:	
	movlw	low(02h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@ap)^080h,f
	line	1287
	
l2943:	
	btfss	(sprintf@val+1)^080h,7
	goto	u2951
	goto	u2950
u2951:
	goto	l2949
u2950:
	line	1288
	
l2945:	
	movlw	low(03h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	iorwf	(sprintf@flag)^080h,f
	line	1289
	
l2947:	
	comf	(sprintf@val)^080h,f
	comf	(sprintf@val+1)^080h,f
	incf	(sprintf@val)^080h,f
	skipnz
	incf	(sprintf@val+1)^080h,f
	line	1331
	
l2949:	
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	line	1332
	
l2955:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	addwf	(??_sprintf+0)^080h+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)^080h+0
	fcall	stringdir
	movwf	(??_sprintf+1)^080h+0+1
	movf	1+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@val+1)^080h,w
	skipz
	goto	u2965
	movf	0+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@val)^080h,w
u2965:
	skipnc
	goto	u2961
	goto	u2960
u2961:
	goto	l2959
u2960:
	goto	l2961
	line	1331
	
l2959:	
	movlw	low(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@c)^080h,f
		movlw	5
	xorwf	((sprintf@c)^080h),w
	btfss	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l2955
u2970:
	line	1464
	
l2961:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l2967
u2980:
	line	1465
	
l2963:	
	movlw	low(02Dh)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1)^080h,0
	bcf	status,7
	movf	(??_sprintf+0)^080h+0,w
	movwf	indf
	
l2965:	
	movlw	01h
	addwf	(sprintf@sp)^080h,f
	skipnc
	incf	(sprintf@sp+1)^080h,f
	movlw	0
	addwf	(sprintf@sp+1)^080h,f
	line	1498
	
l2967:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@prec)^080h
	line	1500
	goto	l2975
	line	1515
	
l2969:	
	movlw	0Ah
	movwf	(___lwmod@divisor)^080h
	movlw	0
	movwf	((___lwmod@divisor)^080h)+1
	movf	(sprintf@prec)^080h,w
	movwf	(??_sprintf+0)^080h+0
	addwf	(??_sprintf+0)^080h+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwdiv@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwmod@dividend+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lwmod@dividend)^080h
	fcall	___lwmod
	movf	(0+(?___lwmod))^080h,w
	addlw	030h
	movwf	(??_sprintf+1)^080h+0
	movf	(??_sprintf+1)^080h+0,w
	movwf	(sprintf@c)^080h
	line	1550
	
l2971:	
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1)^080h,0
	bcf	status,7
	movf	(??_sprintf+0)^080h+0,w
	movwf	indf
	
l2973:	
	movlw	01h
	addwf	(sprintf@sp)^080h,f
	skipnc
	incf	(sprintf@sp+1)^080h,f
	movlw	0
	addwf	(sprintf@sp+1)^080h,f
	line	1500
	
l2975:	
	movlw	low(-1)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@prec)^080h,f
		incf	(((sprintf@prec)^080h)),w
	btfss	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l2969
u2990:
	line	553
	
l2977:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	addwf	(sprintf@f)^080h,f
	movlw	-01h
	addwf	(sprintf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@c)^080h
	movf	(((sprintf@c)^080h)),w
	btfss	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l2913
u3000:
	line	1564
	
l2979:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1)^080h,0
	bcf	status,7
	clrf	indf
	line	1567
	
l568:	
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
;;  divisor         2    3[BANK1 ] unsigned int 
;;  dividend        2    5[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    7[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       5       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext5
__ptext5:	;psect for function ___lwmod
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	callstack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	12
	
l2889:	
	movf	((___lwmod@divisor)^080h),w
iorwf	((___lwmod@divisor+1)^080h),w
	btfsc	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l2907
u2860:
	line	13
	
l2891:	
	clrf	(___lwmod@counter)^080h
	incf	(___lwmod@counter)^080h,f
	line	14
	goto	l2897
	line	15
	
l2893:	
	movlw	01h
	
u2875:
	clrc
	rlf	(___lwmod@divisor)^080h,f
	rlf	(___lwmod@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u2875
	line	16
	
l2895:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	addwf	(___lwmod@counter)^080h,f
	line	14
	
l2897:	
	btfss	(___lwmod@divisor+1)^080h,(15)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l2893
u2880:
	line	19
	
l2899:	
	movf	(___lwmod@divisor+1)^080h,w
	subwf	(___lwmod@dividend+1)^080h,w
	skipz
	goto	u2895
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,w
u2895:
	skipc
	goto	u2891
	goto	u2890
u2891:
	goto	l2903
u2890:
	line	20
	
l2901:	
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,f
	movf	(___lwmod@divisor+1)^080h,w
	skipc
	decf	(___lwmod@dividend+1)^080h,f
	subwf	(___lwmod@dividend+1)^080h,f
	line	21
	
l2903:	
	movlw	01h
	
u2905:
	clrc
	rrf	(___lwmod@divisor+1)^080h,f
	rrf	(___lwmod@divisor)^080h,f
	addlw	-1
	skipz
	goto	u2905
	line	22
	
l2905:	
	movlw	01h
	subwf	(___lwmod@counter)^080h,f
	btfss	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l2899
u2910:
	line	24
	
l2907:	
	movf	(___lwmod@dividend+1)^080h,w
	movwf	(?___lwmod+1)^080h
	movf	(___lwmod@dividend)^080h,w
	movwf	(?___lwmod)^080h
	line	25
	
l990:	
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
;;  divisor         2   37[BANK0 ] unsigned int 
;;  dividend        2   39[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    1[BANK1 ] unsigned int 
;;  counter         1    0[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   37[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       3       0       0
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
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext6
__ptext6:	;psect for function ___lwdiv
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	callstack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	13
	
l2863:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(___lwdiv@quotient)^080h
	clrf	(___lwdiv@quotient+1)^080h
	line	14
	
l2865:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l2885
u2790:
	line	15
	
l2867:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(___lwdiv@counter)^080h
	incf	(___lwdiv@counter)^080h,f
	line	16
	goto	l2873
	line	17
	
l2869:	
	movlw	01h
	
u2805:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2805
	line	18
	
l2871:	
	movlw	low(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	addwf	(___lwdiv@counter)^080h,f
	line	16
	
l2873:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l2869
u2810:
	line	21
	
l2875:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	
u2825:
	clrc
	rlf	(___lwdiv@quotient)^080h,f
	rlf	(___lwdiv@quotient+1)^080h,f
	addlw	-1
	skipz
	goto	u2825
	line	22
	bcf	status, 5	;RP0=0, select bank0
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2835
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2835:
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l2881
u2830:
	line	23
	
l2877:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	24
	
l2879:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(___lwdiv@quotient)^080h+(0/8),(0)&7
	line	26
	
l2881:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	
u2845:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2845
	line	27
	
l2883:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	subwf	(___lwdiv@counter)^080h,f
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l2875
u2850:
	line	29
	
l2885:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(___lwdiv@quotient+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lwdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___lwdiv@quotient)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lwdiv)
	line	30
	
l980:	
	return
	opt callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_serial_tx_str

;; *************** function _serial_tx_str *****************
;; Defined at:
;;		line 36 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  val             2   22[BANK0 ] PTR const unsigned char 
;;		 -> STR_10(30), STR_9(30), STR_8(30), STR_7(31), 
;;		 -> strUART(40), 
;; Auto vars:     Size  Location     Type
;;  i               1   25[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_serial_tx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"serial.c"
	line	36
global __ptext7
__ptext7:	;psect for function _serial_tx_str
psect	text7
	file	"serial.c"
	line	36
	global	__size_of_serial_tx_str
	__size_of_serial_tx_str	equ	__end_of_serial_tx_str-_serial_tx_str
	
_serial_tx_str:	
;incstack = 0
	opt	callstack 3
; Regs used in _serial_tx_str: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	37
	
l2317:	
	clrf	(serial_tx_str@i)
	line	38
	goto	l2323
	
l2319:	
	movf	(serial_tx_str@i),w
	addwf	(serial_tx_str@val),w
	movwf	fsr0
	movf	(serial_tx_str@val+1),w
	skipnc
	incf	(serial_tx_str@val+1),w
	movwf	btemp+1
	fcall	stringtab
	fcall	_serial_tx
	
l2321:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_serial_tx_str+0)+0
	movf	(??_serial_tx_str+0)+0,w
	addwf	(serial_tx_str@i),f
	
l2323:	
	movf	(serial_tx_str@i),w
	addwf	(serial_tx_str@val),w
	movwf	fsr0
	movf	(serial_tx_str@val+1),w
	skipnc
	incf	(serial_tx_str@val+1),w
	movwf	btemp+1
	fcall	stringtab
	xorlw	0
	skipz
	goto	u2011
	goto	u2010
u2011:
	goto	l2319
u2010:
	line	39
	
l2325:	
	movlw	low(0Ah)
	fcall	_serial_tx
	line	40
	movlw	low(0Dh)
	fcall	_serial_tx
	line	41
	
l2327:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(12),5	;volatile
	line	42
	
l252:	
	return
	opt callstack 0
GLOBAL	__end_of_serial_tx_str
	__end_of_serial_tx_str:
	signat	_serial_tx_str,4217
	global	_serial_tx

;; *************** function _serial_tx *****************
;; Defined at:
;;		line 31 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1   21[BANK0 ] unsigned char 
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
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	31
global __ptext8
__ptext8:	;psect for function _serial_tx
psect	text8
	file	"serial.c"
	line	31
	global	__size_of_serial_tx
	__size_of_serial_tx	equ	__end_of_serial_tx-_serial_tx
	
_serial_tx:	
;incstack = 0
	opt	callstack 3
; Regs used in _serial_tx: [wreg]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(serial_tx@val)
	line	32
	
l2059:	
	movf	(serial_tx@val),w
	movwf	(25)	;volatile
	line	33
	
l243:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(152)^080h,1	;volatile
	goto	u1391
	goto	u1390
u1391:
	goto	l243
u1390:
	line	34
	
l246:	
	return
	opt callstack 0
GLOBAL	__end_of_serial_tx
	__end_of_serial_tx:
	signat	_serial_tx,4217
	global	_serial_init

;; *************** function _serial_init *****************
;; Defined at:
;;		line 8 in file "serial.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : B00/100
;;		Unchanged: 800/0
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
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	8
global __ptext9
__ptext9:	;psect for function _serial_init
psect	text9
	file	"serial.c"
	line	8
	global	__size_of_serial_init
	__size_of_serial_init	equ	__end_of_serial_init-_serial_init
	
_serial_init:	
;incstack = 0
	opt	callstack 4
; Regs used in _serial_init: [wreg]
	line	10
	
l2341:	
	movlw	low(0Ch)
	movwf	(153)^080h	;volatile
	line	13
	movlw	low(080h)
	movwf	(135)^080h	;volatile
	line	14
	
l2343:	
	bcf	(152)^080h,6	;volatile
	line	15
	
l2345:	
	bsf	(152)^080h,5	;volatile
	line	16
	
l2347:	
	bcf	(152)^080h,4	;volatile
	line	17
	
l2349:	
	bsf	(152)^080h,2	;volatile
	line	19
	
l2351:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(24),7	;volatile
	line	20
	
l2353:	
	bcf	(24),6	;volatile
	line	21
	
l2355:	
	bsf	(24),4	;volatile
	line	24
	
l2357:	
	bcf	(12),5	;volatile
	line	25
	
l2359:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h,7	;volatile
	line	26
	
l2361:	
	bcf	(135)^080h,6	;volatile
	line	27
	
l240:	
	return
	opt callstack 0
GLOBAL	__end_of_serial_init
	__end_of_serial_init:
	signat	_serial_init,89
	global	_readSerial

;; *************** function _readSerial *****************
;; Defined at:
;;		line 69 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  buf             1    wreg     PTR unsigned char 
;;		 -> main@strConfig1(1), 
;; Auto vars:     Size  Location     Type
;;  buf             1   23[BANK0 ] PTR unsigned char 
;;		 -> main@strConfig1(1), 
;;  i               2   24[BANK0 ] unsigned int 
;;  tmp             1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
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
;;		_serial_rx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	69
global __ptext10
__ptext10:	;psect for function _readSerial
psect	text10
	file	"serial.c"
	line	69
	global	__size_of_readSerial
	__size_of_readSerial	equ	__end_of_readSerial-_readSerial
	
_readSerial:	
;incstack = 0
	opt	callstack 3
; Regs used in _readSerial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(readSerial@buf)
	line	70
	
l2493:	
	line	71
	
l2495:	
	clrf	(readSerial@i)
	clrf	(readSerial@i+1)
	line	72
	clrf	(readSerial@i)
	clrf	(readSerial@i+1)
	line	73
	
l2501:	
	fcall	_serial_rx
	movwf	(??_readSerial+0)+0
	movf	(??_readSerial+0)+0,w
	movwf	(readSerial@tmp)
	line	74
	
l2503:	
	bcf	(12),5	;volatile
	line	76
	
l2505:	
	movf	((readSerial@tmp)),w
	btfsc	status,2
	goto	u2181
	goto	u2180
u2181:
	goto	l2517
u2180:
	
l2507:	
		movlw	10
	xorwf	((readSerial@tmp)),w
	btfsc	status,2
	goto	u2191
	goto	u2190
u2191:
	goto	l2517
u2190:
	
l2509:	
		movlw	13
	xorwf	((readSerial@tmp)),w
	btfss	status,2
	goto	u2201
	goto	u2200
u2201:
	goto	l2511
u2200:
	goto	l2517
	line	77
	
l2511:	
	movf	(readSerial@tmp),w
	movwf	(??_readSerial+0)+0
	movf	(readSerial@i),w
	addwf	(readSerial@buf),w
	movwf	(??_readSerial+1)+0
	movf	0+(??_readSerial+1)+0,w
	movwf	fsr0
	movf	(??_readSerial+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	72
	
l2513:	
	movlw	01h
	addwf	(readSerial@i),f
	skipnc
	incf	(readSerial@i+1),f
	movlw	0
	addwf	(readSerial@i+1),f
	
l2515:	
	movf	((readSerial@i)),w
iorwf	((readSerial@i+1)),w
	btfsc	status,2
	goto	u2211
	goto	u2210
u2211:
	goto	l2501
u2210:
	line	79
	
l2517:	
	movf	(readSerial@i),w
	addwf	(readSerial@buf),w
	movwf	(??_readSerial+0)+0
	movf	0+(??_readSerial+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	80
	
l269:	
	return
	opt callstack 0
GLOBAL	__end_of_readSerial
	__end_of_readSerial:
	signat	_readSerial,4217
	global	_serial_rx

;; *************** function _serial_rx *****************
;; Defined at:
;;		line 44 in file "serial.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_readSerial
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	44
global __ptext11
__ptext11:	;psect for function _serial_rx
psect	text11
	file	"serial.c"
	line	44
	global	__size_of_serial_rx
	__size_of_serial_rx	equ	__end_of_serial_rx-_serial_rx
	
_serial_rx:	
;incstack = 0
	opt	callstack 3
; Regs used in _serial_rx: [wreg]
	line	45
	
l2061:	
	btfsc	(24),2	;volatile
	goto	u1401
	goto	u1400
u1401:
	goto	l257
u1400:
	
l2063:	
	btfss	(24),1	;volatile
	goto	u1411
	goto	u1410
u1411:
	goto	l258
u1410:
	
l257:	
	line	46
	bcf	(24),4	;volatile
	line	47
	bsf	(24),4	;volatile
	line	49
	
l258:	
	btfss	(12),5	;volatile
	goto	u1421
	goto	u1420
u1421:
	goto	l258
u1420:
	line	50
	
l2065:	
	movf	(26),w	;volatile
	line	51
	
l261:	
	return
	opt callstack 0
GLOBAL	__end_of_serial_rx
	__end_of_serial_rx:
	signat	_serial_rx,89
	global	_readADC

;; *************** function _readADC *****************
;; Defined at:
;;		line 11 in file "adc.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   21[BANK0 ] unsigned int 
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
	
l2413:	
	goto	l2423
	line	14
	
l2415:	
	movlw	low(01h)
	movwf	(31)	;volatile
	line	15
	goto	l142
	line	17
	
l2417:	
	movlw	low(09h)
	movwf	(31)	;volatile
	line	18
	goto	l142
	line	20
	
l2419:	
	movlw	low(011h)
	movwf	(31)	;volatile
	line	21
	goto	l142
	line	12
	
l2423:	
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
	goto	l2415
	xorlw	1^0	; case 1
	skipnz
	goto	l2417
	xorlw	2^1	; case 2
	skipnz
	goto	l2419
	goto	l142
	opt asmopt_pop

	line	22
	
l142:	
	line	23
	bsf	(31),2	;volatile
	line	24
	
l145:	
	btfsc	(31),2	;volatile
	goto	u2081
	goto	u2080
u2081:
	goto	l145
u2080:
	line	25
	
l2425:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_readADC+0)+0
	movlw	06h
u2095:
	clrc
	rrf	(??_readADC+0)+0,f
	addlw	-1
	skipz
	goto	u2095
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
	
l148:	
	return
	opt callstack 0
GLOBAL	__end_of_readADC
	__end_of_readADC:
	signat	_readADC,4218
	global	_printlnL2LCD

;; *************** function _printlnL2LCD *****************
;; Defined at:
;;		line 68 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  str1            1    wreg     PTR const unsigned char 
;;		 -> strADC(11), 
;; Auto vars:     Size  Location     Type
;;  str1            1   32[BANK0 ] PTR const unsigned char 
;;		 -> strADC(11), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
	line	68
global __ptext13
__ptext13:	;psect for function _printlnL2LCD
psect	text13
	file	"lcd.c"
	line	68
	global	__size_of_printlnL2LCD
	__size_of_printlnL2LCD	equ	__end_of_printlnL2LCD-_printlnL2LCD
	
_printlnL2LCD:	
;incstack = 0
	opt	callstack 1
; Regs used in _printlnL2LCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(printlnL2LCD@str1)
	line	69
	
l2459:	
	movlw	low(0C0h)
	fcall	_lcd_cmd
	line	70
	
l2461:	
	movf	(printlnL2LCD@str1),w
	movwf	(lcd_str@str)
	movlw	(0x0)
	movwf	(lcd_str@str+1)
	fcall	_lcd_str
	line	71
	
l213:	
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
;;		 -> STR_4(14), STR_2(14), 
;; Auto vars:     Size  Location     Type
;;  str1            1   32[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(14), STR_2(14), 
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	64
global __ptext14
__ptext14:	;psect for function _printlnL1LCD
psect	text14
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
	
l2409:	
	movlw	low(080h)
	fcall	_lcd_cmd
	line	66
	
l2411:	
		movf	(printlnL1LCD@str1),w
	movwf	(lcd_str@str)
	movlw	0
	btfss	status,2
	movlw	080h
	movwf	(lcd_str@str+1)

	fcall	_lcd_str
	line	67
	
l210:	
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
;;  str             2   28[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(14), STR_2(14), strADC(11), 
;; Auto vars:     Size  Location     Type
;;  i               1   31[BANK0 ] unsigned char 
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
;;		_printlnL1LCD
;;		_printlnL2LCD
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	46
global __ptext15
__ptext15:	;psect for function _lcd_str
psect	text15
	file	"lcd.c"
	line	46
	global	__size_of_lcd_str
	__size_of_lcd_str	equ	__end_of_lcd_str-_lcd_str
	
_lcd_str:	
;incstack = 0
	opt	callstack 1
; Regs used in _lcd_str: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	47
	
l2051:	
	clrf	(lcd_str@i)
	line	48
	goto	l2057
	line	50
	
l2053:	
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
	
l2055:	
	movlw	low(01h)
	movwf	(??_lcd_str+0)+0
	movf	(??_lcd_str+0)+0,w
	addwf	(lcd_str@i),f
	line	48
	
l2057:	
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
	goto	u1381
	goto	u1380
u1381:
	goto	l2053
u1380:
	line	53
	
l204:	
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
;;  val             1   27[BANK0 ] unsigned char 
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
;;		_lcd_str
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	18
global __ptext16
__ptext16:	;psect for function _lcd_dat
psect	text16
	file	"lcd.c"
	line	18
	global	__size_of_lcd_dat
	__size_of_lcd_dat	equ	__end_of_lcd_dat-_lcd_dat
	
_lcd_dat:	
;incstack = 0
	opt	callstack 1
; Regs used in _lcd_dat: [wreg+status,2+status,0+pclath+cstack]
	movwf	(lcd_dat@val)
	line	19
	
l1933:	
	bsf	(9),1	;volatile
	line	20
	
l1935:	
	movf	(lcd_dat@val),w
	fcall	_lcd_wr
	line	21
	
l1937:	
	bsf	(9),2	;volatile
	line	22
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	23
	
l1939:	
	bcf	(9),1	;volatile
	line	24
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	25
	
l1941:	
	bsf	(9),1	;volatile
	line	26
	
l195:	
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	28
global __ptext17
__ptext17:	;psect for function _lcd_init
psect	text17
	file	"lcd.c"
	line	28
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
;incstack = 0
	opt	callstack 2
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	29
	
l2329:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(9),1	;volatile
	line	30
	bcf	(9),2	;volatile
	line	31
	
l2331:	
	movlw	014h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	32
	
l2333:	
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
	
l198:	
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
;;  val             1   27[BANK0 ] unsigned char 
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
;;		_lcd_init
;;		_printlnL1LCD
;;		_printlnL2LCD
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	8
global __ptext18
__ptext18:	;psect for function _lcd_cmd
psect	text18
	file	"lcd.c"
	line	8
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
;incstack = 0
	opt	callstack 2
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(lcd_cmd@val)
	line	9
	
l2017:	
	bsf	(9),1	;volatile
	line	10
	
l2019:	
	movf	(lcd_cmd@val),w
	fcall	_lcd_wr
	line	11
	
l2021:	
	bcf	(9),2	;volatile
	line	12
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	13
	
l2023:	
	bcf	(9),1	;volatile
	line	14
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	15
	
l2025:	
	bsf	(9),1	;volatile
	line	16
	
l192:	
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
;;  val             1   21[BANK0 ] unsigned char 
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	4
global __ptext19
__ptext19:	;psect for function _lcd_wr
psect	text19
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
	
l1929:	
	movf	(lcd_wr@val),w
	movwf	(8)	;volatile
	line	6
	
l189:	
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
;;  val             2   21[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2   24[BANK0 ] unsigned int 
;;  j               1   26[BANK0 ] unsigned char 
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	73
global __ptext20
__ptext20:	;psect for function _delay_ms
psect	text20
	file	"lcd.c"
	line	73
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	callstack 1
; Regs used in _delay_ms: [wreg+status,2+status,0]
	line	76
	
l1915:	
	clrf	(delay_ms@i)
	clrf	(delay_ms@i+1)
	goto	l216
	line	77
	
l1917:	
	clrf	(delay_ms@j)
	
l218:	
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
psect	text20
	line	77
	
l1923:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_delay_ms+0)+0
	movf	(??_delay_ms+0)+0,w
	addwf	(delay_ms@j),f
	
l1925:	
	movlw	low(0C8h)
	subwf	(delay_ms@j),w
	skipc
	goto	u1291
	goto	u1290
u1291:
	goto	l218
u1290:
	line	76
	
l1927:	
	movlw	01h
	addwf	(delay_ms@i),f
	skipnc
	incf	(delay_ms@i+1),f
	movlw	0
	addwf	(delay_ms@i+1),f
	
l216:	
	movf	(delay_ms@val+1),w
	subwf	(delay_ms@i+1),w
	skipz
	goto	u1305
	movf	(delay_ms@val),w
	subwf	(delay_ms@i),w
u1305:
	skipc
	goto	u1301
	goto	u1300
u1301:
	goto	l1917
u1300:
	line	87
	
l221:	
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"matricial_key.c"
	line	6
global __ptext21
__ptext21:	;psect for function _keyboard_init
psect	text21
	file	"matricial_key.c"
	line	6
	global	__size_of_keyboard_init
	__size_of_keyboard_init	equ	__end_of_keyboard_init-_keyboard_init
	
_keyboard_init:	
;incstack = 0
	opt	callstack 4
; Regs used in _keyboard_init: [wreg+status,2+status,0]
	line	7
	
l2335:	
	clrf	(8)	;volatile
	line	8
	clrf	(6)	;volatile
	line	9
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	10
	
l2337:	
	movlw	low(0Fh)
	movwf	(134)^080h	;volatile
	line	12
	
l2339:	
	movlw	low(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_keyboard_init+0)+0
	movf	(??_keyboard_init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(129)^080h,f	;volatile
	line	13
	
l286:	
	return
	opt callstack 0
GLOBAL	__end_of_keyboard_init
	__end_of_keyboard_init:
	signat	_keyboard_init,89
	global	_isr_init

;; *************** function _isr_init *****************
;; Defined at:
;;		line 189 in file "main.c"
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
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	189
global __ptext22
__ptext22:	;psect for function _isr_init
psect	text22
	file	"main.c"
	line	189
	global	__size_of_isr_init
	__size_of_isr_init	equ	__end_of_isr_init-_isr_init
	
_isr_init:	
;incstack = 0
	opt	callstack 4
; Regs used in _isr_init: [wreg]
	line	196
	
l2399:	
	movlw	low(031h)
	movwf	(16)	;volatile
	line	197
	movlw	low(0CFh)
	movwf	(15)	;volatile
	line	198
	movlw	low(02Ch)
	movwf	(14)	;volatile
	line	199
	
l2401:	
	bsf	(11),7	;volatile
	line	200
	
l2403:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(140)^080h,0	;volatile
	line	201
	
l2405:	
	bsf	(11),6	;volatile
	line	202
	
l2407:	
	bsf	(11),4	;volatile
	line	204
	
l124:	
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
;;  addr            2   32[BANK0 ] unsigned int 
;;  val             1   34[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  tmp             2   40[BANK0 ] unsigned int 
;;  nt              1   39[BANK0 ] unsigned char 
;;  al              1   38[BANK0 ] unsigned char 
;;  ah              1   37[BANK0 ] unsigned char 
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
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"eeprom_ext.c"
	line	34
global __ptext23
__ptext23:	;psect for function _e2pext_w
psect	text23
	file	"eeprom_ext.c"
	line	34
	global	__size_of_e2pext_w
	__size_of_e2pext_w	equ	__end_of_e2pext_w-_e2pext_w
	
_e2pext_w:	
;incstack = 0
	opt	callstack 1
; Regs used in _e2pext_w: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l2469:	
	movf	(e2pext_w@val),w
	movwf	(??_e2pext_w+0)+0
	clrf	(??_e2pext_w+0)+0+1
	movf	0+(??_e2pext_w+0)+0,w
	movwf	(e2pext_w@tmp)
	movf	1+(??_e2pext_w+0)+0,w
	movwf	(e2pext_w@tmp+1)
	line	41
	
l2471:	
	movf	0+(e2pext_w@addr)+01h,w
	andlw	01h
	movwf	(??_e2pext_w+0)+0
	movf	(??_e2pext_w+0)+0,w
	movwf	(e2pext_w@ah)
	line	42
	
l2473:	
	movf	(e2pext_w@addr),w
	movwf	(??_e2pext_w+0)+0
	movf	(??_e2pext_w+0)+0,w
	movwf	(e2pext_w@al)
	line	43
	
l2475:	
	clrf	(e2pext_w@nt)
	line	46
	
l2477:	
	fcall	_i2c_start
	line	47
	
l2479:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((e2pext_w@ah)),w
	btfsc	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l2483
u2150:
	line	48
	
l2481:	
	movlw	low(0A2h)
	fcall	_i2c_wb
	line	49
	goto	l449
	line	51
	
l2483:	
	movlw	low(0A0h)
	fcall	_i2c_wb
	line	52
	
l449:	
	line	53
	movf	(e2pext_w@al),w
	fcall	_i2c_wb
	line	54
	movf	(e2pext_w@tmp),w
	fcall	_i2c_wb
	line	55
	
l2485:	
	fcall	_i2c_stop
	line	56
	
l2487:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_e2pext_w+0)+0
	movf	(??_e2pext_w+0)+0,w
	addwf	(e2pext_w@nt),f
	line	58
	
l2489:	
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
	goto	u2165
	movf	(e2pext_w@tmp),w
	xorwf	0+(??_e2pext_w+0)+0,w
u2165:

	skipnz
	goto	u2161
	goto	u2160
u2161:
	goto	l453
u2160:
	
l2491:	
	movlw	low(0Ah)
	subwf	(e2pext_w@nt),w
	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l2477
u2170:
	line	59
	
l453:	
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
;;  addr            2   26[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  ah              1   31[BANK0 ] unsigned char 
;;  al              1   30[BANK0 ] unsigned char 
;;  ret             1   29[BANK0 ] unsigned char 
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
;;		_main
;;		_e2pext_w
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	5
global __ptext24
__ptext24:	;psect for function _e2pext_r
psect	text24
	file	"eeprom_ext.c"
	line	5
	global	__size_of_e2pext_r
	__size_of_e2pext_r	equ	__end_of_e2pext_r-_e2pext_r
	
_e2pext_r:	
;incstack = 0
	opt	callstack 1
; Regs used in _e2pext_r: [wreg+status,2+status,0+pclath+cstack]
	line	10
	
l2027:	
	movf	0+(e2pext_r@addr)+01h,w
	andlw	01h
	movwf	(??_e2pext_r+0)+0
	movf	(??_e2pext_r+0)+0,w
	movwf	(e2pext_r@ah)
	line	11
	
l2029:	
	movf	(e2pext_r@addr),w
	movwf	(??_e2pext_r+0)+0
	movf	(??_e2pext_r+0)+0,w
	movwf	(e2pext_r@al)
	line	13
	
l2031:	
	fcall	_i2c_start
	line	14
	
l2033:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((e2pext_r@ah)),w
	btfsc	status,2
	goto	u1361
	goto	u1360
u1361:
	goto	l2037
u1360:
	line	15
	
l2035:	
	movlw	low(0A2h)
	fcall	_i2c_wb
	line	16
	goto	l441
	line	18
	
l2037:	
	movlw	low(0A0h)
	fcall	_i2c_wb
	line	19
	
l441:	
	line	20
	movf	(e2pext_r@al),w
	fcall	_i2c_wb
	line	21
	
l2039:	
	fcall	_i2c_start
	line	22
	
l2041:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((e2pext_r@ah)),w
	btfsc	status,2
	goto	u1371
	goto	u1370
u1371:
	goto	l2045
u1370:
	line	23
	
l2043:	
	movlw	low(0A3h)
	fcall	_i2c_wb
	line	24
	goto	l443
	line	26
	
l2045:	
	movlw	low(0A1h)
	fcall	_i2c_wb
	line	27
	
l443:	
	line	28
	movlw	low(01h)
	fcall	_i2c_rb
	movwf	(??_e2pext_r+0)+0
	movf	(??_e2pext_r+0)+0,w
	movwf	(e2pext_r@ret)
	line	29
	
l2047:	
	fcall	_i2c_stop
	line	30
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(e2pext_r@ret),w
	line	31
	
l444:	
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
;;  val             1   23[BANK0 ] unsigned char 
;;  i               1   24[BANK0 ] unsigned char 
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
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"i2c.c"
	line	40
global __ptext25
__ptext25:	;psect for function _i2c_wb
psect	text25
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
	
l1955:	
	bcf	(7),3	;volatile
	line	43
	
l1957:	
	clrf	(i2c_wb@i)
	line	44
	
l1963:	
	movf	(i2c_wb@val),w
	movwf	(??_i2c_wb+0)+0
	movf	(i2c_wb@i),w
	sublw	07h
	addlw	1
	goto	u1314
u1315:
	clrc
	rrf	(??_i2c_wb+0)+0,f
u1314:
	addlw	-1
	skipz
	goto	u1315
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
	
l1965:	
	bsf	(7),3	;volatile
	line	46
	
l1967:	
	fcall	_delay
	line	47
	
l1969:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),3	;volatile
	line	43
	
l1971:	
	movlw	low(01h)
	movwf	(??_i2c_wb+0)+0
	movf	(??_i2c_wb+0)+0,w
	addwf	(i2c_wb@i),f
	
l1973:	
	movlw	low(08h)
	subwf	(i2c_wb@i),w
	skipc
	goto	u1321
	goto	u1320
u1321:
	goto	l1963
u1320:
	
l421:	
	line	49
	bsf	(7),4	;volatile
	line	50
	
l1975:	
	fcall	_delay
	line	51
	
l1977:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),3	;volatile
	line	52
	fcall	_delay
	line	53
	
l1979:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),3	;volatile
	line	54
	
l422:	
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
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	line	32
global __ptext26
__ptext26:	;psect for function _i2c_stop
psect	text26
	file	"i2c.c"
	line	32
	global	__size_of_i2c_stop
	__size_of_i2c_stop	equ	__end_of_i2c_stop-_i2c_stop
	
_i2c_stop:	
;incstack = 0
	opt	callstack 2
; Regs used in _i2c_stop: [status,2+status,0+pclath+cstack]
	line	33
	
l1949:	
	bsf	(7),3	;volatile
	line	34
	bcf	(7),4	;volatile
	line	35
	
l1951:	
	fcall	_delay
	line	36
	
l1953:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),4	;volatile
	line	37
	fcall	_delay
	line	38
	
l417:	
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
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	line	24
global __ptext27
__ptext27:	;psect for function _i2c_start
psect	text27
	file	"i2c.c"
	line	24
	global	__size_of_i2c_start
	__size_of_i2c_start	equ	__end_of_i2c_start-_i2c_start
	
_i2c_start:	
;incstack = 0
	opt	callstack 2
; Regs used in _i2c_start: [status,2+status,0+pclath+cstack]
	line	25
	
l1943:	
	bsf	(7),3	;volatile
	line	26
	bsf	(7),4	;volatile
	line	27
	
l1945:	
	fcall	_delay
	line	28
	
l1947:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),4	;volatile
	line	29
	fcall	_delay
	line	30
	
l414:	
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
;;  ack             1   23[BANK0 ] unsigned char 
;;  i               1   25[BANK0 ] unsigned char 
;;  ret             1   24[BANK0 ] unsigned char 
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
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	line	56
global __ptext28
__ptext28:	;psect for function _i2c_rb
psect	text28
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
	
l1981:	
	clrf	(i2c_rb@ret)
	line	60
	
l1983:	
	bcf	(7),3	;volatile
	line	61
	
l1985:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h,4	;volatile
	line	62
	
l1987:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(7),4	;volatile
	line	63
	clrf	(i2c_rb@i)
	
l425:	
	line	64
	bsf	(7),3	;volatile
	line	65
	
l1993:	
	fcall	_delay
	line	66
	
l1995:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	swapf	(7),w	;volatile
	andlw	(1<<1)-1
	movwf	(??_i2c_rb+0)+0
	movf	(i2c_rb@i),w
	sublw	07h
	addlw	1
	goto	u1334
u1335:
	clrc
	rlf	(??_i2c_rb+0)+0,f
u1334:
	addlw	-1
	skipz
	goto	u1335
	movf	0+(??_i2c_rb+0)+0,w
	movwf	(??_i2c_rb+1)+0
	movf	(??_i2c_rb+1)+0,w
	iorwf	(i2c_rb@ret),f
	line	67
	
l1997:	
	bcf	(7),3	;volatile
	line	63
	
l1999:	
	movlw	low(01h)
	movwf	(??_i2c_rb+0)+0
	movf	(??_i2c_rb+0)+0,w
	addwf	(i2c_rb@i),f
	
l2001:	
	movlw	low(08h)
	subwf	(i2c_rb@i),w
	skipc
	goto	u1341
	goto	u1340
u1341:
	goto	l425
u1340:
	
l426:	
	line	69
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h,4	;volatile
	line	70
	
l2003:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((i2c_rb@ack)),w
	btfsc	status,2
	goto	u1351
	goto	u1350
u1351:
	goto	l427
u1350:
	line	71
	
l2005:	
	bcf	(7),4	;volatile
	goto	l2007
	line	72
	
l427:	
	line	73
	bsf	(7),4	;volatile
	line	74
	
l2007:	
	fcall	_delay
	line	75
	
l2009:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),3	;volatile
	line	76
	fcall	_delay
	line	77
	
l2011:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),3	;volatile
	line	79
	
l2013:	
	movf	(i2c_rb@ret),w
	line	80
	
l429:	
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
psect	text29,local,class=CODE,delta=2,merge=1,group=0
	line	5
global __ptext29
__ptext29:	;psect for function _delay
psect	text29
	file	"i2c.c"
	line	5
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	callstack 2
; Regs used in _delay: []
	line	7
	
l1931:	
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
psect	text29
	line	16
	
l408:	
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
;;		On entry : B00/100
;;		On exit  : B00/0
;;		Unchanged: 800/0
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
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	file	"adc.c"
	line	5
global __ptext30
__ptext30:	;psect for function _adc_init
psect	text30
	file	"adc.c"
	line	5
	global	__size_of_adc_init
	__size_of_adc_init	equ	__end_of_adc_init-_adc_init
	
_adc_init:	
;incstack = 0
	opt	callstack 4
; Regs used in _adc_init: [wreg]
	line	6
	
l2363:	
	movlw	low(02h)
	movwf	(159)^080h	;volatile
	line	7
	movlw	low(041h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	8
	
l137:	
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
;;  multiplier      2   31[BANK0 ] unsigned int 
;;  multiplicand    2   33[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   35[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   31[BANK0 ] unsigned int 
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
psect	text31,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul16.c"
	line	15
global __ptext31
__ptext31:	;psect for function ___wmul
psect	text31
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	callstack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l2519:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l2521:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l572
u2220:
	line	46
	
l2523:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l572:	
	line	47
	movlw	01h
	
u2235:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2235
	line	48
	
l2525:	
	movlw	01h
	
u2245:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2245
	line	49
	
l2527:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l2521
u2250:
	line	52
	
l2529:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l574:	
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
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 800/0
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
	file	"pwm.c"
	line	39
global __ptext32
__ptext32:	;psect for function _PWM1_Start
psect	text32
	file	"pwm.c"
	line	39
	global	__size_of_PWM1_Start
	__size_of_PWM1_Start	equ	__end_of_PWM1_Start-_PWM1_Start
	
_PWM1_Start:	
;incstack = 0
	opt	callstack 4
; Regs used in _PWM1_Start: [wreg]
	line	40
	
l2391:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h,2	;volatile
	line	41
	bcf	(136)^080h,5	;volatile
	line	42
	
l2393:	
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	43
	
l2395:	
	bsf	(18),2	;volatile
	line	45
	
l2397:	
	bcf	(12),1	;volatile
	line	46
	
l392:	
	btfss	(12),1	;volatile
	goto	u2061
	goto	u2060
u2061:
	goto	l392
u2060:
	
l394:	
	line	47
	bcf	(12),1	;volatile
	line	48
	
l395:	
	btfss	(12),1	;volatile
	goto	u2071
	goto	u2070
u2071:
	goto	l395
u2070:
	line	49
	
l398:	
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
;;  d               1   11[BANK1 ] unsigned char 
;;  temp            2   12[BANK1 ] unsigned int 
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
;;      Locals:         0       0       3       0       0
;;      Temps:          0       0       6       0       0
;;      Totals:         0       0       9       0       0
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
psect	text33,local,class=CODE,delta=2,merge=1,group=0
	line	51
global __ptext33
__ptext33:	;psect for function _PWM1_Set_Duty
psect	text33
	file	"pwm.c"
	line	51
	global	__size_of_PWM1_Set_Duty
	__size_of_PWM1_Set_Duty	equ	__end_of_PWM1_Set_Duty-_PWM1_Set_Duty
	
_PWM1_Set_Duty:	
;incstack = 0
	opt	callstack 3
; Regs used in _PWM1_Set_Duty: [wreg+status,2+status,0+pclath+cstack]
	movwf	(PWM1_Set_Duty@d)^080h
	line	53
	
l3009:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lldiv@divisor+3)
	movlw	0
	movwf	(___lldiv@divisor+2)
	movlw	0
	movwf	(___lldiv@divisor+1)
	movlw	0FFh
	movwf	(___lldiv@divisor)

	bsf	status, 5	;RP0=1, select bank1
	movf	(PWM1_Set_Duty@d)^080h,w
	movwf	(??_PWM1_Set_Duty+0)^080h+0
	clrf	(??_PWM1_Set_Duty+0)^080h+0+1
	clrf	(??_PWM1_Set_Duty+0)^080h+0+2
	clrf	(??_PWM1_Set_Duty+0)^080h+0+3
	movf	3+(??_PWM1_Set_Duty+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lmul@multiplier+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	2+(??_PWM1_Set_Duty+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lmul@multiplier+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(??_PWM1_Set_Duty+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lmul@multiplier+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(??_PWM1_Set_Duty+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lmul@multiplier)

	bsf	status, 5	;RP0=1, select bank1
	movf	(146)^080h,w	;volatile
	movwf	(??_PWM1_Set_Duty+4)^080h+0
	clrf	(??_PWM1_Set_Duty+4)^080h+0+1
	clrc
	rlf	(??_PWM1_Set_Duty+4)^080h+0,f
	rlf	(??_PWM1_Set_Duty+4)^080h+1,f
	clrc
	rlf	(??_PWM1_Set_Duty+4)^080h+0,f
	rlf	(??_PWM1_Set_Duty+4)^080h+1,f
	movlw	03h
	iorwf	0+(??_PWM1_Set_Duty+4)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lmul@multiplicand)
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	iorwf	1+(??_PWM1_Set_Duty+4)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
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
	bsf	status, 5	;RP0=1, select bank1
	movwf	(PWM1_Set_Duty@temp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___lldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(PWM1_Set_Duty@temp)^080h
	line	54
	
l3011:	
	movf	(PWM1_Set_Duty@temp+1)^080h,w
	movwf	(??_PWM1_Set_Duty+0)^080h+0+1
	movf	(PWM1_Set_Duty@temp)^080h,w
	movwf	(??_PWM1_Set_Duty+0)^080h+0
	clrc
	rrf	(??_PWM1_Set_Duty+0)^080h+1,f
	rrf	(??_PWM1_Set_Duty+0)^080h+0,f
	clrc
	rrf	(??_PWM1_Set_Duty+0)^080h+1,f
	rrf	(??_PWM1_Set_Duty+0)^080h+0,f
	movf	0+(??_PWM1_Set_Duty+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	55
	
l3013:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(PWM1_Set_Duty@temp)^080h,w
	andlw	03h
	movwf	(??_PWM1_Set_Duty+0)^080h+0
	movlw	(04h)-1
u3055:
	clrc
	rlf	(??_PWM1_Set_Duty+0)^080h+0,f
	addlw	-1
	skipz
	goto	u3055
	clrc
	rlf	(??_PWM1_Set_Duty+0)^080h+0,w
	iorlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	56
	
l401:	
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
;;  multiplier      4   21[BANK0 ] unsigned long 
;;  multiplicand    4   25[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4   30[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  4   21[BANK0 ] unsigned long 
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
psect	text34,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul32.c"
	line	15
global __ptext34
__ptext34:	;psect for function ___lmul
psect	text34
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
;incstack = 0
	opt	callstack 3
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	119
	
l2785:	
	movlw	high highword(0)
	movwf	(___lmul@product+3)
	movlw	low highword(0)
	movwf	(___lmul@product+2)
	movlw	high(0)
	movwf	(___lmul@product+1)
	movlw	low(0)
	movwf	(___lmul@product)

	line	121
	
l2787:	
	btfss	(___lmul@multiplier),(0)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l2791
u2570:
	line	122
	
l2789:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2581
	addwf	(___lmul@product+1),f
u2581:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2582
	addwf	(___lmul@product+2),f
u2582:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2583
	addwf	(___lmul@product+3),f
u2583:

	line	123
	
l2791:	
	movlw	01h
	movwf	(??___lmul+0)+0
u2595:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0)+0
	goto	u2595
	line	124
	
l2793:	
	movlw	01h
u2605:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u2605

	line	125
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u2611
	goto	u2610
u2611:
	goto	l2787
u2610:
	line	128
	
l2795:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	129
	
l586:	
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
;;  divisor         4   34[BANK0 ] unsigned long 
;;  dividend        4   38[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    0[BANK1 ] unsigned long 
;;  counter         1    4[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   34[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       0       5       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       5       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM1_Set_Duty
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\__lldiv.c"
	line	5
global __ptext35
__ptext35:	;psect for function ___lldiv
psect	text35
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\__lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	callstack 3
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	13
	
l2799:	
	movlw	high highword(0)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(___lldiv@quotient+3)^080h
	movlw	low highword(0)
	movwf	(___lldiv@quotient+2)^080h
	movlw	high(0)
	movwf	(___lldiv@quotient+1)^080h
	movlw	low(0)
	movwf	(___lldiv@quotient)^080h

	line	14
	bcf	status, 5	;RP0=0, select bank0
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u2621
	goto	u2620
u2621:
	goto	l2819
u2620:
	line	15
	
l2801:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(___lldiv@counter)^080h
	incf	(___lldiv@counter)^080h,f
	line	16
	goto	l2805
	line	17
	
l2803:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u2635:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u2635
	line	18
	movlw	low(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	addwf	(___lldiv@counter)^080h,f
	line	16
	
l2805:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l2803
u2640:
	line	21
	
l2807:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??___lldiv+0)+0
u2655:
	clrc
	bsf	status, 5	;RP0=1, select bank1
	rlf	(___lldiv@quotient)^080h,f
	rlf	(___lldiv@quotient+1)^080h,f
	rlf	(___lldiv@quotient+2)^080h,f
	rlf	(___lldiv@quotient+3)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(??___lldiv+0)+0
	goto	u2655
	line	22
	
l2809:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u2665
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u2665
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u2665
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u2665:
	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l2815
u2660:
	line	23
	
l2811:	
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
	
l2813:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(___lldiv@quotient)^080h+(0/8),(0)&7
	line	26
	
l2815:	
	movlw	01h
u2675:
	clrc
	bcf	status, 5	;RP0=0, select bank0
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u2675

	line	27
	
l2817:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	subwf	(___lldiv@counter)^080h,f
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l2807
u2680:
	line	29
	
l2819:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(___lldiv@quotient+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___lldiv@quotient+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lldiv+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___lldiv@quotient+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lldiv+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(___lldiv@quotient)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___lldiv)

	line	30
	
l608:	
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
;;  f               2   36[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  temp            2    0[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       6       2       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=0
	file	"pwm.c"
	line	6
global __ptext36
__ptext36:	;psect for function _PWM1_Init
psect	text36
	file	"pwm.c"
	line	6
	global	__size_of_PWM1_Init
	__size_of_PWM1_Init	equ	__end_of_PWM1_Init-_PWM1_Init
	
_PWM1_Init:	
;incstack = 0
	opt	callstack 3
; Regs used in _PWM1_Init: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l2983:	
	clrf	(23)	;volatile
	line	13
	
l2985:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h,2	;volatile
	line	14
	
l2987:	
	bsf	(136)^080h,5	;volatile
	line	15
	
l2989:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7),2	;volatile
	line	16
	
l2991:	
	bcf	(8),5	;volatile
	line	17
	clrf	(21)	;volatile
	line	20
	
l2993:	
	bcf	(18),2	;volatile
	line	21
	
l2995:	
	movf	(PWM1_Init@f),w
	movwf	((??_PWM1_Init+0)+0)
	movf	(PWM1_Init@f+1),w
	movwf	((??_PWM1_Init+0)+0+1)
	clrf	((??_PWM1_Init+0)+0+2)
	clrf	((??_PWM1_Init+0)+0+3)
	movlw	02h
u3015:
	clrc
	rlf	(??_PWM1_Init+0)+0,f
	rlf	(??_PWM1_Init+0)+1,f
	rlf	(??_PWM1_Init+0)+2,f
	rlf	(??_PWM1_Init+0)+3,f
u3010:
	addlw	-1
	skipz
	goto	u3015
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
	bsf	status, 5	;RP0=1, select bank1
	movwf	(PWM1_Init@temp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___aldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(PWM1_Init@temp)^080h
	line	23
	
l2997:	
	movlw	01h
	subwf	(PWM1_Init@temp+1)^080h,w
	movlw	0
	skipnz
	subwf	(PWM1_Init@temp)^080h,w
	skipnc
	goto	u3021
	goto	u3020
u3021:
	goto	l3003
u3020:
	line	24
	
l2999:	
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(18),f	;volatile
	line	25
	
l3001:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(PWM1_Init@temp)^080h,w
	movwf	(146)^080h	;volatile
	line	26
	goto	l386
	line	27
	
l3003:	
	movf	(PWM1_Init@temp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_PWM1_Init+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(PWM1_Init@temp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
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
	goto	u3031
	goto	u3030
u3031:
	goto	l3007
u3030:
	line	28
	
l3005:	
	movf	(18),w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(01h & ((1<<2)-1))<<0
	movwf	(18)	;volatile
	line	29
	bsf	status, 5	;RP0=1, select bank1
	movf	(PWM1_Init@temp)^080h,w
	addlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_PWM1_Init+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(PWM1_Init@temp+1)^080h,w
	skipnc
	addlw	1
	addlw	high(02h)
	bcf	status, 5	;RP0=0, select bank0
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
	goto	l386
	line	32
	
l3007:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(PWM1_Init@temp)^080h,w
	addlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_PWM1_Init+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(PWM1_Init@temp+1)^080h,w
	skipnc
	addlw	1
	addlw	high(08h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(??_PWM1_Init+0)+0
	movlw	04h
u3045:
	clrc
	rrf	(??_PWM1_Init+0)+1,f
	rrf	(??_PWM1_Init+0)+0,f
	addlw	-1
	skipz
	goto	u3045
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
	
l386:	
	line	35
	movlw	((0 & ((1<<4)-1))<<3)|not (((1<<4)-1)<<3)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(18),f	;volatile
	line	36
	
l389:	
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
;;  divisor         4   21[BANK0 ] long 
;;  dividend        4   25[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   32[BANK0 ] long 
;;  sign            1   31[BANK0 ] unsigned char 
;;  counter         1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   21[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 800/0
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
psect	text37,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\aldiv.c"
	line	5
global __ptext37
__ptext37:	;psect for function ___aldiv
psect	text37
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
;incstack = 0
	opt	callstack 3
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	13
	
l2823:	
	clrf	(___aldiv@sign)
	line	14
	
l2825:	
	btfss	(___aldiv@divisor+3),7
	goto	u2691
	goto	u2690
u2691:
	goto	l643
u2690:
	line	15
	
l2827:	
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
	
l643:	
	line	18
	btfss	(___aldiv@dividend+3),7
	goto	u2701
	goto	u2700
u2701:
	goto	l2833
u2700:
	line	19
	
l2829:	
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
	
l2831:	
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	line	22
	
l2833:	
	movlw	high highword(0)
	movwf	(___aldiv@quotient+3)
	movlw	low highword(0)
	movwf	(___aldiv@quotient+2)
	movlw	high(0)
	movwf	(___aldiv@quotient+1)
	movlw	low(0)
	movwf	(___aldiv@quotient)

	line	23
	
l2835:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u2711
	goto	u2710
u2711:
	goto	l2855
u2710:
	line	24
	
l2837:	
	clrf	(___aldiv@counter)
	incf	(___aldiv@counter),f
	line	25
	goto	l2841
	line	26
	
l2839:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u2725:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u2725
	line	27
	movlw	low(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	line	25
	
l2841:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l2839
u2730:
	line	30
	
l2843:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u2745:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u2745
	line	31
	
l2845:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u2755
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u2755
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u2755
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u2755:
	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l2851
u2750:
	line	32
	
l2847:	
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
	
l2849:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	line	35
	
l2851:	
	movlw	01h
u2765:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u2765

	line	36
	
l2853:	
	movlw	01h
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u2771
	goto	u2770
u2771:
	goto	l2843
u2770:
	line	38
	
l2855:	
	movf	((___aldiv@sign)),w
	btfsc	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l2859
u2780:
	line	39
	
l2857:	
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
	
l2859:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	line	41
	
l653:	
	return
	opt callstack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 32 in file "main.c"
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
;;		i1_serial_tx_str
;;		i1_sprintf
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	32
global __ptext38
__ptext38:	;psect for function _isr
psect	text38
	file	"main.c"
	line	32
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
psect	text38
	line	34
	
i1l2617:	
	btfss	(12),0	;volatile
	goto	u237_21
	goto	u237_20
u237_21:
	goto	i1l2637
u237_20:
	line	35
	
i1l2619:	
	bcf	(12),0	;volatile
	line	36
	
i1l2621:	
	movlw	low(0CFh)
	movwf	(15)	;volatile
	line	37
	movlw	low(02Ch)
	movwf	(14)	;volatile
	line	38
	
i1l2623:	
		movlw	10
	xorwf	((_nMSeconds)),w
iorwf	((_nMSeconds+1)),w
	btfss	status,2
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l2635
u238_20:
	line	39
	
i1l2625:	
	movlw	01h
	addwf	(_nSeconds),f
	skipnc
	incf	(_nSeconds+1),f
	movlw	0
	addwf	(_nSeconds+1),f
	line	40
	
i1l2627:	
	clrf	(_nMSeconds)
	clrf	(_nMSeconds+1)
	line	41
	
i1l2629:	
		movlw	51
	xorwf	((_nSeconds)),w
iorwf	((_nSeconds+1)),w
	btfss	status,2
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l2637
u239_20:
	line	42
	
i1l2631:	
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	movwf	(i1sprintf@sp)
	movlw	(0x1)
	movwf	(i1sprintf@sp+1)
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(i1sprintf@f)
	movlw	(low(_strADC|((0x0)<<8)))&0ffh
	movwf	(??_isr+1)+0
	movf	(??_isr+1)+0,w
	movwf	(0+low(?i1_sprintf|((0x0)<<8)+03h))
	fcall	i1_sprintf
	line	43
	movlw	(low(_strUART|((0x1)<<8))&0ffh)
	movwf	(i1serial_tx_str@val)
	movlw	(0x1)
	movwf	(i1serial_tx_str@val+1)
	fcall	i1_serial_tx_str
	line	44
	
i1l2633:	
	clrf	(_nSeconds)
	clrf	(_nSeconds+1)
	goto	i1l2637
	line	47
	
i1l2635:	
	movlw	01h
	addwf	(_nMSeconds),f
	skipnc
	incf	(_nMSeconds+1),f
	movlw	0
	addwf	(_nMSeconds+1),f
	line	52
	
i1l2637:	
	btfss	(11),1	;volatile
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l94
u240_20:
	line	53
	
i1l2639:	
	bcf	(11),1	;volatile
	line	54
	
i1l2641:	
	movf	((_run)),w
	btfsc	status,2
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l92
u241_20:
	line	55
	
i1l2643:	
	bcf	(7),5	;volatile
	line	56
	bsf	(7),1	;volatile
	line	57
	bcf	(7),2	;volatile
	line	58
	
i1l2645:	
	clrf	(23)	;volatile
	line	59
	clrf	(16)	;volatile
	line	60
	clrf	(_nSeconds)
	clrf	(_nSeconds+1)
	line	61
	clrf	(_nMSeconds)
	clrf	(_nMSeconds+1)
	line	62
	goto	i1l2649
	line	63
	
i1l92:	
	line	64
	bsf	(7),5	;volatile
	line	65
	
i1l2647:	
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	66
	movlw	low(031h)
	movwf	(16)	;volatile
	line	68
	
i1l2649:	
	movf	((_run)),w
	btfsc	status,2
	goto	u242_21
	goto	u242_20
u242_21:
	movlw	1
	goto	u243_20
u242_20:
	movlw	0
u243_20:
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_run)
	line	70
	
i1l94:	
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
	global	i1_sprintf

;; *************** function i1_sprintf *****************
;; Defined at:
;;		line 505 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              2    0[BANK0 ] PTR unsigned char 
;;		 -> strADC(11), strUART(40), 
;;  f               1    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_6(35), STR_5(19), STR_3(9), STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  sprintf         4    0        struct .
;;  sprintf         2   12[BANK0 ] unsigned int 
;;  sprintf         2   10[BANK0 ] PTR const unsigned char 
;;		 -> STR_11(7), ?_sprintf(2), strADC(11), 
;;  sprintf         2    0        unsigned int 
;;  sprintf         1   14[BANK0 ] unsigned char 
;;  sprintf         1    9[BANK0 ] PTR void [1]
;;		 -> ?i1_sprintf(2), ?_sprintf(2), 
;;  sprintf         1    8[BANK0 ] char 
;;  sprintf         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       8       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___lwdiv
;;		i1___lwmod
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
global __ptext39
__ptext39:	;psect for function i1_sprintf
psect	text39
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
	global	__size_ofi1_sprintf
	__size_ofi1_sprintf	equ	__end_ofi1_sprintf-i1_sprintf
	
i1_sprintf:	
;incstack = 0
	opt	callstack 1
; Regs used in i1_sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	550
	
i1l2545:	
	movlw	(low(?i1_sprintf|((0x0)<<8)+03h))&0ffh
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	movwf	(i1sprintf@ap)
	line	553
	goto	i1l2611
	line	555
	
i1l2547:	
		movlw	37
	xorwf	((i1sprintf@c)),w
	btfsc	status,2
	goto	u227_21
	goto	u227_20
u227_21:
	goto	i1l2553
u227_20:
	line	558
	
i1l2549:	
	movf	(i1sprintf@c),w
	movwf	(??i1_sprintf+0)+0
	movf	(i1sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1sprintf@sp+1),0
	bcf	status,7
	movf	(??i1_sprintf+0)+0,w
	movwf	indf
	
i1l2551:	
	movlw	01h
	addwf	(i1sprintf@sp),f
	skipnc
	incf	(i1sprintf@sp+1),f
	movlw	0
	addwf	(i1sprintf@sp+1),f
	line	559
	goto	i1l2611
	line	565
	
i1l2553:	
	clrf	(i1sprintf@flag)
	line	661
	goto	i1l2571
	line	760
	
i1l2555:	
	movf	(i1sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(i1sprintf@cp)
	movlw	(0x0)
	movwf	(i1sprintf@cp+1)
	
i1l2557:	
	movlw	low(01h)
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	addwf	(i1sprintf@ap),f
	line	766
	
i1l2559:	
	movf	((i1sprintf@cp)),w
iorwf	((i1sprintf@cp+1)),w
	btfss	status,2
	goto	u228_21
	goto	u228_20
u228_21:
	goto	i1l555
u228_20:
	line	767
	
i1l2561:	
	movlw	(low((((STR_11)-__stringbase)|8000h)))&0ffh
	movwf	(i1sprintf@cp)
	movlw	80h
	movwf	(i1sprintf@cp+1)
	goto	i1l555
	line	804
	
i1l2563:	
	movf	(i1sprintf@cp+1),w
	movwf	btemp+1
	movf	(i1sprintf@cp),w
	movwf	fsr0
	fcall	stringtab
	movwf	(??i1_sprintf+0)+0
	movf	(i1sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1sprintf@sp+1),0
	bcf	status,7
	movf	(??i1_sprintf+0)+0,w
	movwf	indf
	
i1l2565:	
	movlw	01h
	addwf	(i1sprintf@cp),f
	skipnc
	incf	(i1sprintf@cp+1),f
	movlw	0
	addwf	(i1sprintf@cp+1),f
	
i1l2567:	
	movlw	01h
	addwf	(i1sprintf@sp),f
	skipnc
	incf	(i1sprintf@sp+1),f
	movlw	0
	addwf	(i1sprintf@sp+1),f
	
i1l555:	
	line	803
	movf	(i1sprintf@cp+1),w
	movwf	btemp+1
	movf	(i1sprintf@cp),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u229_21
	goto	u229_20
u229_21:
	goto	i1l2563
u229_20:
	goto	i1l2611
	line	661
	
i1l2571:	
	movlw	01h
	addwf	(i1sprintf@f),f
	movlw	-01h
	addwf	(i1sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(i1sprintf@c)
	; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 0 to 115
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l2613
	xorlw	100^0	; case 100
	skipnz
	goto	i1l2573
	xorlw	105^100	; case 105
	skipnz
	goto	i1l2573
	xorlw	115^105	; case 115
	skipnz
	goto	i1l2555
	goto	i1l2611
	opt asmopt_pop

	line	1285
	
i1l2573:	
	movf	(i1sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(i1sprintf@val)
	incf	fsr0,f
	movf	indf,w
	movwf	(i1sprintf@val+1)
	
i1l2575:	
	movlw	low(02h)
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	addwf	(i1sprintf@ap),f
	line	1287
	
i1l2577:	
	btfss	(i1sprintf@val+1),7
	goto	u230_21
	goto	u230_20
u230_21:
	goto	i1l2583
u230_20:
	line	1288
	
i1l2579:	
	movlw	low(03h)
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	iorwf	(i1sprintf@flag),f
	line	1289
	
i1l2581:	
	comf	(i1sprintf@val),f
	comf	(i1sprintf@val+1),f
	incf	(i1sprintf@val),f
	skipnz
	incf	(i1sprintf@val+1),f
	line	1331
	
i1l2583:	
	clrf	(i1sprintf@c)
	incf	(i1sprintf@c),f
	
i1l2585:	
		movlw	5
	xorwf	((i1sprintf@c)),w
	btfss	status,2
	goto	u231_21
	goto	u231_20
u231_21:
	goto	i1l2589
u231_20:
	goto	i1l2595
	line	1332
	
i1l2589:	
	movf	(i1sprintf@c),w
	movwf	(??i1_sprintf+0)+0
	addwf	(??i1_sprintf+0)+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??i1_sprintf+1)+0
	fcall	stringdir
	movwf	(??i1_sprintf+1)+0+1
	movf	1+(??i1_sprintf+1)+0,w
	subwf	(i1sprintf@val+1),w
	skipz
	goto	u232_25
	movf	0+(??i1_sprintf+1)+0,w
	subwf	(i1sprintf@val),w
u232_25:
	skipnc
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l2593
u232_20:
	goto	i1l2595
	line	1331
	
i1l2593:	
	movlw	low(01h)
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	addwf	(i1sprintf@c),f
		movlw	5
	xorwf	((i1sprintf@c)),w
	btfss	status,2
	goto	u233_21
	goto	u233_20
u233_21:
	goto	i1l2589
u233_20:
	line	1464
	
i1l2595:	
	movf	(i1sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u234_21
	goto	u234_20
u234_21:
	goto	i1l2601
u234_20:
	line	1465
	
i1l2597:	
	movlw	low(02Dh)
	movwf	(??i1_sprintf+0)+0
	movf	(i1sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1sprintf@sp+1),0
	bcf	status,7
	movf	(??i1_sprintf+0)+0,w
	movwf	indf
	
i1l2599:	
	movlw	01h
	addwf	(i1sprintf@sp),f
	skipnc
	incf	(i1sprintf@sp+1),f
	movlw	0
	addwf	(i1sprintf@sp+1),f
	line	1498
	
i1l2601:	
	movf	(i1sprintf@c),w
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	movwf	(i1sprintf@prec)
	line	1500
	goto	i1l2609
	line	1515
	
i1l2603:	
	movlw	0Ah
	movwf	(i1___lwmod@divisor)
	movlw	0
	movwf	((i1___lwmod@divisor))+1
	movf	(i1sprintf@prec),w
	movwf	(??i1_sprintf+0)+0
	addwf	(??i1_sprintf+0)+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(i1___lwdiv@divisor)
	fcall	stringdir
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
	
i1l2605:	
	movf	(i1sprintf@c),w
	movwf	(??i1_sprintf+0)+0
	movf	(i1sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1sprintf@sp+1),0
	bcf	status,7
	movf	(??i1_sprintf+0)+0,w
	movwf	indf
	
i1l2607:	
	movlw	01h
	addwf	(i1sprintf@sp),f
	skipnc
	incf	(i1sprintf@sp+1),f
	movlw	0
	addwf	(i1sprintf@sp+1),f
	line	1500
	
i1l2609:	
	movlw	low(-1)
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	addwf	(i1sprintf@prec),f
		incf	(((i1sprintf@prec))),w
	btfss	status,2
	goto	u235_21
	goto	u235_20
u235_21:
	goto	i1l2603
u235_20:
	line	553
	
i1l2611:	
	movlw	01h
	addwf	(i1sprintf@f),f
	movlw	-01h
	addwf	(i1sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??i1_sprintf+0)+0
	movf	(??i1_sprintf+0)+0,w
	movwf	(i1sprintf@c)
	movf	(((i1sprintf@c))),w
	btfss	status,2
	goto	u236_21
	goto	u236_20
u236_21:
	goto	i1l2547
u236_20:
	line	1564
	
i1l2613:	
	movf	(i1sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1sprintf@sp+1),0
	bcf	status,7
	clrf	indf
	line	1567
	
i1l568:	
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
psect	text40,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext40
__ptext40:	;psect for function i1___lwmod
psect	text40
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
	global	__size_ofi1___lwmod
	__size_ofi1___lwmod	equ	__end_ofi1___lwmod-i1___lwmod
	
i1___lwmod:	
;incstack = 0
	opt	callstack 1
; Regs used in i1___lwmod: [wreg+status,2+status,0]
	line	12
	
i1l2223:	
	movf	((i1___lwmod@divisor)),w
iorwf	((i1___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u186_21
	goto	u186_20
u186_21:
	goto	i1l2241
u186_20:
	line	13
	
i1l2225:	
	clrf	(i1___lwmod@counter)
	incf	(i1___lwmod@counter),f
	line	14
	goto	i1l2231
	line	15
	
i1l2227:	
	movlw	01h
	
u187_25:
	clrc
	rlf	(i1___lwmod@divisor),f
	rlf	(i1___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u187_25
	line	16
	
i1l2229:	
	movlw	low(01h)
	movwf	(??i1___lwmod+0)+0
	movf	(??i1___lwmod+0)+0,w
	addwf	(i1___lwmod@counter),f
	line	14
	
i1l2231:	
	btfss	(i1___lwmod@divisor+1),(15)&7
	goto	u188_21
	goto	u188_20
u188_21:
	goto	i1l2227
u188_20:
	line	19
	
i1l2233:	
	movf	(i1___lwmod@divisor+1),w
	subwf	(i1___lwmod@dividend+1),w
	skipz
	goto	u189_25
	movf	(i1___lwmod@divisor),w
	subwf	(i1___lwmod@dividend),w
u189_25:
	skipc
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l2237
u189_20:
	line	20
	
i1l2235:	
	movf	(i1___lwmod@divisor),w
	subwf	(i1___lwmod@dividend),f
	movf	(i1___lwmod@divisor+1),w
	skipc
	decf	(i1___lwmod@dividend+1),f
	subwf	(i1___lwmod@dividend+1),f
	line	21
	
i1l2237:	
	movlw	01h
	
u190_25:
	clrc
	rrf	(i1___lwmod@divisor+1),f
	rrf	(i1___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u190_25
	line	22
	
i1l2239:	
	movlw	01h
	subwf	(i1___lwmod@counter),f
	btfss	status,2
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l2233
u191_20:
	line	24
	
i1l2241:	
	movf	(i1___lwmod@dividend+1),w
	movwf	(?i1___lwmod+1)
	movf	(i1___lwmod@dividend),w
	movwf	(?i1___lwmod)
	line	25
	
i1l990:	
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
psect	text41,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext41
__ptext41:	;psect for function i1___lwdiv
psect	text41
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
	global	__size_ofi1___lwdiv
	__size_ofi1___lwdiv	equ	__end_ofi1___lwdiv-i1___lwdiv
	
i1___lwdiv:	
;incstack = 0
	opt	callstack 1
; Regs used in i1___lwdiv: [wreg+status,2+status,0]
	line	13
	
i1l2197:	
	clrf	(i1___lwdiv@quotient)
	clrf	(i1___lwdiv@quotient+1)
	line	14
	
i1l2199:	
	movf	((i1___lwdiv@divisor)),w
iorwf	((i1___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u179_21
	goto	u179_20
u179_21:
	goto	i1l2219
u179_20:
	line	15
	
i1l2201:	
	clrf	(i1___lwdiv@counter)
	incf	(i1___lwdiv@counter),f
	line	16
	goto	i1l2207
	line	17
	
i1l2203:	
	movlw	01h
	
u180_25:
	clrc
	rlf	(i1___lwdiv@divisor),f
	rlf	(i1___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u180_25
	line	18
	
i1l2205:	
	movlw	low(01h)
	movwf	(??i1___lwdiv+0)+0
	movf	(??i1___lwdiv+0)+0,w
	addwf	(i1___lwdiv@counter),f
	line	16
	
i1l2207:	
	btfss	(i1___lwdiv@divisor+1),(15)&7
	goto	u181_21
	goto	u181_20
u181_21:
	goto	i1l2203
u181_20:
	line	21
	
i1l2209:	
	movlw	01h
	
u182_25:
	clrc
	rlf	(i1___lwdiv@quotient),f
	rlf	(i1___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u182_25
	line	22
	movf	(i1___lwdiv@divisor+1),w
	subwf	(i1___lwdiv@dividend+1),w
	skipz
	goto	u183_25
	movf	(i1___lwdiv@divisor),w
	subwf	(i1___lwdiv@dividend),w
u183_25:
	skipc
	goto	u183_21
	goto	u183_20
u183_21:
	goto	i1l2215
u183_20:
	line	23
	
i1l2211:	
	movf	(i1___lwdiv@divisor),w
	subwf	(i1___lwdiv@dividend),f
	movf	(i1___lwdiv@divisor+1),w
	skipc
	decf	(i1___lwdiv@dividend+1),f
	subwf	(i1___lwdiv@dividend+1),f
	line	24
	
i1l2213:	
	bsf	(i1___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
i1l2215:	
	movlw	01h
	
u184_25:
	clrc
	rrf	(i1___lwdiv@divisor+1),f
	rrf	(i1___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u184_25
	line	27
	
i1l2217:	
	movlw	01h
	subwf	(i1___lwdiv@counter),f
	btfss	status,2
	goto	u185_21
	goto	u185_20
u185_21:
	goto	i1l2209
u185_20:
	line	29
	
i1l2219:	
	movf	(i1___lwdiv@quotient+1),w
	movwf	(?i1___lwdiv+1)
	movf	(i1___lwdiv@quotient),w
	movwf	(?i1___lwdiv)
	line	30
	
i1l980:	
	return
	opt callstack 0
GLOBAL	__end_ofi1___lwdiv
	__end_ofi1___lwdiv:
	signat	i1___lwdiv,8282
	global	i1_serial_tx_str

;; *************** function i1_serial_tx_str *****************
;; Defined at:
;;		line 36 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  val             2    1[COMMON] PTR const unsigned char 
;;		 -> STR_10(30), STR_9(30), STR_8(30), STR_7(31), 
;;		 -> strUART(40), 
;; Auto vars:     Size  Location     Type
;;  serial_tx_st    1    4[COMMON] unsigned char 
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
;;		i1_serial_tx
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1,group=0
	file	"serial.c"
	line	36
global __ptext42
__ptext42:	;psect for function i1_serial_tx_str
psect	text42
	file	"serial.c"
	line	36
	global	__size_ofi1_serial_tx_str
	__size_ofi1_serial_tx_str	equ	__end_ofi1_serial_tx_str-i1_serial_tx_str
	
i1_serial_tx_str:	
;incstack = 0
	opt	callstack 1
; Regs used in i1_serial_tx_str: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	37
	
i1l2533:	
	clrf	(i1serial_tx_str@i)
	line	38
	goto	i1l2539
	
i1l2535:	
	movf	(i1serial_tx_str@i),w
	addwf	(i1serial_tx_str@val),w
	movwf	fsr0
	movf	(i1serial_tx_str@val+1),w
	skipnc
	incf	(i1serial_tx_str@val+1),w
	movwf	btemp+1
	fcall	stringtab
	fcall	i1_serial_tx
	
i1l2537:	
	movlw	low(01h)
	movwf	(??i1_serial_tx_str+0)+0
	movf	(??i1_serial_tx_str+0)+0,w
	addwf	(i1serial_tx_str@i),f
	
i1l2539:	
	movf	(i1serial_tx_str@i),w
	addwf	(i1serial_tx_str@val),w
	movwf	fsr0
	movf	(i1serial_tx_str@val+1),w
	skipnc
	incf	(i1serial_tx_str@val+1),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	xorlw	0
	skipz
	goto	u226_21
	goto	u226_20
u226_21:
	goto	i1l2535
u226_20:
	line	39
	
i1l2541:	
	movlw	low(0Ah)
	fcall	i1_serial_tx
	line	40
	movlw	low(0Dh)
	fcall	i1_serial_tx
	line	41
	
i1l2543:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(12),5	;volatile
	line	42
	
i1l252:	
	return
	opt callstack 0
GLOBAL	__end_ofi1_serial_tx_str
	__end_ofi1_serial_tx_str:
	signat	i1_serial_tx_str,4185
	global	i1_serial_tx

;; *************** function i1_serial_tx *****************
;; Defined at:
;;		line 31 in file "serial.c"
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
psect	text43,local,class=CODE,delta=2,merge=1,group=0
	line	31
global __ptext43
__ptext43:	;psect for function i1_serial_tx
psect	text43
	file	"serial.c"
	line	31
	global	__size_ofi1_serial_tx
	__size_ofi1_serial_tx	equ	__end_ofi1_serial_tx-i1_serial_tx
	
i1_serial_tx:	
;incstack = 0
	opt	callstack 1
; Regs used in i1_serial_tx: [wreg]
	movwf	(i1serial_tx@val)
	line	32
	
i1l2195:	
	movf	(i1serial_tx@val),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(25)	;volatile
	line	33
	
i1l243:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(152)^080h,1	;volatile
	goto	u178_21
	goto	u178_20
u178_21:
	goto	i1l243
u178_20:
	line	34
	
i1l246:	
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
