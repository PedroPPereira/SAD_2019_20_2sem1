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
	FNCALL	_main,___lwdiv
	FNCALL	_main,___wmul
	FNCALL	_main,_adc_init
	FNCALL	_main,_delay_ms1
	FNCALL	_main,_lcd_init
	FNCALL	_main,_printlnLCD
	FNCALL	_main,_readADC
	FNCALL	_main,_serial_init
	FNCALL	_main,_serial_tx_str
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_serial_tx_str,_serial_tx
	FNCALL	_printlnLCD,_lcd_cmd
	FNCALL	_printlnLCD,_lcd_str
	FNCALL	_lcd_str,_lcd_dat
	FNCALL	_lcd_dat,_delay_ms
	FNCALL	_lcd_dat,_lcd_wr
	FNCALL	_lcd_init,_delay_ms
	FNCALL	_lcd_init,_lcd_cmd
	FNCALL	_lcd_cmd,_delay_ms
	FNCALL	_lcd_cmd,_lcd_wr
	FNROOT	_main
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
	global	_PORTCbits
_PORTCbits	set	0x7
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_TXSTAbits
_TXSTAbits	set	0x98
	global	_SPBRG
_SPBRG	set	0x99
	global	_ADRESL
_ADRESL	set	0x9E
	global	_ADCON1
_ADCON1	set	0x9F
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
	
STR_3:	
	retlw	13
	retlw	10
	retlw	32	;' '
	retlw	80	;'P'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	115	;'s'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	13
	retlw	10
	retlw	32	;' '
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	88	;'X'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_5:	
	retlw	65	;'A'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_4:	
	retlw	67	;'C'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	103	;'g'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	66	;'B'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_7:	
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_1:	
	retlw	66	;'B'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	118	;'v'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	0
psect	strings
	
STR_2:	
	retlw	50	;'2'
	retlw	48	;'0'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_6:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
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
	file	"main_old.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_lcd_init:	; 1 bytes @ 0x0
?_serial_init:	; 1 bytes @ 0x0
??_serial_init:	; 1 bytes @ 0x0
?_adc_init:	; 1 bytes @ 0x0
??_adc_init:	; 1 bytes @ 0x0
?_serial_tx_str:	; 1 bytes @ 0x0
?_delay_ms:	; 1 bytes @ 0x0
?_delay_ms1:	; 1 bytes @ 0x0
?_lcd_wr:	; 1 bytes @ 0x0
??_lcd_wr:	; 1 bytes @ 0x0
?_lcd_cmd:	; 1 bytes @ 0x0
?_lcd_dat:	; 1 bytes @ 0x0
?_serial_tx:	; 1 bytes @ 0x0
??_serial_tx:	; 1 bytes @ 0x0
	global	?_readADC
?_readADC:	; 2 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	lcd_wr@val
lcd_wr@val:	; 1 bytes @ 0x0
	global	serial_tx@val
serial_tx@val:	; 1 bytes @ 0x0
	global	delay_ms1@val
delay_ms1@val:	; 2 bytes @ 0x0
	global	delay_ms@val
delay_ms@val:	; 2 bytes @ 0x0
	ds	1
??_serial_tx_str:	; 1 bytes @ 0x1
	ds	1
??_readADC:	; 1 bytes @ 0x2
??_delay_ms:	; 1 bytes @ 0x2
??_delay_ms1:	; 1 bytes @ 0x2
	global	serial_tx_str@val
serial_tx_str@val:	; 1 bytes @ 0x2
	ds	1
	global	serial_tx_str@i
serial_tx_str@i:	; 1 bytes @ 0x3
	global	delay_ms1@i
delay_ms1@i:	; 2 bytes @ 0x3
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x3
	ds	2
	global	delay_ms1@j
delay_ms1@j:	; 1 bytes @ 0x5
	global	delay_ms@j
delay_ms@j:	; 1 bytes @ 0x5
	ds	1
??_lcd_cmd:	; 1 bytes @ 0x6
??_lcd_dat:	; 1 bytes @ 0x6
	global	lcd_cmd@val
lcd_cmd@val:	; 1 bytes @ 0x6
	global	lcd_dat@val
lcd_dat@val:	; 1 bytes @ 0x6
	ds	1
??_lcd_init:	; 1 bytes @ 0x7
?_lcd_str:	; 1 bytes @ 0x7
	global	lcd_str@str
