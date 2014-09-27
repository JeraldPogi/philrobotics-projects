opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 49521"

opt pagewidth 120

	opt lm

	processor	16F877A
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
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_setupGpio
	FNCALL	_main,_setupTimer
	FNCALL	_main,_setupADC
	FNCALL	_main,_set_gblInitialized_FlagValue
	FNCALL	_main,_init
	FNCALL	_main,_adcCycle
	FNCALL	_main,_cycle
	FNCALL	_init,_setupSoftSerial
	FNCALL	_init,_getMs
	FNCALL	_setupSoftSerial,___bmul
	FNCALL	_setupSoftSerial,_configPin
	FNCALL	_setupSoftSerial,_changePinState
	FNCALL	_setupSoftSerial,_setup8BitTimer
	FNCALL	_setupSoftSerial,_set8BitTimer
	FNCALL	_cycle,_getElapsedMs
	FNCALL	_cycle,_getMs
	FNCALL	_cycle,_serialSoftWriteString
	FNCALL	_cycle,_serialSoftWrite
	FNCALL	_getMs,_get_gblISRLocked_FlagValue
	FNCALL	_getMs,_get_gui16TimerMs_Value
	FNCALL	_getElapsedMs,_get_gblISRLocked_FlagValue
	FNCALL	_getElapsedMs,_get_gui16TimerMs_Value
	FNCALL	_serialSoftWriteString,_serialSoftWrite
	FNCALL	_serialSoftWrite,_isSoftSerialBufferFull
	FNCALL	_serialSoftWrite,___bmul
	FNCALL	_isSoftSerialBufferFull,___bmul
	FNCALL	_setupADC,_configLowLvlADC
	FNCALL	_setupADC,_get_gblInitialized_FlagValue
	FNROOT	_main
	FNCALL	_isr,_set_gblISRLocked_FlagValue
	FNCALL	_isr,_timerISR
	FNCALL	_isr,_timer16BitISR
	FNCALL	_isr,_timer8BitISR
	FNCALL	_isr,_serialRxISR
	FNCALL	_isr,_userIntISR
	FNCALL	_isr,_serialTxISR
	FNCALL	_isr,_adcISR
	FNCALL	_isr,_clr_gblISRLocked_FlagValue
	FNCALL	_timerISR,_inc_gui16TimerUsMSB_Value
	FNCALL	_timerISR,_inc_gui16TimerMs_Value
	FNCALL	_timer16BitISR,_null16BitTMRFunction
	FNCALL	_timer8BitISR,_softUARTController
	FNCALL	_timer8BitISR,_nullTMRFunction
	FNCALL	_softUARTController,i1_set8BitTimer
	FNCALL	_softUARTController,_serialSoftRxISR
	FNCALL	_softUARTController,_serialSoftTxISR
	FNCALL	_serialSoftRxISR,i1___bmul
	FNCALL	_serialSoftRxISR,_checkPinState
	FNCALL	_serialSoftTxISR,i1___bmul
	FNCALL	_serialSoftTxISR,i1_changePinState
	FNCALL	_userIntISR,_extIntISR
	FNCALL	_userIntISR,_rbIntISR
	FNCALL	_extIntISR,_nullIntFunction
	FNCALL	_rbIntISR,_nullIntFunction
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_pt2INT0
	global	_pt2INT4
	global	_pt2INT5
	global	_pt2INT6
	global	_pt2INT7
	global	_pt2TMR1ISR
	global	_pt2TMR2ISR
	global	_ui8PreScalerVal
	global	serialSoftRxISR@ui8TempByte
	global	serialSoftTxISR@ui8TempByte
	global	_ui8PreScaler
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"hardware/cores/lib\hal_user_interrupt.h"
	line	125

;initializer for _pt2INT0
	retlw	(fp__nullIntFunction-i1fpbase)&0ffh
	line	126

;initializer for _pt2INT1
	retlw	(fp__nullIntFunction-i1fpbase)&0ffh
	line	127

;initializer for _pt2INT2
	retlw	(fp__nullIntFunction-i1fpbase)&0ffh
	line	133

;initializer for _pt2INT4
	retlw	(fp__nullIntFunction-i1fpbase)&0ffh
	line	134

;initializer for _pt2INT5
	retlw	(fp__nullIntFunction-i1fpbase)&0ffh
	line	135

;initializer for _pt2INT6
	retlw	(fp__nullIntFunction-i1fpbase)&0ffh
	line	136

;initializer for _pt2INT7
	retlw	(fp__nullIntFunction-i1fpbase)&0ffh
	file	"C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8/hardware/cores/lib\hal_16bit_timer.h"
	line	130

;initializer for _pt2TMR1ISR
	retlw	(fp__null16BitTMRFunction-i1fpbase)&0ffh
	file	"C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8/hardware/cores/lib\hal_8bit_timer.h"
	line	122

;initializer for _pt2TMR2ISR
	retlw	(fp__nullTMRFunction-i1fpbase)&0ffh
	file	"hardware/cores/lib\corelib_pwm.c"
	line	43

;initializer for _ui8PreScalerVal
	retlw	01h
	file	"libraries/soft_serial\soft_serial.c"
	line	385

;initializer for serialSoftRxISR@ui8TempByte
	retlw	0FFh
	line	596

;initializer for serialSoftTxISR@ui8TempByte
	retlw	0FFh
	file	"hardware/cores/lib\corelib_pwm.c"
	line	43

;initializer for _ui8PreScaler
	retlw	01h
	global	_Timer
	global	_TimerDelta
	global	_gui16TimerMs
	global	_gui16TimerSec
	global	_gui16TimerUsMSB
	global	_ui16SUARTBitPeriod_div3
	global	adcCycle@ui16Counter
	global	timerISR@ui16UsCounter
	global	_PORTB_BUFFER
	global	_PORTB_DIRECTION
	global	_eCurrentChannel
	global	_eMod0_Mode
	global	_eMod4_Mode
	global	_eMod5_Mode
	global	_eMod6_Mode
	global	_eMod7_Mode
	global	_gblISRLocked
	global	_gblInitialized
	global	_ui8PR2plus1
	global	adcISR@eEffectiveChannel
	global	rbIntISR@PORTCHANGE_BUFFER
	global	serialRxISR@ui8TempIn
	global	serialSoftRxISR@ui8ModuleCounter
	global	serialSoftRxISR@ui8TempIn
	global	serialSoftTxISR@ui8ModuleCounter
	global	_ui16ADCBuff
	global	_stSUART_RXFiFo
	global	_stUARTRXFiFo
	global	_stSUART_TXFiFo
	global	_stUARTTXFiFo
	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCP2CON
_CCP2CON	set	0x1D
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_CCPR2L
_CCPR2L	set	0x1B
	global	_RCREG
_RCREG	set	0x1A
	global	_T1CON
_T1CON	set	0x10
	global	_T2CON
_T2CON	set	0x12
	global	_TMR0
_TMR0	set	0x1
	global	_TMR1H
_TMR1H	set	0xF
	global	_TMR1L
_TMR1L	set	0xE
	global	_TXREG
_TXREG	set	0x19
	global	_ADIF
_ADIF	set	0x66
	global	_ADON
_ADON	set	0xF8
	global	_CREN
_CREN	set	0xC4
	global	_GIE
_GIE	set	0x5F
	global	_GO_DONE
_GO_DONE	set	0xFA
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_OERR
_OERR	set	0xC1
	global	_PEIE
_PEIE	set	0x5E
	global	_RBIE
_RBIE	set	0x5B
	global	_RBIF
_RBIF	set	0x58
	global	_RCIF
_RCIF	set	0x65
	global	_RX9
_RX9	set	0xC6
	global	_SPEN
_SPEN	set	0xC7
	global	_T1OSCEN
_T1OSCEN	set	0x83
	global	_T1SYNC
_T1SYNC	set	0x82
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_TMR1CS
_TMR1CS	set	0x81
	global	_TMR1IF
_TMR1IF	set	0x60
	global	_TMR1ON
_TMR1ON	set	0x80
	global	_TMR2IF
_TMR2IF	set	0x61
	global	_TMR2ON
_TMR2ON	set	0x92
	global	_TXIF
_TXIF	set	0x64
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_PORTE
_PORTE	set	0x9
	global	_ADCON1
_ADCON1	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_PR2
_PR2	set	0x92
	global	_SPBRG
_SPBRG	set	0x99
	global	_ADCS2
_ADCS2	set	0x4FE
	global	_ADFM
_ADFM	set	0x4FF
	global	_ADIE
_ADIE	set	0x466
	global	_BRGH
_BRGH	set	0x4C2
	global	_INTEDG
_INTEDG	set	0x40E
	global	_PSA
_PSA	set	0x40B
	global	_RCIE
_RCIE	set	0x465
	global	_SYNC
_SYNC	set	0x4C4
	global	_T0CS
_T0CS	set	0x40D
	global	_TMR1IE
_TMR1IE	set	0x460
	global	_TMR2IE
_TMR2IE	set	0x461
	global	_TX9
_TX9	set	0x4C6
	global	_TXEN
_TXEN	set	0x4C5
	global	_TXIE
_TXIE	set	0x464
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_TRISE
_TRISE	set	0x89
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	global __stringdata
__stringdata:
	
STR_1:	
	retlw	72	;'H'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	108	;'l'
	retlw	100	;'d'
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
	file	"C:/Users/glutnix/Documents/Dropbox/__RapidProto/philrobokit_xc8/libraries/soft_serial/examples/.phr_out\HelloWorld.phr.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_Timer:
       ds      2

_TimerDelta:
       ds      2

_gui16TimerMs:
       ds      2

_gui16TimerSec:
       ds      2

_gui16TimerUsMSB:
       ds      2

_ui16SUARTBitPeriod_div3:
       ds      2

adcCycle@ui16Counter:
       ds      2

timerISR@ui16UsCounter:
       ds      2

_PORTB_BUFFER:
       ds      1

_PORTB_DIRECTION:
       ds      1

_eCurrentChannel:
       ds      1

_eMod0_Mode:
       ds      1

_eMod1_Mode:
       ds      1

_eMod2_Mode:
       ds      1

_eMod3_Mode:
       ds      1

_eMod4_Mode:
       ds      1

_eMod5_Mode:
       ds      1

_eMod6_Mode:
       ds      1

_eMod7_Mode:
       ds      1

_gblISRLocked:
       ds      1

_gblInitialized:
       ds      1

_ui8PR2plus1:
       ds      1

adcISR@eEffectiveChannel:
       ds      1

rbIntISR@PORTCHANGE_BUFFER:
       ds      1

serialRxISR@ui8TempIn:
       ds      1

serialSoftRxISR@ui8ModuleCounter:
       ds      1

serialSoftRxISR@ui8TempIn:
       ds      1

serialSoftTxISR@ui8ModuleCounter:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"hardware/cores/lib\hal_user_interrupt.h"
	line	125
_pt2INT0:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\hal_user_interrupt.h"
	line	126
_pt2INT1:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\hal_user_interrupt.h"
	line	127
_pt2INT2:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\hal_user_interrupt.h"
	line	133
_pt2INT4:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\hal_user_interrupt.h"
	line	134
_pt2INT5:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\hal_user_interrupt.h"
	line	135
_pt2INT6:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\hal_user_interrupt.h"
	line	136
_pt2INT7:
       ds      1

psect	dataBANK0
	file	"C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8/hardware/cores/lib\hal_16bit_timer.h"
	line	130
_pt2TMR1ISR:
       ds      1

psect	dataBANK0
	file	"C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8/hardware/cores/lib\hal_8bit_timer.h"
	line	122
_pt2TMR2ISR:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_pwm.c"
	line	43
_ui8PreScalerVal:
       ds      1

psect	dataBANK0
	file	"libraries/soft_serial\soft_serial.c"
	line	385
serialSoftRxISR@ui8TempByte:
       ds      1

psect	dataBANK0
	file	"libraries/soft_serial\soft_serial.c"
	line	596
serialSoftTxISR@ui8TempByte:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_pwm.c"
	line	43
_ui8PreScaler:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_ui16ADCBuff:
       ds      14

_stSUART_RXFiFo:
       ds      56

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_stSUART_TXFiFo:
       ds      46

_stUARTTXFiFo:
       ds      34

psect	bssBANK2,class=BANK2,space=1
global __pbssBANK2
__pbssBANK2:
_stUARTRXFiFo:
       ds      34

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+024h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+046h)
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+050h)
	fcall	clear_ram
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK2)
	movwf	fsr
	movlw	low((__pbssBANK2)+022h)
	fcall	clear_ram
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+13)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
??_setupSoftSerial:	; 0 bytes @ 0x0
??_serialSoftWrite:	; 0 bytes @ 0x0
	ds	6
??_serialSoftWriteString:	; 0 bytes @ 0x6
	ds	1
	global	serialSoftWriteString@eSUARTModule
serialSoftWriteString@eSUARTModule:	; 1 bytes @ 0x7
	ds	1
??_cycle:	; 0 bytes @ 0x8
	ds	1
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
?_nullIntFunction:	; 0 bytes @ 0x0
??_nullIntFunction:	; 0 bytes @ 0x0
?_nullTMRFunction:	; 0 bytes @ 0x0
??_nullTMRFunction:	; 0 bytes @ 0x0
?_null16BitTMRFunction:	; 0 bytes @ 0x0
??_null16BitTMRFunction:	; 0 bytes @ 0x0
?_softUARTController:	; 0 bytes @ 0x0
?_serialSoftRxISR:	; 0 bytes @ 0x0
?_serialSoftTxISR:	; 0 bytes @ 0x0
??_checkPinState:	; 0 bytes @ 0x0
?_setupGpio:	; 0 bytes @ 0x0
?_setupTimer:	; 0 bytes @ 0x0
?_setupADC:	; 0 bytes @ 0x0
?_adcCycle:	; 0 bytes @ 0x0
?_timerISR:	; 0 bytes @ 0x0
?_timer16BitISR:	; 0 bytes @ 0x0
??_timer16BitISR:	; 0 bytes @ 0x0
?_timer8BitISR:	; 0 bytes @ 0x0
?_serialRxISR:	; 0 bytes @ 0x0
??_serialRxISR:	; 0 bytes @ 0x0
?_userIntISR:	; 0 bytes @ 0x0
?_serialTxISR:	; 0 bytes @ 0x0
??_serialTxISR:	; 0 bytes @ 0x0
?_adcISR:	; 0 bytes @ 0x0
??_adcISR:	; 0 bytes @ 0x0
?_configLowLvlADC:	; 0 bytes @ 0x0
?_extIntISR:	; 0 bytes @ 0x0
??_extIntISR:	; 0 bytes @ 0x0
?_rbIntISR:	; 0 bytes @ 0x0
??_rbIntISR:	; 0 bytes @ 0x0
?_init:	; 0 bytes @ 0x0
?_cycle:	; 0 bytes @ 0x0
?_set_gblInitialized_FlagValue:	; 0 bytes @ 0x0
?_set_gblISRLocked_FlagValue:	; 0 bytes @ 0x0
??_set_gblISRLocked_FlagValue:	; 0 bytes @ 0x0
?_clr_gblISRLocked_FlagValue:	; 0 bytes @ 0x0
??_clr_gblISRLocked_FlagValue:	; 0 bytes @ 0x0
	global	?_inc_gui16TimerUsMSB_Value
?_inc_gui16TimerUsMSB_Value:	; 0 bytes @ 0x0
?_inc_gui16TimerMs_Value:	; 0 bytes @ 0x0
??_inc_gui16TimerMs_Value:	; 0 bytes @ 0x0
?_isr:	; 0 bytes @ 0x0
	global	?i1_set8BitTimer
?i1_set8BitTimer:	; 0 bytes @ 0x0
?_isSoftSerialBufferFull:	; 1 bytes @ 0x0
?_checkPinState:	; 1 bytes @ 0x0
?_get_gblInitialized_FlagValue:	; 1 bytes @ 0x0
?_get_gblISRLocked_FlagValue:	; 1 bytes @ 0x0
	global	?i1___bmul
?i1___bmul:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	i1set8BitTimer@ui8Value
i1set8BitTimer@ui8Value:	; 1 bytes @ 0x0
	global	i1___bmul@multiplicand
i1___bmul@multiplicand:	; 1 bytes @ 0x0
	global	inc_gui16TimerUsMSB_Value@ui16Value
inc_gui16TimerUsMSB_Value@ui16Value:	; 2 bytes @ 0x0
	ds	1
??_userIntISR:	; 0 bytes @ 0x1
??i1_set8BitTimer:	; 0 bytes @ 0x1
??i1___bmul:	; 0 bytes @ 0x1
	global	i1set8BitTimer@eTmrModule
i1set8BitTimer@eTmrModule:	; 1 bytes @ 0x1
	ds	1
??_timerISR:	; 0 bytes @ 0x2
??_inc_gui16TimerUsMSB_Value:	; 0 bytes @ 0x2
	global	checkPinState@ui8PinStatus
checkPinState@ui8PinStatus:	; 1 bytes @ 0x2
	global	i1___bmul@multiplier
i1___bmul@multiplier:	; 1 bytes @ 0x2
	ds	1
	global	checkPinState@ui8PinMask
checkPinState@ui8PinMask:	; 1 bytes @ 0x3
	global	i1___bmul@product
i1___bmul@product:	; 1 bytes @ 0x3
	ds	1
	global	?i1_changePinState
?i1_changePinState:	; 0 bytes @ 0x4
	global	i1changePinState@eOperation
i1changePinState@eOperation:	; 1 bytes @ 0x4
	global	checkPinState@pui8PortReg
checkPinState@pui8PortReg:	; 2 bytes @ 0x4
	ds	1
??i1_changePinState:	; 0 bytes @ 0x5
	ds	1
	global	checkPinState@ui8Pin
checkPinState@ui8Pin:	; 1 bytes @ 0x6
	ds	1
??_serialSoftRxISR:	; 0 bytes @ 0x7
	global	i1changePinState@pui8PortReg
i1changePinState@pui8PortReg:	; 2 bytes @ 0x7
	ds	2
	global	i1changePinState@ui8Pin
i1changePinState@ui8Pin:	; 1 bytes @ 0x9
	ds	4
??_softUARTController:	; 0 bytes @ 0xD
	ds	1
??_timer8BitISR:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
??_serialSoftTxISR:	; 0 bytes @ 0x0
	ds	6
??_isr:	; 0 bytes @ 0x6
	ds	4
	global	?_configPin
?_configPin:	; 0 bytes @ 0xA
	global	?_changePinState
?_changePinState:	; 0 bytes @ 0xA
	global	?_setup8BitTimer
?_setup8BitTimer:	; 0 bytes @ 0xA
	global	?_set8BitTimer
?_set8BitTimer:	; 0 bytes @ 0xA
??_setupGpio:	; 0 bytes @ 0xA
??_setupTimer:	; 0 bytes @ 0xA
??_adcCycle:	; 0 bytes @ 0xA
??_configLowLvlADC:	; 0 bytes @ 0xA
??_set_gblInitialized_FlagValue:	; 0 bytes @ 0xA
??_get_gblInitialized_FlagValue:	; 0 bytes @ 0xA
??_get_gblISRLocked_FlagValue:	; 0 bytes @ 0xA
	global	?___bmul
?___bmul:	; 1 bytes @ 0xA
	global	?_get_gui16TimerMs_Value
?_get_gui16TimerMs_Value:	; 2 bytes @ 0xA
	global	setup8BitTimer@callback
setup8BitTimer@callback:	; 1 bytes @ 0xA
	global	set8BitTimer@ui8Value
set8BitTimer@ui8Value:	; 1 bytes @ 0xA
	global	configPin@ui8Direction
configPin@ui8Direction:	; 1 bytes @ 0xA
	global	changePinState@eOperation
changePinState@eOperation:	; 1 bytes @ 0xA
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0xA
	ds	1
??_configPin:	; 0 bytes @ 0xB
??_changePinState:	; 0 bytes @ 0xB
??_setup8BitTimer:	; 0 bytes @ 0xB
??_set8BitTimer:	; 0 bytes @ 0xB
??___bmul:	; 0 bytes @ 0xB
	global	get_gblInitialized_FlagValue@blTemp
get_gblInitialized_FlagValue@blTemp:	; 1 bytes @ 0xB
	global	get_gblISRLocked_FlagValue@blTemp
get_gblISRLocked_FlagValue@blTemp:	; 1 bytes @ 0xB
	global	set8BitTimer@eTmrModule
set8BitTimer@eTmrModule:	; 1 bytes @ 0xB
	ds	1
??_setupADC:	; 0 bytes @ 0xC
??_get_gui16TimerMs_Value:	; 0 bytes @ 0xC
	global	setup8BitTimer@eTmrModule
setup8BitTimer@eTmrModule:	; 1 bytes @ 0xC
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0xC
	global	get_gui16TimerMs_Value@ui16Temp
get_gui16TimerMs_Value@ui16Temp:	; 2 bytes @ 0xC
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0xD
	global	configPin@pui8PortDirReg
configPin@pui8PortDirReg:	; 2 bytes @ 0xD
	global	changePinState@pui8PortReg
changePinState@pui8PortReg:	; 2 bytes @ 0xD
	ds	1
??_isSoftSerialBufferFull:	; 0 bytes @ 0xE
	global	?_getMs
?_getMs:	; 2 bytes @ 0xE
	global	?_getElapsedMs
?_getElapsedMs:	; 2 bytes @ 0xE
	global	setupADC@eVrefSource
setupADC@eVrefSource:	; 1 bytes @ 0xE
	global	getElapsedMs@ui16TimeMs
getElapsedMs@ui16TimeMs:	; 2 bytes @ 0xE
	ds	1
	global	configPin@ui8Pin
configPin@ui8Pin:	; 1 bytes @ 0xF
	global	changePinState@ui8Pin
changePinState@ui8Pin:	; 1 bytes @ 0xF
	ds	1
	global	?_setupSoftSerial
?_setupSoftSerial:	; 0 bytes @ 0x10
??_getMs:	; 0 bytes @ 0x10
??_getElapsedMs:	; 0 bytes @ 0x10
	global	setupSoftSerial@ui8TXPin
setupSoftSerial@ui8TXPin:	; 1 bytes @ 0x10
	global	getMs@ui16TempBuff
getMs@ui16TempBuff:	; 2 bytes @ 0x10
	ds	1
	global	setupSoftSerial@ui8RXPin
setupSoftSerial@ui8RXPin:	; 1 bytes @ 0x11
	global	isSoftSerialBufferFull@eSUARTModule
isSoftSerialBufferFull@eSUARTModule:	; 1 bytes @ 0x11
	ds	1
	global	?_serialSoftWrite
?_serialSoftWrite:	; 0 bytes @ 0x12
	global	serialSoftWrite@ui8TxData
serialSoftWrite@ui8TxData:	; 1 bytes @ 0x12
setupSoftSerial@ui16Baudrate:	; 2 bytes @ 0x12
	global	getElapsedMs@ui16TempBuff
getElapsedMs@ui16TempBuff:	; 2 bytes @ 0x12
	ds	1
	global	serialSoftWrite@eSUARTModule
serialSoftWrite@eSUARTModule:	; 1 bytes @ 0x13
	ds	1
	global	?_serialSoftWriteString
?_serialSoftWriteString:	; 0 bytes @ 0x14
	global	setupSoftSerial@eSUARTModule
setupSoftSerial@eSUARTModule:	; 1 bytes @ 0x14
	global	serialSoftWriteString@pucStrTxData
serialSoftWriteString@pucStrTxData:	; 1 bytes @ 0x14
	ds	1
??_init:	; 0 bytes @ 0x15
??_main:	; 0 bytes @ 0x15
;!
;!Data Sizes:
;!    Strings     12
;!    Constant    0
;!    Data        13
;!    BSS         220
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     21      70
;!    BANK1            80      9      79
;!    BANK3            96      0      80
;!    BANK2            96      0      34

;!
;!Pointer List with Targets:
;!
;!    ?_getMs	unsigned int  size(1) Largest target is 0
;!
;!    ?_get_gui16TimerMs_Value	unsigned int  size(1) Largest target is 0
;!
;!    ?_getElapsedMs	unsigned int  size(1) Largest target is 0
;!
;!    checkPinState@pui8PortReg	PTR unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), PORTE(BITSFR0[1]), PORTD(BITSFR0[1]), PORTC(BITSFR0[1]), 
;!		 -> PORTB(BITSFR0[1]), PORTA(BITSFR0[1]), 
;!
;!    changePinState@pui8PortReg	PTR unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), PORTE(BITSFR0[1]), PORTD(BITSFR0[1]), PORTC(BITSFR0[1]), 
;!		 -> PORTB(BITSFR0[1]), PORTA(BITSFR0[1]), 
;!
;!    configPin@pui8PortDirReg	PTR unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), TRISD(BITSFR1[1]), TRISC(BITSFR1[1]), TRISB(BITSFR1[1]), 
;!		 -> TRISE(BITSFR1[1]), TRISA(BITSFR1[1]), 
;!
;!    setup8BitTimer@callback	PTR FTN()void  size(1) Largest target is 0
;!		 -> softUARTController(), 
;!
;!    sp__memset	PTR void  size(2) Largest target is 56
;!		 -> stUARTRXFiFo(BANK2[34]), stUARTTXFiFo(BANK3[34]), stSUART_RXFiFo(BANK1[56]), stSUART_TXFiFo(BANK3[46]), 
;!
;!    serialSoftWriteString@pucStrTxData	PTR const unsigned char  size(1) Largest target is 12
;!		 -> STR_1(CODE[12]), 
;!
;!    pt2TMR1ISR	PTR FTN()void  size(1) Largest target is 0
;!		 -> null16BitTMRFunction(), 
;!
;!    pt2TMR2ISR	PTR FTN()void  size(1) Largest target is 0
;!		 -> softUARTController(), nullTMRFunction(), 
;!
;!    pt2INT7	PTR FTN()void  size(1) Largest target is 0
;!		 -> nullIntFunction(), 
;!
;!    pt2INT6	PTR FTN()void  size(1) Largest target is 0
;!		 -> nullIntFunction(), 
;!
;!    pt2INT5	PTR FTN()void  size(1) Largest target is 0
;!		 -> nullIntFunction(), 
;!
;!    pt2INT4	PTR FTN()void  size(1) Largest target is 0
;!		 -> nullIntFunction(), 
;!
;!    pt2INT2	PTR FTN()void  size(1) Largest target is 0
;!		 -> nullIntFunction(), 
;!
;!    pt2INT1	PTR FTN()void  size(1) Largest target is 0
;!		 -> nullIntFunction(), 
;!
;!    pt2INT0	PTR FTN()void  size(1) Largest target is 0
;!		 -> nullIntFunction(), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _isr in COMMON
;!
;!    _timerISR->_inc_gui16TimerUsMSB_Value
;!    _timer8BitISR->_softUARTController
;!    _softUARTController->_serialSoftRxISR
;!    _serialSoftRxISR->_checkPinState
;!    _serialSoftTxISR->i1_changePinState
;!    _userIntISR->_rbIntISR
;!    i1_changePinState->i1___bmul
;!
;!Critical Paths under _main in BANK0
;!
;!    _init->_setupSoftSerial
;!    _setupSoftSerial->_configPin
;!    _setupSoftSerial->_changePinState
;!    _cycle->_serialSoftWriteString
;!    _getMs->_get_gui16TimerMs_Value
;!    _getElapsedMs->_get_gui16TimerMs_Value
;!    _serialSoftWriteString->_serialSoftWrite
;!    _serialSoftWrite->_isSoftSerialBufferFull
;!    _isSoftSerialBufferFull->___bmul
;!    _setupADC->_get_gblInitialized_FlagValue
;!
;!Critical Paths under _isr in BANK0
;!
;!    _softUARTController->_serialSoftTxISR
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_cycle
;!    _init->_setupSoftSerial
;!    _cycle->_serialSoftWriteString
;!    _serialSoftWriteString->_serialSoftWrite
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    2792
;!                          _setupGpio
;!                         _setupTimer
;!                           _setupADC
;!       _set_gblInitialized_FlagValue
;!                               _init
;!                           _adcCycle
;!                              _cycle
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0    1420
;!                    _setupSoftSerial
;!                              _getMs
;! ---------------------------------------------------------------------------------
;! (2) _setupSoftSerial                                      7     3      4    1351
;!                                             16 BANK0      5     1      4
;!                                              0 BANK1      2     2      0
;!                             ___bmul
;!                          _configPin
;!                     _changePinState
;!                     _setup8BitTimer
;!                       _set8BitTimer
;! ---------------------------------------------------------------------------------
;! (1) _cycle                                                1     1      0    1327
;!                                              8 BANK1      1     1      0
;!                       _getElapsedMs
;!                              _getMs
;!              _serialSoftWriteString
;!                    _serialSoftWrite
;! ---------------------------------------------------------------------------------
;! (2) _getMs                                                4     2      2      69
;!                                             14 BANK0      4     2      2
;!         _get_gblISRLocked_FlagValue
;!             _get_gui16TimerMs_Value
;! ---------------------------------------------------------------------------------
;! (2) _getElapsedMs                                         8     6      2      91
;!                                             14 BANK0      6     4      2
;!         _get_gblISRLocked_FlagValue
;!             _get_gui16TimerMs_Value
;! ---------------------------------------------------------------------------------
;! (2) _serialSoftWriteString                                3     2      1     647
;!                                             20 BANK0      1     0      1
;!                                              6 BANK1      2     2      0
;!                    _serialSoftWrite
;! ---------------------------------------------------------------------------------
;! (2) _serialSoftWrite                                      8     7      1     520
;!                                             18 BANK0      2     1      1
;!                                              0 BANK1      6     6      0
;!             _isSoftSerialBufferFull
;!                             ___bmul
;! ---------------------------------------------------------------------------------
;! (3) _configPin                                            6     5      1     298
;!                                             10 BANK0      6     5      1
;! ---------------------------------------------------------------------------------
;! (3) _changePinState                                       6     5      1     364
;!                                             10 BANK0      6     5      1
;! ---------------------------------------------------------------------------------
;! (3) _setup8BitTimer                                       3     2      1      44
;!                                             10 BANK0      3     2      1
;! ---------------------------------------------------------------------------------
;! (3) _set8BitTimer                                         2     1      1      44
;!                                             10 BANK0      2     1      1
;! ---------------------------------------------------------------------------------
;! (3) _isSoftSerialBufferFull                               4     4      0     198
;!                                             14 BANK0      4     4      0
;!                             ___bmul
;! ---------------------------------------------------------------------------------
;! (1) _set_gblInitialized_FlagValue                         1     1      0       0
;!                                             10 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _get_gblISRLocked_FlagValue                           2     2      0      23
;!                                             10 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _get_gui16TimerMs_Value                               4     2      2      23
;!                                             10 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _setupGpio                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _setupTimer                                           1     1      0       0
;!                                             10 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _setupADC                                             3     3      0      45
;!                                             12 BANK0      3     3      0
;!                    _configLowLvlADC
;!       _get_gblInitialized_FlagValue
;! ---------------------------------------------------------------------------------
;! (2) _get_gblInitialized_FlagValue                         2     2      0      23
;!                                             10 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _adcCycle                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _configLowLvlADC                                      1     1      0       0
;!                                             10 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (3) ___bmul                                               4     3      1     136
;!                                             10 BANK0      4     3      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _isr                                                  4     4      0    2084
;!                                              6 BANK0      4     4      0
;!         _set_gblISRLocked_FlagValue
;!                           _timerISR
;!                      _timer16BitISR
;!                       _timer8BitISR
;!                        _serialRxISR
;!                         _userIntISR
;!                        _serialTxISR
;!                             _adcISR
;!         _clr_gblISRLocked_FlagValue
;! ---------------------------------------------------------------------------------
;! (7) _set_gblISRLocked_FlagValue                           1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (7) _clr_gblISRLocked_FlagValue                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _timerISR                                             0     0      0      22
;!          _inc_gui16TimerUsMSB_Value
;!             _inc_gui16TimerMs_Value
;! ---------------------------------------------------------------------------------
;! (8) _inc_gui16TimerUsMSB_Value                            2     0      2      22
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (8) _inc_gui16TimerMs_Value                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _timer16BitISR                                        0     0      0       0
;!               _null16BitTMRFunction
;! ---------------------------------------------------------------------------------
;! (7) _timer8BitISR                                         0     0      0    2062
;!                 _softUARTController
;!                    _nullTMRFunction
;! ---------------------------------------------------------------------------------
;! (8) _softUARTController                                   1     1      0    2062
;!                                             13 COMMON     1     1      0
;!                     i1_set8BitTimer
;!                    _serialSoftRxISR
;!                    _serialSoftTxISR
;! ---------------------------------------------------------------------------------
;! (9) _serialSoftRxISR                                      6     6      0     512
;!                                              7 COMMON     6     6      0
;!                           i1___bmul
;!                      _checkPinState
;! ---------------------------------------------------------------------------------
;! (9) _serialSoftTxISR                                      6     6      0    1404
;!                                              0 BANK0      6     6      0
;!                           i1___bmul
;!                   i1_changePinState
;! ---------------------------------------------------------------------------------
;! (10) _checkPinState                                       7     7      0     300
;!                                              0 COMMON     7     7      0
;! ---------------------------------------------------------------------------------
;! (7) _serialRxISR                                          1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (7) _userIntISR                                           0     0      0       0
;!                          _extIntISR
;!                           _rbIntISR
;! ---------------------------------------------------------------------------------
;! (7) _serialTxISR                                          1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (7) _adcISR                                               3     3      0       0
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (8) _extIntISR                                            0     0      0       0
;!                    _nullIntFunction
;! ---------------------------------------------------------------------------------
;! (8) _rbIntISR                                             1     1      0       0
;!                                              0 COMMON     1     1      0
;!                    _nullIntFunction
;! ---------------------------------------------------------------------------------
;! (8) _null16BitTMRFunction                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _nullTMRFunction                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (9) _nullIntFunction                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (9) i1_set8BitTimer                                       2     1      1     146
;!                                              0 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! (10) i1_changePinState                                    6     5      1    1192
;!                                              4 COMMON     6     5      1
;!                           i1___bmul (ARG)
;! ---------------------------------------------------------------------------------
;! (10) i1___bmul                                            4     3      1     212
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 10
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _setupGpio
;!   _setupTimer
;!   _setupADC
;!     _configLowLvlADC
;!     _get_gblInitialized_FlagValue
;!   _set_gblInitialized_FlagValue
;!   _init
;!     _setupSoftSerial
;!       ___bmul
;!       _configPin
;!       _changePinState
;!       _setup8BitTimer
;!       _set8BitTimer
;!     _getMs
;!       _get_gblISRLocked_FlagValue
;!       _get_gui16TimerMs_Value
;!   _adcCycle
;!   _cycle
;!     _getElapsedMs
;!       _get_gblISRLocked_FlagValue
;!       _get_gui16TimerMs_Value
;!     _getMs
;!       _get_gblISRLocked_FlagValue
;!       _get_gui16TimerMs_Value
;!     _serialSoftWriteString
;!       _serialSoftWrite
;!         _isSoftSerialBufferFull
;!           ___bmul
;!         ___bmul
;!     _serialSoftWrite
;!       _isSoftSerialBufferFull
;!         ___bmul
;!       ___bmul
;!
;! _isr (ROOT)
;!   _set_gblISRLocked_FlagValue
;!   _timerISR
;!     _inc_gui16TimerUsMSB_Value
;!     _inc_gui16TimerMs_Value
;!   _timer16BitISR
;!     _null16BitTMRFunction
;!   _timer8BitISR
;!     _softUARTController
;!       i1_set8BitTimer
;!       _serialSoftRxISR
;!         i1___bmul
;!         _checkPinState
;!       _serialSoftTxISR
;!         i1___bmul
;!         i1_changePinState
;!           i1___bmul (ARG)
;!     _nullTMRFunction
;!   _serialRxISR
;!   _userIntISR
;!     _extIntISR
;!       _nullIntFunction
;!     _rbIntISR
;!       _nullIntFunction
;!   _serialTxISR
;!   _adcISR
;!   _clr_gblISRLocked_FlagValue
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0      50       9       83.3%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0      22      11       35.4%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      9      4F       7       98.8%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     15      46       5       87.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0     124      12        0.0%
;!ABS                  0      0     115       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       F       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 127 in file "hardware/cores\PhilRoboKit_CoreLib_Macro.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  411[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_setupGpio
;;		_setupTimer
;;		_setupADC
;;		_set_gblInitialized_FlagValue
;;		_init
;;		_adcCycle
;;		_cycle
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	127
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [allreg]
	line	129
	
l7579:	
	fcall	_setupGpio
	line	131
	fcall	_setupTimer
	line	133
	movlw	(0)
	fcall	_setupADC
	line	140
	
l7581:	
	bsf	(95/8),(95)&7	;volatile
	
l7583:	
	bsf	(94/8),(94)&7	;volatile
	line	141
	fcall	_set_gblInitialized_FlagValue
	line	143
	
l7585:	
	fcall	_init
	line	145
	goto	l7587
	
l413:	
	line	148
	
l7587:	
	fcall	_adcCycle
	line	150
	
l7589:	
	fcall	_cycle
	goto	l7587
	line	151
	
l412:	
	line	145
	goto	l7587
	
l414:	
	line	154
;	Return value of _main is never used
	
l415:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 20 in file "C:/Users/glutnix/Documents/Dropbox/__RapidProto/philrobokit_xc8/libraries/soft_serial/examples/.phr_out\HelloWorld.phr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_setupSoftSerial
;;		_getMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1523,local,class=CODE,delta=2,merge=1
global __ptext1523
__ptext1523:	;psect for function _init
psect	text1523
	file	"C:/Users/glutnix/Documents/Dropbox/__RapidProto/philrobokit_xc8/libraries/soft_serial/examples/.phr_out\HelloWorld.phr.c"
	line	20
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 0
; Regs used in _init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	21
	
l7503:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_setupSoftSerial)
	incf	(?_setupSoftSerial),f
	clrf	0+(?_setupSoftSerial)+01h
	movlw	low(012C0h)
	movwf	0+(?_setupSoftSerial)+02h
	movlw	high(012C0h)
	movwf	(0+(?_setupSoftSerial)+02h)+1
	movlw	(0)
	fcall	_setupSoftSerial
	line	22
	
l7505:	
	fcall	_getMs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_getMs)),w
	clrf	(_Timer+1)
	addwf	(_Timer+1)
	movf	(0+(?_getMs)),w
	clrf	(_Timer)
	addwf	(_Timer)

	line	23
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_setupSoftSerial

;; *************** function _setupSoftSerial *****************
;; Defined at:
;;		line 119 in file "libraries/soft_serial\soft_serial.c"
;; Parameters:    Size  Location     Type
;;  eSUARTModule    1    wreg     enum E1557
;;  ui8TXPin        1   16[BANK0 ] unsigned char 
;;  ui8RXPin        1   17[BANK0 ] unsigned char 
;;  ui16Baudrate    2   18[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  eSUARTModule    1   20[BANK0 ] enum E1557
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       5       2       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___bmul
;;		_configPin
;;		_changePinState
;;		_setup8BitTimer
;;		_set8BitTimer
;; This function is called by:
;;		_init
;; This function uses a non-reentrant model
;;
psect	text1524,local,class=CODE,delta=2,merge=1
global __ptext1524
__ptext1524:	;psect for function _setupSoftSerial
psect	text1524
	file	"libraries/soft_serial\soft_serial.c"
	line	119
	global	__size_of_setupSoftSerial
	__size_of_setupSoftSerial	equ	__end_of_setupSoftSerial-_setupSoftSerial
	
_setupSoftSerial:	
	opt	stack 0
; Regs used in _setupSoftSerial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	121
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setupSoftSerial@eSUARTModule)
	
l7507:	
	movlw	(017h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_setupSoftSerial+0)^080h+0
	movf	(??_setupSoftSerial+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___bmul)
	movf	(setupSoftSerial@eSUARTModule),w
	fcall	___bmul
	addlw	010h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	122
	movlw	(017h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_setupSoftSerial+0)^080h+0
	movf	(??_setupSoftSerial+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___bmul)
	movf	(setupSoftSerial@eSUARTModule),w
	fcall	___bmul
	addlw	011h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	123
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setupSoftSerial@ui8TXPin),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_setupSoftSerial+0)^080h+0
	movlw	(017h)
	movwf	(??_setupSoftSerial+1)^080h+0
	movf	(??_setupSoftSerial+1)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___bmul)
	movf	(setupSoftSerial@eSUARTModule),w
	fcall	___bmul
	addlw	012h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(??_setupSoftSerial+0)^080h+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	124
	movlw	(017h)
	movwf	(??_setupSoftSerial+0)^080h+0
	movf	(??_setupSoftSerial+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___bmul)
	movf	(setupSoftSerial@eSUARTModule),w
	fcall	___bmul
	addlw	013h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	125
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_configPin)
	movf	(setupSoftSerial@ui8TXPin),w
	fcall	_configPin
	line	126
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_changePinState)
	movf	(setupSoftSerial@ui8TXPin),w
	fcall	_changePinState
	line	129
	movlw	(01Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_setupSoftSerial+0)^080h+0
	movf	(??_setupSoftSerial+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___bmul)
	movf	(setupSoftSerial@eSUARTModule),w
	fcall	___bmul
	addlw	010h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	130
	movlw	(01Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_setupSoftSerial+0)^080h+0
	movf	(??_setupSoftSerial+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___bmul)
	movf	(setupSoftSerial@eSUARTModule),w
	fcall	___bmul
	addlw	011h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	131
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setupSoftSerial@ui8RXPin),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_setupSoftSerial+0)^080h+0
	movlw	(01Ch)
	movwf	(??_setupSoftSerial+1)^080h+0
	movf	(??_setupSoftSerial+1)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___bmul)
	movf	(setupSoftSerial@eSUARTModule),w
	fcall	___bmul
	addlw	012h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(??_setupSoftSerial+0)^080h+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	132
	movlw	(01Ch)
	movwf	(??_setupSoftSerial+0)^080h+0
	movf	(??_setupSoftSerial+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___bmul)
	movf	(setupSoftSerial@eSUARTModule),w
	fcall	___bmul
	addlw	018h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	indf,f
	line	133
	movlw	(01Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_setupSoftSerial+0)^080h+0
	movf	(??_setupSoftSerial+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___bmul)
	movf	(setupSoftSerial@eSUARTModule),w
	fcall	___bmul
	addlw	019h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	indf,f
	line	134
	movlw	(01Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_setupSoftSerial+0)^080h+0
	movf	(??_setupSoftSerial+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___bmul)
	movf	(setupSoftSerial@eSUARTModule),w
	fcall	___bmul
	addlw	013h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	135
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_configPin)
	incf	(?_configPin),f
	movf	(setupSoftSerial@ui8RXPin),w
	fcall	_configPin
	line	138
	