lcd_str@str:	; 2 bytes @ 0x7
	ds	2
??_lcd_str:	; 1 bytes @ 0x9
	global	readADC@ch
readADC@ch:	; 1 bytes @ 0x9
	ds	1
	global	?___wmul
?___wmul:	; 2 bytes @ 0xA
	global	lcd_str@i
lcd_str@i:	; 1 bytes @ 0xA
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0xA
	ds	1
?_printlnLCD:	; 1 bytes @ 0xB
	global	printlnLCD@str2
printlnLCD@str2:	; 2 bytes @ 0xB
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0xC
	ds	1
??_printlnLCD:	; 1 bytes @ 0xD
	global	printlnLCD@str1
printlnLCD@str1:	; 1 bytes @ 0xD
	ds	1
??___wmul:	; 1 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x0
	ds	2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	ds	2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	ds	2
??___lwdiv:	; 1 bytes @ 0x6
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x9
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xA
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xA
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xC
	ds	2
??___lwmod:	; 1 bytes @ 0xE
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xF
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x10
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x10
	ds	3
??_sprintf:	; 1 bytes @ 0x13
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x16
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x17
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x18
	ds	1
	global	sprintf@val
sprintf@val:	; 2 bytes @ 0x19
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x1B
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x1C
	ds	1
??_main:	; 1 bytes @ 0x1D
	ds	5
	global	main@str
main@str:	; 6 bytes @ 0x22
	ds	6
	global	main@tmp
main@tmp:	; 1 bytes @ 0x28
	ds	1