l7509:	
	movlw	low(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ui16SUARTBitPeriod_div3)
	movlw	high(0Eh)
	movwf	((_ui16SUARTBitPeriod_div3))+1
	line	141
	
l7511:	
	movlw	((fp__softUARTController-i1fpbase))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_setupSoftSerial+0)^080h+0
	movf	(??_setupSoftSerial+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_setup8BitTimer)
	movlw	(02h)
	fcall	_setup8BitTimer
	line	142
	
l7513:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui16SUARTBitPeriod_div3),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_setupSoftSerial+0)^080h+0
	movf	(??_setupSoftSerial+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_set8BitTimer)
	movlw	(02h)
	fcall	_set8BitTimer
	line	143
	
l132:	
	return
	opt stack 0
GLOBAL	__end_of_setupSoftSerial
	__end_of_setupSoftSerial:
	signat	_setupSoftSerial,16504
	global	_cycle

;; *************** function _cycle *****************
;; Defined at:
;;		line 26 in file "C:/Users/glutnix/Documents/Dropbox/__RapidProto/philrobokit_xc8/libraries/soft_serial/examples/.phr_out\HelloWorld.phr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_getElapsedMs
;;		_getMs
;;		_serialSoftWriteString
;;		_serialSoftWrite
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1525,local,class=CODE,delta=2,merge=1
global __ptext1525
__ptext1525:	;psect for function _cycle
psect	text1525
	file	"C:/Users/glutnix/Documents/Dropbox/__RapidProto/philrobokit_xc8/libraries/soft_serial/examples/.phr_out\HelloWorld.phr.c"
	line	26
	global	__size_of_cycle
	__size_of_cycle	equ	__end_of_cycle-_cycle
	
_cycle:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _cycle: [allreg]
	line	27
	
l7515:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Timer+1),w
	clrf	(?_getElapsedMs+1)
	addwf	(?_getElapsedMs+1)
	movf	(_Timer),w
	clrf	(?_getElapsedMs)
	addwf	(?_getElapsedMs)

	fcall	_getElapsedMs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_getElapsedMs)),w
	clrf	(_TimerDelta+1)
	addwf	(_TimerDelta+1)
	movf	(0+(?_getElapsedMs)),w
	clrf	(_TimerDelta)
	addwf	(_TimerDelta)

	line	29
	
l7517:	
	movlw	high(03E8h)
	subwf	(_TimerDelta+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(_TimerDelta),w
	skipc
	goto	u4201
	goto	u4200
u4201:
	goto	l61
u4200:
	line	31
	
l7519:	
	fcall	_getMs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_getMs)),w
	clrf	(_Timer+1)
	addwf	(_Timer+1)
	movf	(0+(?_getMs)),w
	clrf	(_Timer)
	addwf	(_Timer)

	line	33
	
l7521:	
	movlw	((STR_1-__stringbase))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_cycle+0)^080h+0
	movf	(??_cycle+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_serialSoftWriteString)
	movlw	(0)
	fcall	_serialSoftWriteString
	line	34
	
l7523:	
	movlw	(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_cycle+0)^080h+0
	movf	(??_cycle+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_serialSoftWrite)
	movlw	(0)
	fcall	_serialSoftWrite
	goto	l61
	line	35
	
l60:	
	line	36
	
l61:	
	return
	opt stack 0
GLOBAL	__end_of_cycle
	__end_of_cycle:
	signat	_cycle,88
	global	_getMs

;; *************** function _getMs *****************
;; Defined at:
;;		line 129 in file "hardware/cores/lib\corelib_basetimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ui16TempBuff    2   16[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_get_gblISRLocked_FlagValue
;;		_get_gui16TimerMs_Value
;; This function is called by:
;;		_init
;;		_cycle
;; This function uses a non-reentrant model
;;
psect	text1526,local,class=CODE,delta=2,merge=1
global __ptext1526
__ptext1526:	;psect for function _getMs
psect	text1526
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	129
	global	__size_of_getMs
	__size_of_getMs	equ	__end_of_getMs-_getMs
	
_getMs:	
	opt	stack 0
; Regs used in _getMs: [wreg+status,2+status,0+pclath+cstack]
	line	132
	
l5949:	
	goto	l5951
	
l740:	
	goto	l5951
	
l739:	
	
l5951:	
	fcall	_get_gblISRLocked_FlagValue
	xorlw	01h
	skipnz
	goto	u2121
	goto	u2120
u2121:
	goto	l5951
u2120:
	
l741:	
	line	134
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	135
	
l5953:	
	fcall	_get_gui16TimerMs_Value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_get_gui16TimerMs_Value)),w
	clrf	(getMs@ui16TempBuff+1)
	addwf	(getMs@ui16TempBuff+1)
	movf	(0+(?_get_gui16TimerMs_Value)),w
	clrf	(getMs@ui16TempBuff)
	addwf	(getMs@ui16TempBuff)

	line	136
	
l5955:	
	bsf	(95/8),(95)&7	;volatile
	
l5957:	
	bsf	(94/8),(94)&7	;volatile
	line	137
	
l5959:	
	movf	(getMs@ui16TempBuff+1),w
	clrf	(?_getMs+1)
	addwf	(?_getMs+1)
	movf	(getMs@ui16TempBuff),w
	clrf	(?_getMs)
	addwf	(?_getMs)

	goto	l742
	
l5961:	
	line	138
	
l742:	
	return
	opt stack 0
GLOBAL	__end_of_getMs
	__end_of_getMs:
	signat	_getMs,90
	global	_getElapsedMs

;; *************** function _getElapsedMs *****************
;; Defined at:
;;		line 158 in file "hardware/cores/lib\corelib_basetimer.c"
;; Parameters:    Size  Location     Type
;;  ui16TimeMs      2   14[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  ui16TempBuff    2   18[BANK0 ] unsigned int 
;;  ui16ReturnBu    2    0        unsigned int 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_get_gblISRLocked_FlagValue
;;		_get_gui16TimerMs_Value
;; This function is called by:
;;		_cycle
;; This function uses a non-reentrant model
;;
psect	text1527,local,class=CODE,delta=2,merge=1
global __ptext1527
__ptext1527:	;psect for function _getElapsedMs
psect	text1527
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	158
	global	__size_of_getElapsedMs
	__size_of_getElapsedMs	equ	__end_of_getElapsedMs-_getElapsedMs
	
_getElapsedMs:	
	opt	stack 0
; Regs used in _getElapsedMs: [wreg+status,2+status,0+pclath+cstack]
	line	162
	
l5973:	
	goto	l5975
	
l746:	
	goto	l5975
	
l745:	
	
l5975:	
	fcall	_get_gblISRLocked_FlagValue
	xorlw	01h
	skipnz
	goto	u2141
	goto	u2140
u2141:
	goto	l5975
u2140:
	
l747:	
	line	164
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	165
	
l5977:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(getElapsedMs@ui16TimeMs),w
	movwf	(??_getElapsedMs+0)+0
	comf	(getElapsedMs@ui16TimeMs+1),w
	movwf	((??_getElapsedMs+0)+0+1)
	incf	(??_getElapsedMs+0)+0,f
	skipnz
	incf	((??_getElapsedMs+0)+0+1),f
	fcall	_get_gui16TimerMs_Value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_getElapsedMs+0)+0,w
	addwf	(0+(?_get_gui16TimerMs_Value)),w
	movwf	(getElapsedMs@ui16TempBuff)
	movf	1+(??_getElapsedMs+0)+0,w
	skipnc
	incf	1+(??_getElapsedMs+0)+0,w
	addwf	(1+(?_get_gui16TimerMs_Value)),w
	movwf	1+(getElapsedMs@ui16TempBuff)
	line	166
	
l5979:	
	bsf	(95/8),(95)&7	;volatile
	
l5981:	
	bsf	(94/8),(94)&7	;volatile
	line	167
	
l5983:	
	movf	(getElapsedMs@ui16TempBuff+1),w
	clrf	(?_getElapsedMs+1)
	addwf	(?_getElapsedMs+1)
	movf	(getElapsedMs@ui16TempBuff),w
	clrf	(?_getElapsedMs)
	addwf	(?_getElapsedMs)

	goto	l748
	
l5985:	
	line	168
	
l748:	
	return
	opt stack 0
GLOBAL	__end_of_getElapsedMs
	__end_of_getElapsedMs:
	signat	_getElapsedMs,4218
	global	_serialSoftWriteString

;; *************** function _serialSoftWriteString *****************
;; Defined at:
;;		line 197 in file "libraries/soft_serial\soft_serial.c"
;; Parameters:    Size  Location     Type
;;  eSUARTModule    1    wreg     enum E1557
;;  pucStrTxData    1   20[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  eSUARTModule    1    7[BANK1 ] enum E1557
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       1       2       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_serialSoftWrite
;; This function is called by:
;;		_cycle
;; This function uses a non-reentrant model
;;
psect	text1528,local,class=CODE,delta=2,merge=1
global __ptext1528
__ptext1528:	;psect for function _serialSoftWriteString
psect	text1528
	file	"libraries/soft_serial\soft_serial.c"
	line	197
	global	__size_of_serialSoftWriteString
	__size_of_serialSoftWriteString	equ	__end_of_serialSoftWriteString-_serialSoftWriteString
	
_serialSoftWriteString:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _serialSoftWriteString: [allreg]
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(serialSoftWriteString@eSUARTModule)^080h
	line	198
	
l7525:	
	goto	l7531
	
l142:	
	line	200
	
l7527:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(serialSoftWriteString@pucStrTxData),w
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_serialSoftWriteString+0)^080h+0
	movf	(??_serialSoftWriteString+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_serialSoftWrite)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(serialSoftWriteString@eSUARTModule)^080h,w
	fcall	_serialSoftWrite
	
l7529:	
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_serialSoftWriteString+0)^080h+0
	movf	(??_serialSoftWriteString+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(serialSoftWriteString@pucStrTxData),f
	goto	l7531
	line	204
	
l141:	
	line	198
	
l7531:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(serialSoftWriteString@pucStrTxData),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u4211
	goto	u4210
u4211:
	goto	l7527
u4210:
	goto	l7533
	
l143:	
	line	206
	
l7533:	
	clrf	(?_serialSoftWrite)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(serialSoftWriteString@eSUARTModule)^080h,w
	fcall	_serialSoftWrite
	line	207
	
l144:	
	return
	opt stack 0
GLOBAL	__end_of_serialSoftWriteString
	__end_of_serialSoftWriteString:
	signat	_serialSoftWriteString,8312
	global	_serialSoftWrite

;; *************** function _serialSoftWrite *****************
;; Defined at:
;;		line 162 in file "libraries/soft_serial\soft_serial.c"
;; Parameters:    Size  Location     Type
;;  eSUARTModule    1    wreg     enum E1557
;;  ui8TxData       1   18[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  eSUARTModule    1   19[BANK0 ] enum E1557
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       6       0       0
;;      Totals:         0       2       6       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_isSoftSerialBufferFull
;;		___bmul
;; This function is called by:
;;		_cycle
;;		_serialSoftWriteString
;;		_serialSoftWriteBlock
;; This function uses a non-reentrant model
;;
psect	text1529,local,class=CODE,delta=2,merge=1
global __ptext1529
__ptext1529:	;psect for function _serialSoftWrite
psect	text1529
	file	"libraries/soft_serial\soft_serial.c"
	line	162
	global	__size_of_serialSoftWrite
	__size_of_serialSoftWrite	equ	__end_of_serialSoftWrite-_serialSoftWrite
	
_serialSoftWrite:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _serialSoftWrite: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialSoftWrite@eSUARTModule)
	line	163
	
l7535:	
	goto	l7537
	
l136:	
	line	168
	goto	l7537
	line	169
	
l135:	
	line	163
	
l7537:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftWrite@eSUARTModule),w
	fcall	_isSoftSerialBufferFull
	iorlw	0
	skipz
	goto	u4221
	goto	u4220
u4221:
	goto	l7537
u4220:
	goto	l7539
	
l137:	
	line	172
	
l7539:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftWrite@ui8TxData),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_serialSoftWrite+0)^080h+0
	movlw	(017h)
	movwf	(??_serialSoftWrite+1)^080h+0
	movf	(??_serialSoftWrite+1)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___bmul)
	movf	(serialSoftWrite@eSUARTModule),w
	fcall	___bmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_serialSoftWrite+2)^080h+0
	movlw	(_stSUART_TXFiFo)&0ffh
	addwf	0+(??_serialSoftWrite+2)^080h+0,w
	movwf	(??_serialSoftWrite+3)^080h+0
	movlw	(017h)
	movwf	(??_serialSoftWrite+4)^080h+0
	movf	(??_serialSoftWrite+4)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___bmul)
	movf	(serialSoftWrite@eSUARTModule),w
	fcall	___bmul
	addlw	010h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	0+(??_serialSoftWrite+3)^080h+0,w
	movwf	(??_serialSoftWrite+5)^080h+0
	movf	0+(??_serialSoftWrite+5)^080h+0,w
	movwf	fsr0
	movf	(??_serialSoftWrite+0)^080h+0,w
	movwf	indf
	movlw	(01h)
	movwf	(??_serialSoftWrite+0)^080h+0
	movlw	(017h)
	movwf	(??_serialSoftWrite+1)^080h+0
	movf	(??_serialSoftWrite+1)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___bmul)
	movf	(serialSoftWrite@eSUARTModule),w
	fcall	___bmul
	addlw	010h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(??_serialSoftWrite+0)^080h+0,w
	bsf	status, 7	;select IRP bank3
	addwf	indf,f
	line	173
	movlw	(0Fh)
	movwf	(??_serialSoftWrite+0)^080h+0
	movlw	(017h)
	movwf	(??_serialSoftWrite+1)^080h+0
	movf	(??_serialSoftWrite+1)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___bmul)
	movf	(serialSoftWrite@eSUARTModule),w
	fcall	___bmul
	addlw	010h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(??_serialSoftWrite+0)^080h+0,w
	bsf	status, 7	;select IRP bank3
	andwf	indf,f
	line	178
	
l138:	
	return
	opt stack 0
GLOBAL	__end_of_serialSoftWrite
	__end_of_serialSoftWrite:
	signat	_serialSoftWrite,8312
	global	_configPin

;; *************** function _configPin *****************
;; Defined at:
;;		line 67 in file "hardware/cores/lib\hal_gpio.c"
;; Parameters:    Size  Location     Type
;;  ui8Pin          1    wreg     unsigned char 
;;  ui8Direction    1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Pin          1   15[BANK0 ] unsigned char 
;;  pui8PortDirR    2   13[BANK0 ] PTR unsigned char 
;;		 -> NULL(0), TRISD(1), TRISC(1), TRISB(1), 
;;		 -> TRISE(1), TRISA(1), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupSoftSerial
;; This function uses a non-reentrant model
;;
psect	text1530,local,class=CODE,delta=2,merge=1
global __ptext1530
__ptext1530:	;psect for function _configPin
psect	text1530
	file	"hardware/cores/lib\hal_gpio.c"
	line	67
	global	__size_of_configPin
	__size_of_configPin	equ	__end_of_configPin-_configPin
	
_configPin:	
	opt	stack 0
; Regs used in _configPin: [wreg-fsr0h+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(configPin@ui8Pin)
	line	68
	
l6003:	
	clrf	(configPin@pui8PortDirReg)
	clrf	(configPin@pui8PortDirReg+1)
	line	71
	
l6005:	
	movlw	(08h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2171
	goto	u2170
u2171:
	goto	l6009
u2170:
	line	73
	
l6007:	
	movlw	high(135)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(135)
	movwf	(configPin@pui8PortDirReg)
	line	77
	goto	l6041
	line	79
	
l1428:	
	
l6009:	
	movlw	(0Eh)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2181
	goto	u2180
u2181:
	goto	l6015
u2180:
	line	81
	
l6011:	
	movlw	low(08h)
	subwf	(configPin@ui8Pin),f
	line	82
	
l6013:	
	movlw	high(134)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(134)
	movwf	(configPin@pui8PortDirReg)
	line	86
	goto	l6041
	line	88
	
l1430:	
	
l6015:	
	movlw	(015h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2191
	goto	u2190
u2191:
	goto	l6035
u2190:
	line	90
	
l6017:	
	movlw	low(0Eh)
	subwf	(configPin@ui8Pin),f
	line	93
	
l6019:	
	movlw	(03h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2201
	goto	u2200
u2201:
	goto	l6023
u2200:
	line	95
	
l6021:	
	movlw	high(133)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(133)
	movwf	(configPin@pui8PortDirReg)
	line	99
	goto	l6041
	line	101
	
l1433:	
	
l6023:	
	movf	(configPin@ui8Pin),w
	xorlw	03h
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l6029
u2210:
	line	103
	
l6025:	
	movlw	(02h)
	movwf	(??_configPin+0)+0
	movf	(??_configPin+0)+0,w
	addwf	(configPin@ui8Pin),f
	line	104
	
l6027:	
	movlw	high(133)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(133)
	movwf	(configPin@pui8PortDirReg)
	line	108
	goto	l6041
	line	110
	
l1435:	
	
l6029:	
	movlw	(07h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2221
	goto	u2220
u2221:
	goto	l6041
u2220:
	line	112
	
l6031:	
	movlw	low(04h)
	subwf	(configPin@ui8Pin),f
	line	113
	
l6033:	
	movlw	high(137)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(137)
	movwf	(configPin@pui8PortDirReg)
	line	117
	goto	l6041
	line	118
	
l1437:	
	goto	l6041
	line	124
	
l1438:	
	goto	l6041
	
l1436:	
	goto	l6041
	
l1434:	
	line	125
	goto	l6041
	line	127
	
l1432:	
	
l6035:	
	movlw	(01Dh)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2231
	goto	u2230
u2231:
	goto	l6041
u2230:
	line	129
	
l6037:	
	movlw	low(015h)
	subwf	(configPin@ui8Pin),f
	line	130
	
l6039:	
	movlw	high(136)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(136)
	movwf	(configPin@pui8PortDirReg)
	line	134
	goto	l6041
	line	135
	
l1440:	
	goto	l6041
	line	141
	
l1441:	
	goto	l6041
	
l1439:	
	goto	l6041
	
l1431:	
	goto	l6041
	
l1429:	
	line	144
	
l6041:	
	movf	(configPin@pui8PortDirReg+1),w
	iorwf	(configPin@pui8PortDirReg),w
	skipnz
	goto	u2241
	goto	u2240
u2241:
	goto	l1446
u2240:
	line	146
	
l6043:	
	movf	(configPin@ui8Direction),w
	xorlw	01h
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l6047
u2250:
	line	148
	
l6045:	
	movlw	(01h)
	movwf	(??_configPin+0)+0
	incf	(configPin@ui8Pin),w
	goto	u2264
u2265:
	clrc
	rlf	(??_configPin+0)+0,f
u2264:
	addlw	-1
	skipz
	goto	u2265
	movf	0+(??_configPin+0)+0,w
	movwf	(??_configPin+1)+0
	movf	(configPin@pui8PortDirReg),w
	movwf	fsr0
	bsf	status,7
	btfss	(configPin@pui8PortDirReg+1),0
	bcf	status,7
	movf	(??_configPin+1)+0,w
	iorwf	indf,f
	line	152
	goto	l1446
	line	153
	
l1443:	
	line	155
	
l6047:	
	movlw	(01h)
	movwf	(??_configPin+0)+0
	incf	(configPin@ui8Pin),w
	goto	u2274
u2275:
	clrc
	rlf	(??_configPin+0)+0,f
u2274:
	addlw	-1
	skipz
	goto	u2275
	movf	0+(??_configPin+0)+0,w
	xorlw	0ffh
	movwf	(??_configPin+1)+0
	movf	(configPin@pui8PortDirReg),w
	movwf	fsr0
	bsf	status,7
	btfss	(configPin@pui8PortDirReg+1),0
	bcf	status,7
	movf	(??_configPin+1)+0,w
	andwf	indf,f
	goto	l1446
	line	159
	
l1444:	
	line	160
	goto	l1446
	line	161
	
l1442:	
	goto	l1446
	line	167
	
l1445:	
	line	168
	
l1446:	
	return
	opt stack 0
GLOBAL	__end_of_configPin
	__end_of_configPin:
	signat	_configPin,8312
	global	_changePinState

;; *************** function _changePinState *****************
;; Defined at:
;;		line 189 in file "hardware/cores/lib\hal_gpio.c"
;; Parameters:    Size  Location     Type
;;  ui8Pin          1    wreg     unsigned char 
;;  eOperation      1   10[BANK0 ] enum E1449
;; Auto vars:     Size  Location     Type
;;  ui8Pin          1   15[BANK0 ] unsigned char 
;;  pui8PortReg     2   13[BANK0 ] PTR unsigned char 
;;		 -> NULL(0), PORTE(1), PORTD(1), PORTC(1), 
;;		 -> PORTB(1), PORTA(1), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupSoftSerial
;; This function uses a non-reentrant model
;;
psect	text1531,local,class=CODE,delta=2,merge=1
global __ptext1531
__ptext1531:	;psect for function _changePinState
psect	text1531
	file	"hardware/cores/lib\hal_gpio.c"
	line	189
	global	__size_of_changePinState
	__size_of_changePinState	equ	__end_of_changePinState-_changePinState
	
_changePinState:	
	opt	stack 0
; Regs used in _changePinState: [wreg-fsr0h+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(changePinState@ui8Pin)
	line	190
	
l6049:	
	clrf	(changePinState@pui8PortReg)
	clrf	(changePinState@pui8PortReg+1)
	line	193
	
l6051:	
	movlw	(08h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2281
	goto	u2280
u2281:
	goto	l6055
u2280:
	line	195
	
l6053:	
	movlw	high(7)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(7)
	movwf	(changePinState@pui8PortReg)
	line	199
	goto	l6087
	line	201
	
l1449:	
	
l6055:	
	movlw	(0Eh)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2291
	goto	u2290
u2291:
	goto	l6061
u2290:
	line	203
	
l6057:	
	movlw	low(08h)
	subwf	(changePinState@ui8Pin),f
	line	204
	
l6059:	
	movlw	high(6)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(6)
	movwf	(changePinState@pui8PortReg)
	line	208
	goto	l6087
	line	210
	
l1451:	
	
l6061:	
	movlw	(015h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2301
	goto	u2300
u2301:
	goto	l6081
u2300:
	line	212
	
l6063:	
	movlw	low(0Eh)
	subwf	(changePinState@ui8Pin),f
	line	215
	
l6065:	
	movlw	(03h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2311
	goto	u2310
u2311:
	goto	l6069
u2310:
	line	217
	
l6067:	
	movlw	high(5)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(changePinState@pui8PortReg)
	line	221
	goto	l6087
	line	223
	
l1454:	
	
l6069:	
	movf	(changePinState@ui8Pin),w
	xorlw	03h
	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l6075
u2320:
	line	225
	
l6071:	
	movlw	(02h)
	movwf	(??_changePinState+0)+0
	movf	(??_changePinState+0)+0,w
	addwf	(changePinState@ui8Pin),f
	line	226
	
l6073:	
	movlw	high(5)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(changePinState@pui8PortReg)
	line	230
	goto	l6087
	line	232
	
l1456:	
	
l6075:	
	movlw	(07h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2331
	goto	u2330
u2331:
	goto	l6087
u2330:
	line	234
	
l6077:	
	movlw	low(04h)
	subwf	(changePinState@ui8Pin),f
	line	235
	
l6079:	
	movlw	high(9)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(9)
	movwf	(changePinState@pui8PortReg)
	line	239
	goto	l6087
	line	240
	
l1458:	
	goto	l6087
	line	246
	
l1459:	
	goto	l6087
	
l1457:	
	goto	l6087
	
l1455:	
	line	247
	goto	l6087
	line	249
	
l1453:	
	
l6081:	
	movlw	(01Dh)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2341
	goto	u2340
u2341:
	goto	l6087
u2340:
	line	251
	
l6083:	
	movlw	low(015h)
	subwf	(changePinState@ui8Pin),f
	line	252
	
l6085:	
	movlw	high(8)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(8)
	movwf	(changePinState@pui8PortReg)
	line	256
	goto	l6087
	line	257
	
l1461:	
	goto	l6087
	line	263
	
l1462:	
	goto	l6087
	
l1460:	
	goto	l6087
	
l1452:	
	goto	l6087
	
l1450:	
	line	266
	
l6087:	
	movf	(changePinState@pui8PortReg+1),w
	iorwf	(changePinState@pui8PortReg),w
	skipnz
	goto	u2351
	goto	u2350
u2351:
	goto	l1469
u2350:
	line	268
	
l6089:	
	movf	(changePinState@eOperation),f
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l6093
u2360:
	line	270
	
l6091:	
	movlw	(01h)
	movwf	(??_changePinState+0)+0
	incf	(changePinState@ui8Pin),w
	goto	u2374
u2375:
	clrc
	rlf	(??_changePinState+0)+0,f
u2374:
	addlw	-1
	skipz
	goto	u2375
	movf	0+(??_changePinState+0)+0,w
	movwf	(??_changePinState+1)+0
	movf	(changePinState@pui8PortReg),w
	movwf	fsr0
	bsf	status,7
	btfss	(changePinState@pui8PortReg+1),0
	bcf	status,7
	movf	(??_changePinState+1)+0,w
	iorwf	indf,f
	line	274
	goto	l1469
	line	275
	
l1464:	
	
l6093:	
	movf	(changePinState@eOperation),w
	xorlw	01h
	skipz
	goto	u2381
	goto	u2380
u2381:
	goto	l6097
u2380:
	line	277
	
l6095:	
	movlw	(01h)
	movwf	(??_changePinState+0)+0
	incf	(changePinState@ui8Pin),w
	goto	u2394
u2395:
	clrc
	rlf	(??_changePinState+0)+0,f
u2394:
	addlw	-1
	skipz
	goto	u2395
	movf	0+(??_changePinState+0)+0,w
	xorlw	0ffh
	movwf	(??_changePinState+1)+0
	movf	(changePinState@pui8PortReg),w
	movwf	fsr0
	bsf	status,7
	btfss	(changePinState@pui8PortReg+1),0
	bcf	status,7
	movf	(??_changePinState+1)+0,w
	andwf	indf,f
	line	281
	goto	l1469
	line	282
	
l1466:	
	line	284
	
l6097:	
	movlw	(01h)
	movwf	(??_changePinState+0)+0
	incf	(changePinState@ui8Pin),w
	goto	u2404
u2405:
	clrc
	rlf	(??_changePinState+0)+0,f
u2404:
	addlw	-1
	skipz
	goto	u2405
	movf	0+(??_changePinState+0)+0,w
	movwf	(??_changePinState+1)+0
	movf	(changePinState@pui8PortReg),w
	movwf	fsr0
	bsf	status,7
	btfss	(changePinState@pui8PortReg+1),0
	bcf	status,7
	movf	(??_changePinState+1)+0,w
	xorwf	indf,f
	goto	l1469
	line	288
	
l1467:	
	goto	l1469
	
l1465:	
	line	289
	goto	l1469
	line	290
	
l1463:	
	goto	l1469
	line	296
	
l1468:	
	line	297
	
l1469:	
	return
	opt stack 0
GLOBAL	__end_of_changePinState
	__end_of_changePinState:
	signat	_changePinState,8312
	global	_setup8BitTimer

;; *************** function _setup8BitTimer *****************
;; Defined at:
;;		line 185 in file "hardware/cores/lib\corelib_8bit_timer.c"
;; Parameters:    Size  Location     Type
;;  eTmrModule      1    wreg     enum E1480
;;  callback        1   10[BANK0 ] PTR FTN()void 
;;		 -> softUARTController(0), 
;; Auto vars:     Size  Location     Type
;;  eTmrModule      1   12[BANK0 ] enum E1480
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupSoftSerial
;; This function uses a non-reentrant model
;;
psect	text1532,local,class=CODE,delta=2,merge=1
global __ptext1532
__ptext1532:	;psect for function _setup8BitTimer
psect	text1532
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	185
	global	__size_of_setup8BitTimer
	__size_of_setup8BitTimer	equ	__end_of_setup8BitTimer-_setup8BitTimer
	
_setup8BitTimer:	
	opt	stack 0
; Regs used in _setup8BitTimer: [wreg+status,2+status,0]
	line	188
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setup8BitTimer@eTmrModule)
	
l6099:	
	movf	(setup8BitTimer@eTmrModule),w
	xorlw	02h
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l559
u2410:
	line	190
	
l6101:	
	movlw	(0FCh)
	movwf	(??_setup8BitTimer+0)+0
	movf	(??_setup8BitTimer+0)+0,w
	andwf	(18),f	;volatile
	
l6103:	
	bsf	(18)+(1/8),(1)&7	;volatile
	line	191
	movlw	(087h)
	movwf	(??_setup8BitTimer+0)+0
	movf	(??_setup8BitTimer+0)+0,w
	andwf	(18),f	;volatile
	
l6105:	
	bsf	(18)+(4/8),(4)&7	;volatile
	line	192
	
l6107:	
	movf	(setup8BitTimer@callback),w
	movwf	(??_setup8BitTimer+0)+0
	movf	(??_setup8BitTimer+0)+0,w
	movwf	(_pt2TMR2ISR)
	line	193
	goto	l559
	line	213
	
l557:	
	goto	l559
	line	216
	
l558:	
	line	217
	
l559:	
	return
	opt stack 0
GLOBAL	__end_of_setup8BitTimer
	__end_of_setup8BitTimer:
	signat	_setup8BitTimer,8312
	global	_set8BitTimer

;; *************** function _set8BitTimer *****************
;; Defined at:
;;		line 238 in file "hardware/cores/lib\corelib_8bit_timer.c"
;; Parameters:    Size  Location     Type
;;  eTmrModule      1    wreg     enum E1480
;;  ui8Value        1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  eTmrModule      1   11[BANK0 ] enum E1480
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupSoftSerial
;;		_setPWMFrequency
;; This function uses a non-reentrant model
;;
psect	text1533,local,class=CODE,delta=2,merge=1
global __ptext1533
__ptext1533:	;psect for function _set8BitTimer
psect	text1533
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	238
	global	__size_of_set8BitTimer
	__size_of_set8BitTimer	equ	__end_of_set8BitTimer-_set8BitTimer
	
_set8BitTimer:	
	opt	stack 0
; Regs used in _set8BitTimer: [wreg+status,2+status,0]
	line	240
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(set8BitTimer@eTmrModule)
	
l6109:	
	movf	(set8BitTimer@eTmrModule),w
	xorlw	02h
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l564
u2420:
	line	242
	
l6111:	
	movf	(set8BitTimer@ui8Value),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	244
	
l6113:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	245
	
l6115:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	247
	
l6117:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	line	248
	goto	l564
	line	274
	
l562:	
	goto	l564
	line	277
	
l563:	
	line	278
	
l564:	
	return
	opt stack 0
GLOBAL	__end_of_set8BitTimer
	__end_of_set8BitTimer:
	signat	_set8BitTimer,8312
	global	_isSoftSerialBufferFull

;; *************** function _isSoftSerialBufferFull *****************
;; Defined at:
;;		line 708 in file "libraries/soft_serial\soft_serial.c"
;; Parameters:    Size  Location     Type
;;  eSUARTModule    1    wreg     enum E1557
;; Auto vars:     Size  Location     Type
;;  eSUARTModule    1   17[BANK0 ] enum E1557
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___bmul
;; This function is called by:
;;		_serialSoftWrite
;; This function uses a non-reentrant model
;;
psect	text1534,local,class=CODE,delta=2,merge=1
global __ptext1534
__ptext1534:	;psect for function _isSoftSerialBufferFull
psect	text1534
	file	"libraries/soft_serial\soft_serial.c"
	line	708
	global	__size_of_isSoftSerialBufferFull
	__size_of_isSoftSerialBufferFull	equ	__end_of_isSoftSerialBufferFull-_isSoftSerialBufferFull
	
_isSoftSerialBufferFull:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _isSoftSerialBufferFull: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(isSoftSerialBufferFull@eSUARTModule)
	line	709
	
l7541:	
	movlw	(017h)
	movwf	(??_isSoftSerialBufferFull+0)+0
	movf	(??_isSoftSerialBufferFull+0)+0,w
	movwf	(?___bmul)
	movf	(isSoftSerialBufferFull@eSUARTModule),w
	fcall	___bmul
	addlw	011h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_isSoftSerialBufferFull+1)+0
	movlw	(017h)
	movwf	(??_isSoftSerialBufferFull+2)+0
	movf	(??_isSoftSerialBufferFull+2)+0,w
	movwf	(?___bmul)
	movf	(isSoftSerialBufferFull@eSUARTModule),w
	fcall	___bmul
	addlw	010h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	addlw	01h
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(??_isSoftSerialBufferFull+1)+0,w
	movlw	0
	skipnz
	movlw	1
	goto	l240
	
l7543:	
	line	710
	
l240:	
	return
	opt stack 0
GLOBAL	__end_of_isSoftSerialBufferFull
	__end_of_isSoftSerialBufferFull:
	signat	_isSoftSerialBufferFull,4217
	global	_set_gblInitialized_FlagValue

;; *************** function _set_gblInitialized_FlagValue *****************
;; Defined at:
;;		line 61 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1535,local,class=CODE,delta=2,merge=1
global __ptext1535
__ptext1535:	;psect for function _set_gblInitialized_FlagValue
psect	text1535
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	61
	global	__size_of_set_gblInitialized_FlagValue
	__size_of_set_gblInitialized_FlagValue	equ	__end_of_set_gblInitialized_FlagValue-_set_gblInitialized_FlagValue
	
_set_gblInitialized_FlagValue:	
	opt	stack 2
; Regs used in _set_gblInitialized_FlagValue: [wreg]
	line	62
	
l6229:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_set_gblInitialized_FlagValue+0)+0
	movf	(??_set_gblInitialized_FlagValue+0)+0,w
	movwf	(_gblInitialized)	;volatile
	line	63
	
l300:	
	return
	opt stack 0
GLOBAL	__end_of_set_gblInitialized_FlagValue
	__end_of_set_gblInitialized_FlagValue:
	signat	_set_gblInitialized_FlagValue,88
	global	_get_gblISRLocked_FlagValue

;; *************** function _get_gblISRLocked_FlagValue *****************
;; Defined at:
;;		line 83 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  blTemp          1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getMs
;;		_getElapsedMs
;;		_getUs
;;		_getElapsedUs
;;		_getBaseTimerValue
;; This function uses a non-reentrant model
;;
psect	text1536,local,class=CODE,delta=2,merge=1
global __ptext1536
__ptext1536:	;psect for function _get_gblISRLocked_FlagValue
psect	text1536
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	83
	global	__size_of_get_gblISRLocked_FlagValue
	__size_of_get_gblISRLocked_FlagValue	equ	__end_of_get_gblISRLocked_FlagValue-_get_gblISRLocked_FlagValue
	
_get_gblISRLocked_FlagValue:	
	opt	stack 0
; Regs used in _get_gblISRLocked_FlagValue: [wreg]
	line	85
	
l6239:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gblISRLocked),w	;volatile
	movwf	(??_get_gblISRLocked_FlagValue+0)+0
	movf	(??_get_gblISRLocked_FlagValue+0)+0,w
	movwf	(get_gblISRLocked_FlagValue@blTemp)
	line	86
	movf	(get_gblISRLocked_FlagValue@blTemp),w
	goto	l312
	
l6241:	
	line	87
	
l312:	
	return
	opt stack 0
GLOBAL	__end_of_get_gblISRLocked_FlagValue
	__end_of_get_gblISRLocked_FlagValue:
	signat	_get_gblISRLocked_FlagValue,89
	global	_get_gui16TimerMs_Value

;; *************** function _get_gui16TimerMs_Value *****************
;; Defined at:
;;		line 124 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ui16Temp        2   12[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   10[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getMs
;;		_getElapsedMs
;; This function uses a non-reentrant model
;;
psect	text1537,local,class=CODE,delta=2,merge=1
global __ptext1537
__ptext1537:	;psect for function _get_gui16TimerMs_Value
psect	text1537
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	124
	global	__size_of_get_gui16TimerMs_Value
	__size_of_get_gui16TimerMs_Value	equ	__end_of_get_gui16TimerMs_Value-_get_gui16TimerMs_Value
	
_get_gui16TimerMs_Value:	
	opt	stack 0
; Regs used in _get_gui16TimerMs_Value: [wreg+status,2+status,0]
	line	128
	
l6265:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gui16TimerMs+1),w	;volatile
	clrf	(get_gui16TimerMs_Value@ui16Temp+1)
	addwf	(get_gui16TimerMs_Value@ui16Temp+1)
	movf	(_gui16TimerMs),w	;volatile
	clrf	(get_gui16TimerMs_Value@ui16Temp)
	addwf	(get_gui16TimerMs_Value@ui16Temp)

	line	130
	movf	(get_gui16TimerMs_Value@ui16Temp+1),w
	clrf	(?_get_gui16TimerMs_Value+1)
	addwf	(?_get_gui16TimerMs_Value+1)
	movf	(get_gui16TimerMs_Value@ui16Temp),w
	clrf	(?_get_gui16TimerMs_Value)
	addwf	(?_get_gui16TimerMs_Value)

	goto	l326
	
l6267:	
	line	131
	
l326:	
	return
	opt stack 0
GLOBAL	__end_of_get_gui16TimerMs_Value
	__end_of_get_gui16TimerMs_Value:
	signat	_get_gui16TimerMs_Value,90
	global	_setupGpio

;; *************** function _setupGpio *****************
;; Defined at:
;;		line 66 in file "hardware/cores/lib\corelib_gpio.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1538,local,class=CODE,delta=2,merge=1
global __ptext1538
__ptext1538:	;psect for function _setupGpio
psect	text1538
	file	"hardware/cores/lib\corelib_gpio.c"
	line	66
	global	__size_of_setupGpio
	__size_of_setupGpio	equ	__end_of_setupGpio-_setupGpio
	
_setupGpio:	
	opt	stack 2
; Regs used in _setupGpio: [wreg+status,2]
	line	69
	
l6295:	
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	70
	movlw	(03Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	73
	
l6297:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	74
	
l6299:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	77
	movlw	(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	78
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	81
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	82
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	85
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(9)	;volatile
	line	86
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(137)^080h	;volatile
	line	88
	
l861:	
	return
	opt stack 0
GLOBAL	__end_of_setupGpio
	__end_of_setupGpio:
	signat	_setupGpio,88
	global	_setupTimer

;; *************** function _setupTimer *****************
;; Defined at:
;;		line 72 in file "hardware/cores/lib\hal_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1539,local,class=CODE,delta=2,merge=1
global __ptext1539
__ptext1539:	;psect for function _setupTimer
psect	text1539
	file	"hardware/cores/lib\hal_timer.c"
	line	72
	global	__size_of_setupTimer
	__size_of_setupTimer	equ	__end_of_setupTimer-_setupTimer
	
_setupTimer:	
	opt	stack 2
; Regs used in _setupTimer: [wreg+status,2+status,0]
	line	74
	
l6301:	
	movlw	(0F8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setupTimer+0)+0
	movf	(??_setupTimer+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(129)^080h,f	;volatile
	
l6303:	
	bsf	(129)^080h+(0/8),(0)&7	;volatile
	line	76
	
l6305:	
	bcf	(1037/8)^080h,(1037)&7	;volatile
	
l6307:	
	bcf	(1035/8)^080h,(1035)&7	;volatile
	
l6309:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	84
	
l6311:	
	bcf	(90/8),(90)&7	;volatile
	line	85
	
l6313:	
	bsf	(93/8),(93)&7	;volatile
	line	86
	
l1597:	
	return
	opt stack 0
GLOBAL	__end_of_setupTimer
	__end_of_setupTimer:
	signat	_setupTimer,88
	global	_setupADC

;; *************** function _setupADC *****************
;; Defined at:
;;		line 208 in file "hardware/cores/lib\corelib_adc.c"
;; Parameters:    Size  Location     Type
;;  eVrefSource     1    wreg     enum E1485
;; Auto vars:     Size  Location     Type
;;  eVrefSource     1   14[BANK0 ] enum E1485
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_configLowLvlADC
;;		_get_gblInitialized_FlagValue
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1540,local,class=CODE,delta=2,merge=1
global __ptext1540
__ptext1540:	;psect for function _setupADC
psect	text1540
	file	"hardware/cores/lib\corelib_adc.c"
	line	208
	global	__size_of_setupADC
	__size_of_setupADC	equ	__end_of_setupADC-_setupADC
	
_setupADC:	
	opt	stack 1
; Regs used in _setupADC: [wreg+status,2+status,0+pclath+cstack]
	line	210
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setupADC@eVrefSource)
	
l6315:	
	bcf	(248/8),(248)&7	;volatile
	line	212
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(133)^080h+(0/8),(0)&7	;volatile
	line	213
	bsf	(133)^080h+(1/8),(1)&7	;volatile
	line	214
	bsf	(133)^080h+(2/8),(2)&7	;volatile
	line	215
	bsf	(133)^080h+(5/8),(5)&7	;volatile
	line	216
	bsf	(137)^080h+(0/8),(0)&7	;volatile
	line	217
	bsf	(137)^080h+(1/8),(1)&7	;volatile
	line	218
	bsf	(137)^080h+(2/8),(2)&7	;volatile
	line	220
	
l6317:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setupADC@eVrefSource),w
	xorlw	01h
	skipz
	goto	u2601
	goto	u2600
u2601:
	goto	l6323
u2600:
	line	223
	
l6319:	
	movlw	(0F0h)
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(159)^080h,f	;volatile
	
l6321:	
	bsf	(159)^080h+(0/8),(0)&7	;volatile
	line	227
	goto	l6327
	line	228
	
l661:	
	line	231
	
l6323:	
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(159)^080h,f	;volatile
	
l6325:	
	movf	(159)^080h,w	;volatile
	goto	l6327
	line	235
	
l662:	
	line	237
	
l6327:	
	fcall	_configLowLvlADC
	line	239
	
l6329:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_eCurrentChannel)
	line	240
	
l6331:	
	movlw	(0C7h)
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	andwf	(31),f	;volatile
	
l6333:	
	movf	(_eCurrentChannel),w
	movwf	(??_setupADC+0)+0
	movlw	(03h)-1
u2615:
	clrc
	rlf	(??_setupADC+0)+0,f
	addlw	-1
	skipz
	goto	u2615
	clrc
	rlf	(??_setupADC+0)+0,w
	andlw	038h
	movwf	(??_setupADC+1)+0
	movf	(??_setupADC+1)+0,w
	iorwf	(31),f	;volatile
	line	242
	
l6335:	
	bcf	(102/8),(102)&7	;volatile
	line	243
	
l6337:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1126/8)^080h,(1126)&7	;volatile
	line	245
	
l6339:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7	;volatile
	line	246
	goto	l663
	
l664:	
	
l663:	
	btfsc	(95/8),(95)&7	;volatile
	goto	u2621
	goto	u2620
u2621:
	goto	l667
u2620:
	
l6341:	
	fcall	_get_gblInitialized_FlagValue
	xorlw	01h
	skipnz
	goto	u2631
	goto	u2630
u2631:
	goto	l663
u2630:
	goto	l667
	
l666:	
	
l667:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	
l6343:	
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_setupADC+0)+0,f
u4557:
decfsz	(??_setupADC+0)+0,f
	goto	u4557
	nop
opt asmopt_on

	
l6345:	
	bsf	(95/8),(95)&7	;volatile
	
l6347:	
	bsf	(94/8),(94)&7	;volatile
	line	248
	
l6349:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	249
	
l668:	
	return
	opt stack 0
GLOBAL	__end_of_setupADC
	__end_of_setupADC:
	signat	_setupADC,4216
	global	_get_gblInitialized_FlagValue

;; *************** function _get_gblInitialized_FlagValue *****************
;; Defined at:
;;		line 66 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  blTemp          1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupADC
;; This function uses a non-reentrant model
;;
psect	text1541,local,class=CODE,delta=2,merge=1
global __ptext1541
__ptext1541:	;psect for function _get_gblInitialized_FlagValue
psect	text1541
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	66
	global	__size_of_get_gblInitialized_FlagValue
	__size_of_get_gblInitialized_FlagValue	equ	__end_of_get_gblInitialized_FlagValue-_get_gblInitialized_FlagValue
	
_get_gblInitialized_FlagValue:	
	opt	stack 1
; Regs used in _get_gblInitialized_FlagValue: [wreg]
	line	68
	
l6231:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gblInitialized),w	;volatile
	movwf	(??_get_gblInitialized_FlagValue+0)+0
	movf	(??_get_gblInitialized_FlagValue+0)+0,w
	movwf	(get_gblInitialized_FlagValue@blTemp)
	line	69
	movf	(get_gblInitialized_FlagValue@blTemp),w
	goto	l303
	
l6233:	
	line	70
	
l303:	
	return
	opt stack 0
GLOBAL	__end_of_get_gblInitialized_FlagValue
	__end_of_get_gblInitialized_FlagValue:
	signat	_get_gblInitialized_FlagValue,89
	global	_adcCycle

;; *************** function _adcCycle *****************
;; Defined at:
;;		line 164 in file "hardware/cores/lib\corelib_adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1542,local,class=CODE,delta=2,merge=1
global __ptext1542
__ptext1542:	;psect for function _adcCycle
psect	text1542
	file	"hardware/cores/lib\corelib_adc.c"
	line	164
	global	__size_of_adcCycle
	__size_of_adcCycle	equ	__end_of_adcCycle-_adcCycle
	
_adcCycle:	
	opt	stack 2
; Regs used in _adcCycle: [wreg+status,2]
	line	166
	
l6351:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(adcCycle@ui16Counter),f
	skipnc
	incf	(adcCycle@ui16Counter+1),f
	movlw	high(01h)
	addwf	(adcCycle@ui16Counter+1),f
	line	169
	movlw	high(05h)
	subwf	(adcCycle@ui16Counter+1),w
	movlw	low(05h)
	skipnz
	subwf	(adcCycle@ui16Counter),w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l658
u2640:
	line	172
	
l6353:	
	clrf	(adcCycle@ui16Counter)
	clrf	(adcCycle@ui16Counter+1)
	line	178
	
l6355:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u2651
	goto	u2650
u2651:
	goto	l658
u2650:
	line	181
	
l6357:	
	bsf	(250/8),(250)&7	;volatile
	goto	l658
	line	185
	
l657:	
	goto	l658
	line	186
	
l656:	
	line	187
	
l658:	
	return
	opt stack 0
GLOBAL	__end_of_adcCycle
	__end_of_adcCycle:
	signat	_adcCycle,88
	global	_configLowLvlADC

;; *************** function _configLowLvlADC *****************
;; Defined at:
;;		line 93 in file "hardware/cores/lib\hal_adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		Nothing
;; This function is called by:
;;		_setupADC
;; This function uses a non-reentrant model
;;
psect	text1543,local,class=CODE,delta=2,merge=1
global __ptext1543
__ptext1543:	;psect for function _configLowLvlADC
psect	text1543
	file	"hardware/cores/lib\hal_adc.c"
	line	93
	global	__size_of_configLowLvlADC
	__size_of_configLowLvlADC	equ	__end_of_configLowLvlADC-_configLowLvlADC
	
_configLowLvlADC:	
	opt	stack 1
; Regs used in _configLowLvlADC: [wreg+status,2+status,0]
	line	95
	
l6445:	
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_configLowLvlADC+0)+0
	movf	(??_configLowLvlADC+0)+0,w
	andwf	(31),f	;volatile
	
l6447:	
	bsf	(31)+(7/8),(7)&7	;volatile
	
l6449:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1278/8)^080h,(1278)&7	;volatile
	line	100
	
l6451:	
	bsf	(1279/8)^080h,(1279)&7	;volatile
	line	101
	
l1365:	
	return
	opt stack 0
GLOBAL	__end_of_configLowLvlADC
	__end_of_configLowLvlADC:
	signat	_configLowLvlADC,88
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1   13[BANK0 ] unsigned char 
;;  product         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupSoftSerial
;;		_serialSoftWrite
;;		_serialSoftRxISR
;;		_serialSoftTxISR
;;		_isSoftSerialBufferFull
;;		_serialSoftDataCount
;;		_serialSoftRead
;;		_serialSoftFlush
;;		_isSoftSerialDataAvailable
;; This function uses a non-reentrant model
;;
psect	text1544,local,class=CODE,delta=2,merge=1
global __ptext1544
__ptext1544:	;psect for function ___bmul
psect	text1544
	file	"C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 0
; Regs used in ___bmul: [wreg+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	4
	
l7591:	
	clrf	(___bmul@product)
	line	6
	
l1841:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l7595
u4260:
	line	8
	
l7593:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l7595
	
l1842:	
	line	9
	
l7595:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l7597:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l7599:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u4271
	goto	u4270
u4271:
	goto	l1841
u4270:
	goto	l7601
	
l1843:	
	line	12
	
l7601:	
	movf	(___bmul@product),w
	goto	l1844
	
l7603:	
	line	13
	
l1844:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 177 in file "hardware/cores\PhilRoboKit_CoreLib_Macro.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_set_gblISRLocked_FlagValue
;;		_timerISR
;;		_timer16BitISR
;;		_timer8BitISR
;;		_serialRxISR
;;		_userIntISR
;;		_serialTxISR
;;		_adcISR
;;		_clr_gblISRLocked_FlagValue
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1545,local,class=CODE,delta=2,merge=1
global __ptext1545
__ptext1545:	;psect for function _isr
psect	text1545
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	177
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;; hardware stack exceeded
	opt	stack 0
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_isr+0)
	movf	fsr0,w
	movwf	(??_isr+1)
	movf	pclath,w
	movwf	(??_isr+2)
	movf	btemp+1,w
	movwf	(??_isr+3)
	ljmp	_isr
psect	text1545
	line	178
	
i1l7755:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	179
	
i1l7757:	
	fcall	_set_gblISRLocked_FlagValue
	line	180
	fcall	_timerISR
	line	181
	fcall	_timer16BitISR
	line	182
	
i1l7759:	
	fcall	_timer8BitISR
	line	183
	
i1l7761:	
	fcall	_serialRxISR
	line	184
	fcall	_userIntISR
	line	185
	
i1l7763:	
	fcall	_serialTxISR
	line	186
	
i1l7765:	
	fcall	_adcISR
	line	187
	
i1l7767:	
	fcall	_clr_gblISRLocked_FlagValue
	line	188
	
i1l7769:	
	bsf	(95/8),(95)&7	;volatile
	
i1l7771:	
	bsf	(94/8),(94)&7	;volatile
	line	189
	
i1l418:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_isr+3),w
	movwf	btemp+1
	movf	(??_isr+2),w
	movwf	pclath
	movf	(??_isr+1),w
	movwf	fsr0
	swapf	(??_isr+0)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,88
	global	_set_gblISRLocked_FlagValue

;; *************** function _set_gblISRLocked_FlagValue *****************
;; Defined at:
;;		line 73 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text1546,local,class=CODE,delta=2,merge=1
global __ptext1546
__ptext1546:	;psect for function _set_gblISRLocked_FlagValue
psect	text1546
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	73
	global	__size_of_set_gblISRLocked_FlagValue
	__size_of_set_gblISRLocked_FlagValue	equ	__end_of_set_gblISRLocked_FlagValue-_set_gblISRLocked_FlagValue
	
_set_gblISRLocked_FlagValue:	
	opt	stack 1
; Regs used in _set_gblISRLocked_FlagValue: [wreg]
	line	74
	
i1l6235:	
	movlw	(01h)
	movwf	(??_set_gblISRLocked_FlagValue+0)+0
	movf	(??_set_gblISRLocked_FlagValue+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_gblISRLocked)	;volatile
	line	75
	
i1l306:	
	return
	opt stack 0
GLOBAL	__end_of_set_gblISRLocked_FlagValue
	__end_of_set_gblISRLocked_FlagValue:
	signat	_set_gblISRLocked_FlagValue,88
	global	_clr_gblISRLocked_FlagValue

;; *************** function _clr_gblISRLocked_FlagValue *****************
;; Defined at:
;;		line 78 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text1547,local,class=CODE,delta=2,merge=1
global __ptext1547
__ptext1547:	;psect for function _clr_gblISRLocked_FlagValue
psect	text1547
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	78
	global	__size_of_clr_gblISRLocked_FlagValue
	__size_of_clr_gblISRLocked_FlagValue	equ	__end_of_clr_gblISRLocked_FlagValue-_clr_gblISRLocked_FlagValue
	
_clr_gblISRLocked_FlagValue:	
	opt	stack 1
; Regs used in _clr_gblISRLocked_FlagValue: []
	line	79
	
i1l6237:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_gblISRLocked)	;volatile
	line	80
	