;!
;!Data Sizes:
;!    Strings     96
;!    Constant    10
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     41      41
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 3
;!		 -> STR_6(CODE[3]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 6
;!		 -> main@str(BANK0[6]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    serial_tx_str@val	PTR const unsigned char  size(1) Largest target is 33
;!		 -> STR_3(CODE[33]), 
;!
;!    printlnLCD@str2	PTR const unsigned char  size(2) Largest target is 15
;!		 -> main@str(BANK0[6]), STR_5(CODE[15]), STR_2(CODE[9]), 
;!
;!    printlnLCD@str1	PTR const unsigned char  size(1) Largest target is 15
;!		 -> STR_7(CODE[11]), STR_4(CODE[15]), STR_1(CODE[10]), 
;!
;!    lcd_str@str	PTR const unsigned char  size(2) Largest target is 15
;!		 -> STR_7(CODE[11]), main@str(BANK0[6]), STR_5(CODE[15]), STR_4(CODE[15]), 
;!		 -> STR_2(CODE[9]), STR_1(CODE[10]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___wmul
;!    _main->_printlnLCD
;!    ___lwdiv->___wmul
;!    _serial_tx_str->_serial_tx
;!    _printlnLCD->_lcd_str
;!    _lcd_str->_lcd_dat
;!    _lcd_dat->_delay_ms
;!    _lcd_init->_lcd_cmd
;!    _lcd_cmd->_delay_ms
;!    ___wmul->_readADC
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_sprintf
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    ___lwdiv->___wmul
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                12    12      0    4909
;!                                             29 BANK0     12    12      0
;!                            ___lwdiv
;!                             ___wmul
;!                           _adc_init
;!                          _delay_ms1
;!                           _lcd_init
;!                         _printlnLCD
;!                            _readADC
;!                        _serial_init
;!                      _serial_tx_str
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             21    18      3    1196
;!                                             16 BANK0     13    10      3
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     265
;!                                             10 BANK0      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     374
;!                                              2 BANK0      8     4      4
;!                             ___wmul (ARG)
;!                            _readADC (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _serial_tx_str                                        3     3      0     139
;!                                              1 COMMON     3     3      0
;!                          _serial_tx
;! ---------------------------------------------------------------------------------
;! (2) _serial_tx                                            1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _serial_init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _readADC                                             10     8      2      22
;!                                              0 COMMON    10     8      2
;! ---------------------------------------------------------------------------------
;! (1) _printlnLCD                                           3     1      2    1654
;!                                             11 COMMON     3     1      2
;!                            _lcd_cmd
;!                            _lcd_str
;! ---------------------------------------------------------------------------------
;! (2) _lcd_str                                              4     2      2     823
;!                                              7 COMMON     4     2      2
;!                            _lcd_dat
;! ---------------------------------------------------------------------------------
;! (3) _lcd_dat                                              1     1      0     547
;!                                              6 COMMON     1     1      0
;!                           _delay_ms
;!                             _lcd_wr
;! ---------------------------------------------------------------------------------
;! (1) _lcd_init                                             0     0      0    1050
;!                           _delay_ms
;!                            _lcd_cmd
;! ---------------------------------------------------------------------------------
;! (2) _lcd_cmd                                              1     1      0     547
;!                                              6 COMMON     1     1      0
;!                           _delay_ms
;!                             _lcd_wr
;! ---------------------------------------------------------------------------------
;! (4) _lcd_wr                                               1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _delay_ms                                             6     4      2     503
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _delay_ms1                                            6     4      2     198
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _adc_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) ___wmul                                               6     2      4     198
;!                                             10 COMMON     4     0      4
;!                                              0 BANK0      2     2      0
;!                            _readADC (ARG)
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
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
;!   _adc_init
;!   _delay_ms1
;!   _lcd_init
;!     _delay_ms
;!     _lcd_cmd
;!       _delay_ms
;!       _lcd_wr
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
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     29      29       5       51.3%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 39 in file "main_old.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  str             6   34[BANK0 ] unsigned char [6]
;;  i               2    0        int 
;;  tmp             1   40[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   42[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lwdiv
;;		___wmul
;;		_adc_init
;;		_delay_ms1
;;		_lcd_init
;;		_printlnLCD
;;		_readADC
;;		_serial_init
;;		_serial_tx_str
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main_old.c"
	line	39
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main_old.c"
	line	39
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	callstack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	42
	
l1268:	
	movlw	low(0C3h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	43
	movlw	low(03h)
	movwf	(134)^080h	;volatile
	line	44
	movlw	low(081h)
	movwf	(135)^080h	;volatile
	line	45
	
l1270:	
	clrf	(136)^080h	;volatile
	line	46
	
l1272:	
	clrf	(137)^080h	;volatile
	line	49
	
l1274:	
	fcall	_lcd_init
	line	51
	
l1276:	
	fcall	_serial_init
	line	52
	
l1278:	
	fcall	_adc_init
	line	55
	
l1280:	
	line	58
	
l1282:	
	clrf	(8)	;volatile
	line	62
	
l1284:	
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	movwf	(printlnLCD@str2)
	movlw	80h
	movwf	(printlnLCD@str2+1)
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	fcall	_printlnLCD
	line	63
	
l1286:	
	clrf	(8)	;volatile
	line	64
	
l1288:	
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	69
	
l44:	
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(6),1	;volatile
	goto	u691
	goto	u690
u691:
	goto	l44
u690:
	line	71
	
l1290:	
	movlw	(low((((STR_3)-__stringbase)|8000h)))&0ffh
	fcall	_serial_tx_str
	line	73
	
l1292:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(7),1	;volatile
	line	74
	
l1294:	
	movlw	(low((((STR_5)-__stringbase)|8000h)))&0ffh
	movwf	(printlnLCD@str2)
	movlw	80h
	movwf	(printlnLCD@str2+1)
	movlw	(low((((STR_4)-__stringbase)|8000h)))&0ffh
	fcall	_printlnLCD
	line	75
	
l1296:	
	movlw	low(02h)
	movwf	(8)	;volatile
	line	76
	
l1298:	
	movlw	0C8h
	movwf	(delay_ms1@val)
	movlw	0
	movwf	((delay_ms1@val))+1
	fcall	_delay_ms1
	line	77
	
l1300:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	78
	
l1302:	
	movlw	0C8h
	movwf	(delay_ms1@val)
	movlw	0
	movwf	((delay_ms1@val))+1
	fcall	_delay_ms1
	line	79
	
l1304:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),5	;volatile
	line	81
	
l1306:	
	movlw	0CAh
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
	movf	(0+(?___lwdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@tmp)
	line	82
	
l1308:	
	movlw	(low((((STR_6)-__stringbase)|8000h)))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sprintf@f)
	movf	(main@tmp),w
	movwf	(??_main+1)+0
	clrf	(??_main+1)+0+1
	movf	0+(??_main+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_main+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(low(main@str|((0x0)<<8)))&0ffh
	fcall	_sprintf
	line	83
	
l1310:	
	movlw	(low(main@str|((0x0)<<8))&0ffh)
	movwf	(printlnLCD@str2)
	movlw	(0x0)
	movwf	(printlnLCD@str2+1)
	movlw	(low((((STR_7)-__stringbase)|8000h)))&0ffh
	fcall	_printlnLCD
	line	84
	
l47:	
	btfsc	(6),1	;volatile
	goto	u701
	goto	u700
u701:
	goto	l47
u700:
	goto	l1284
	global	start
	ljmp	start
	opt callstack 0
	line	86
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 505 in file "C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@str(6), 
;;  f               1   16[BANK0 ] PTR const unsigned char 
;;		 -> STR_6(3), 
;; Auto vars:     Size  Location     Type
;;  sp              1   27[BANK0 ] PTR unsigned char 
;;		 -> main@str(6), 
;;  tmpval          4    0        struct .
;;  val             2   25[BANK0 ] unsigned int 
;;  cp              2    0        PTR const unsigned char 
;;  len             2    0        unsigned int 
;;  c               1   28[BANK0 ] unsigned char 
;;  prec            1   24[BANK0 ] char 
;;  flag            1   23[BANK0 ] unsigned char 
;;  ap              1   22[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   16[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
global __ptext1
__ptext1:	;psect for function _sprintf
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\doprnt.c"
	line	505
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	callstack 6
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(sprintf@sp)
	line	550
	
l1196:	
	movlw	(low(?_sprintf|((0x0)<<8)+01h))&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	553
	goto	l1248
	line	555
	
l1198:	
		movlw	37
	xorwf	((sprintf@c)),w
	btfsc	status,2
	goto	u581
	goto	u580
u581:
	goto	l1204
u580:
	line	558
	
l1200:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1202:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	559
	goto	l1248
	line	565
	
l1204:	
	clrf	(sprintf@flag)
	line	661
	
l1208:	
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
	goto	l1250
	xorlw	100^0	; case 100
	skipnz
	goto	l1210
	xorlw	105^100	; case 105
	skipnz
	goto	l1210
	goto	l1248
	opt asmopt_pop

	line	1285
	
l1210:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@val+1)
	
l1212:	
	movlw	low(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1287
	
l1214:	
	btfss	(sprintf@val+1),7
	goto	u591
	goto	u590
u591:
	goto	l1220
u590:
	line	1288
	
l1216:	
	movlw	low(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1289
	
l1218:	
	comf	(sprintf@val),f
	comf	(sprintf@val+1),f
	incf	(sprintf@val),f
	skipnz
	incf	(sprintf@val+1),f
	line	1331
	
l1220:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	line	1332
	
l1226:	
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
	goto	u605
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@val),w
u605:
	skipnc
	goto	u601
	goto	u600
u601:
	goto	l1230
u600:
	goto	l1232
	line	1331
	
l1230:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
		movlw	5
	xorwf	((sprintf@c)),w
	btfss	status,2
	goto	u611
	goto	u610
u611:
	goto	l1226
u610:
	line	1464
	
l1232:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u621
	goto	u620
u621:
	goto	l1238
u620:
	line	1465
	
l1234:	
	movlw	low(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1236:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1498
	
l1238:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1500
	goto	l1246
	line	1515
	
l1240:	
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
	
l1242:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1244:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1500
	
l1246:	
	movlw	low(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
		incf	(((sprintf@prec))),w
	btfss	status,2
	goto	u631
	goto	u630
u631:
	goto	l1240
u630:
	line	553
	
l1248:	
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
	goto	u641
	goto	u640
u641:
	goto	l1198
u640:
	line	1564
	
l1250:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1567
	
l303:	
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
;;  divisor         2   10[BANK0 ] unsigned int 
;;  dividend        2   12[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   15[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext2
__ptext2:	;psect for function ___lwmod
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	callstack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	12
	
l1104:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u471
	goto	u470
u471:
	goto	l1122
u470:
	line	13
	
l1106:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	14
	goto	l1112
	line	15
	
l1108:	
	movlw	01h
	
u485:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u485
	line	16
	
l1110:	
	movlw	low(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	14
	
l1112:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u491
	goto	u490
u491:
	goto	l1108
u490:
	line	19
	
l1114:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u505
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u505:
	skipc
	goto	u501
	goto	u500
u501:
	goto	l1118
u500:
	line	20
	
l1116:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	21
	
l1118:	
	movlw	01h
	
u515:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u515
	line	22
	
l1120:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u521
	goto	u520
u521:
	goto	l1114
u520:
	line	24
	
l1122:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	25
	
l725:	
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
;;  divisor         2    2[BANK0 ] unsigned int 
;;  dividend        2    4[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[BANK0 ] unsigned int 
;;  counter         1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[BANK0 ] unsigned int 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext3
__ptext3:	;psect for function ___lwdiv
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	callstack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	13
	
l1078:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	14
	
l1080:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u401
	goto	u400
u401:
	goto	l1100
u400:
	line	15
	
l1082:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	16
	goto	l1088
	line	17
	
l1084:	
	movlw	01h
	
u415:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u415
	line	18
	
l1086:	
	movlw	low(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	16
	
l1088:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u421
	goto	u420
u421:
	goto	l1084
u420:
	line	21
	
l1090:	
	movlw	01h
	
u435:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u435
	line	22
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u445
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u445:
	skipc
	goto	u441
	goto	u440
u441:
	goto	l1096
u440:
	line	23
	
l1092:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	24
	
l1094:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
l1096:	
	movlw	01h
	
u455:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u455
	line	27
	
l1098:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u461
	goto	u460
u461:
	goto	l1090
u460:
	line	29
	
l1100:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	30
	
l715:	
	return
	opt callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_serial_tx_str

;; *************** function _serial_tx_str *****************
;; Defined at:
;;		line 29 in file "serial.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     PTR const unsigned char 
;;		 -> STR_3(33), 
;; Auto vars:     Size  Location     Type
;;  val             1    2[COMMON] PTR const unsigned char 
;;		 -> STR_3(33), 
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
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
;;		_serial_tx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"serial.c"
	line	29
global __ptext4
__ptext4:	;psect for function _serial_tx_str
psect	text4
	file	"serial.c"
	line	29
	global	__size_of_serial_tx_str
	__size_of_serial_tx_str	equ	__end_of_serial_tx_str-_serial_tx_str
	
_serial_tx_str:	
;incstack = 0
	opt	callstack 6
; Regs used in _serial_tx_str: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(serial_tx_str@val)
	line	31
	
l1170:	
	clrf	(serial_tx_str@i)
	line	33
	goto	l1176
	line	35
	
l1172:	
	movf	(serial_tx_str@i),w
	addwf	(serial_tx_str@val),w
	movwf	fsr0
	fcall	stringdir
	fcall	_serial_tx
	line	36
	
l1174:	
	movlw	low(01h)
	movwf	(??_serial_tx_str+0)+0
	movf	(??_serial_tx_str+0)+0,w
	addwf	(serial_tx_str@i),f
	line	33
	
l1176:	
	movf	(serial_tx_str@i),w
	addwf	(serial_tx_str@val),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0
	skipz
	goto	u551
	goto	u550
u551:
	goto	l1172
u550:
	line	38
	
l1178:	
	movlw	low(0Ah)
	fcall	_serial_tx
	line	39
	movlw	low(0Dh)
	fcall	_serial_tx
	line	40
	
l178:	
	return
	opt callstack 0
GLOBAL	__end_of_serial_tx_str
	__end_of_serial_tx_str:
	signat	_serial_tx_str,4217
	global	_serial_tx

;; *************** function _serial_tx *****************
;; Defined at:
;;		line 23 in file "serial.c"
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
;;		_serial_tx_str
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	23
global __ptext5
__ptext5:	;psect for function _serial_tx
psect	text5
	file	"serial.c"
	line	23
	global	__size_of_serial_tx
	__size_of_serial_tx	equ	__end_of_serial_tx-_serial_tx
	
_serial_tx:	
;incstack = 0
	opt	callstack 6
; Regs used in _serial_tx: [wreg]
	movwf	(serial_tx@val)
	line	25
	
l1076:	
	movf	(serial_tx@val),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(25)	;volatile
	line	26
	
l169:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(152)^080h,1	;volatile
	goto	u391
	goto	u390
u391:
	goto	l169
u390:
	line	27
	
l172:	
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	6
global __ptext6
__ptext6:	;psect for function _serial_init
psect	text6
	file	"serial.c"
	line	6
	global	__size_of_serial_init
	__size_of_serial_init	equ	__end_of_serial_init-_serial_init
	
_serial_init:	
;incstack = 0
	opt	callstack 7
; Regs used in _serial_init: [wreg]
	line	8
	
l1146:	
	movlw	low(067h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(153)^080h	;volatile
	line	12
	
l1148:	
	bcf	(152)^080h,6	;volatile
	line	13
	
l1150:	
	bsf	(152)^080h,5	;volatile
	line	14
	
l1152:	
	bcf	(152)^080h,4	;volatile
	line	15
	
l1154:	
	bsf	(152)^080h,2	;volatile
	line	16
	
l1156:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(24),7	;volatile
	line	17
	
l1158:	
	bcf	(24),6	;volatile
	line	18
	
l1160:	
	bsf	(24),4	;volatile
	line	19
	
l166:	
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
;;  ch              1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          7       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"adc.c"
	line	11
global __ptext7
__ptext7:	;psect for function _readADC
psect	text7
	file	"adc.c"
	line	11
	global	__size_of_readADC
	__size_of_readADC	equ	__end_of_readADC-_readADC
	
_readADC:	
;incstack = 0
	opt	callstack 7
; Regs used in _readADC: [wreg-fsr0h+status,2+status,0]
	movwf	(readADC@ch)
	line	12
	
l1180:	
	goto	l1190
	line	14
	
l1182:	
	movlw	low(01h)
	movwf	(31)	;volatile
	line	15
	goto	l70
	line	17
	
l1184:	
	movlw	low(09h)
	movwf	(31)	;volatile
	line	18
	goto	l70
	line	20
	
l1186:	
	movlw	low(011h)
	movwf	(31)	;volatile
	line	21
	goto	l70
	line	12
	
l1190:	
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
	goto	l1182
	xorlw	1^0	; case 1
	skipnz
	goto	l1184
	xorlw	2^1	; case 2
	skipnz
	goto	l1186
	goto	l70
	opt asmopt_pop

	line	22
	
l70:	
	line	23
	bsf	(31),2	;volatile
	line	24
	
l73:	
	btfsc	(31),2	;volatile
	goto	u561
	goto	u560
u561:
	goto	l73
u560:
	line	25
	
l1192:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_readADC+0)+0
	movlw	06h
u575:
	clrc
	rrf	(??_readADC+0)+0,f
	addlw	-1
	skipz
	goto	u575
	movf	0+(??_readADC+0)+0,w
	movwf	(??_readADC+1)+0
	clrf	(??_readADC+1)+0+1
	bcf	status, 5	;RP0=0, select bank0
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
	
l76:	
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
;;		 -> STR_7(11), STR_4(15), STR_1(10), 
;;  str2            2   11[COMMON] PTR const unsigned char 
;;		 -> main@str(6), STR_5(15), STR_2(9), 
;; Auto vars:     Size  Location     Type
;;  str1            1   13[COMMON] PTR const unsigned char 
;;		 -> STR_7(11), STR_4(15), STR_1(10), 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_cmd
;;		_lcd_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"lcd.c"
	line	55
global __ptext8
__ptext8:	;psect for function _printlnLCD
psect	text8
	file	"lcd.c"
	line	55
	global	__size_of_printlnLCD
	__size_of_printlnLCD	equ	__end_of_printlnLCD-_printlnLCD
	
_printlnLCD:	
;incstack = 0
	opt	callstack 4
; Regs used in _printlnLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(printlnLCD@str1)
	line	56
	
l1164:	
	movlw	low(01h)
	fcall	_lcd_cmd
	line	57
	movlw	low(080h)
	fcall	_lcd_cmd
	line	58
	
l1166:	
		movf	(printlnLCD@str1),w
	movwf	(lcd_str@str)
	movlw	0
	btfss	status,2
	movlw	080h
	movwf	(lcd_str@str+1)

	fcall	_lcd_str
	line	59
	
l1168:	
	movlw	low(0C0h)
	fcall	_lcd_cmd
	line	60
		movf	(printlnLCD@str2),w
	movwf	(lcd_str@str)
movf	(printlnLCD@str2+1),w
movwf	(lcd_str@str+1)

	fcall	_lcd_str
	line	62
	
l135:	
	return
	opt callstack 0
GLOBAL	__end_of_printlnLCD
	__end_of_printlnLCD:
	signat	_printlnLCD,8313
	global	_lcd_str

;; *************** function _lcd_str *****************
;; Defined at:
;;		line 46 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  str             2    7[COMMON] PTR const unsigned char 
;;		 -> STR_7(11), main@str(6), STR_5(15), STR_4(15), 
;;		 -> STR_2(9), STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  i               1   10[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_dat
;; This function is called by:
;;		_printlnLCD
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	46
global __ptext9
__ptext9:	;psect for function _lcd_str
psect	text9
	file	"lcd.c"
	line	46
	global	__size_of_lcd_str
	__size_of_lcd_str	equ	__end_of_lcd_str-_lcd_str
	
_lcd_str:	
;incstack = 0
	opt	callstack 4
; Regs used in _lcd_str: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	47
	
l1068:	
	clrf	(lcd_str@i)
	line	48
	goto	l1074
	line	50
	
l1070:	
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
	
l1072:	
	movlw	low(01h)
	movwf	(??_lcd_str+0)+0
	movf	(??_lcd_str+0)+0,w
	addwf	(lcd_str@i),f
	line	48
	
l1074:	
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
	goto	u381
	goto	u380
u381:
	goto	l1070
u380:
	line	53
	
l132:	
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
;;  val             1    6[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_ms
;;		_lcd_wr
;; This function is called by:
;;		_lcd_str
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	18
global __ptext10
__ptext10:	;psect for function _lcd_dat
psect	text10
	file	"lcd.c"
	line	18
	global	__size_of_lcd_dat
	__size_of_lcd_dat	equ	__end_of_lcd_dat-_lcd_dat
	
_lcd_dat:	
;incstack = 0
	opt	callstack 4
; Regs used in _lcd_dat: [wreg+status,2+status,0+pclath+cstack]
	movwf	(lcd_dat@val)
	line	19
	
l1048:	
	bsf	(9),1	;volatile
	line	20
	
l1050:	
	movf	(lcd_dat@val),w
	fcall	_lcd_wr
	line	21
	
l1052:	
	bsf	(9),2	;volatile
	line	22
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	23
	
l1054:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	24
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	25
	
l1056:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9),1	;volatile
	line	26
	
l123:	
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_ms
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	28
global __ptext11
__ptext11:	;psect for function _lcd_init
psect	text11
	file	"lcd.c"
	line	28
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
;incstack = 0
	opt	callstack 5
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	29
	
l1140:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(9),1	;volatile
	line	30
	bcf	(9),2	;volatile
	line	31
	
l1142:	
	movlw	014h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	32
	
l1144:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
l126:	
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
;;  val             1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_ms
;;		_lcd_wr
;; This function is called by:
;;		_lcd_init
;;		_printlnLCD
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	8
global __ptext12
__ptext12:	;psect for function _lcd_cmd
psect	text12
	file	"lcd.c"
	line	8
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
;incstack = 0
	opt	callstack 5
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
	movwf	(lcd_cmd@val)
	line	9
	
l1058:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9),1	;volatile
	line	10
	
l1060:	
	movf	(lcd_cmd@val),w
	fcall	_lcd_wr
	line	11
	
l1062:	
	bcf	(9),2	;volatile
	line	12
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	13
	
l1064:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	14
	movlw	03h
	movwf	(delay_ms@val)
	movlw	0
	movwf	((delay_ms@val))+1
	fcall	_delay_ms
	line	15
	
l1066:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9),1	;volatile
	line	16
	
l120:	
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
;;  val             1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_cmd
;;		_lcd_dat
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	4
global __ptext13
__ptext13:	;psect for function _lcd_wr
psect	text13
	file	"lcd.c"
	line	4
	global	__size_of_lcd_wr
	__size_of_lcd_wr	equ	__end_of_lcd_wr-_lcd_wr
	
_lcd_wr:	
;incstack = 0
	opt	callstack 4
; Regs used in _lcd_wr: [wreg]
	movwf	(lcd_wr@val)
	line	5
	
l1032:	
	movf	(lcd_wr@val),w
	movwf	(8)	;volatile
	line	6
	
l117:	
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
;;  val             2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    3[COMMON] unsigned int 
;;  j               1    5[COMMON] unsigned char 
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
;;		_lcd_cmd
;;		_lcd_dat
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	73
global __ptext14
__ptext14:	;psect for function _delay_ms
psect	text14
	file	"lcd.c"
	line	73
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	callstack 4
; Regs used in _delay_ms: [wreg+status,2+status,0]
	line	76
	
l1034:	
	clrf	(delay_ms@i)
	clrf	(delay_ms@i+1)
	goto	l144
	line	77
	
l1036:	
	clrf	(delay_ms@j)
	
l146:	
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
psect	text14
	line	77
	
l1042:	
	movlw	low(01h)
	movwf	(??_delay_ms+0)+0
	movf	(??_delay_ms+0)+0,w
	addwf	(delay_ms@j),f
	
l1044:	
	movlw	low(0C8h)
	subwf	(delay_ms@j),w
	skipc
	goto	u361
	goto	u360
u361:
	goto	l146
u360:
	line	76
	
l1046:	
	movlw	01h
	addwf	(delay_ms@i),f
	skipnc
	incf	(delay_ms@i+1),f
	movlw	0
	addwf	(delay_ms@i+1),f
	
l144:	
	movf	(delay_ms@val+1),w
	subwf	(delay_ms@i+1),w
	skipz
	goto	u375
	movf	(delay_ms@val),w
	subwf	(delay_ms@i),w
u375:
	skipc
	goto	u371
	goto	u370
u371:
	goto	l1036
u370:
	line	87
	
l149:	
	return
	opt callstack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4217
	global	_delay_ms1

;; *************** function _delay_ms1 *****************
;; Defined at:
;;		line 23 in file "main_old.c"
;; Parameters:    Size  Location     Type
;;  val             2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    3[COMMON] unsigned int 
;;  j               1    5[COMMON] unsigned char 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"main_old.c"
	line	23
global __ptext15
__ptext15:	;psect for function _delay_ms1
psect	text15
	file	"main_old.c"
	line	23
	global	__size_of_delay_ms1
	__size_of_delay_ms1	equ	__end_of_delay_ms1-_delay_ms1
	
_delay_ms1:	
;incstack = 0
	opt	callstack 7
; Regs used in _delay_ms1: [wreg+status,2+status,0]
	line	26
	
l1126:	
	clrf	(delay_ms1@i)
	clrf	(delay_ms1@i+1)
	goto	l33
	line	27
	
l1128:	
	clrf	(delay_ms1@j)
	
l35:	
	line	29
# 29 "main_old.c"
NOP ;# 
	line	30
# 30 "main_old.c"
NOP ;# 
	line	31
# 31 "main_old.c"
NOP ;# 
	line	32
# 32 "main_old.c"
NOP ;# 
	line	33
# 33 "main_old.c"
NOP ;# 
psect	text15
	line	27
	
l1134:	
	movlw	low(01h)
	movwf	(??_delay_ms1+0)+0
	movf	(??_delay_ms1+0)+0,w
	addwf	(delay_ms1@j),f
	
l1136:	
	movlw	low(0C8h)
	subwf	(delay_ms1@j),w
	skipc
	goto	u531
	goto	u530
u531:
	goto	l35
u530:
	line	26
	
l1138:	
	movlw	01h
	addwf	(delay_ms1@i),f
	skipnc
	incf	(delay_ms1@i+1),f
	movlw	0
	addwf	(delay_ms1@i+1),f
	
l33:	
	movf	(delay_ms1@val+1),w
	subwf	(delay_ms1@i+1),w
	skipz
	goto	u545
	movf	(delay_ms1@val),w
	subwf	(delay_ms1@i),w
u545:
	skipc
	goto	u541
	goto	u540
u541:
	goto	l1128
u540:
	line	37
	
l38:	
	return
	opt callstack 0
GLOBAL	__end_of_delay_ms1
	__end_of_delay_ms1:
	signat	_delay_ms1,4217
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"adc.c"
	line	5
global __ptext16
__ptext16:	;psect for function _adc_init
psect	text16
	file	"adc.c"
	line	5
	global	__size_of_adc_init
	__size_of_adc_init	equ	__end_of_adc_init-_adc_init
	
_adc_init:	
;incstack = 0
	opt	callstack 7
; Regs used in _adc_init: [wreg]
	line	6
	
l1162:	
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	7
	movlw	low(041h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	8
	
l65:	
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
;;  multiplier      2   10[COMMON] unsigned int 
;;  multiplicand    2   12[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   10[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       2       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul16.c"
	line	15
global __ptext17
__ptext17:	;psect for function ___wmul
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v2.10\pic\sources\c90\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	callstack 7
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l1254:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l1256:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u651
	goto	u650
u651:
	goto	l307
u650:
	line	46
	
l1258:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l307:	
	line	47
	movlw	01h
	
u665:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u665
	line	48
	
l1260:	
	movlw	01h
	
u675:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u675
	line	49
	
l1262:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u681
	goto	u680
u681:
	goto	l1256
u680:
	line	52
	
l1264:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l309:	
	return
	opt callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