i1l309:	
	return
	opt stack 0
GLOBAL	__end_of_clr_gblISRLocked_FlagValue
	__end_of_clr_gblISRLocked_FlagValue:
	signat	_clr_gblISRLocked_FlagValue,88
	global	_timerISR

;; *************** function _timerISR *****************
;; Defined at:
;;		line 105 in file "hardware/cores/lib\hal_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_inc_gui16TimerUsMSB_Value
;;		_inc_gui16TimerMs_Value
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text1548,local,class=CODE,delta=2,merge=1
global __ptext1548
__ptext1548:	;psect for function _timerISR
psect	text1548
	file	"hardware/cores/lib\hal_timer.c"
	line	105
	global	__size_of_timerISR
	__size_of_timerISR	equ	__end_of_timerISR-_timerISR
	
_timerISR:	
	opt	stack 0
; Regs used in _timerISR: [wreg+status,2+status,0+pclath+cstack]
	line	111
	
i1l6987:	
	btfss	(90/8),(90)&7	;volatile
	goto	u367_21
	goto	u367_20
u367_21:
	goto	i1l1606
u367_20:
	
i1l6989:	
	btfss	(93/8),(93)&7	;volatile
	goto	u368_21
	goto	u368_20
u368_21:
	goto	i1l1606
u368_20:
	line	113
	
i1l6991:	
	bcf	(90/8),(90)&7	;volatile
	line	114
	
i1l6993:	
	movlw	low(0100h)
	movwf	(?_inc_gui16TimerUsMSB_Value)
	movlw	high(0100h)
	movwf	((?_inc_gui16TimerUsMSB_Value))+1
	fcall	_inc_gui16TimerUsMSB_Value
	line	115
	
i1l6995:	
	movlw	low(0CDh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(timerISR@ui16UsCounter),f
	skipnc
	incf	(timerISR@ui16UsCounter+1),f
	movlw	high(0CDh)
	addwf	(timerISR@ui16UsCounter+1),f
	line	117
	goto	i1l7001
	
i1l1604:	
	line	119
	
i1l6997:	
	fcall	_inc_gui16TimerMs_Value
	line	120
	
i1l6999:	
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(timerISR@ui16UsCounter),f
	movlw	high(03E8h)
	skipc
	decf	(timerISR@ui16UsCounter+1),f
	subwf	(timerISR@ui16UsCounter+1),f
	goto	i1l7001
	line	127
	
i1l1603:	
	line	117
	
i1l7001:	
	movlw	high(03E8h)
	subwf	(timerISR@ui16UsCounter+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(timerISR@ui16UsCounter),w
	skipnc
	goto	u369_21
	goto	u369_20
u369_21:
	goto	i1l6997
u369_20:
	goto	i1l1606
	
i1l1605:	
	goto	i1l1606
	line	141
	
i1l1602:	
	line	142
	
i1l1606:	
	return
	opt stack 0
GLOBAL	__end_of_timerISR
	__end_of_timerISR:
	signat	_timerISR,88
	global	_inc_gui16TimerUsMSB_Value

;; *************** function _inc_gui16TimerUsMSB_Value *****************
;; Defined at:
;;		line 91 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;  ui16Value       2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_timerISR
;; This function uses a non-reentrant model
;;
psect	text1549,local,class=CODE,delta=2,merge=1
global __ptext1549
__ptext1549:	;psect for function _inc_gui16TimerUsMSB_Value
psect	text1549
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	91
	global	__size_of_inc_gui16TimerUsMSB_Value
	__size_of_inc_gui16TimerUsMSB_Value	equ	__end_of_inc_gui16TimerUsMSB_Value-_inc_gui16TimerUsMSB_Value
	
_inc_gui16TimerUsMSB_Value:	
	opt	stack 0
; Regs used in _inc_gui16TimerUsMSB_Value: [wreg+status,2+status,0]
	line	92
	
i1l6243:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	93
	
i1l6245:	
	movf	(inc_gui16TimerUsMSB_Value@ui16Value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_gui16TimerUsMSB),f	;volatile
	skipnc
	incf	(_gui16TimerUsMSB+1),f	;volatile
	movf	(inc_gui16TimerUsMSB_Value@ui16Value+1),w
	addwf	(_gui16TimerUsMSB+1),f	;volatile
	line	95
	
i1l6247:	
	movf	(_gblISRLocked),f
	skipz	;volatile
	goto	u257_21
	goto	u257_20
u257_21:
	goto	i1l316
u257_20:
	line	97
	
i1l6249:	
	bsf	(95/8),(95)&7	;volatile
	bsf	(94/8),(94)&7	;volatile
	goto	i1l316
	line	98
	
i1l315:	
	line	99
	
i1l316:	
	return
	opt stack 0
GLOBAL	__end_of_inc_gui16TimerUsMSB_Value
	__end_of_inc_gui16TimerUsMSB_Value:
	signat	_inc_gui16TimerUsMSB_Value,4216
	global	_inc_gui16TimerMs_Value

;; *************** function _inc_gui16TimerMs_Value *****************
;; Defined at:
;;		line 113 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_timerISR
;; This function uses a non-reentrant model
;;
psect	text1550,local,class=CODE,delta=2,merge=1
global __ptext1550
__ptext1550:	;psect for function _inc_gui16TimerMs_Value
psect	text1550
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	113
	global	__size_of_inc_gui16TimerMs_Value
	__size_of_inc_gui16TimerMs_Value	equ	__end_of_inc_gui16TimerMs_Value-_inc_gui16TimerMs_Value
	
_inc_gui16TimerMs_Value:	
	opt	stack 0
; Regs used in _inc_gui16TimerMs_Value: [wreg+status,2+status,0]
	line	114
	
i1l6257:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	115
	
i1l6259:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_gui16TimerMs),f	;volatile
	skipnc
	incf	(_gui16TimerMs+1),f	;volatile
	movlw	high(01h)
	addwf	(_gui16TimerMs+1),f	;volatile
	line	117
	
i1l6261:	
	movf	(_gblISRLocked),f
	skipz	;volatile
	goto	u258_21
	goto	u258_20
u258_21:
	goto	i1l323
u258_20:
	line	119
	
i1l6263:	
	bsf	(95/8),(95)&7	;volatile
	bsf	(94/8),(94)&7	;volatile
	goto	i1l323
	line	120
	
i1l322:	
	line	121
	
i1l323:	
	return
	opt stack 0
GLOBAL	__end_of_inc_gui16TimerMs_Value
	__end_of_inc_gui16TimerMs_Value:
	signat	_inc_gui16TimerMs_Value,88
	global	_timer16BitISR

;; *************** function _timer16BitISR *****************
;; Defined at:
;;		line 66 in file "hardware/cores/lib\corelib_16bit_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_null16BitTMRFunction
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text1551,local,class=CODE,delta=2,merge=1
global __ptext1551
__ptext1551:	;psect for function _timer16BitISR
psect	text1551
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	66
	global	__size_of_timer16BitISR
	__size_of_timer16BitISR	equ	__end_of_timer16BitISR-_timer16BitISR
	
_timer16BitISR:	
	opt	stack 0
; Regs used in _timer16BitISR: [wreg+status,2+status,0+pclath+cstack]
	line	69
	
i1l7003:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7	;volatile
	goto	u370_21
	goto	u370_20
u370_21:
	goto	i1l480
u370_20:
	
i1l7005:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1120/8)^080h,(1120)&7	;volatile
	goto	u371_21
	goto	u371_20
u371_21:
	goto	i1l480
u371_20:
	line	72
	
i1l7007:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(128/8),(128)&7	;volatile
	line	73
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1120/8)^080h,(1120)&7	;volatile
	line	74
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7	;volatile
	line	76
	
i1l7009:	
	movf	(_pt2TMR1ISR),w
	fcall	i1fptable
	goto	i1l480
	line	77
	
i1l479:	
	line	80
	
i1l480:	
	return
	opt stack 0
GLOBAL	__end_of_timer16BitISR
	__end_of_timer16BitISR:
	signat	_timer16BitISR,88
	global	_timer8BitISR

;; *************** function _timer8BitISR *****************
;; Defined at:
;;		line 67 in file "hardware/cores/lib\corelib_8bit_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
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
;;		_softUARTController
;;		_nullTMRFunction
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text1552,local,class=CODE,delta=2,merge=1
global __ptext1552
__ptext1552:	;psect for function _timer8BitISR
psect	text1552
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	67
	global	__size_of_timer8BitISR
	__size_of_timer8BitISR	equ	__end_of_timer8BitISR-_timer8BitISR
	
_timer8BitISR:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _timer8BitISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	70
	
i1l7747:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u453_21
	goto	u453_20
u453_21:
	goto	i1l549
u453_20:
	
i1l7749:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1121/8)^080h,(1121)&7	;volatile
	goto	u454_21
	goto	u454_20
u454_21:
	goto	i1l549
u454_20:
	line	73
	
i1l7751:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	74
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1121/8)^080h,(1121)&7	;volatile
	line	75
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(146/8),(146)&7	;volatile
	line	77
	
i1l7753:	
	movf	(_pt2TMR2ISR),w
	fcall	i1fptable
	goto	i1l549
	line	78
	
i1l548:	
	line	107
	
i1l549:	
	return
	opt stack 0
GLOBAL	__end_of_timer8BitISR
	__end_of_timer8BitISR:
	signat	_timer8BitISR,88
	global	_softUARTController
	global	_nullTMRFunction

;; *************** function _nullTMRFunction *****************
;; Defined at:
;;		line 67 in file "hardware/cores/lib\hal_8bit_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_setupPWM
;;		_timer8BitISR
;; This function uses a non-reentrant model
;;
psect	text1553,local,class=CODE,delta=2,merge=1
global __ptext1553
__ptext1553:	;psect for function _nullTMRFunction
psect	text1553
	file	"hardware/cores/lib\hal_8bit_timer.c"
	line	67
	global	__size_of_nullTMRFunction
	__size_of_nullTMRFunction	equ	__end_of_nullTMRFunction-_nullTMRFunction
	
_nullTMRFunction:	
	opt	stack 0
; Regs used in _nullTMRFunction: []
	line	69
	
i1l1316:	
	return
	opt stack 0
GLOBAL	__end_of_nullTMRFunction
	__end_of_nullTMRFunction:
	signat	_nullTMRFunction,88

;; *************** function _softUARTController *****************
;; Defined at:
;;		line 359 in file "libraries/soft_serial\soft_serial.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_set8BitTimer
;;		_serialSoftRxISR
;;		_serialSoftTxISR
;; This function is called by:
;;		_setupSoftSerial
;;		_timer8BitISR
;; This function uses a non-reentrant model
;;
psect	text1554,local,class=CODE,delta=2,merge=1
global __ptext1554
__ptext1554:	;psect for function _softUARTController
psect	text1554
	file	"libraries/soft_serial\soft_serial.c"
	line	359
	global	__size_of_softUARTController
	__size_of_softUARTController	equ	__end_of_softUARTController-_softUARTController
	
_softUARTController:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _softUARTController: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	360
	
i1l7741:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui16SUARTBitPeriod_div3),w
	movwf	(??_softUARTController+0)+0
	movf	(??_softUARTController+0)+0,w
	movwf	(?i1_set8BitTimer)
	movlw	(02h)
	fcall	i1_set8BitTimer
	line	361
	
i1l7743:	
	fcall	_serialSoftRxISR
	line	362
	
i1l7745:	
	fcall	_serialSoftTxISR
	line	363
	
i1l166:	
	return
	opt stack 0
GLOBAL	__end_of_softUARTController
	__end_of_softUARTController:
	signat	_softUARTController,88
	global	_serialSoftRxISR

;; *************** function _serialSoftRxISR *****************
;; Defined at:
;;		line 382 in file "libraries/soft_serial\soft_serial.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___bmul
;;		_checkPinState
;; This function is called by:
;;		_softUARTController
;; This function uses a non-reentrant model
;;
psect	text1555,local,class=CODE,delta=2,merge=1
global __ptext1555
__ptext1555:	;psect for function _serialSoftRxISR
psect	text1555
	file	"libraries/soft_serial\soft_serial.c"
	line	382
	global	__size_of_serialSoftRxISR
	__size_of_serialSoftRxISR	equ	__end_of_serialSoftRxISR-_serialSoftRxISR
	
_serialSoftRxISR:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _serialSoftRxISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	389
	
i1l7605:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(serialSoftRxISR@ui8ModuleCounter)
	
i1l7607:	
	movlw	(02h)
	subwf	(serialSoftRxISR@ui8ModuleCounter),w
	skipc
	goto	u428_21
	goto	u428_20
u428_21:
	goto	i1l7611
u428_20:
	goto	i1l210
	
i1l7609:	
	goto	i1l210
	line	390
	
i1l175:	
	line	392
	
i1l7611:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	012h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_checkPinState
	movwf	(??_serialSoftRxISR+1)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+2)+0
	movf	(??_serialSoftRxISR+2)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	018h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+1)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	393
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	addwf	indf,f
	line	395
	goto	i1l7685
	line	397
	
i1l178:	
	line	400
	
i1l7613:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	018h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	xorlw	01h
	skipz
	goto	u429_21
	goto	u429_20
u429_21:
	goto	i1l7617
u429_20:
	line	402
	
i1l7615:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	017h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	addwf	indf,f
	line	403
	goto	i1l180
	line	404
	
i1l179:	
	line	406
	
i1l7617:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	017h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	407
	
i1l180:	
	line	410
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	017h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movlw	(01Eh)
	bcf	status, 7	;select IRP bank1
	subwf	indf,w
	skipc
	goto	u430_21
	goto	u430_20
u430_21:
	goto	i1l7687
u430_20:
	line	412
	
i1l7619:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	indf,f
	line	415
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	416
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	01Ah
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	417
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	017h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	418
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	419
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	015h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	goto	i1l7687
	line	420
	
i1l181:	
	line	421
	goto	i1l7687
	line	423
	
i1l183:	
	line	426
	
i1l7621:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	019h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	xorlw	01h
	skipz
	goto	u431_21
	goto	u431_20
u431_21:
	goto	i1l7627
u431_20:
	
i1l7623:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	018h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,f
	skipz
	goto	u432_21
	goto	u432_20
u432_21:
	goto	i1l7627
u432_20:
	line	428
	
i1l7625:	
	movlw	(02h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	429
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	indf,f
	line	430
	goto	i1l7687
	line	432
	
i1l184:	
	line	435
	
i1l7627:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	goto	i1l7687
	line	436
	
i1l185:	
	line	437
	goto	i1l7687
	line	439
	
i1l186:	
	line	441
	
i1l7629:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	018h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,f
	skipz
	goto	u433_21
	goto	u433_20
u433_21:
	goto	i1l7633
u433_20:
	line	443
	
i1l7631:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	addwf	indf,f
	line	444
	goto	i1l188
	line	445
	
i1l187:	
	line	447
	
i1l7633:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	017h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	addwf	indf,f
	line	448
	
i1l188:	
	line	451
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movlw	(03h)
	bcf	status, 7	;select IRP bank1
	subwf	indf,w
	skipc
	goto	u434_21
	goto	u434_20
u434_21:
	goto	i1l7687
u434_20:
	line	453
	
i1l7635:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_serialSoftRxISR+1)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+2)+0
	movf	(??_serialSoftRxISR+2)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	017h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_serialSoftRxISR+3)+0
	movf	(??_serialSoftRxISR+1)+0,w
	subwf	(??_serialSoftRxISR+3)+0,w
	skipnc
	goto	u435_21
	goto	u435_20
u435_21:
	goto	i1l7639
u435_20:
	line	455
	
i1l7637:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	01Ah
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	indf,f
	line	456
	movlw	(03h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	457
	goto	i1l191
	line	458
	
i1l190:	
	line	460
	
i1l7639:	
	movlw	(05h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	461
	
i1l191:	
	line	464
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	465
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	017h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	466
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	goto	i1l7687
	line	467
	
i1l189:	
	line	468
	goto	i1l7687
	line	470
	
i1l192:	
	line	472
	
i1l7641:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	018h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,f
	skipz
	goto	u436_21
	goto	u436_20
u436_21:
	goto	i1l7645
u436_20:
	line	474
	
i1l7643:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	addwf	indf,f
	line	475
	goto	i1l194
	line	476
	
i1l193:	
	line	478
	
i1l7645:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	017h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	addwf	indf,f
	line	479
	
i1l194:	
	line	482
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movlw	(03h)
	bcf	status, 7	;select IRP bank1
	subwf	indf,w
	skipc
	goto	u437_21
	goto	u437_20
u437_21:
	goto	i1l7659
u437_20:
	line	484
	
i1l7647:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	015h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	addwf	indf,f
	line	486
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_serialSoftRxISR+1)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+2)+0
	movf	(??_serialSoftRxISR+2)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	017h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_serialSoftRxISR+3)+0
	movf	(??_serialSoftRxISR+1)+0,w
	subwf	(??_serialSoftRxISR+3)+0,w
	skipnc
	goto	u438_21
	goto	u438_20
u438_21:
	goto	i1l7651
u438_20:
	line	488
	
i1l7649:	
	movlw	(0Fh)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(serialSoftRxISR@ui8TempByte),f
	line	489
	goto	i1l7653
	line	490
	
i1l196:	
	line	492
	
i1l7651:	
	movlw	(0F0h)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(serialSoftRxISR@ui8TempByte),f
	goto	i1l7653
	line	493
	
i1l197:	
	line	496
	
i1l7653:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	497
	
i1l7655:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	017h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	498
	
i1l7657:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	goto	i1l7659
	line	499
	
i1l195:	
	line	501
	
i1l7659:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	015h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movlw	(08h)
	bcf	status, 7	;select IRP bank1
	subwf	indf,w
	skipnc
	goto	u439_21
	goto	u439_20
u439_21:
	goto	i1l7663
u439_20:
	line	503
	
i1l7661:	
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rrf	(serialSoftRxISR@ui8TempByte),f

	line	504
	goto	i1l7687
	line	506
	
i1l198:	
	line	508
	
i1l7663:	
	movlw	(04h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	511
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	015h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	goto	i1l7687
	line	512
	
i1l199:	
	line	513
	goto	i1l7687
	line	515
	
i1l200:	
	line	517
	
i1l7665:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	018h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,f
	skipz
	goto	u440_21
	goto	u440_20
u440_21:
	goto	i1l7669
u440_20:
	line	519
	
i1l7667:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	addwf	indf,f
	line	520
	goto	i1l202
	line	521
	
i1l201:	
	line	523
	
i1l7669:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	017h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	addwf	indf,f
	line	524
	
i1l202:	
	line	527
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movlw	(03h)
	bcf	status, 7	;select IRP bank1
	subwf	indf,w
	skipc
	goto	u441_21
	goto	u441_20
u441_21:
	goto	i1l7687
u441_20:
	line	530
	
i1l7671:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	017h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_serialSoftRxISR+1)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+2)+0
	movf	(??_serialSoftRxISR+2)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_serialSoftRxISR+3)+0
	movf	(??_serialSoftRxISR+1)+0,w
	subwf	(??_serialSoftRxISR+3)+0,w
	skipnc
	goto	u442_21
	goto	u442_20
u442_21:
	goto	i1l7679
u442_20:
	line	532
	
i1l7673:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8TempByte),w
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	movwf	(??_serialSoftRxISR+2)+0
	movlw	(_stSUART_RXFiFo)&0ffh
	addwf	0+(??_serialSoftRxISR+2)+0,w
	movwf	(??_serialSoftRxISR+3)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+4)+0
	movf	(??_serialSoftRxISR+4)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	010h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	addwf	0+(??_serialSoftRxISR+3)+0,w
	movwf	(??_serialSoftRxISR+5)+0
	movf	0+(??_serialSoftRxISR+5)+0,w
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	indf
	line	533
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	010h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	addlw	01h
	andlw	0Fh
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialSoftRxISR@ui8TempIn)
	line	535
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	011h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(serialSoftRxISR@ui8TempIn),w
	skipnz
	goto	u443_21
	goto	u443_20
u443_21:
	goto	i1l7677
u443_20:
	line	537
	
i1l7675:	
	movf	(serialSoftRxISR@ui8TempIn),w
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	010h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	538
	goto	i1l7677
	line	539
	
i1l205:	
	goto	i1l7677
	line	542
	
i1l206:	
	line	544
	
i1l7677:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	indf,f
	line	545
	goto	i1l207
	line	546
	
i1l204:	
	line	548
	
i1l7679:	
	movlw	(05h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	549
	
i1l207:	
	line	552
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	01Ah
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	553
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	554
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	017h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	555
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	goto	i1l7687
	line	556
	
i1l203:	
	line	557
	goto	i1l7687
	line	559
	
i1l208:	
	line	561
	
i1l7681:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	01Bh
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	indf,f
	line	562
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	01Ah
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	563
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	564
	goto	i1l7687
	line	566
	
i1l209:	
	line	569
	goto	i1l7687
	line	571
	
i1l7683:	
	goto	i1l7687
	line	395
	
i1l177:	
	
i1l7685:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           26     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable            10     6 (fixed)
; spacedrange           18     9 (fixed)
; locatedrange           6     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l7613
	xorlw	1^0	; case 1
	skipnz
	goto	i1l7621
	xorlw	2^1	; case 2
	skipnz
	goto	i1l7629
	xorlw	3^2	; case 3
	skipnz
	goto	i1l7641
	xorlw	4^3	; case 4
	skipnz
	goto	i1l7665
	xorlw	5^4	; case 5
	skipnz
	goto	i1l7681
	goto	i1l7687
	opt asmopt_on

	line	571
	
i1l182:	
	line	573
	
i1l7687:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	018h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_serialSoftRxISR+1)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+2)+0
	movf	(??_serialSoftRxISR+2)+0,w
	movwf	(?i1___bmul)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	019h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+1)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	389
	
i1l7689:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(serialSoftRxISR@ui8ModuleCounter),f
	
i1l7691:	
	movlw	(02h)
	subwf	(serialSoftRxISR@ui8ModuleCounter),w
	skipc
	goto	u444_21
	goto	u444_20
u444_21:
	goto	i1l7611
u444_20:
	goto	i1l210
	
i1l176:	
	line	575
	
i1l210:	
	return
	opt stack 0
GLOBAL	__end_of_serialSoftRxISR
	__end_of_serialSoftRxISR:
	signat	_serialSoftRxISR,88
	global	_serialSoftTxISR

;; *************** function _serialSoftTxISR *****************
;; Defined at:
;;		line 594 in file "libraries/soft_serial\soft_serial.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___bmul
;;		i1_changePinState
;; This function is called by:
;;		_softUARTController
;; This function uses a non-reentrant model
;;
psect	text1556,local,class=CODE,delta=2,merge=1
global __ptext1556
__ptext1556:	;psect for function _serialSoftTxISR
psect	text1556
	file	"libraries/soft_serial\soft_serial.c"
	line	594
	global	__size_of_serialSoftTxISR
	__size_of_serialSoftTxISR	equ	__end_of_serialSoftTxISR-_serialSoftTxISR
	
_serialSoftTxISR:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _serialSoftTxISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	600
	
i1l7693:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(serialSoftTxISR@ui8ModuleCounter)
	
i1l7695:	
	movlw	(02h)
	subwf	(serialSoftTxISR@ui8ModuleCounter),w
	skipc
	goto	u445_21
	goto	u445_20
u445_21:
	goto	i1l7699
u445_20:
	goto	i1l221
	
i1l7697:	
	goto	i1l221
	line	601
	
i1l217:	
	line	603
	
i1l7699:	
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,f
	skipz
	goto	u446_21
	goto	u446_20
u446_21:
	goto	i1l7709
u446_20:
	line	605
	
i1l7701:	
	movlw	(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	010h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+1)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+2)+0
	movf	(??_serialSoftTxISR+2)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	011h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(??_serialSoftTxISR+1)+0,w
	skipz
	goto	u447_21
	goto	u447_20
u447_21:
	goto	i1l7707
u447_20:
	goto	i1l221
	line	607
	
i1l7703:	
	goto	i1l221
	line	608
	
i1l7705:	
	goto	i1l7737
	line	609
	
i1l220:	
	line	611
	
i1l7707:	
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+1)+0
	movlw	(_stSUART_TXFiFo)&0ffh
	addwf	0+(??_serialSoftTxISR+1)+0,w
	movwf	(??_serialSoftTxISR+2)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+3)+0
	movf	(??_serialSoftTxISR+3)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	011h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_serialSoftTxISR+2)+0,w
	movwf	(??_serialSoftTxISR+4)+0
	movf	0+(??_serialSoftTxISR+4)+0,w
	movwf	fsr0
	movf	indf,w
	movwf	(??_serialSoftTxISR+5)+0
	movf	(??_serialSoftTxISR+5)+0,w
	movwf	(serialSoftTxISR@ui8TempByte)
	movlw	(01h)
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	011h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	addwf	indf,f
	line	612
	movlw	(0Fh)
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	011h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	andwf	indf,f
	line	615
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	incf	indf,f
	line	616
	movlw	(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	incf	indf,f
	goto	i1l7737
	line	617
	
i1l222:	
	line	618
	goto	i1l7737
	line	619
	
i1l219:	
	line	621
	
i1l7709:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	addwf	indf,f
	line	623
	goto	i1l7735
	line	625
	
i1l225:	
	line	627
	
i1l7711:	
	movlw	(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	628
	goto	i1l7737
	line	630
	
i1l227:	
	line	632
	
i1l7713:	
	clrf	(?i1_changePinState)
	incf	(?i1_changePinState),f
	movlw	(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	012h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	i1_changePinState
	line	634
	movlw	(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	635
	movlw	(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	015h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	636
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	637
	goto	i1l7737
	line	639
	
i1l228:	
	line	641
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(serialSoftTxISR@ui8TempByte),(0)&7
	goto	u448_21
	goto	u448_20
u448_21:
	goto	i1l7717
u448_20:
	line	643
	
i1l7715:	
	clrf	(?i1_changePinState)
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	012h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	i1_changePinState
	line	644
	goto	i1l230
	line	645
	
i1l229:	
	line	647
	
i1l7717:	
	clrf	(?i1_changePinState)
	incf	(?i1_changePinState),f
	movlw	(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	012h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	i1_changePinState
	line	648
	
i1l230:	
	line	650
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	015h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	addwf	indf,f
	line	651
	movlw	(03h)
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	652
	goto	i1l7737
	line	654
	
i1l231:	
	line	656
	
i1l7719:	
	movlw	(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	movlw	(03h)
	bsf	status, 7	;select IRP bank3
	subwf	indf,w
	skipc
	goto	u449_21
	goto	u449_20
u449_21:
	goto	i1l7737
u449_20:
	line	658
	
i1l7721:	
	movlw	(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	015h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	movlw	(08h)
	bsf	status, 7	;select IRP bank3
	subwf	indf,w
	skipnc
	goto	u450_21
	goto	u450_20
u450_21:
	goto	i1l7727
u450_20:
	line	660
	
i1l7723:	
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rrf	(serialSoftTxISR@ui8TempByte),f

	line	661
	
i1l7725:	
	movlw	(02h)
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	662
	goto	i1l234
	line	663
	
i1l233:	
	line	665
	
i1l7727:	
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	666
	
i1l234:	
	line	667
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	goto	i1l7737
	line	668
	
i1l232:	
	line	669
	goto	i1l7737
	line	671
	
i1l235:	
	line	673
	
i1l7729:	
	clrf	(?i1_changePinState)
	movlw	(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	012h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	i1_changePinState
	line	675
	movlw	(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	movlw	(03h)
	bsf	status, 7	;select IRP bank3
	subwf	indf,w
	skipc
	goto	u451_21
	goto	u451_20
u451_21:
	goto	i1l7737
u451_20:
	line	677
	
i1l7731:	
	movlw	(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	goto	i1l7737
	line	678
	
i1l236:	
	line	679
	goto	i1l7737
	line	681
	
i1l237:	
	line	683
	goto	i1l7737
	line	685
	
i1l7733:	
	goto	i1l7737
	line	623
	
i1l224:	
	
i1l7735:	
	movlw	(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(?i1___bmul)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           23     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable             9     6 (fixed)
; spacedrange           16     9 (fixed)
; locatedrange           5     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l7711
	xorlw	1^0	; case 1
	skipnz
	goto	i1l7713
	xorlw	2^1	; case 2
	skipnz
	goto	i1l228
	xorlw	3^2	; case 3
	skipnz
	goto	i1l7719
	xorlw	4^3	; case 4
	skipnz
	goto	i1l7729
	goto	i1l7737
	opt asmopt_on

	line	685
	
i1l226:	
	goto	i1l7737
	line	686
	
i1l223:	
	line	600
	
i1l7737:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	addwf	(serialSoftTxISR@ui8ModuleCounter),f
	
i1l7739:	
	movlw	(02h)
	subwf	(serialSoftTxISR@ui8ModuleCounter),w
	skipc
	goto	u452_21
	goto	u452_20
u452_21:
	goto	i1l7699
u452_20:
	goto	i1l221
	
i1l218:	
	line	688
	
i1l221:	
	return
	opt stack 0
GLOBAL	__end_of_serialSoftTxISR
	__end_of_serialSoftTxISR:
	signat	_serialSoftTxISR,88
	global	_checkPinState

;; *************** function _checkPinState *****************
;; Defined at:
;;		line 316 in file "hardware/cores/lib\hal_gpio.c"
;; Parameters:    Size  Location     Type
;;  ui8Pin          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Pin          1    6[COMMON] unsigned char 
;;  pui8PortReg     2    4[COMMON] PTR unsigned char 
;;		 -> NULL(0), PORTE(1), PORTD(1), PORTC(1), 
;;		 -> PORTB(1), PORTA(1), 
;;  ui8PinMask      1    3[COMMON] unsigned char 
;;  ui8PinStatus    1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_serialSoftRxISR
;; This function uses a non-reentrant model
;;
psect	text1557,local,class=CODE,delta=2,merge=1
global __ptext1557
__ptext1557:	;psect for function _checkPinState
psect	text1557
	file	"hardware/cores/lib\hal_gpio.c"
	line	316
	global	__size_of_checkPinState
	__size_of_checkPinState	equ	__end_of_checkPinState-_checkPinState
	
_checkPinState:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _checkPinState: [wreg-fsr0h+status,2+status,0]
	line	318
	movwf	(checkPinState@ui8Pin)
	
i1l6169:	
	clrf	(checkPinState@pui8PortReg)
	clrf	(checkPinState@pui8PortReg+1)
	line	321
	
i1l6171:	
	movlw	(08h)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u247_21
	goto	u247_20
u247_21:
	goto	i1l6175
u247_20:
	line	323
	
i1l6173:	
	movlw	high(7)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(7)
	movwf	(checkPinState@pui8PortReg)
	line	327
	goto	i1l6207
	line	329
	
i1l1472:	
	
i1l6175:	
	movlw	(0Eh)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u248_21
	goto	u248_20
u248_21:
	goto	i1l6181
u248_20:
	line	331
	
i1l6177:	
	movlw	low(08h)
	subwf	(checkPinState@ui8Pin),f
	line	332
	
i1l6179:	
	movlw	high(6)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(6)
	movwf	(checkPinState@pui8PortReg)
	line	336
	goto	i1l6207
	line	338
	
i1l1474:	
	
i1l6181:	
	movlw	(015h)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u249_21
	goto	u249_20
u249_21:
	goto	i1l6201
u249_20:
	line	340
	
i1l6183:	
	movlw	low(0Eh)
	subwf	(checkPinState@ui8Pin),f
	line	343
	
i1l6185:	
	movlw	(03h)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u250_21
	goto	u250_20
u250_21:
	goto	i1l6189
u250_20:
	line	345
	
i1l6187:	
	movlw	high(5)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(checkPinState@pui8PortReg)
	line	349
	goto	i1l6207
	line	351
	
i1l1477:	
	
i1l6189:	
	movf	(checkPinState@ui8Pin),w
	xorlw	03h
	skipz
	goto	u251_21
	goto	u251_20
u251_21:
	goto	i1l6195
u251_20:
	line	353
	
i1l6191:	
	movlw	(02h)
	movwf	(??_checkPinState+0)+0
	movf	(??_checkPinState+0)+0,w
	addwf	(checkPinState@ui8Pin),f
	line	354
	
i1l6193:	
	movlw	high(5)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(checkPinState@pui8PortReg)
	line	358
	goto	i1l6207
	line	360
	
i1l1479:	
	
i1l6195:	
	movlw	(07h)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u252_21
	goto	u252_20
u252_21:
	goto	i1l6207
u252_20:
	line	362
	
i1l6197:	
	movlw	low(04h)
	subwf	(checkPinState@ui8Pin),f
	line	363
	
i1l6199:	
	movlw	high(9)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(9)
	movwf	(checkPinState@pui8PortReg)
	line	367
	goto	i1l6207
	line	368
	
i1l1481:	
	goto	i1l6207
	line	374
	
i1l1482:	
	goto	i1l6207
	
i1l1480:	
	goto	i1l6207
	
i1l1478:	
	line	375
	goto	i1l6207
	line	377
	
i1l1476:	
	
i1l6201:	
	movlw	(01Dh)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u253_21
	goto	u253_20
u253_21:
	goto	i1l6207
u253_20:
	line	379
	
i1l6203:	
	movlw	low(015h)
	subwf	(checkPinState@ui8Pin),f
	line	380
	
i1l6205:	
	movlw	high(8)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(8)
	movwf	(checkPinState@pui8PortReg)
	line	384
	goto	i1l6207
	line	385
	
i1l1484:	
	goto	i1l6207
	line	391
	
i1l1485:	
	goto	i1l6207
	
i1l1483:	
	goto	i1l6207
	
i1l1475:	
	goto	i1l6207
	
i1l1473:	
	line	394
	
i1l6207:	
	movf	(checkPinState@pui8PortReg+1),w
	iorwf	(checkPinState@pui8PortReg),w
	skipnz
	goto	u254_21
	goto	u254_20
u254_21:
	goto	i1l6225
u254_20:
	line	396
	
i1l6209:	
	movlw	(01h)
	movwf	(??_checkPinState+0)+0
	incf	(checkPinState@ui8Pin),w
	goto	u255_24
u255_25:
	clrc
	rlf	(??_checkPinState+0)+0,f
u255_24:
	addlw	-1
	skipz
	goto	u255_25
	movf	0+(??_checkPinState+0)+0,w
	movwf	(??_checkPinState+1)+0
	movf	(??_checkPinState+1)+0,w
	movwf	(checkPinState@ui8PinMask)
	line	397
	
i1l6211:	
	movf	(checkPinState@pui8PortReg),w
	movwf	fsr0
	bsf	status,7
	btfss	(checkPinState@pui8PortReg+1),0
	bcf	status,7
	movf	indf,w
	andwf	(checkPinState@ui8PinMask),w
	movwf	(??_checkPinState+0)+0
	movf	(??_checkPinState+0)+0,w
	movwf	(checkPinState@ui8PinStatus)
	line	399
	
i1l6213:	
	movf	(checkPinState@ui8PinMask),w
	xorwf	(checkPinState@ui8PinStatus),w
	skipz
	goto	u256_21
	goto	u256_20
u256_21:
	goto	i1l6221
u256_20:
	line	404
	
i1l6215:	
	movlw	(01h)
	goto	i1l1488
	
i1l6217:	
	goto	i1l1488
	line	405
	
i1l6219:	
	goto	i1l1488
	line	406
	
i1l1487:	
	line	411
	
i1l6221:	
	movlw	(0)
	goto	i1l1488
	
i1l6223:	
	goto	i1l1488
	line	412
	
i1l1489:	
	line	413
	goto	i1l1488
	line	414
	
i1l1486:	
	line	420
	
i1l6225:	
	movlw	(0)
	goto	i1l1488
	
i1l6227:	
	goto	i1l1488
	line	421
	
i1l1490:	
	line	422
	
i1l1488:	
	return
	opt stack 0
GLOBAL	__end_of_checkPinState
	__end_of_checkPinState:
	signat	_checkPinState,4217
	global	_serialRxISR

;; *************** function _serialRxISR *****************
;; Defined at:
;;		line 305 in file "hardware/cores/lib\corelib_uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text1558,local,class=CODE,delta=2,merge=1
global __ptext1558
__ptext1558:	;psect for function _serialRxISR
psect	text1558
	file	"hardware/cores/lib\corelib_uart.c"
	line	305
	global	__size_of_serialRxISR
	__size_of_serialRxISR	equ	__end_of_serialRxISR-_serialRxISR
	
_serialRxISR:	
	opt	stack 1
; Regs used in _serialRxISR: [wreg-fsr0h+status,2+status,0]
	line	308
	
i1l6359:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u266_21
	goto	u266_20
u266_21:
	goto	i1l1124
u266_20:
	
i1l6361:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7	;volatile
	goto	u267_21
	goto	u267_20
u267_21:
	goto	i1l1124
u267_20:
	line	310
	
i1l6363:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7	;volatile
	line	311
	
i1l6365:	
	movf	(26),w	;volatile
	movwf	(??_serialRxISR+0)+0
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(_stUARTRXFiFo)^0100h+020h,w
	addlw	_stUARTRXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialRxISR+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	line	312
	
i1l6367:	
	movf	0+(_stUARTRXFiFo)^0100h+020h,w
	addlw	01h
	andlw	01Fh
	movwf	(??_serialRxISR+0)+0
	movf	(??_serialRxISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialRxISR@ui8TempIn)
	line	314
	
i1l6369:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(_stUARTRXFiFo)^0100h+021h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(serialRxISR@ui8TempIn),w
	skipnz
	goto	u268_21
	goto	u268_20
u268_21:
	goto	i1l1124
u268_20:
	line	316
	
i1l6371:	
	movf	(serialRxISR@ui8TempIn),w
	movwf	(??_serialRxISR+0)+0
	movf	(??_serialRxISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	0+(_stUARTRXFiFo)^0100h+020h
	line	320
	goto	i1l1124
	line	321
	
i1l1122:	
	goto	i1l1124
	line	327
	
i1l1123:	
	goto	i1l1124
	line	332
	
i1l1121:	
	line	333
	
i1l1124:	
	return
	opt stack 0
GLOBAL	__end_of_serialRxISR
	__end_of_serialRxISR:
	signat	_serialRxISR,88
	global	_userIntISR

;; *************** function _userIntISR *****************
;; Defined at:
;;		line 73 in file "hardware/cores/lib\corelib_user_interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_extIntISR
;;		_rbIntISR
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text1559,local,class=CODE,delta=2,merge=1
global __ptext1559
__ptext1559:	;psect for function _userIntISR
psect	text1559
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	73
	global	__size_of_userIntISR
	__size_of_userIntISR	equ	__end_of_userIntISR-_userIntISR
	
_userIntISR:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _userIntISR: [wreg+status,2+status,0+pclath+cstack]
	line	75
	
i1l7199:	
	btfss	(92/8),(92)&7	;volatile
	goto	u414_21
	goto	u414_20
u414_21:
	goto	i1l7211
u414_20:
	
i1l7201:	
	btfss	(89/8),(89)&7	;volatile
	goto	u415_21
	goto	u415_20
u415_21:
	goto	i1l7211
u415_20:
	line	77
	
i1l7203:	
	bcf	(92/8),(92)&7	;volatile
	line	79
	
i1l7205:	
	fcall	_extIntISR
	line	81
	
i1l7207:	
	bcf	(89/8),(89)&7	;volatile
	line	82
	
i1l7209:	
	bsf	(92/8),(92)&7	;volatile
	goto	i1l7211
	line	83
	
i1l1203:	
	line	111
	
i1l7211:	
	btfss	(91/8),(91)&7	;volatile
	goto	u416_21
	goto	u416_20
u416_21:
	goto	i1l1205
u416_20:
	
i1l7213:	
	btfss	(88/8),(88)&7	;volatile
	goto	u417_21
	goto	u417_20
u417_21:
	goto	i1l1205
u417_20:
	line	113
	
i1l7215:	
	bcf	(91/8),(91)&7	;volatile
	line	115
	
i1l7217:	
	fcall	_rbIntISR
	line	117
	
i1l7219:	
	bcf	(88/8),(88)&7	;volatile
	line	118
	
i1l7221:	
	bsf	(91/8),(91)&7	;volatile
	goto	i1l1205
	line	119
	
i1l1204:	
	line	120
	
i1l1205:	
	return
	opt stack 0
GLOBAL	__end_of_userIntISR
	__end_of_userIntISR:
	signat	_userIntISR,88
	global	_serialTxISR

;; *************** function _serialTxISR *****************
;; Defined at:
;;		line 352 in file "hardware/cores/lib\corelib_uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text1560,local,class=CODE,delta=2,merge=1
global __ptext1560
__ptext1560:	;psect for function _serialTxISR
psect	text1560
	file	"hardware/cores/lib\corelib_uart.c"
	line	352
	global	__size_of_serialTxISR
	__size_of_serialTxISR	equ	__end_of_serialTxISR-_serialTxISR
	
_serialTxISR:	
	opt	stack 1
; Regs used in _serialTxISR: [wreg-fsr0h+status,2+status,0]
	line	353
	
i1l6373:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l1131
u269_20:
	
i1l6375:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1124/8)^080h,(1124)&7	;volatile
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l1131
u270_20:
	line	355
	
i1l6377:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(100/8),(100)&7	;volatile
	line	358
	
i1l6379:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_stUARTTXFiFo)^0180h+021h,w
	xorwf	0+(_stUARTTXFiFo)^0180h+020h,w
	skipz
	goto	u271_21
	goto	u271_20
u271_21:
	goto	i1l6383
u271_20:
	line	360
	
i1l6381:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	364
	goto	i1l1131
	line	365
	
i1l1128:	
	line	367
	
i1l6383:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_stUARTTXFiFo)^0180h+021h,w
	addlw	_stUARTTXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	
i1l6385:	
	movlw	(01h)
	movwf	(??_serialTxISR+0)+0
	movf	(??_serialTxISR+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	0+(_stUARTTXFiFo)^0180h+021h,f
	line	368
	
i1l6387:	
	movlw	(01Fh)
	movwf	(??_serialTxISR+0)+0
	movf	(??_serialTxISR+0)+0,w
	andwf	0+(_stUARTTXFiFo)^0180h+021h,f
	line	373
	
i1l6389:	
	movf	0+(_stUARTTXFiFo)^0180h+021h,w
	xorwf	0+(_stUARTTXFiFo)^0180h+020h,w
	skipz
	goto	u272_21
	goto	u272_20
u272_21:
	goto	i1l1131
u272_20:
	line	375
	
i1l6391:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1124/8)^080h,(1124)&7	;volatile
	goto	i1l1131
	line	379
	
i1l1130:	
	goto	i1l1131
	line	380
	
i1l1129:	
	goto	i1l1131
	line	381
	
i1l1127:	
	line	382
	
i1l1131:	
	return
	opt stack 0
GLOBAL	__end_of_serialTxISR
	__end_of_serialTxISR:
	signat	_serialTxISR,88
	global	_adcISR

;; *************** function _adcISR *****************
;; Defined at:
;;		line 83 in file "hardware/cores/lib\corelib_adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text1561,local,class=CODE,delta=2,merge=1
global __ptext1561
__ptext1561:	;psect for function _adcISR
psect	text1561
	file	"hardware/cores/lib\corelib_adc.c"
	line	83
	global	__size_of_adcISR
	__size_of_adcISR	equ	__end_of_adcISR-_adcISR
	
_adcISR:	
	opt	stack 1
; Regs used in _adcISR: [wreg-fsr0h+status,2+status,0]
	line	86
	
i1l6393:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(102/8),(102)&7	;volatile
	goto	u273_21
	goto	u273_20
u273_21:
	goto	i1l651
u273_20:
	
i1l6395:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1126/8)^080h,(1126)&7	;volatile
	goto	u274_21
	goto	u274_20
u274_21:
	goto	i1l651
u274_20:
	line	88
	
i1l6397:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7	;volatile
	line	91
	
i1l6399:	
	movf	(_eCurrentChannel),w
	xorlw	03h
	skipz
	goto	u275_21
	goto	u275_20
u275_21:
	goto	i1l6403
u275_20:
	goto	i1l6409
	line	97
	
i1l6401:	
	goto	i1l6409
	line	98
	
i1l644:	
	
i1l6403:	
	movlw	(04h)
	subwf	(_eCurrentChannel),w
	skipc
	goto	u276_21
	goto	u276_20
u276_21:
	goto	i1l6407
u276_20:
	line	100
	
i1l6405:	
	movf	(_eCurrentChannel),w
	addlw	0FFh
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	movwf	(adcISR@eEffectiveChannel)
	line	104
	goto	i1l6409
	line	105
	
i1l646:	
	line	107
	
i1l6407:	
	movf	(_eCurrentChannel),w
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	movwf	(adcISR@eEffectiveChannel)
	goto	i1l6409
	line	111
	
i1l647:	
	goto	i1l6409
	
i1l645:	
	line	114
	
i1l6409:	
	movlw	low(03FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(158)^080h,w	;volatile
	movwf	(??_adcISR+0)+0
	movlw	high(03FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(30),w	;volatile
	movwf	1+(??_adcISR+0)+0
	movf	(adcISR@eEffectiveChannel),w
	movwf	(??_adcISR+2)+0
	addwf	(??_adcISR+2)+0,w
	addlw	_ui16ADCBuff&0ffh
	movwf	fsr0
	movf	0+(??_adcISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movf	1+(??_adcISR+0)+0,w
	movwf	indf
	line	117
	
i1l6411:	
	movlw	(07h)
	subwf	(_eCurrentChannel),w
	skipnc
	goto	u277_21
	goto	u277_20
u277_21:
	goto	i1l648
u277_20:
	line	119
	
i1l6413:	
	movlw	(01h)
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	addwf	(_eCurrentChannel),f
	line	122
	
i1l6415:	
	movf	(_eCurrentChannel),w
	xorlw	03h
	skipz
	goto	u278_21
	goto	u278_20
u278_21:
	goto	i1l6419
u278_20:
	line	124
	
i1l6417:	
	movlw	(01h)
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	addwf	(_eCurrentChannel),f
	goto	i1l6419
	line	128
	
i1l649:	
	line	133
	goto	i1l6419
	line	134
	
i1l648:	
	line	136
	clrf	(_eCurrentChannel)
	goto	i1l6419
	line	140
	
i1l650:	
	line	143
	
i1l6419:	
	movlw	(0C7h)
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	andwf	(31),f	;volatile
	movf	(_eCurrentChannel),w
	movwf	(??_adcISR+0)+0
	movlw	(03h)-1
u279_25:
	clrc
	rlf	(??_adcISR+0)+0,f
	addlw	-1
	skipz
	goto	u279_25
	clrc
	rlf	(??_adcISR+0)+0,w
	andlw	038h
	movwf	(??_adcISR+1)+0
	movf	(??_adcISR+1)+0,w
	iorwf	(31),f	;volatile
	goto	i1l651
	line	144
	
i1l643:	
	line	145
	
i1l651:	
	return
	opt stack 0
GLOBAL	__end_of_adcISR
	__end_of_adcISR:
	signat	_adcISR,88
	global	_extIntISR

;; *************** function _extIntISR *****************
;; Defined at:
;;		line 89 in file "hardware/cores/lib\hal_user_interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_nullIntFunction
;; This function is called by:
;;		_userIntISR
;; This function uses a non-reentrant model
;;
psect	text1562,local,class=CODE,delta=2,merge=1
global __ptext1562
__ptext1562:	;psect for function _extIntISR
psect	text1562
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	89
	global	__size_of_extIntISR
	__size_of_extIntISR	equ	__end_of_extIntISR-_extIntISR
	
_extIntISR:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _extIntISR: [wreg+status,2+status,0+pclath+cstack]
	line	91
	
i1l7011:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_eMod0_Mode),w
	xorlw	01h
	skipz
	goto	u372_21
	goto	u372_20
u372_21:
	goto	i1l7015
u372_20:
	line	93
	
i1l7013:	
	movlw	1<<((1038)&7)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	((1038)/8)^080h,f
	goto	i1l7015
	line	94
	
i1l1726:	
	line	97
	
i1l7015:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_pt2INT0),w
	fcall	i1fptable
	line	98
	
i1l1727:	
	return
	opt stack 0
GLOBAL	__end_of_extIntISR
	__end_of_extIntISR:
	signat	_extIntISR,88
	global	_rbIntISR

;; *************** function _rbIntISR *****************
;; Defined at:
;;		line 180 in file "hardware/cores/lib\hal_user_interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_nullIntFunction
;; This function is called by:
;;		_userIntISR
;; This function uses a non-reentrant model
;;
psect	text1563,local,class=CODE,delta=2,merge=1
global __ptext1563
__ptext1563:	;psect for function _rbIntISR
psect	text1563
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	180
	global	__size_of_rbIntISR
	__size_of_rbIntISR	equ	__end_of_rbIntISR-_rbIntISR
	
_rbIntISR:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _rbIntISR: [wreg+status,2+status,0+pclath+cstack]
	line	183
	
i1l7017:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_PORTB_BUFFER),w	;volatile
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	movwf	(rbIntISR@PORTCHANGE_BUFFER)
	line	185
	
i1l7019:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(4)&7
	goto	u373_21
	goto	u373_20
u373_21:
	goto	i1l7039
u373_20:
	line	187
	
i1l7021:	
	movf	(_eMod4_Mode),w
	xorlw	02h
	skipz
	goto	u374_21
	goto	u374_20
u374_21:
	goto	i1l7027
u374_20:
	
i1l7023:	
	btfsc	(6),(4)&7	;volatile
	goto	u375_21
	goto	u375_20
u375_21:
	goto	i1l7027
u375_20:
	goto	i1l7035
	line	190
	
i1l7025:	
	goto	i1l7035
	line	191
	
i1l1733:	
	
i1l7027:	
	movf	(_eMod4_Mode),w
	xorlw	03h
	skipz
	goto	u376_21
	goto	u376_20
u376_21:
	goto	i1l7033
u376_20:
	
i1l7029:	
	btfss	(6),(4)&7	;volatile
	goto	u377_21
	goto	u377_20
u377_21:
	goto	i1l7033
u377_20:
	goto	i1l7035
	line	194
	
i1l7031:	
	goto	i1l7035
	line	195
	
i1l1735:	
	line	198
	
i1l7033:	
	movf	(_pt2INT4),w
	fcall	i1fptable
	goto	i1l7035
	line	199
	
i1l1736:	
	goto	i1l7035
	
i1l1734:	
	line	201
	
i1l7035:	
	movlw	(0EFh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	202
	
i1l7037:	
	movf	(6),w	;volatile
	andlw	010h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l7039
	line	203
	
i1l1732:	
	line	205
	
i1l7039:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(5)&7
	goto	u378_21
	goto	u378_20
u378_21:
	goto	i1l7059
u378_20:
	line	207
	
i1l7041:	
	movf	(_eMod5_Mode),w
	xorlw	02h
	skipz
	goto	u379_21
	goto	u379_20
u379_21:
	goto	i1l7047
u379_20:
	
i1l7043:	
	btfsc	(6),(5)&7	;volatile
	goto	u380_21
	goto	u380_20
u380_21:
	goto	i1l7047
u380_20:
	goto	i1l7055
	line	210
	
i1l7045:	
	goto	i1l7055
	line	211
	
i1l1738:	
	
i1l7047:	
	movf	(_eMod5_Mode),w
	xorlw	03h
	skipz
	goto	u381_21
	goto	u381_20
u381_21:
	goto	i1l7053
u381_20:
	
i1l7049:	
	btfss	(6),(5)&7	;volatile
	goto	u382_21
	goto	u382_20
u382_21:
	goto	i1l7053
u382_20:
	goto	i1l7055
	line	214
	
i1l7051:	
	goto	i1l7055
	line	215
	
i1l1740:	
	line	218
	
i1l7053:	
	movf	(_pt2INT5),w
	fcall	i1fptable
	goto	i1l7055
	line	219
	
i1l1741:	
	goto	i1l7055
	
i1l1739:	
	line	221
	
i1l7055:	
	movlw	(0DFh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	222
	
i1l7057:	
	movf	(6),w	;volatile
	andlw	020h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l7059
	line	223
	
i1l1737:	
	line	225
	
i1l7059:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(6)&7
	goto	u383_21
	goto	u383_20
u383_21:
	goto	i1l7079
u383_20:
	line	227
	
i1l7061:	
	movf	(_eMod6_Mode),w
	xorlw	02h
	skipz
	goto	u384_21
	goto	u384_20
u384_21:
	goto	i1l7067
u384_20:
	
i1l7063:	
	btfsc	(6),(6)&7	;volatile
	goto	u385_21
	goto	u385_20
u385_21:
	goto	i1l7067
u385_20:
	goto	i1l7075
	line	230
	
i1l7065:	
	goto	i1l7075
	line	231
	
i1l1743:	
	
i1l7067:	
	movf	(_eMod6_Mode),w
	xorlw	03h
	skipz
	goto	u386_21
	goto	u386_20
u386_21:
	goto	i1l7073
u386_20:
	
i1l7069:	
	btfss	(6),(6)&7	;volatile
	goto	u387_21
	goto	u387_20
u387_21:
	goto	i1l7073
u387_20:
	goto	i1l7075
	line	234
	
i1l7071:	
	goto	i1l7075
	line	235
	
i1l1745:	
	line	238
	
i1l7073:	
	movf	(_pt2INT6),w
	fcall	i1fptable
	goto	i1l7075
	line	239
	
i1l1746:	
	goto	i1l7075
	
i1l1744:	
	line	241
	
i1l7075:	
	movlw	(0BFh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	242
	
i1l7077:	
	movf	(6),w	;volatile
	andlw	040h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l7079
	line	243
	
i1l1742:	
	line	245
	
i1l7079:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(7)&7
	goto	u388_21
	goto	u388_20
u388_21:
	goto	i1l7099
u388_20:
	line	247
	
i1l7081:	
	movf	(_eMod7_Mode),w
	xorlw	02h
	skipz
	goto	u389_21
	goto	u389_20
u389_21:
	goto	i1l7087
u389_20:
	
i1l7083:	
	btfsc	(6),(7)&7	;volatile
	goto	u390_21
	goto	u390_20
u390_21:
	goto	i1l7087
u390_20:
	goto	i1l7095
	line	250
	
i1l7085:	
	goto	i1l7095
	line	251
	
i1l1748:	
	
i1l7087:	
	movf	(_eMod7_Mode),w
	xorlw	03h
	skipz
	goto	u391_21
	goto	u391_20
u391_21:
	goto	i1l7093
u391_20:
	
i1l7089:	
	btfss	(6),(7)&7	;volatile
	goto	u392_21
	goto	u392_20
u392_21:
	goto	i1l7093
u392_20:
	goto	i1l7095
	line	254
	
i1l7091:	
	goto	i1l7095
	line	255
	
i1l1750:	
	line	258
	
i1l7093:	
	movf	(_pt2INT7),w
	fcall	i1fptable
	goto	i1l7095
	line	259
	
i1l1751:	
	goto	i1l7095
	
i1l1749:	
	line	261
	
i1l7095:	
	movlw	(07Fh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	262
	
i1l7097:	
	movf	(6),w	;volatile
	andlw	080h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l7099
	line	263
	
i1l1747:	
	line	265
	
i1l7099:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(134)^080h,w	;volatile
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	266
	
i1l1752:	
	return
	opt stack 0
GLOBAL	__end_of_rbIntISR
	__end_of_rbIntISR:
	signat	_rbIntISR,88
	global	_null16BitTMRFunction

;; *************** function _null16BitTMRFunction *****************
;; Defined at:
;;		line 66 in file "hardware/cores/lib\hal_16bit_timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_timer16BitISR
;; This function uses a non-reentrant model
;;
psect	text1564,local,class=CODE,delta=2,merge=1
global __ptext1564
__ptext1564:	;psect for function _null16BitTMRFunction
psect	text1564
	file	"hardware/cores/lib\hal_16bit_timer.c"
	line	66
	global	__size_of_null16BitTMRFunction
	__size_of_null16BitTMRFunction	equ	__end_of_null16BitTMRFunction-_null16BitTMRFunction
	
_null16BitTMRFunction:	
	opt	stack 0
; Regs used in _null16BitTMRFunction: []
	line	68
	
i1l1273:	
	return
	opt stack 0
GLOBAL	__end_of_null16BitTMRFunction
	__end_of_null16BitTMRFunction:
	signat	_null16BitTMRFunction,88
	global	_nullIntFunction

;; *************** function _nullIntFunction *****************
;; Defined at:
;;		line 67 in file "hardware/cores/lib\hal_user_interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_extIntISR
;;		_rbIntISR
;; This function uses a non-reentrant model
;;
psect	text1565,local,class=CODE,delta=2,merge=1
global __ptext1565
__ptext1565:	;psect for function _nullIntFunction
psect	text1565
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	67
	global	__size_of_nullIntFunction
	__size_of_nullIntFunction	equ	__end_of_nullIntFunction-_nullIntFunction
	
_nullIntFunction:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _nullIntFunction: []
	line	69
	
i1l1723:	
	return
	opt stack 0
GLOBAL	__end_of_nullIntFunction
	__end_of_nullIntFunction:
	signat	_nullIntFunction,88
	global	i1_set8BitTimer

;; *************** function i1_set8BitTimer *****************
;; Defined at:
;;		line 238 in file "hardware/cores/lib\corelib_8bit_timer.c"
;; Parameters:    Size  Location     Type
;;  set8BitTimer    1    wreg     enum E1480
;;  set8BitTimer    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  set8BitTimer    1    1[COMMON] enum E1480
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_softUARTController
;; This function uses a non-reentrant model
;;
psect	text1566,local,class=CODE,delta=2,merge=1
global __ptext1566
__ptext1566:	;psect for function i1_set8BitTimer
psect	text1566
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	238
	global	__size_ofi1_set8BitTimer
	__size_ofi1_set8BitTimer	equ	__end_ofi1_set8BitTimer-i1_set8BitTimer
	
i1_set8BitTimer:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_set8BitTimer: [wreg+status,2+status,0]
	line	240
	movwf	(i1set8BitTimer@eTmrModule)
	
i1l6875:	
	movf	(i1set8BitTimer@eTmrModule),w
	xorlw	02h
	skipz
	goto	u347_21
	goto	u347_20
u347_21:
	goto	i1l564
u347_20:
	line	242
	
i1l6877:	
	movf	(i1set8BitTimer@ui8Value),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	244
	
i1l6879:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	245
	
i1l6881:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	247
	
i1l6883:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	line	248
	goto	i1l564
	line	274
	
i1l562:	
	goto	i1l564
	line	277
	
i1l563:	
	line	278
	
i1l564:	
	return
	opt stack 0
GLOBAL	__end_ofi1_set8BitTimer
	__end_ofi1_set8BitTimer:
	signat	i1_set8BitTimer,88
	global	i1_changePinState

;; *************** function i1_changePinState *****************
;; Defined at:
;;		line 189 in file "hardware/cores/lib\hal_gpio.c"
;; Parameters:    Size  Location     Type
;;  changePinSta    1    wreg     unsigned char 
;;  changePinSta    1    4[COMMON] enum E1449
;; Auto vars:     Size  Location     Type
;;  changePinSta    1    9[COMMON] unsigned char 
;;  changePinSta    2    7[COMMON] PTR unsigned char 
;;		 -> NULL(0), PORTE(1), PORTD(1), PORTC(1), 
;;		 -> PORTB(1), PORTA(1), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_serialSoftTxISR
;; This function uses a non-reentrant model
;;
psect	text1567,local,class=CODE,delta=2,merge=1
global __ptext1567
__ptext1567:	;psect for function i1_changePinState
psect	text1567
	file	"hardware/cores/lib\hal_gpio.c"
	line	189
	global	__size_ofi1_changePinState
	__size_ofi1_changePinState	equ	__end_ofi1_changePinState-i1_changePinState
	
i1_changePinState:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_changePinState: [wreg-fsr0h+status,2+status,0]
	movwf	(i1changePinState@ui8Pin)
	line	190
	
i1l7101:	
	clrf	(i1changePinState@pui8PortReg)
	clrf	(i1changePinState@pui8PortReg+1)
	line	193
	
i1l7103:	
	movlw	(08h)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u393_21
	goto	u393_20
u393_21:
	goto	i1l7107
u393_20:
	line	195
	
i1l7105:	
	movlw	high(7)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(7)
	movwf	(i1changePinState@pui8PortReg)
	line	199
	goto	i1l7139
	line	201
	
i1l1449:	
	
i1l7107:	
	movlw	(0Eh)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u394_21
	goto	u394_20
u394_21:
	goto	i1l7113
u394_20:
	line	203
	
i1l7109:	
	movlw	low(08h)
	subwf	(i1changePinState@ui8Pin),f
	line	204
	
i1l7111:	
	movlw	high(6)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(6)
	movwf	(i1changePinState@pui8PortReg)
	line	208
	goto	i1l7139
	line	210
	
i1l1451:	
	
i1l7113:	
	movlw	(015h)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u395_21
	goto	u395_20
u395_21:
	goto	i1l7133
u395_20:
	line	212
	
i1l7115:	
	movlw	low(0Eh)
	subwf	(i1changePinState@ui8Pin),f
	line	215
	
i1l7117:	
	movlw	(03h)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u396_21
	goto	u396_20
u396_21:
	goto	i1l7121
u396_20:
	line	217
	
i1l7119:	
	movlw	high(5)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(i1changePinState@pui8PortReg)
	line	221
	goto	i1l7139
	line	223
	
i1l1454:	
	
i1l7121:	
	movf	(i1changePinState@ui8Pin),w
	xorlw	03h
	skipz
	goto	u397_21
	goto	u397_20
u397_21:
	goto	i1l7127
u397_20:
	line	225
	
i1l7123:	
	movlw	(02h)
	movwf	(??i1_changePinState+0)+0
	movf	(??i1_changePinState+0)+0,w
	addwf	(i1changePinState@ui8Pin),f
	line	226
	
i1l7125:	
	movlw	high(5)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(i1changePinState@pui8PortReg)
	line	230
	goto	i1l7139
	line	232
	
i1l1456:	
	
i1l7127:	
	movlw	(07h)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u398_21
	goto	u398_20
u398_21:
	goto	i1l7139
u398_20:
	line	234
	
i1l7129:	
	movlw	low(04h)
	subwf	(i1changePinState@ui8Pin),f
	line	235
	
i1l7131:	
	movlw	high(9)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(9)
	movwf	(i1changePinState@pui8PortReg)
	line	239
	goto	i1l7139
	line	240
	
i1l1458:	
	goto	i1l7139
	line	246
	
i1l1459:	
	goto	i1l7139
	
i1l1457:	
	goto	i1l7139
	
i1l1455:	
	line	247
	goto	i1l7139
	line	249
	
i1l1453:	
	
i1l7133:	
	movlw	(01Dh)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u399_21
	goto	u399_20
u399_21:
	goto	i1l7139
u399_20:
	line	251
	
i1l7135:	
	movlw	low(015h)
	subwf	(i1changePinState@ui8Pin),f
	line	252
	
i1l7137:	
	movlw	high(8)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(8)
	movwf	(i1changePinState@pui8PortReg)
	line	256
	goto	i1l7139
	line	257
	
i1l1461:	
	goto	i1l7139
	line	263
	
i1l1462:	
	goto	i1l7139
	
i1l1460:	
	goto	i1l7139
	
i1l1452:	
	goto	i1l7139
	
i1l1450:	
	line	266
	
i1l7139:	
	movf	(i1changePinState@pui8PortReg+1),w
	iorwf	(i1changePinState@pui8PortReg),w
	skipnz
	goto	u400_21
	goto	u400_20
u400_21:
	goto	i1l1469
u400_20:
	line	268
	
i1l7141:	
	movf	(i1changePinState@eOperation),f
	skipz
	goto	u401_21
	goto	u401_20
u401_21:
	goto	i1l7145
u401_20:
	line	270
	
i1l7143:	
	movlw	(01h)
	movwf	(??i1_changePinState+0)+0
	incf	(i1changePinState@ui8Pin),w
	goto	u402_24
u402_25:
	clrc
	rlf	(??i1_changePinState+0)+0,f
u402_24:
	addlw	-1
	skipz
	goto	u402_25
	movf	0+(??i1_changePinState+0)+0,w
	movwf	(??i1_changePinState+1)+0
	movf	(i1changePinState@pui8PortReg),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1changePinState@pui8PortReg+1),0
	bcf	status,7
	movf	(??i1_changePinState+1)+0,w
	iorwf	indf,f
	line	274
	goto	i1l1469
	line	275
	
i1l1464:	
	
i1l7145:	
	movf	(i1changePinState@eOperation),w
	xorlw	01h
	skipz
	goto	u403_21
	goto	u403_20
u403_21:
	goto	i1l7149
u403_20:
	line	277
	
i1l7147:	
	movlw	(01h)
	movwf	(??i1_changePinState+0)+0
	incf	(i1changePinState@ui8Pin),w
	goto	u404_24
u404_25:
	clrc
	rlf	(??i1_changePinState+0)+0,f
u404_24:
	addlw	-1
	skipz
	goto	u404_25
	movf	0+(??i1_changePinState+0)+0,w
	xorlw	0ffh
	movwf	(??i1_changePinState+1)+0
	movf	(i1changePinState@pui8PortReg),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1changePinState@pui8PortReg+1),0
	bcf	status,7
	movf	(??i1_changePinState+1)+0,w
	andwf	indf,f
	line	281
	goto	i1l1469
	line	282
	
i1l1466:	
	line	284
	
i1l7149:	
	movlw	(01h)
	movwf	(??i1_changePinState+0)+0
	incf	(i1changePinState@ui8Pin),w
	goto	u405_24
u405_25:
	clrc
	rlf	(??i1_changePinState+0)+0,f
u405_24:
	addlw	-1
	skipz
	goto	u405_25
	movf	0+(??i1_changePinState+0)+0,w
	movwf	(??i1_changePinState+1)+0
	movf	(i1changePinState@pui8PortReg),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1changePinState@pui8PortReg+1),0
	bcf	status,7
	movf	(??i1_changePinState+1)+0,w
	xorwf	indf,f
	goto	i1l1469
	line	288
	
i1l1467:	
	goto	i1l1469
	
i1l1465:	
	line	289
	goto	i1l1469
	line	290
	
i1l1463:	
	goto	i1l1469
	line	296
	
i1l1468:	
	line	297
	
i1l1469:	
	return
	opt stack 0
GLOBAL	__end_ofi1_changePinState
	__end_ofi1_changePinState:
	signat	i1_changePinState,88
	global	i1___bmul

;; *************** function i1___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  __bmul          1    wreg     unsigned char 
;;  __bmul          1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  __bmul          1    2[COMMON] unsigned char 
;;  __bmul          1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_serialSoftRxISR
;;		_serialSoftTxISR
;; This function uses a non-reentrant model
;;
psect	text1568,local,class=CODE,delta=2,merge=1
global __ptext1568
__ptext1568:	;psect for function i1___bmul
psect	text1568
	file	"C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\sources\bmul.c"
	line	3
	global	__size_ofi1___bmul
	__size_ofi1___bmul	equ	__end_ofi1___bmul-i1___bmul
	
i1___bmul:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___bmul: [wreg+status,2+status,0]
	movwf	(i1___bmul@multiplier)
	line	4
	
i1l6885:	
	clrf	(i1___bmul@product)
	line	6
	
i1l1841:	
	line	7
	btfss	(i1___bmul@multiplier),(0)&7
	goto	u348_21
	goto	u348_20
u348_21:
	goto	i1l6889
u348_20:
	line	8
	
i1l6887:	
	movf	(i1___bmul@multiplicand),w
	movwf	(??i1___bmul+0)+0
	movf	(??i1___bmul+0)+0,w
	addwf	(i1___bmul@product),f
	goto	i1l6889
	
i1l1842:	
	line	9
	
i1l6889:	
	clrc
	rlf	(i1___bmul@multiplicand),f

	line	10
	
i1l6891:	
	clrc
	rrf	(i1___bmul@multiplier),f

	line	11
	
i1l6893:	
	movf	(i1___bmul@multiplier),f
	skipz
	goto	u349_21
	goto	u349_20
u349_21:
	goto	i1l1841
u349_20:
	goto	i1l6895
	
i1l1843:	
	line	12
	
i1l6895:	
	movf	(i1___bmul@product),w
	goto	i1l1844
	
i1l6897:	
	line	13
	
i1l1844:	
	return
	opt stack 0
GLOBAL	__end_ofi1___bmul
	__end_ofi1___bmul:
	signat	i1___bmul,89
	global	fptotal
fptotal equ 0
	global	i1fptotal
i1fptotal equ 14
	file ""
	line	#
psect	functab,class=CODE,delta=2,reloc=256
global __pfunctab
__pfunctab:
	global	fpbase
fpbase	equ	0
global	fptable
fptable:
	goto fptable	;no entries
	global	i1fptable,__i1fptable
__i1fptable:
i1fptable:
	movwf (btemp+1)&07Fh
	movlw high(i1fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	i1fpbase
i1fpbase:
	goto i1fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp__nullIntFunction:
	ljmp	_nullIntFunction
	file ""
	line	#
fp__null16BitTMRFunction:
	ljmp	_null16BitTMRFunction
	file ""
	line	#
fp__softUARTController:
	ljmp	_softUARTController
	file ""
	line	#
fp__nullTMRFunction:
	ljmp	_nullTMRFunction
	global __end_of__i1fptable
	__end_of__i1fptable:
	global __size_of__i1fptable
	__size_of__i1fptable	equ	__end_of__i1fptable-__i1fptable
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
