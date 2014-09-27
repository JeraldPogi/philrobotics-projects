opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 58300"

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
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_adcCycle
	FNCALL	_main,_cycle
	FNCALL	_main,_init
	FNCALL	_main,_set_gblInitialized_FlagValue
	FNCALL	_main,_setupADC
	FNCALL	_main,_setupGpio
	FNCALL	_main,_setupTimer
	FNCALL	_setupADC,_configLowLvlADC
	FNCALL	_setupADC,_get_gblInitialized_FlagValue
	FNCALL	_init,_setupPBotUART
	FNCALL	_setupPBotUART,_setupPBot
	FNCALL	_setupPBotUART,_startDProtocol
	FNCALL	_startDProtocol,_setupTelemetryID
	FNCALL	_setupTelemetryID,_setupTelemetry
	FNCALL	_setupTelemetry,_getMs
	FNCALL	_setupTelemetry,_setupSerial
	FNCALL	_setupSerial,_hal_setSerialBAUD
	FNCALL	_setupPBot,_changePinState
	FNCALL	_setupPBot,_configPin
	FNCALL	_cycle,_pollSensors
	FNCALL	_pollSensors,_getElapsedMs
	FNCALL	_pollSensors,_getMs
	FNCALL	_pollSensors,_pollLineSensorsTelemetry
	FNCALL	_pollSensors,_pollWallSensorsTelemetry
	FNCALL	_pollWallSensorsTelemetry,_detectObstacle
	FNCALL	_pollWallSensorsTelemetry,_reportWallSensors
	FNCALL	_reportWallSensors,_printD
	FNCALL	_detectObstacle,_pollWallSensors
	FNCALL	_pollWallSensors,_readSensorOutput
	FNCALL	_pollLineSensorsTelemetry,_detectLine
	FNCALL	_pollLineSensorsTelemetry,_reportLineSensors
	FNCALL	_reportLineSensors,_printD
	FNCALL	_printD,_serialWrite
	FNCALL	_printD,_serialWriteString
	FNCALL	_serialWriteString,_serialWrite
	FNCALL	_serialWrite,_isSerialBufferFull
	FNCALL	_detectLine,_pollLineSensors
	FNCALL	_pollLineSensors,_readSensorOutput
	FNCALL	_readSensorOutput,_checkPinState
	FNCALL	_adcCycle,_getElapsedMs
	FNCALL	_adcCycle,_getMs
	FNCALL	_getMs,_get_gblISRLocked_FlagValue
	FNCALL	_getMs,_get_gui16TimerMs_Value
	FNCALL	_getElapsedMs,_get_gblISRLocked_FlagValue
	FNCALL	_getElapsedMs,_get_gui16TimerMs_Value
	FNROOT	_main
	FNCALL	_isr,_adcISR
	FNCALL	_isr,_clr_gblISRLocked_FlagValue
	FNCALL	_isr,_serialRxISR
	FNCALL	_isr,_serialTxISR
	FNCALL	_isr,_set_gblISRLocked_FlagValue
	FNCALL	_isr,_timer16BitISR
	FNCALL	_isr,_timer8BitISR
	FNCALL	_isr,_timerISR
	FNCALL	_isr,_userIntISR
	FNCALL	_userIntISR,_extIntISR
	FNCALL	_userIntISR,_rbIntISR
	FNCALL	_rbIntISR,_nullIntFunction
	FNCALL	_extIntISR,_nullIntFunction
	FNCALL	_timerISR,_inc_gui16TimerMs_Value
	FNCALL	_timerISR,_inc_gui16TimerUsMSB_Value
	FNCALL	_timer8BitISR,_nullTMRFunction
	FNCALL	_timer16BitISR,_null16BitTMRFunction
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_ui8PreScalerVal
	global	_ui8PreScaler
	global	_pt2INT0
	global	_pt2INT1
	global	_pt2INT2
	global	_pt2INT4
	global	_pt2INT5
	global	_pt2INT6
	global	_pt2INT7
	global	_pt2TMR1ISR
	global	_pt2TMR2ISR
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"hardware/cores/lib\corelib_pwm.c"
	line	43

;initializer for _ui8PreScalerVal
	retlw	01h

;initializer for _ui8PreScaler
	retlw	01h
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	61

;initializer for _pt2INT0
	retlw	(fp__nullIntFunction-fpbase)&0ffh
	line	62

;initializer for _pt2INT1
	retlw	(fp__nullIntFunction-fpbase)&0ffh
	line	63

;initializer for _pt2INT2
	retlw	(fp__nullIntFunction-fpbase)&0ffh
	line	68

;initializer for _pt2INT4
	retlw	(fp__nullIntFunction-fpbase)&0ffh
	line	69

;initializer for _pt2INT5
	retlw	(fp__nullIntFunction-fpbase)&0ffh
	line	70

;initializer for _pt2INT6
	retlw	(fp__nullIntFunction-fpbase)&0ffh
	line	71

;initializer for _pt2INT7
	retlw	(fp__nullIntFunction-fpbase)&0ffh
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	44

;initializer for _pt2TMR1ISR
	retlw	(fp__null16BitTMRFunction-fpbase)&0ffh
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	45

;initializer for _pt2TMR2ISR
	retlw	(fp__nullTMRFunction-fpbase)&0ffh
	global	_PORTB_BUFFER
	global	_iByteCounter
	global	_ui8PR2plus1
	global	rbIntISR@PORTCHANGE_BUFFER
	global	serialRxISR@ui8TempIn
	global	_PORTB_DIRECTION
	global	_blBufferOverflow
	global	_blDPacketAvailable
	global	_blDPacketReady
	global	_blLineDetectedonCenter
	global	_blLineDetectedonLeft
	global	_blLineDetectedonRight
	global	_blTerminationError
	global	_blWallDetectedonCenter
	global	_blWallDetectedonLeft
	global	_blWallDetectedonRight
	global	_bl_reply_supressed
	global	_eCurrentChannel
	global	_eMod0_Mode
	global	_eMod1_Mode
	global	_eMod2_Mode
	global	_eMod3_Mode
	global	_eMod4_Mode
	global	_eMod5_Mode
	global	_eMod6_Mode
	global	_eMod7_Mode
	global	_gblISRLocked
	global	_gblInitialized
	global	_ui8LineLocation
	global	_ui8ObstacleLocation
	global	adcISR@eEffectiveChannel
	global	_strDProtocolID
	global	_blLineSensorPolarity
	global	_blObstacleSensorPolarity
	global	_ui16ADCBuff
	global	_strRxParam1
	global	_strRxParam2
	global	_strRxCommandCode
	global	_strRxDProtocolID
	global	_strRxDTerminator
	global	_gui16TimerMs
	global	_gui16TimerSec
	global	_gui16TimerUsMSB
	global	_ui16DProtocolTimeout
	global	_ui16PollIntTimer
	global	adcCycle@ui16Counter
	global	adcCycle@ui16Timer
	global	timerISR@ui16UsCounter
	global	_strParam1
	global	_strParam2
	global	_strCommandCode
	global	_strDProtID
	global	_stUARTRXFiFo
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
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
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
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
	global __stringdata
__stringdata:
	
STR_3:	
	retlw	35	;'#'
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	117	;'u'
	retlw	112	;'p'
	retlw	112	;'p'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	35	;'#'
	retlw	76	;'L'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	115	;'s'
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	35	;'#'
	retlw	87	;'W'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	115	;'s'
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	35	;'#'
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	98	;'b'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	0
psect	stringtext
	
STR_20:	
	retlw	35	;'#'
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	104	;'h'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	0
psect	stringtext
	
STR_22:	
	retlw	35	;'#'
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	102	;'f'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	35	;'#'
	retlw	82	;'R'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	104	;'h'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	35	;'#'
	retlw	66	;'B'
	retlw	117	;'u'
	retlw	102	;'f'
	retlw	102	;'f'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	102	;'f'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	119	;'w'
	retlw	0
psect	stringtext
	
STR_17:	
	retlw	35	;'#'
	retlw	82	;'R'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	102	;'f'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	0
psect	stringtext
	
STR_26:	
	retlw	35	;'#'
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	66	;'B'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	119	;'w'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_24:	
	retlw	35	;'#'
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	70	;'F'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	119	;'w'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_32:	
	retlw	35	;'#'
	retlw	82	;'R'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	104	;'h'
	retlw	116	;'t'
	retlw	0
psect	stringtext
	
STR_34:	
	retlw	35	;'#'
	retlw	82	;'R'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	102	;'f'
	retlw	116	;'t'
	retlw	0
psect	stringtext
	
STR_28:	
	retlw	35	;'#'
	retlw	84	;'T'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	104	;'h'
	retlw	116	;'t'
	retlw	0
psect	stringtext
	
STR_30:	
	retlw	35	;'#'
	retlw	84	;'T'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	102	;'f'
	retlw	116	;'t'
	retlw	0
psect	stringtext
	
STR_36:	
	retlw	35	;'#'
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	66	;'B'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	0
psect	stringtext
	
STR_42:	
	retlw	67	;'C'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_48:	
	retlw	83	;'S'
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	0
psect	stringtext
	
STR_44:	
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_39:	
	retlw	70	;'F'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	75	;'K'
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	87	;'W'
	retlw	78	;'N'
	retlw	0
psect	stringtext
	
STR_63:	
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_59:	
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_47:	
	retlw	66	;'B'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	0
psect	stringtext
	
STR_54:	
	retlw	78	;'N'
	retlw	85	;'U'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	0
psect	stringtext
	
STR_38:	
	retlw	78	;'N'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_62:	
	retlw	79	;'O'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_61:	
	retlw	114	;'r'
	retlw	76	;'L'
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_37:	
	retlw	114	;'r'
	retlw	87	;'W'
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_41:	
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	114	;'r'
	retlw	76	;'L'
	retlw	83	;'S'
	retlw	67	;'C'
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	114	;'r'
	retlw	87	;'W'
	retlw	83	;'S'
	retlw	67	;'C'
	retlw	0
psect	stringtext
	
STR_23:	
	retlw	109	;'m'
	retlw	70	;'F'
	retlw	87	;'W'
	retlw	68	;'D'
	retlw	0
psect	stringtext
	
STR_25:	
	retlw	109	;'m'
	retlw	66	;'B'
	retlw	67	;'C'
	retlw	75	;'K'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	99	;'c'
	retlw	78	;'N'
	retlw	83	;'S'
	retlw	80	;'P'
	retlw	0
psect	stringtext
	
STR_35:	
	retlw	115	;'s'
	retlw	80	;'P'
	retlw	66	;'B'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_33:	
	retlw	114	;'r'
	retlw	76	;'L'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_29:	
	retlw	116	;'t'
	retlw	76	;'L'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_31:	
	retlw	114	;'r'
	retlw	82	;'R'
	retlw	71	;'G'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_27:	
	retlw	116	;'t'
	retlw	82	;'R'
	retlw	71	;'G'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_16:	
	retlw	114	;'r'
	retlw	76	;'L'
	retlw	77	;'M'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_21:	
	retlw	115	;'s'
	retlw	76	;'L'
	retlw	77	;'M'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	114	;'r'
	retlw	82	;'R'
	retlw	77	;'M'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_19:	
	retlw	115	;'s'
	retlw	82	;'R'
	retlw	77	;'M'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_50:	
	retlw	70	;'F'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	68	;'D'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_82:	
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_15:	
	retlw	70	;'F'
	retlw	0
psect	stringtext
STR_51	equ	STR_39+0
STR_56	equ	STR_44+0
STR_68	equ	STR_44+0
STR_74	equ	STR_44+0
STR_53	equ	STR_41+0
STR_65	equ	STR_41+0
STR_71	equ	STR_41+0
STR_40	equ	STR_37+0
STR_43	equ	STR_37+0
STR_46	equ	STR_37+0
STR_49	equ	STR_37+0
STR_52	equ	STR_37+0
STR_55	equ	STR_37+0
STR_58	equ	STR_37+0
STR_64	equ	STR_61+0
STR_67	equ	STR_61+0
STR_70	equ	STR_61+0
STR_73	equ	STR_61+0
STR_76	equ	STR_61+0
STR_79	equ	STR_61+0
STR_45	equ	STR_42+0
STR_66	equ	STR_42+0
STR_69	equ	STR_42+0
STR_77	equ	STR_42+0
STR_57	equ	STR_54+0
STR_60	equ	STR_54+0
STR_72	equ	STR_54+0
STR_75	equ	STR_54+0
STR_78	equ	STR_54+0
STR_81	equ	STR_54+0
STR_84	equ	STR_54+0
STR_86	equ	STR_54+0
STR_18	equ	STR_15+0
STR_80	equ	STR_59+0
STR_12	equ	STR_9+0
STR_83	equ	STR_82+0
STR_85	equ	STR_82+0
STR_87	equ	STR_82+0
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\Telemetry_DProtocol.phr.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_PORTB_BUFFER:
       ds      1

_iByteCounter:
       ds      1

_ui8PR2plus1:
       ds      1

rbIntISR@PORTCHANGE_BUFFER:
       ds      1

serialRxISR@ui8TempIn:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"hardware/cores/lib\corelib_pwm.c"
	line	43
_ui8PreScalerVal:
       ds      1

psect	dataCOMMON
	file	"hardware/cores/lib\corelib_pwm.c"
	line	43
_ui8PreScaler:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_PORTB_DIRECTION:
       ds      1

_blBufferOverflow:
       ds      1

_blDPacketAvailable:
       ds      1

_blDPacketReady:
       ds      1

_blLineDetectedonCenter:
       ds      1

_blLineDetectedonLeft:
       ds      1

_blLineDetectedonRight:
       ds      1

_blTerminationError:
       ds      1

_blWallDetectedonCenter:
       ds      1

_blWallDetectedonLeft:
       ds      1

_blWallDetectedonRight:
       ds      1

_bl_reply_supressed:
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

_ui8LineLocation:
       ds      1

_ui8ObstacleLocation:
       ds      1

adcISR@eEffectiveChannel:
       ds      1

_strDProtocolID:
       ds      4

_blLineSensorPolarity:
       ds      1

_blObstacleSensorPolarity:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	61
_pt2INT0:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	62
_pt2INT1:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	63
_pt2INT2:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	68
_pt2INT4:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	69
_pt2INT5:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	70
_pt2INT6:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	71
_pt2INT7:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	44
_pt2TMR1ISR:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	45
_pt2TMR2ISR:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_ui16ADCBuff:
       ds      14

_strRxParam1:
       ds      7

_strRxParam2:
       ds      7

_strRxCommandCode:
       ds      5

_strRxDProtocolID:
       ds      4

_strRxDTerminator:
       ds      3

_gui16TimerMs:
       ds      2

_gui16TimerSec:
       ds      2

_gui16TimerUsMSB:
       ds      2

_ui16DProtocolTimeout:
       ds      2

_ui16PollIntTimer:
       ds      2

adcCycle@ui16Counter:
       ds      2

adcCycle@ui16Timer:
       ds      2

timerISR@ui16UsCounter:
       ds      2

_strParam1:
       ds      7

_strParam2:
       ds      7

_strCommandCode:
       ds      5

_strDProtID:
       ds      4

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_stUARTRXFiFo:
       ds      34

_stUARTTXFiFo:
       ds      34

	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\Telemetry_DProtocol.phr.as"
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

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+020h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+04Fh)
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+044h)
	fcall	clear_ram0
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+9)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram0
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_serialWrite:	; 0 bytes @ 0x0
?_reportWallSensors:	; 0 bytes @ 0x0
?_reportLineSensors:	; 0 bytes @ 0x0
?_pollWallSensorsTelemetry:	; 0 bytes @ 0x0
?_pollLineSensorsTelemetry:	; 0 bytes @ 0x0
?_setupGpio:	; 0 bytes @ 0x0
?_setupTimer:	; 0 bytes @ 0x0
?_setupADC:	; 0 bytes @ 0x0
?_adcCycle:	; 0 bytes @ 0x0
?_timerISR:	; 0 bytes @ 0x0
?_timer16BitISR:	; 0 bytes @ 0x0
??_timer16BitISR:	; 0 bytes @ 0x0
?_timer8BitISR:	; 0 bytes @ 0x0
??_timer8BitISR:	; 0 bytes @ 0x0
?_serialRxISR:	; 0 bytes @ 0x0
??_serialRxISR:	; 0 bytes @ 0x0
?_userIntISR:	; 0 bytes @ 0x0
?_serialTxISR:	; 0 bytes @ 0x0
??_serialTxISR:	; 0 bytes @ 0x0
?_adcISR:	; 0 bytes @ 0x0
??_adcISR:	; 0 bytes @ 0x0
?_null16BitTMRFunction:	; 0 bytes @ 0x0
??_null16BitTMRFunction:	; 0 bytes @ 0x0
?_nullTMRFunction:	; 0 bytes @ 0x0
??_nullTMRFunction:	; 0 bytes @ 0x0
?_configLowLvlADC:	; 0 bytes @ 0x0
?_nullIntFunction:	; 0 bytes @ 0x0
??_nullIntFunction:	; 0 bytes @ 0x0
?_extIntISR:	; 0 bytes @ 0x0
??_extIntISR:	; 0 bytes @ 0x0
?_rbIntISR:	; 0 bytes @ 0x0
??_rbIntISR:	; 0 bytes @ 0x0
?_init:	; 0 bytes @ 0x0
?_cycle:	; 0 bytes @ 0x0
?_pollWallSensors:	; 0 bytes @ 0x0
?_pollLineSensors:	; 0 bytes @ 0x0
?_set_gblInitialized_FlagValue:	; 0 bytes @ 0x0
?_set_gblISRLocked_FlagValue:	; 0 bytes @ 0x0
??_set_gblISRLocked_FlagValue:	; 0 bytes @ 0x0
?_clr_gblISRLocked_FlagValue:	; 0 bytes @ 0x0
??_clr_gblISRLocked_FlagValue:	; 0 bytes @ 0x0
?_inc_gui16TimerUsMSB_Value:	; 0 bytes @ 0x0
?_inc_gui16TimerMs_Value:	; 0 bytes @ 0x0
??_inc_gui16TimerMs_Value:	; 0 bytes @ 0x0
?_isr:	; 0 bytes @ 0x0
?_checkPinState:	; 1 bytes @ 0x0
?_isSerialBufferFull:	; 1 bytes @ 0x0
?_detectObstacle:	; 1 bytes @ 0x0
?_detectLine:	; 1 bytes @ 0x0
?_get_gblInitialized_FlagValue:	; 1 bytes @ 0x0
?_get_gblISRLocked_FlagValue:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
setupPBot@ui8Mode:	; 1 bytes @ 0x0
	global	inc_gui16TimerUsMSB_Value@ui16Value
inc_gui16TimerUsMSB_Value@ui16Value:	; 2 bytes @ 0x0
	ds	1
??_userIntISR:	; 0 bytes @ 0x1
	ds	1
??_timerISR:	; 0 bytes @ 0x2
??_inc_gui16TimerUsMSB_Value:	; 0 bytes @ 0x2
	ds	1
??_isr:	; 0 bytes @ 0x3
	ds	4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_serialWrite:	; 0 bytes @ 0x0
?_changePinState:	; 0 bytes @ 0x0
??_checkPinState:	; 0 bytes @ 0x0
?_configPin:	; 0 bytes @ 0x0
??_setupGpio:	; 0 bytes @ 0x0
??_setupTimer:	; 0 bytes @ 0x0
??_configLowLvlADC:	; 0 bytes @ 0x0
?_hal_setSerialBAUD:	; 0 bytes @ 0x0
??_isSerialBufferFull:	; 0 bytes @ 0x0
??_set_gblInitialized_FlagValue:	; 0 bytes @ 0x0
??_get_gblInitialized_FlagValue:	; 0 bytes @ 0x0
??_get_gblISRLocked_FlagValue:	; 0 bytes @ 0x0
	global	?_get_gui16TimerMs_Value
?_get_gui16TimerMs_Value:	; 2 bytes @ 0x0
	global	configPin@ui8Direction
configPin@ui8Direction:	; 1 bytes @ 0x0
	global	changePinState@eOperation
changePinState@eOperation:	; 1 bytes @ 0x0
	global	hal_setSerialBAUD@ui24Baudrate
hal_setSerialBAUD@ui24Baudrate:	; 3 bytes @ 0x0
	ds	1
??_changePinState:	; 0 bytes @ 0x1
??_configPin:	; 0 bytes @ 0x1
	global	get_gblInitialized_FlagValue@blTemp
get_gblInitialized_FlagValue@blTemp:	; 1 bytes @ 0x1
	global	get_gblISRLocked_FlagValue@blTemp
get_gblISRLocked_FlagValue@blTemp:	; 1 bytes @ 0x1
	global	serialWrite@ui8TxData
serialWrite@ui8TxData:	; 1 bytes @ 0x1
	ds	1
?_serialWriteString:	; 0 bytes @ 0x2
??_setupADC:	; 0 bytes @ 0x2
??_get_gui16TimerMs_Value:	; 0 bytes @ 0x2
	global	checkPinState@ui8PinStatus
checkPinState@ui8PinStatus:	; 1 bytes @ 0x2
	global	get_gui16TimerMs_Value@ui16Temp
get_gui16TimerMs_Value@ui16Temp:	; 2 bytes @ 0x2
	global	serialWriteString@pucStrTxData
serialWriteString@pucStrTxData:	; 2 bytes @ 0x2
	ds	1
?_setupSerial:	; 0 bytes @ 0x3
??_hal_setSerialBAUD:	; 0 bytes @ 0x3
	global	checkPinState@ui8PinMask
checkPinState@ui8PinMask:	; 1 bytes @ 0x3
	global	setupSerial@ui16Baudrate
setupSerial@ui16Baudrate:	; 2 bytes @ 0x3
	global	configPin@pui8PortDirReg
configPin@pui8PortDirReg:	; 2 bytes @ 0x3
	global	changePinState@pui8PortReg
changePinState@pui8PortReg:	; 2 bytes @ 0x3
	ds	1
??_serialWriteString:	; 0 bytes @ 0x4
?_printD:	; 0 bytes @ 0x4
	global	?_getMs
?_getMs:	; 2 bytes @ 0x4
	global	?_getElapsedMs
?_getElapsedMs:	; 2 bytes @ 0x4
	global	setupADC@eVrefSource
setupADC@eVrefSource:	; 1 bytes @ 0x4
	global	printD@strDCommandCode
printD@strDCommandCode:	; 2 bytes @ 0x4
	global	getElapsedMs@ui16TimeMs
getElapsedMs@ui16TimeMs:	; 2 bytes @ 0x4
	global	checkPinState@pui8PortReg
checkPinState@pui8PortReg:	; 2 bytes @ 0x4
	ds	1
??_setupSerial:	; 0 bytes @ 0x5
	global	configPin@ui8Pin
configPin@ui8Pin:	; 1 bytes @ 0x5
	global	changePinState@ui8Pin
changePinState@ui8Pin:	; 1 bytes @ 0x5
	ds	1
??_getMs:	; 0 bytes @ 0x6
??_getElapsedMs:	; 0 bytes @ 0x6
?_setupPBot:	; 0 bytes @ 0x6
	global	setupPBot@blObstaclePolarity
setupPBot@blObstaclePolarity:	; 1 bytes @ 0x6
	global	checkPinState@ui8Pin
checkPinState@ui8Pin:	; 1 bytes @ 0x6
	global	printD@strDParam1
printD@strDParam1:	; 2 bytes @ 0x6
	global	getMs@ui16TempBuff
getMs@ui16TempBuff:	; 2 bytes @ 0x6
	ds	1
?_readSensorOutput:	; 1 bytes @ 0x7
	global	readSensorOutput@blPolarity
readSensorOutput@blPolarity:	; 1 bytes @ 0x7
	global	setupPBot@blLinePolarity
setupPBot@blLinePolarity:	; 1 bytes @ 0x7
	ds	1
??_setupPBot:	; 0 bytes @ 0x8
?_setupTelemetry:	; 0 bytes @ 0x8
??_readSensorOutput:	; 0 bytes @ 0x8
	global	readSensorOutput@iSensorPin
readSensorOutput@iSensorPin:	; 1 bytes @ 0x8
	global	printD@strDParam2
printD@strDParam2:	; 2 bytes @ 0x8
	global	getElapsedMs@ui16TempBuff
getElapsedMs@ui16TempBuff:	; 2 bytes @ 0x8
	global	setupTelemetry@ui32DBaudRate
setupTelemetry@ui32DBaudRate:	; 4 bytes @ 0x8
	ds	1
??_pollWallSensors:	; 0 bytes @ 0x9
??_pollLineSensors:	; 0 bytes @ 0x9
	ds	1
??_printD:	; 0 bytes @ 0xA
??_adcCycle:	; 0 bytes @ 0xA
	global	printD@strDHeader
printD@strDHeader:	; 1 bytes @ 0xA
	ds	1
??_reportWallSensors:	; 0 bytes @ 0xB
??_reportLineSensors:	; 0 bytes @ 0xB
	global	pollWallSensors@blObstacleSensorPolarity
pollWallSensors@blObstacleSensorPolarity:	; 1 bytes @ 0xB
	global	pollLineSensors@blLineSensorPolarity
pollLineSensors@blLineSensorPolarity:	; 1 bytes @ 0xB
	global	reportWallSensors@ui8ObstacleLocation
reportWallSensors@ui8ObstacleLocation:	; 1 bytes @ 0xB
	global	reportLineSensors@ui8LineLocation
reportLineSensors@ui8LineLocation:	; 1 bytes @ 0xB
	ds	1
?_setupTelemetryID:	; 0 bytes @ 0xC
??_setupTelemetry:	; 0 bytes @ 0xC
??_detectObstacle:	; 0 bytes @ 0xC
??_detectLine:	; 0 bytes @ 0xC
	global	setupTelemetryID@ui32DBaudRate
setupTelemetryID@ui32DBaudRate:	; 4 bytes @ 0xC
	ds	1
??_pollWallSensorsTelemetry:	; 0 bytes @ 0xD
??_pollLineSensorsTelemetry:	; 0 bytes @ 0xD
	ds	1
	global	pollWallSensorsTelemetry@ui8ObstacleLocation
pollWallSensorsTelemetry@ui8ObstacleLocation:	; 1 bytes @ 0xE
	global	pollLineSensorsTelemetry@ui8LineLocation
pollLineSensorsTelemetry@ui8LineLocation:	; 1 bytes @ 0xE
	ds	1
?_pollSensors:	; 0 bytes @ 0xF
	global	pollSensors@ui16PollingInterval
pollSensors@ui16PollingInterval:	; 2 bytes @ 0xF
	ds	1
	global	setupTelemetryID@strDProtID
setupTelemetryID@strDProtID:	; 1 bytes @ 0x10
	ds	1
??_pollSensors:	; 0 bytes @ 0x11
??_setupTelemetryID:	; 0 bytes @ 0x11
??_cycle:	; 0 bytes @ 0x11
	ds	2
	global	setupTelemetryID@iCounter
setupTelemetryID@iCounter:	; 1 bytes @ 0x13
	ds	1
?_startDProtocol:	; 0 bytes @ 0x14
	global	startDProtocol@blEnableTelemetry
startDProtocol@blEnableTelemetry:	; 1 bytes @ 0x14
	ds	1
	global	startDProtocol@ui32DBaudRate
startDProtocol@ui32DBaudRate:	; 4 bytes @ 0x15
	ds	4
??_startDProtocol:	; 0 bytes @ 0x19
	ds	1
	global	startDProtocol@blEnableRemoteControl
startDProtocol@blEnableRemoteControl:	; 1 bytes @ 0x1A
	ds	1
?_setupPBotUART:	; 0 bytes @ 0x1B
	global	setupPBotUART@blObstaclePolarity
setupPBotUART@blObstaclePolarity:	; 1 bytes @ 0x1B
	ds	1
	global	setupPBotUART@blLinePolarity
setupPBotUART@blLinePolarity:	; 1 bytes @ 0x1C
	ds	1
	global	setupPBotUART@blEnableTelemetry
setupPBotUART@blEnableTelemetry:	; 1 bytes @ 0x1D
	ds	1
	global	setupPBotUART@ui32DBaudRate
setupPBotUART@ui32DBaudRate:	; 4 bytes @ 0x1E
	ds	4
??_setupPBotUART:	; 0 bytes @ 0x22
	ds	2
	global	setupPBotUART@blEnableRemoteControl
setupPBotUART@blEnableRemoteControl:	; 1 bytes @ 0x24
	ds	1
	global	setupPBotUART@ui8Mode
setupPBotUART@ui8Mode:	; 1 bytes @ 0x25
	ds	1
??_init:	; 0 bytes @ 0x26
??_main:	; 0 bytes @ 0x26
;!
;!Data Sizes:
;!    Strings     422
;!    Constant    0
;!    Data        11
;!    BSS         184
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      14
;!    BANK0            80     38      79
;!    BANK1            80      0      79
;!    BANK3            96      0      68
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    checkPinState@pui8PortReg	PTR unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), PORTA(SFR0[1]), 
;!
;!    changePinState@pui8PortReg	PTR unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), PORTE(SFR0[1]), PORTD(SFR0[1]), PORTC(SFR0[1]), 
;!		 -> PORTB(SFR0[1]), PORTA(SFR0[1]), 
;!
;!    configPin@pui8PortDirReg	PTR unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), TRISD(SFR1[1]), TRISC(SFR1[1]), TRISB(SFR1[1]), 
;!		 -> TRISE(SFR1[1]), TRISA(SFR1[1]), 
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
;!    serialWriteString@pucStrTxData	PTR const unsigned char  size(2) Largest target is 8192
;!		 -> ROM(CODE[8192]), STR_87(CODE[2]), STR_85(CODE[2]), STR_83(CODE[2]), 
;!		 -> STR_82(CODE[2]), STR_81(CODE[5]), STR_80(CODE[5]), STR_79(CODE[5]), 
;!		 -> STR_78(CODE[5]), STR_77(CODE[7]), STR_76(CODE[5]), STR_75(CODE[5]), 
;!		 -> STR_74(CODE[6]), STR_73(CODE[5]), STR_72(CODE[5]), STR_71(CODE[5]), 
;!		 -> STR_70(CODE[5]), STR_69(CODE[7]), STR_68(CODE[6]), STR_67(CODE[5]), 
;!		 -> STR_66(CODE[7]), STR_65(CODE[5]), STR_64(CODE[5]), STR_63(CODE[5]), 
;!		 -> STR_62(CODE[5]), STR_61(CODE[5]), STR_60(CODE[5]), STR_59(CODE[5]), 
;!		 -> STR_58(CODE[5]), STR_57(CODE[5]), STR_56(CODE[6]), STR_55(CODE[5]), 
;!		 -> STR_54(CODE[5]), STR_53(CODE[5]), STR_52(CODE[5]), STR_51(CODE[6]), 
;!		 -> STR_50(CODE[4]), STR_49(CODE[5]), STR_48(CODE[6]), STR_47(CODE[5]), 
;!		 -> STR_46(CODE[5]), STR_45(CODE[7]), STR_44(CODE[6]), STR_43(CODE[5]), 
;!		 -> STR_42(CODE[7]), STR_41(CODE[5]), STR_40(CODE[5]), STR_39(CODE[6]), 
;!		 -> STR_38(CODE[5]), STR_37(CODE[5]), STR_36(CODE[11]), STR_34(CODE[13]), 
;!		 -> STR_32(CODE[14]), STR_30(CODE[11]), STR_28(CODE[12]), STR_26(CODE[15]), 
;!		 -> STR_24(CODE[14]), STR_22(CODE[17]), STR_20(CODE[18]), STR_17(CODE[16]), 
;!		 -> STR_14(CODE[17]), STR_12(CODE[4]), STR_11(CODE[21]), STR_9(CODE[4]), 
;!		 -> STR_8(CODE[21]), STR_6(CODE[6]), STR_5(CODE[4]), STR_4(CODE[5]), 
;!		 -> STR_3(CODE[23]), STR_2(CODE[17]), STR_1(CODE[20]), strParam2(BANK1[7]), 
;!		 -> strParam1(BANK1[7]), strCommandCode(BANK1[5]), strDProtocolID(BANK0[4]), 
;!
;!    pt2TMR2ISR	PTR FTN()void  size(1) Largest target is 0
;!		 -> nullTMRFunction(), 
;!
;!    pt2TMR1ISR	PTR FTN()void  size(1) Largest target is 0
;!		 -> null16BitTMRFunction(), 
;!
;!    printD@strDParam2	PTR unsigned char  size(2) Largest target is 7
;!		 -> STR_81(CODE[5]), STR_78(CODE[5]), STR_75(CODE[5]), STR_72(CODE[5]), 
;!		 -> STR_69(CODE[7]), STR_66(CODE[7]), STR_63(CODE[5]), STR_60(CODE[5]), 
;!		 -> STR_57(CODE[5]), STR_54(CODE[5]), STR_51(CODE[6]), STR_48(CODE[6]), 
;!		 -> STR_45(CODE[7]), STR_42(CODE[7]), STR_39(CODE[6]), STR_6(CODE[6]), 
;!
;!    printD@strDParam1	PTR unsigned char  size(2) Largest target is 7
;!		 -> STR_80(CODE[5]), STR_77(CODE[7]), STR_74(CODE[6]), STR_71(CODE[5]), 
;!		 -> STR_68(CODE[6]), STR_65(CODE[5]), STR_62(CODE[5]), STR_59(CODE[5]), 
;!		 -> STR_56(CODE[6]), STR_53(CODE[5]), STR_50(CODE[4]), STR_47(CODE[5]), 
;!		 -> STR_44(CODE[6]), STR_41(CODE[5]), STR_38(CODE[5]), STR_5(CODE[4]), 
;!
;!    printD@strDCommandCode	PTR unsigned char  size(2) Largest target is 5
;!		 -> STR_79(CODE[5]), STR_76(CODE[5]), STR_73(CODE[5]), STR_70(CODE[5]), 
;!		 -> STR_67(CODE[5]), STR_64(CODE[5]), STR_61(CODE[5]), STR_58(CODE[5]), 
;!		 -> STR_55(CODE[5]), STR_52(CODE[5]), STR_49(CODE[5]), STR_46(CODE[5]), 
;!		 -> STR_43(CODE[5]), STR_40(CODE[5]), STR_37(CODE[5]), STR_4(CODE[5]), 
;!
;!    printD@strDHeader	PTR unsigned char  size(1) Largest target is 4
;!		 -> strDProtocolID(BANK0[4]), 
;!
;!    setupTelemetryID@strDProtID	PTR unsigned char  size(1) Largest target is 4
;!		 -> strDProtID(BANK1[4]), 
;!
;!    pollLineSensors@blLineSensorPolarity	PTR unsigned char  size(1) Largest target is 1
;!		 -> blLineSensorPolarity(BANK0[1]), 
;!
;!    pollWallSensors@blObstacleSensorPolarity	PTR unsigned char  size(1) Largest target is 1
;!		 -> blObstacleSensorPolarity(BANK0[1]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _isr in COMMON
;!
;!    _isr->_adcISR
;!    _userIntISR->_rbIntISR
;!    _timerISR->_inc_gui16TimerUsMSB_Value
;!
;!Critical Paths under _main in BANK0
;!
;!    _setupADC->_get_gblInitialized_FlagValue
;!    _init->_setupPBotUART
;!    _setupPBotUART->_startDProtocol
;!    _startDProtocol->_setupTelemetryID
;!    _setupTelemetryID->_setupTelemetry
;!    _setupTelemetry->_getMs
;!    _setupSerial->_hal_setSerialBAUD
;!    _setupPBot->_changePinState
;!    _setupPBot->_configPin
;!    _cycle->_pollSensors
;!    _pollSensors->_pollLineSensorsTelemetry
;!    _pollSensors->_pollWallSensorsTelemetry
;!    _pollWallSensorsTelemetry->_detectObstacle
;!    _reportWallSensors->_printD
;!    _detectObstacle->_pollWallSensors
;!    _pollWallSensors->_readSensorOutput
;!    _pollLineSensorsTelemetry->_detectLine
;!    _reportLineSensors->_printD
;!    _printD->_serialWriteString
;!    _serialWriteString->_serialWrite
;!    _detectLine->_pollLineSensors
;!    _pollLineSensors->_readSensorOutput
;!    _readSensorOutput->_checkPinState
;!    _adcCycle->_getElapsedMs
;!    _getMs->_get_gui16TimerMs_Value
;!    _getElapsedMs->_get_gui16TimerMs_Value
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0   18711
;!                           _adcCycle
;!                              _cycle
;!                               _init
;!       _set_gblInitialized_FlagValue
;!                           _setupADC
;!                          _setupGpio
;!                         _setupTimer
;! ---------------------------------------------------------------------------------
;! (1) _setupTimer                                           1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _setupGpio                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _setupADC                                             3     3      0      45
;!                                              2 BANK0      3     3      0
;!                    _configLowLvlADC
;!       _get_gblInitialized_FlagValue
;! ---------------------------------------------------------------------------------
;! (2) _get_gblInitialized_FlagValue                         2     2      0      23
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _configLowLvlADC                                      1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _set_gblInitialized_FlagValue                         1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0    3566
;!                      _setupPBotUART
;! ---------------------------------------------------------------------------------
;! (2) _setupPBotUART                                       11     4      7    3566
;!                                             27 BANK0     11     4      7
;!                          _setupPBot
;!                     _startDProtocol
;! ---------------------------------------------------------------------------------
;! (3) _startDProtocol                                       7     2      5     893
;!                                             20 BANK0      7     2      5
;!                   _setupTelemetryID
;! ---------------------------------------------------------------------------------
;! (4) _setupTelemetryID                                     8     3      5     701
;!                                             12 BANK0      8     3      5
;!                     _setupTelemetry
;! ---------------------------------------------------------------------------------
;! (5) _setupTelemetry                                       4     0      4     379
;!                                              8 BANK0      4     0      4
;!                              _getMs
;!                        _setupSerial
;! ---------------------------------------------------------------------------------
;! (6) _setupSerial                                          2     0      2     192
;!                                              3 BANK0      2     0      2
;!                  _hal_setSerialBAUD
;! ---------------------------------------------------------------------------------
;! (7) _hal_setSerialBAUD                                    3     0      3      96
;!                                              0 BANK0      3     0      3
;! ---------------------------------------------------------------------------------
;! (3) _setupPBot                                            4     2      2    2190
;!                                              6 BANK0      3     1      2
;!                     _changePinState
;!                          _configPin
;! ---------------------------------------------------------------------------------
;! (4) _configPin                                            6     5      1     828
;!                                              0 BANK0      6     5      1
;! ---------------------------------------------------------------------------------
;! (4) _changePinState                                       6     5      1    1212
;!                                              0 BANK0      6     5      1
;! ---------------------------------------------------------------------------------
;! (1) _cycle                                                0     0      0   14692
;!                        _pollSensors
;! ---------------------------------------------------------------------------------
;! (2) _pollSensors                                          2     0      2   14692
;!                                             15 BANK0      2     0      2
;!                       _getElapsedMs
;!                              _getMs
;!           _pollLineSensorsTelemetry
;!           _pollWallSensorsTelemetry
;! ---------------------------------------------------------------------------------
;! (3) _pollWallSensorsTelemetry                             2     2      0    7094
;!                                             13 BANK0      2     2      0
;!                     _detectObstacle
;!                  _reportWallSensors
;! ---------------------------------------------------------------------------------
;! (4) _reportWallSensors                                    1     1      0    6154
;!                                             11 BANK0      1     1      0
;!                             _printD
;! ---------------------------------------------------------------------------------
;! (4) _detectObstacle                                       1     1      0     906
;!                                             12 BANK0      1     1      0
;!                    _pollWallSensors
;! ---------------------------------------------------------------------------------
;! (5) _pollWallSensors                                      3     3      0     906
;!                                              9 BANK0      3     3      0
;!                   _readSensorOutput
;! ---------------------------------------------------------------------------------
;! (3) _pollLineSensorsTelemetry                             2     2      0    7094
;!                                             13 BANK0      2     2      0
;!                         _detectLine
;!                  _reportLineSensors
;! ---------------------------------------------------------------------------------
;! (4) _reportLineSensors                                    1     1      0    6154
;!                                             11 BANK0      1     1      0
;!                             _printD
;! ---------------------------------------------------------------------------------
;! (5) _printD                                               7     1      6    6123
;!                                              4 BANK0      7     1      6
;!                        _serialWrite
;!                  _serialWriteString
;! ---------------------------------------------------------------------------------
;! (6) _serialWriteString                                    2     0      2    2306
;!                                              2 BANK0      2     0      2
;!                        _serialWrite
;! ---------------------------------------------------------------------------------
;! (7) _serialWrite                                          2     2      0      31
;!                                              0 BANK0      2     2      0
;!                 _isSerialBufferFull
;! ---------------------------------------------------------------------------------
;! (8) _isSerialBufferFull                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _detectLine                                           1     1      0     906
;!                                             12 BANK0      1     1      0
;!                    _pollLineSensors
;! ---------------------------------------------------------------------------------
;! (5) _pollLineSensors                                      3     3      0     906
;!                                              9 BANK0      3     3      0
;!                   _readSensorOutput
;! ---------------------------------------------------------------------------------
;! (6) _readSensorOutput                                     2     1      1     783
;!                                              7 BANK0      2     1      1
;!                      _checkPinState
;! ---------------------------------------------------------------------------------
;! (7) _checkPinState                                        7     7      0     300
;!                                              0 BANK0      7     7      0
;! ---------------------------------------------------------------------------------
;! (1) _adcCycle                                             0     0      0     408
;!                       _getElapsedMs
;!                              _getMs
;! ---------------------------------------------------------------------------------
;! (6) _getMs                                                4     2      2      91
;!                                              4 BANK0      4     2      2
;!         _get_gblISRLocked_FlagValue
;!             _get_gui16TimerMs_Value
;! ---------------------------------------------------------------------------------
;! (3) _getElapsedMs                                         6     4      2     317
;!                                              4 BANK0      6     4      2
;!         _get_gblISRLocked_FlagValue
;!             _get_gui16TimerMs_Value
;! ---------------------------------------------------------------------------------
;! (7) _get_gui16TimerMs_Value                               4     2      2      34
;!                                              0 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (7) _get_gblISRLocked_FlagValue                           2     2      0      23
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (9) _isr                                                  4     4      0      75
;!                                              3 COMMON     4     4      0
;!                             _adcISR
;!         _clr_gblISRLocked_FlagValue
;!                        _serialRxISR
;!                        _serialTxISR
;!         _set_gblISRLocked_FlagValue
;!                      _timer16BitISR
;!                       _timer8BitISR
;!                           _timerISR
;!                         _userIntISR
;! ---------------------------------------------------------------------------------
;! (10) _userIntISR                                          0     0      0       0
;!                          _extIntISR
;!                           _rbIntISR
;! ---------------------------------------------------------------------------------
;! (11) _rbIntISR                                            1     1      0       0
;!                                              0 COMMON     1     1      0
;!                    _nullIntFunction *
;! ---------------------------------------------------------------------------------
;! (11) _extIntISR                                           0     0      0       0
;!                    _nullIntFunction *
;! ---------------------------------------------------------------------------------
;! (12) _nullIntFunction                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (10) _timerISR                                            0     0      0      75
;!             _inc_gui16TimerMs_Value
;!          _inc_gui16TimerUsMSB_Value
;! ---------------------------------------------------------------------------------
;! (11) _inc_gui16TimerUsMSB_Value                           2     0      2      75
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (11) _inc_gui16TimerMs_Value                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (10) _timer8BitISR                                        0     0      0       0
;!                    _nullTMRFunction *
;! ---------------------------------------------------------------------------------
;! (11) _nullTMRFunction                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (10) _timer16BitISR                                       0     0      0       0
;!               _null16BitTMRFunction *
;! ---------------------------------------------------------------------------------
;! (11) _null16BitTMRFunction                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (10) _set_gblISRLocked_FlagValue                          1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (10) _serialTxISR                                         1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (10) _serialRxISR                                         1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (10) _clr_gblISRLocked_FlagValue                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (10) _adcISR                                              3     3      0       0
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 12
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _adcCycle
;!     _getElapsedMs
;!       _get_gblISRLocked_FlagValue
;!       _get_gui16TimerMs_Value
;!     _getMs
;!       _get_gblISRLocked_FlagValue
;!       _get_gui16TimerMs_Value
;!   _cycle
;!     _pollSensors
;!       _getElapsedMs
;!         _get_gblISRLocked_FlagValue
;!         _get_gui16TimerMs_Value
;!       _getMs
;!         _get_gblISRLocked_FlagValue
;!         _get_gui16TimerMs_Value
;!       _pollLineSensorsTelemetry
;!         _detectLine
;!           _pollLineSensors
;!             _readSensorOutput
;!               _checkPinState
;!         _reportLineSensors
;!           _printD
;!             _serialWrite
;!               _isSerialBufferFull
;!             _serialWriteString
;!               _serialWrite
;!                 _isSerialBufferFull
;!       _pollWallSensorsTelemetry
;!         _detectObstacle
;!           _pollWallSensors
;!             _readSensorOutput
;!               _checkPinState
;!         _reportWallSensors
;!           _printD
;!             _serialWrite
;!               _isSerialBufferFull
;!             _serialWriteString
;!               _serialWrite
;!                 _isSerialBufferFull
;!   _init
;!     _setupPBotUART
;!       _setupPBot
;!         _changePinState
;!         _configPin
;!       _startDProtocol
;!         _setupTelemetryID
;!           _setupTelemetry
;!             _getMs
;!               _get_gblISRLocked_FlagValue
;!               _get_gui16TimerMs_Value
;!             _setupSerial
;!               _hal_setSerialBAUD
;!   _set_gblInitialized_FlagValue
;!   _setupADC
;!     _configLowLvlADC
;!     _get_gblInitialized_FlagValue
;!   _setupGpio
;!   _setupTimer
;!
;! _isr (ROOT)
;!   _adcISR
;!   _clr_gblISRLocked_FlagValue
;!   _serialRxISR
;!   _serialTxISR
;!   _set_gblISRLocked_FlagValue
;!   _timer16BitISR
;!     _null16BitTMRFunction *
;!   _timer8BitISR
;!     _nullTMRFunction *
;!   _timerISR
;!     _inc_gui16TimerMs_Value
;!     _inc_gui16TimerUsMSB_Value
;!   _userIntISR
;!     _extIntISR
;!       _nullIntFunction *
;!     _rbIntISR
;!       _nullIntFunction *
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0      44       9       70.8%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0      4F       7       98.8%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     26      4F       5       98.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      7       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      F0      12        0.0%
;!ABS                  0      0      F0       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 148 in file "hardware/cores\PhilRoboKit_CoreLib_Macro.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  572[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:   12
;; This function calls:
;;		_adcCycle
;;		_cycle
;;		_init
;;		_set_gblInitialized_FlagValue
;;		_setupADC
;;		_setupGpio
;;		_setupTimer
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	148
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	148
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	151
	
l6286:	
	fcall	_setupGpio
	line	153
	fcall	_setupTimer
	line	155
	movlw	(0)
	fcall	_setupADC
	line	162
	
l6288:	
	bsf	(95/8),(95)&7	;volatile
	
l6290:	
	bsf	(94/8),(94)&7	;volatile
	line	163
	fcall	_set_gblInitialized_FlagValue
	line	165
	
l6292:	
	fcall	_init
	line	167
	goto	l6294
	
l574:	
	line	170
	
l6294:	
	fcall	_adcCycle
	line	172
	
l6296:	
	fcall	_cycle
	goto	l6294
	line	173
	
l573:	
	line	167
	goto	l6294
	
l575:	
	line	176
;	Return value of _main is never used
	
l576:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_setupTimer

;; *************** function _setupTimer *****************
;; Defined at:
;;		line 71 in file "hardware/cores/lib\hal_timer.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_timer.c"
	line	71
global __ptext1
__ptext1:	;psect for function _setupTimer
psect	text1
	file	"hardware/cores/lib\hal_timer.c"
	line	71
	global	__size_of_setupTimer
	__size_of_setupTimer	equ	__end_of_setupTimer-_setupTimer
	
_setupTimer:	
;incstack = 0
	opt	stack 3
; Regs used in _setupTimer: [wreg+status,2+status,0]
	line	74
	
l4376:	
	movlw	(0F8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setupTimer+0)+0
	movf	(??_setupTimer+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(129)^080h,f	;volatile
	
l4378:	
	bsf	(129)^080h+(0/8),(0)&7	;volatile
	line	76
	
l4380:	
	bcf	(1037/8)^080h,(1037)&7	;volatile
	
l4382:	
	bcf	(1035/8)^080h,(1035)&7	;volatile
	
l4384:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	84
	
l4386:	
	bcf	(90/8),(90)&7	;volatile
	line	85
	
l4388:	
	bsf	(93/8),(93)&7	;volatile
	line	86
	
l1156:	
	return
	opt stack 0
GLOBAL	__end_of_setupTimer
	__end_of_setupTimer:
	signat	_setupTimer,88
	global	_setupGpio

;; *************** function _setupGpio *****************
;; Defined at:
;;		line 65 in file "hardware/cores/lib\corelib_gpio.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_gpio.c"
	line	65
global __ptext2
__ptext2:	;psect for function _setupGpio
psect	text2
	file	"hardware/cores/lib\corelib_gpio.c"
	line	65
	global	__size_of_setupGpio
	__size_of_setupGpio	equ	__end_of_setupGpio-_setupGpio
	
_setupGpio:	
;incstack = 0
	opt	stack 3
; Regs used in _setupGpio: [wreg+status,2]
	line	69
	
l5866:	
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
	
l5868:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	74
	
l5870:	
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
	
l796:	
	return
	opt stack 0
GLOBAL	__end_of_setupGpio
	__end_of_setupGpio:
	signat	_setupGpio,88
	global	_setupADC

;; *************** function _setupADC *****************
;; Defined at:
;;		line 220 in file "hardware/cores/lib\corelib_adc.c"
;; Parameters:    Size  Location     Type
;;  eVrefSource     1    wreg     enum E1462
;; Auto vars:     Size  Location     Type
;;  eVrefSource     1    4[BANK0 ] enum E1462
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_configLowLvlADC
;;		_get_gblInitialized_FlagValue
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_adc.c"
	line	220
global __ptext3
__ptext3:	;psect for function _setupADC
psect	text3
	file	"hardware/cores/lib\corelib_adc.c"
	line	220
	global	__size_of_setupADC
	__size_of_setupADC	equ	__end_of_setupADC-_setupADC
	
_setupADC:	
;incstack = 0
	opt	stack 2
; Regs used in _setupADC: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setupADC@eVrefSource)
	line	223
	
l4390:	
	bcf	(248/8),(248)&7	;volatile
	line	225
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(133)^080h+(0/8),(0)&7	;volatile
	line	226
	bsf	(133)^080h+(1/8),(1)&7	;volatile
	line	227
	bsf	(133)^080h+(2/8),(2)&7	;volatile
	line	228
	bsf	(133)^080h+(5/8),(5)&7	;volatile
	line	229
	bsf	(137)^080h+(0/8),(0)&7	;volatile
	line	230
	bsf	(137)^080h+(1/8),(1)&7	;volatile
	line	231
	bsf	(137)^080h+(2/8),(2)&7	;volatile
	line	233
	
l4392:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setupADC@eVrefSource),w
	xorlw	01h
	skipz
	goto	u3281
	goto	u3280
u3281:
	goto	l4398
u3280:
	line	236
	
l4394:	
	movlw	(0F0h)
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(159)^080h,f	;volatile
	
l4396:	
	bsf	(159)^080h+(0/8),(0)&7	;volatile
	line	240
	goto	l4402
	line	241
	
l716:	
	line	244
	
l4398:	
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(159)^080h,f	;volatile
	
l4400:	
	movf	(159)^080h,w	;volatile
	goto	l4402
	line	248
	
l717:	
	line	250
	
l4402:	
	fcall	_configLowLvlADC
	line	252
	
l4404:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_eCurrentChannel)
	line	253
	
l4406:	
	movlw	(0C7h)
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	andwf	(31),f	;volatile
	
l4408:	
	movf	(_eCurrentChannel),w
	movwf	(??_setupADC+0)+0
	movlw	(03h)-1
u3295:
	clrc
	rlf	(??_setupADC+0)+0,f
	addlw	-1
	skipz
	goto	u3295
	clrc
	rlf	(??_setupADC+0)+0,w
	andlw	038h
	movwf	(??_setupADC+1)+0
	movf	(??_setupADC+1)+0,w
	iorwf	(31),f	;volatile
	line	255
	
l4410:	
	bcf	(102/8),(102)&7	;volatile
	line	256
	
l4412:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1126/8)^080h,(1126)&7	;volatile
	line	258
	
l4414:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7	;volatile
	line	259
	goto	l718
	
l719:	
	
l718:	
	btfsc	(95/8),(95)&7	;volatile
	goto	u3301
	goto	u3300
u3301:
	goto	l722
u3300:
	
l4416:	
	fcall	_get_gblInitialized_FlagValue
	xorlw	01h
	skipnz
	goto	u3311
	goto	u3310
u3311:
	goto	l718
u3310:
	goto	l722
	
l721:	
	
l722:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	
l4418:	
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_setupADC+0)+0,f
u5257:
decfsz	(??_setupADC+0)+0,f
	goto	u5257
	nop
opt asmopt_on

	
l4420:	
	bsf	(95/8),(95)&7	;volatile
	
l4422:	
	bsf	(94/8),(94)&7	;volatile
	line	261
	
l4424:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	262
	
l723:	
	return
	opt stack 0
GLOBAL	__end_of_setupADC
	__end_of_setupADC:
	signat	_setupADC,4216
	global	_get_gblInitialized_FlagValue

;; *************** function _get_gblInitialized_FlagValue *****************
;; Defined at:
;;		line 65 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  blTemp          1    1[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupADC
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	65
global __ptext4
__ptext4:	;psect for function _get_gblInitialized_FlagValue
psect	text4
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	65
	global	__size_of_get_gblInitialized_FlagValue
	__size_of_get_gblInitialized_FlagValue	equ	__end_of_get_gblInitialized_FlagValue-_get_gblInitialized_FlagValue
	
_get_gblInitialized_FlagValue:	
;incstack = 0
	opt	stack 2
; Regs used in _get_gblInitialized_FlagValue: [wreg]
	line	68
	
l4196:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gblInitialized),w	;volatile
	movwf	(??_get_gblInitialized_FlagValue+0)+0
	movf	(??_get_gblInitialized_FlagValue+0)+0,w
	movwf	(get_gblInitialized_FlagValue@blTemp)
	line	69
	movf	(get_gblInitialized_FlagValue@blTemp),w
	goto	l496
	
l4198:	
	line	70
	
l496:	
	return
	opt stack 0
GLOBAL	__end_of_get_gblInitialized_FlagValue
	__end_of_get_gblInitialized_FlagValue:
	signat	_get_gblInitialized_FlagValue,89
	global	_configLowLvlADC

;; *************** function _configLowLvlADC *****************
;; Defined at:
;;		line 92 in file "hardware/cores/lib\hal_adc.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupADC
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_adc.c"
	line	92
global __ptext5
__ptext5:	;psect for function _configLowLvlADC
psect	text5
	file	"hardware/cores/lib\hal_adc.c"
	line	92
	global	__size_of_configLowLvlADC
	__size_of_configLowLvlADC	equ	__end_of_configLowLvlADC-_configLowLvlADC
	
_configLowLvlADC:	
;incstack = 0
	opt	stack 2
; Regs used in _configLowLvlADC: [wreg+status,2+status,0]
	line	95
	
l4222:	
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_configLowLvlADC+0)+0
	movf	(??_configLowLvlADC+0)+0,w
	andwf	(31),f	;volatile
	
l4224:	
	bsf	(31)+(7/8),(7)&7	;volatile
	
l4226:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1278/8)^080h,(1278)&7	;volatile
	line	100
	
l4228:	
	bsf	(1279/8)^080h,(1279)&7	;volatile
	line	101
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_configLowLvlADC
	__end_of_configLowLvlADC:
	signat	_configLowLvlADC,88
	global	_set_gblInitialized_FlagValue

;; *************** function _set_gblInitialized_FlagValue *****************
;; Defined at:
;;		line 60 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	60
global __ptext6
__ptext6:	;psect for function _set_gblInitialized_FlagValue
psect	text6
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	60
	global	__size_of_set_gblInitialized_FlagValue
	__size_of_set_gblInitialized_FlagValue	equ	__end_of_set_gblInitialized_FlagValue-_set_gblInitialized_FlagValue
	
_set_gblInitialized_FlagValue:	
;incstack = 0
	opt	stack 3
; Regs used in _set_gblInitialized_FlagValue: [wreg]
	line	62
	
l4354:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_set_gblInitialized_FlagValue+0)+0
	movf	(??_set_gblInitialized_FlagValue+0)+0,w
	movwf	(_gblInitialized)	;volatile
	line	63
	
l493:	
	return
	opt stack 0
GLOBAL	__end_of_set_gblInitialized_FlagValue
	__end_of_set_gblInitialized_FlagValue:
	signat	_set_gblInitialized_FlagValue,88
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 22 in file "C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\Telemetry_DProtocol.phr.c"
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
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_setupPBotUART
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\Telemetry_DProtocol.phr.c"
	line	22
global __ptext7
__ptext7:	;psect for function _init
psect	text7
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\Telemetry_DProtocol.phr.c"
	line	22
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	24
	
l5862:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setupPBotUART@blObstaclePolarity)
	clrf	(setupPBotUART@blLinePolarity)
	incf	(setupPBotUART@blLinePolarity),f
	clrf	(setupPBotUART@blEnableTelemetry)
	incf	(setupPBotUART@blEnableTelemetry),f
	movlw	0
	movwf	(setupPBotUART@ui32DBaudRate+3)
	movlw	0
	movwf	(setupPBotUART@ui32DBaudRate+2)
	movlw	025h
	movwf	(setupPBotUART@ui32DBaudRate+1)
	movlw	080h
	movwf	(setupPBotUART@ui32DBaudRate)

	movlw	(0)
	fcall	_setupPBotUART
	line	29
	
l7:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_setupPBotUART

;; *************** function _setupPBotUART *****************
;; Defined at:
;;		line 58 in file "libraries/Mobot_Lib\Mobot_Lib.c"
;; Parameters:    Size  Location     Type
;;  ui8Mode         1    wreg     unsigned char 
;;  blObstaclePo    1   27[BANK0 ] unsigned char 
;;  blLinePolari    1   28[BANK0 ] unsigned char 
;;  blEnableTele    1   29[BANK0 ] unsigned char 
;;  ui32DBaudRat    4   30[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  ui8Mode         1   37[BANK0 ] unsigned char 
;;  blEnableRemo    1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       7       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_setupPBot
;;		_startDProtocol
;; This function is called by:
;;		_init
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	58
global __ptext8
__ptext8:	;psect for function _setupPBotUART
psect	text8
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	58
	global	__size_of_setupPBotUART
	__size_of_setupPBotUART	equ	__end_of_setupPBotUART-_setupPBotUART
	
_setupPBotUART:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _setupPBotUART: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setupPBotUART@ui8Mode)
	line	60
	
l5846:	
	clrf	(setupPBotUART@blEnableRemoteControl)
	line	62
	
l5848:	
	movf	(setupPBotUART@ui8Mode),w
	xorlw	03h
	skipz
	goto	u4771
	goto	u4770
u4771:
	goto	l5852
u4770:
	line	64
	
l5850:	
	clrf	(setupPBotUART@blEnableRemoteControl)
	incf	(setupPBotUART@blEnableRemoteControl),f
	goto	l5852
	line	65
	
l299:	
	line	67
	
l5852:	
	movf	(setupPBotUART@blObstaclePolarity),w
	movwf	(??_setupPBotUART+0)+0
	movf	(??_setupPBotUART+0)+0,w
	movwf	(setupPBot@blObstaclePolarity)
	movf	(setupPBotUART@blLinePolarity),w
	movwf	(??_setupPBotUART+1)+0
	movf	(??_setupPBotUART+1)+0,w
	movwf	(setupPBot@blLinePolarity)
	movf	(setupPBotUART@ui8Mode),w
	fcall	_setupPBot
	line	68
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setupPBotUART@blEnableTelemetry),w
	movwf	(??_setupPBotUART+0)+0
	movf	(??_setupPBotUART+0)+0,w
	movwf	(startDProtocol@blEnableTelemetry)
	movf	(setupPBotUART@ui32DBaudRate+3),w
	movwf	(startDProtocol@ui32DBaudRate+3)
	movf	(setupPBotUART@ui32DBaudRate+2),w
	movwf	(startDProtocol@ui32DBaudRate+2)
	movf	(setupPBotUART@ui32DBaudRate+1),w
	movwf	(startDProtocol@ui32DBaudRate+1)
	movf	(setupPBotUART@ui32DBaudRate),w
	movwf	(startDProtocol@ui32DBaudRate)

	movf	(setupPBotUART@blEnableRemoteControl),w
	fcall	_startDProtocol
	line	69
	
l300:	
	return
	opt stack 0
GLOBAL	__end_of_setupPBotUART
	__end_of_setupPBotUART:
	signat	_setupPBotUART,20600
	global	_startDProtocol

;; *************** function _startDProtocol *****************
;; Defined at:
;;		line 246 in file "libraries/Mobot_Lib\Mobot_Lib.c"
;; Parameters:    Size  Location     Type
;;  blEnableRemo    1    wreg     unsigned char 
;;  blEnableTele    1   20[BANK0 ] unsigned char 
;;  ui32DBaudRat    4   21[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  blEnableRemo    1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setupTelemetryID
;; This function is called by:
;;		_setupPBotUART
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	246
global __ptext9
__ptext9:	;psect for function _startDProtocol
psect	text9
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	246
	global	__size_of_startDProtocol
	__size_of_startDProtocol	equ	__end_of_startDProtocol-_startDProtocol
	
_startDProtocol:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _startDProtocol: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(startDProtocol@blEnableRemoteControl)
	line	248
	
l5834:	
	movf	(startDProtocol@blEnableRemoteControl),w
	skipz
	goto	u4760
	goto	l360
u4760:
	line	250
	
l5836:	
	movf	(startDProtocol@ui32DBaudRate+3),w
	movwf	(setupTelemetryID@ui32DBaudRate+3)
	movf	(startDProtocol@ui32DBaudRate+2),w
	movwf	(setupTelemetryID@ui32DBaudRate+2)
	movf	(startDProtocol@ui32DBaudRate+1),w
	movwf	(setupTelemetryID@ui32DBaudRate+1)
	movf	(startDProtocol@ui32DBaudRate),w
	movwf	(setupTelemetryID@ui32DBaudRate)

	movlw	(_strDProtID)&0ffh
	movwf	(??_startDProtocol+0)+0
	movf	(??_startDProtocol+0)+0,w
	movwf	(setupTelemetryID@strDProtID)
	fcall	_setupTelemetryID
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l360
	line	251
	
l359:	
	line	260
	
l360:	
	return
	opt stack 0
GLOBAL	__end_of_startDProtocol
	__end_of_startDProtocol:
	signat	_startDProtocol,12408
	global	_setupTelemetryID

;; *************** function _setupTelemetryID *****************
;; Defined at:
;;		line 44 in file "libraries/Mobot_Lib\Telemetry.c"
;; Parameters:    Size  Location     Type
;;  ui32DBaudRat    4   12[BANK0 ] unsigned long 
;;  strDProtID      1   16[BANK0 ] PTR unsigned char 
;;		 -> strDProtID(4), 
;; Auto vars:     Size  Location     Type
;;  iCounter        1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_setupTelemetry
;; This function is called by:
;;		_startDProtocol
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"libraries/Mobot_Lib\Telemetry.c"
	line	44
global __ptext10
__ptext10:	;psect for function _setupTelemetryID
psect	text10
	file	"libraries/Mobot_Lib\Telemetry.c"
	line	44
	global	__size_of_setupTelemetryID
	__size_of_setupTelemetryID	equ	__end_of_setupTelemetryID-_setupTelemetryID
	
_setupTelemetryID:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _setupTelemetryID: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	48
	
l5806:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setupTelemetryID@iCounter)
	
l5808:	
	movlw	(04h)
	subwf	(setupTelemetryID@iCounter),w
	skipc
	goto	u4731
	goto	u4730
u4731:
	goto	l5812
u4730:
	goto	l5818
	
l5810:	
	goto	l5818
	line	49
	
l429:	
	line	50
	
l5812:	
	movf	(setupTelemetryID@iCounter),w
	addwf	(setupTelemetryID@strDProtID),w
	movwf	(??_setupTelemetryID+0)+0
	movf	0+(??_setupTelemetryID+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_setupTelemetryID+1)+0
	movf	(setupTelemetryID@iCounter),w
	addlw	_strDProtocolID&0ffh
	movwf	fsr0
	movf	(??_setupTelemetryID+1)+0,w
	movwf	indf
	line	48
	
l5814:	
	movlw	(01h)
	movwf	(??_setupTelemetryID+0)+0
	movf	(??_setupTelemetryID+0)+0,w
	addwf	(setupTelemetryID@iCounter),f
	
l5816:	
	movlw	(04h)
	subwf	(setupTelemetryID@iCounter),w
	skipc
	goto	u4741
	goto	u4740
u4741:
	goto	l5812
u4740:
	goto	l5818
	
l430:	
	line	53
	
l5818:	
	movf	(setupTelemetryID@ui32DBaudRate+3),w
	movwf	(setupTelemetry@ui32DBaudRate+3)
	movf	(setupTelemetryID@ui32DBaudRate+2),w
	movwf	(setupTelemetry@ui32DBaudRate+2)
	movf	(setupTelemetryID@ui32DBaudRate+1),w
	movwf	(setupTelemetry@ui32DBaudRate+1)
	movf	(setupTelemetryID@ui32DBaudRate),w
	movwf	(setupTelemetry@ui32DBaudRate)

	fcall	_setupTelemetry
	line	54
	
l431:	
	return
	opt stack 0
GLOBAL	__end_of_setupTelemetryID
	__end_of_setupTelemetryID:
	signat	_setupTelemetryID,8312
	global	_setupTelemetry

;; *************** function _setupTelemetry *****************
;; Defined at:
;;		line 56 in file "libraries/Mobot_Lib\Telemetry.c"
;; Parameters:    Size  Location     Type
;;  ui32DBaudRat    4    8[BANK0 ] unsigned long 
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
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_getMs
;;		_setupSerial
;; This function is called by:
;;		_setupTelemetryID
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	56
global __ptext11
__ptext11:	;psect for function _setupTelemetry
psect	text11
	file	"libraries/Mobot_Lib\Telemetry.c"
	line	56
	global	__size_of_setupTelemetry
	__size_of_setupTelemetry	equ	__end_of_setupTelemetry-_setupTelemetry
	
_setupTelemetry:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _setupTelemetry: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	58
	
l5674:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setupTelemetry@ui32DBaudRate+1),w
	clrf	(setupSerial@ui16Baudrate+1)
	addwf	(setupSerial@ui16Baudrate+1)
	movf	(setupTelemetry@ui32DBaudRate),w
	clrf	(setupSerial@ui16Baudrate)
	addwf	(setupSerial@ui16Baudrate)

	fcall	_setupSerial
	line	59
	
l5676:	
	fcall	_getMs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_getMs)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_ui16PollIntTimer+1)^080h
	addwf	(_ui16PollIntTimer+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_getMs)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_ui16PollIntTimer)^080h
	addwf	(_ui16PollIntTimer)^080h

	line	60
	
l434:	
	return
	opt stack 0
GLOBAL	__end_of_setupTelemetry
	__end_of_setupTelemetry:
	signat	_setupTelemetry,4216
	global	_setupSerial

;; *************** function _setupSerial *****************
;; Defined at:
;;		line 72 in file "hardware/cores/lib\corelib_uart.c"
;; Parameters:    Size  Location     Type
;;  ui16Baudrate    2    3[BANK0 ] unsigned int 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_hal_setSerialBAUD
;; This function is called by:
;;		_setupTelemetry
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_uart.c"
	line	72
global __ptext12
__ptext12:	;psect for function _setupSerial
psect	text12
	file	"hardware/cores/lib\corelib_uart.c"
	line	72
	global	__size_of_setupSerial
	__size_of_setupSerial	equ	__end_of_setupSerial-_setupSerial
	
_setupSerial:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _setupSerial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	75
	
l5632:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	0+(_stUARTTXFiFo)^0180h+020h
	line	76
	clrf	0+(_stUARTTXFiFo)^0180h+021h
	line	77
	clrf	0+(_stUARTRXFiFo)^0180h+020h
	line	78
	clrf	0+(_stUARTRXFiFo)^0180h+021h
	line	80
	
l5634:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setupSerial@ui16Baudrate),w
	movwf	(hal_setSerialBAUD@ui24Baudrate)
	movf	(setupSerial@ui16Baudrate+1),w
	movwf	(hal_setSerialBAUD@ui24Baudrate+1)
	clrf	(hal_setSerialBAUD@ui24Baudrate+2)
	fcall	_hal_setSerialBAUD
	line	82
	
l5636:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7	;volatile
	
l5638:	
	bcf	(1220/8)^080h,(1220)&7	;volatile
	
l5640:	
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	83
	
l5642:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(198/8),(198)&7	;volatile
	
l5644:	
	bsf	(196/8),(196)&7	;volatile
	
l5646:	
	bsf	(199/8),(199)&7	;volatile
	line	85
	
l5648:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	86
	
l5650:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(100/8),(100)&7	;volatile
	line	88
	
l5652:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	89
	
l5654:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7	;volatile
	line	90
	
l900:	
	return
	opt stack 0
GLOBAL	__end_of_setupSerial
	__end_of_setupSerial:
	signat	_setupSerial,4216
	global	_hal_setSerialBAUD

;; *************** function _hal_setSerialBAUD *****************
;; Defined at:
;;		line 69 in file "hardware/cores/lib\hal_uart.c"
;; Parameters:    Size  Location     Type
;;  ui24Baudrate    3    0[BANK0 ] unsigned um
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
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupSerial
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_uart.c"
	line	69
global __ptext13
__ptext13:	;psect for function _hal_setSerialBAUD
psect	text13
	file	"hardware/cores/lib\hal_uart.c"
	line	69
	global	__size_of_hal_setSerialBAUD
	__size_of_hal_setSerialBAUD	equ	__end_of_hal_setSerialBAUD-_hal_setSerialBAUD
	
_hal_setSerialBAUD:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _hal_setSerialBAUD: [wreg-fsr0h+status,2+status,0]
	line	71
	
l5536:	
	goto	l5558
	line	73
	
l1173:	
	line	75
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	76
	
l5538:	
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	80
	goto	l1183
	line	83
	
l1175:	
	line	85
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	86
	
l5540:	
	movlw	(014h)
	movwf	(153)^080h	;volatile
	line	90
	goto	l1183
	line	95
	
l1176:	
	line	97
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	98
	
l5542:	
	movlw	(0Ah)
	movwf	(153)^080h	;volatile
	line	102
	goto	l1183
	line	107
	
l1177:	
	line	109
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	110
	
l5544:	
	movlw	(040h)
	movwf	(153)^080h	;volatile
	line	114
	goto	l1183
	line	117
	
l1178:	
	line	119
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1218/8)^080h,(1218)&7	;volatile
	line	120
	
l5546:	
	movlw	(040h)
	movwf	(153)^080h	;volatile
	line	124
	goto	l1183
	line	127
	
l1179:	
	line	129
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	130
	
l5548:	
	movlw	(020h)
	movwf	(153)^080h	;volatile
	line	134
	goto	l1183
	line	137
	
l1180:	
	line	139
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1218/8)^080h,(1218)&7	;volatile
	line	140
	
l5550:	
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	144
	goto	l1183
	line	149
	
l1181:	
	line	151
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1218/8)^080h,(1218)&7	;volatile
	line	152
	
l5552:	
	movlw	(0FFh)
	movwf	(153)^080h	;volatile
	line	156
	goto	l1183
	line	161
	
l1182:	
	line	163
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	164
	
l5554:	
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	168
	goto	l1183
	line	170
	
l5556:	
	goto	l1183
	line	71
	
l1172:	
	
l5558:	
	; Switch on 3 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf (hal_setSerialBAUD@ui24Baudrate+2),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l6488
	goto	l1182
	opt asmopt_on
	
l6488:	
; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 8 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 4 to 225
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (hal_setSerialBAUD@ui24Baudrate+1),w
	opt asmopt_off
	xorlw	4^0	; case 4
	skipnz
	goto	l6490
	xorlw	9^4	; case 9
	skipnz
	goto	l6492
	xorlw	18^9	; case 18
	skipnz
	goto	l6494
	xorlw	37^18	; case 37
	skipnz
	goto	l6496
	xorlw	75^37	; case 75
	skipnz
	goto	l6498
	xorlw	150^75	; case 150
	skipnz
	goto	l6500
	xorlw	194^150	; case 194
	skipnz
	goto	l6502
	xorlw	225^194	; case 225
	skipnz
	goto	l6504
	goto	l1182
	opt asmopt_on
	
l6490:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 176 to 176
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (hal_setSerialBAUD@ui24Baudrate),w
	opt asmopt_off
	xorlw	176^0	; case 176
	skipnz
	goto	l1181
	goto	l1182
	opt asmopt_on
	
l6492:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 96 to 96
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (hal_setSerialBAUD@ui24Baudrate),w
	opt asmopt_off
	xorlw	96^0	; case 96
	skipnz
	goto	l1180
	goto	l1182
	opt asmopt_on
	
l6494:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 192 to 192
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (hal_setSerialBAUD@ui24Baudrate),w
	opt asmopt_off
	xorlw	192^0	; case 192
	skipnz
	goto	l1178
	goto	l1182
	opt asmopt_on
	
l6496:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 128 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (hal_setSerialBAUD@ui24Baudrate),w
	opt asmopt_off
	xorlw	128^0	; case 128
	skipnz
	goto	l1173
	goto	l1182
	opt asmopt_on
	
l6498:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (hal_setSerialBAUD@ui24Baudrate),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1177
	goto	l1182
	opt asmopt_on
	
l6500:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (hal_setSerialBAUD@ui24Baudrate),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1179
	goto	l1182
	opt asmopt_on
	
l6502:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (hal_setSerialBAUD@ui24Baudrate),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1176
	goto	l1182
	opt asmopt_on
	
l6504:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (hal_setSerialBAUD@ui24Baudrate),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1175
	goto	l1182
	opt asmopt_on

	line	170
	
l1174:	
	line	171
	
l1183:	
	return
	opt stack 0
GLOBAL	__end_of_hal_setSerialBAUD
	__end_of_hal_setSerialBAUD:
	signat	_hal_setSerialBAUD,4216
	global	_setupPBot

;; *************** function _setupPBot *****************
;; Defined at:
;;		line 72 in file "libraries/Mobot_Lib\Mobot_Lib.c"
;; Parameters:    Size  Location     Type
;;  ui8Mode         1    wreg     unsigned char 
;;  blObstaclePo    1    6[BANK0 ] unsigned char 
;;  blLinePolari    1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Mode         1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_changePinState
;;		_configPin
;; This function is called by:
;;		_setupPBotUART
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	72
global __ptext14
__ptext14:	;psect for function _setupPBot
psect	text14
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	72
	global	__size_of_setupPBot
	__size_of_setupPBot	equ	__end_of_setupPBot-_setupPBot
	
_setupPBot:	
;incstack = 0
	opt	stack 0
; Regs used in _setupPBot: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	74
	
l4138:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setupPBot@blObstaclePolarity)
	movlw	0
	skipnz
	movlw	1
	movwf	(??_setupPBot+0)+0
	movf	(??_setupPBot+0)+0,w
	movwf	(_blObstacleSensorPolarity)
	line	75
	movf	(setupPBot@blLinePolarity),w
	movwf	(??_setupPBot+0)+0
	movf	(??_setupPBot+0)+0,w
	movwf	(_blLineSensorPolarity)
	line	77
	
l4140:	
	clrf	(configPin@ui8Direction)
	incf	(configPin@ui8Direction),f
	movlw	(03h)
	fcall	_configPin
	line	78
	
l4142:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	incf	(configPin@ui8Direction),f
	movlw	(0)
	fcall	_configPin
	line	79
	
l4144:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	incf	(configPin@ui8Direction),f
	movlw	(04h)
	fcall	_configPin
	line	81
	
l4146:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	incf	(configPin@ui8Direction),f
	movlw	(09h)
	fcall	_configPin
	line	82
	
l4148:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	incf	(configPin@ui8Direction),f
	movlw	(05h)
	fcall	_configPin
	line	83
	
l4150:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	incf	(configPin@ui8Direction),f
	movlw	(0Ah)
	fcall	_configPin
	line	85
	
l4152:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(08h)
	fcall	_changePinState
	line	86
	
l4154:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(01h)
	fcall	_changePinState
	line	87
	
l4156:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(02h)
	fcall	_changePinState
	line	88
	
l4158:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(0Bh)
	fcall	_changePinState
	line	89
	
l4160:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	movlw	(08h)
	fcall	_configPin
	line	90
	
l4162:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	movlw	(01h)
	fcall	_configPin
	line	91
	
l4164:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	movlw	(02h)
	fcall	_configPin
	line	92
	
l4166:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	movlw	(0Bh)
	fcall	_configPin
	line	107
	
l303:	
	return
	opt stack 0
GLOBAL	__end_of_setupPBot
	__end_of_setupPBot:
	signat	_setupPBot,12408
	global	_configPin

;; *************** function _configPin *****************
;; Defined at:
;;		line 66 in file "hardware/cores/lib\hal_gpio.c"
;; Parameters:    Size  Location     Type
;;  ui8Pin          1    wreg     unsigned char 
;;  ui8Direction    1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Pin          1    5[BANK0 ] unsigned char 
;;  pui8PortDirR    2    3[BANK0 ] PTR unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupPBot
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_gpio.c"
	line	66
global __ptext15
__ptext15:	;psect for function _configPin
psect	text15
	file	"hardware/cores/lib\hal_gpio.c"
	line	66
	global	__size_of_configPin
	__size_of_configPin	equ	__end_of_configPin-_configPin
	
_configPin:	
;incstack = 0
	opt	stack 0
; Regs used in _configPin: [wreg-fsr0h+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(configPin@ui8Pin)
	line	68
	
l3978:	
	clrf	(configPin@pui8PortDirReg)
	clrf	(configPin@pui8PortDirReg+1)
	line	71
	
l3980:	
	movlw	(08h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2591
	goto	u2590
u2591:
	goto	l3984
u2590:
	line	73
	
l3982:	
	movlw	high(135)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(135)
	movwf	(configPin@pui8PortDirReg)
	line	77
	goto	l4016
	line	79
	
l1075:	
	
l3984:	
	movlw	(0Eh)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2601
	goto	u2600
u2601:
	goto	l3990
u2600:
	line	81
	
l3986:	
	movlw	low(08h)
	subwf	(configPin@ui8Pin),f
	line	82
	
l3988:	
	movlw	high(134)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(134)
	movwf	(configPin@pui8PortDirReg)
	line	86
	goto	l4016
	line	88
	
l1077:	
	
l3990:	
	movlw	(015h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2611
	goto	u2610
u2611:
	goto	l4010
u2610:
	line	90
	
l3992:	
	movlw	low(0Eh)
	subwf	(configPin@ui8Pin),f
	line	93
	
l3994:	
	movlw	(03h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2621
	goto	u2620
u2621:
	goto	l3998
u2620:
	line	95
	
l3996:	
	movlw	high(133)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(133)
	movwf	(configPin@pui8PortDirReg)
	line	99
	goto	l4016
	line	101
	
l1080:	
	
l3998:	
	movf	(configPin@ui8Pin),w
	xorlw	03h
	skipz
	goto	u2631
	goto	u2630
u2631:
	goto	l4004
u2630:
	line	103
	
l4000:	
	movlw	(02h)
	movwf	(??_configPin+0)+0
	movf	(??_configPin+0)+0,w
	addwf	(configPin@ui8Pin),f
	line	104
	
l4002:	
	movlw	high(133)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(133)
	movwf	(configPin@pui8PortDirReg)
	line	108
	goto	l4016
	line	110
	
l1082:	
	
l4004:	
	movlw	(07h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2641
	goto	u2640
u2641:
	goto	l4016
u2640:
	line	112
	
l4006:	
	movlw	low(04h)
	subwf	(configPin@ui8Pin),f
	line	113
	
l4008:	
	movlw	high(137)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(137)
	movwf	(configPin@pui8PortDirReg)
	line	117
	goto	l4016
	line	118
	
l1084:	
	goto	l4016
	line	124
	
l1085:	
	goto	l4016
	
l1083:	
	goto	l4016
	
l1081:	
	line	125
	goto	l4016
	line	127
	
l1079:	
	
l4010:	
	movlw	(01Dh)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2651
	goto	u2650
u2651:
	goto	l4016
u2650:
	line	129
	
l4012:	
	movlw	low(015h)
	subwf	(configPin@ui8Pin),f
	line	130
	
l4014:	
	movlw	high(136)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(136)
	movwf	(configPin@pui8PortDirReg)
	line	134
	goto	l4016
	line	135
	
l1087:	
	goto	l4016
	line	141
	
l1088:	
	goto	l4016
	
l1086:	
	goto	l4016
	
l1078:	
	goto	l4016
	
l1076:	
	line	144
	
l4016:	
	movf	(configPin@pui8PortDirReg+1),w
	iorwf	(configPin@pui8PortDirReg),w
	skipnz
	goto	u2661
	goto	u2660
u2661:
	goto	l1093
u2660:
	line	146
	
l4018:	
	movf	(configPin@ui8Direction),w
	xorlw	01h
	skipz
	goto	u2671
	goto	u2670
u2671:
	goto	l4022
u2670:
	line	148
	
l4020:	
	movlw	(01h)
	movwf	(??_configPin+0)+0
	incf	(configPin@ui8Pin),w
	goto	u2684
u2685:
	clrc
	rlf	(??_configPin+0)+0,f
u2684:
	addlw	-1
	skipz
	goto	u2685
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
	goto	l1093
	line	153
	
l1090:	
	line	155
	
l4022:	
	movlw	(01h)
	movwf	(??_configPin+0)+0
	incf	(configPin@ui8Pin),w
	goto	u2694
u2695:
	clrc
	rlf	(??_configPin+0)+0,f
u2694:
	addlw	-1
	skipz
	goto	u2695
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
	goto	l1093
	line	159
	
l1091:	
	line	160
	goto	l1093
	line	161
	
l1089:	
	goto	l1093
	line	167
	
l1092:	
	line	168
	
l1093:	
	return
	opt stack 0
GLOBAL	__end_of_configPin
	__end_of_configPin:
	signat	_configPin,8312
	global	_changePinState

;; *************** function _changePinState *****************
;; Defined at:
;;		line 188 in file "hardware/cores/lib\hal_gpio.c"
;; Parameters:    Size  Location     Type
;;  ui8Pin          1    wreg     unsigned char 
;;  eOperation      1    0[BANK0 ] enum E1426
;; Auto vars:     Size  Location     Type
;;  ui8Pin          1    5[BANK0 ] unsigned char 
;;  pui8PortReg     2    3[BANK0 ] PTR unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupPBot
;;		_runRightMotor
;;		_runLeftMotor
;;		_stopRightMotor
;;		_stopLeftMotor
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	188
global __ptext16
__ptext16:	;psect for function _changePinState
psect	text16
	file	"hardware/cores/lib\hal_gpio.c"
	line	188
	global	__size_of_changePinState
	__size_of_changePinState	equ	__end_of_changePinState-_changePinState
	
_changePinState:	
;incstack = 0
	opt	stack 0
; Regs used in _changePinState: [wreg-fsr0h+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(changePinState@ui8Pin)
	line	190
	
l3928:	
	clrf	(changePinState@pui8PortReg)
	clrf	(changePinState@pui8PortReg+1)
	line	193
	
l3930:	
	movlw	(08h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2461
	goto	u2460
u2461:
	goto	l3934
u2460:
	line	195
	
l3932:	
	movlw	high(7)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(7)
	movwf	(changePinState@pui8PortReg)
	line	199
	goto	l3966
	line	201
	
l1096:	
	
l3934:	
	movlw	(0Eh)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2471
	goto	u2470
u2471:
	goto	l3940
u2470:
	line	203
	
l3936:	
	movlw	low(08h)
	subwf	(changePinState@ui8Pin),f
	line	204
	
l3938:	
	movlw	high(6)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(6)
	movwf	(changePinState@pui8PortReg)
	line	208
	goto	l3966
	line	210
	
l1098:	
	
l3940:	
	movlw	(015h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2481
	goto	u2480
u2481:
	goto	l3960
u2480:
	line	212
	
l3942:	
	movlw	low(0Eh)
	subwf	(changePinState@ui8Pin),f
	line	215
	
l3944:	
	movlw	(03h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2491
	goto	u2490
u2491:
	goto	l3948
u2490:
	line	217
	
l3946:	
	movlw	high(5)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(changePinState@pui8PortReg)
	line	221
	goto	l3966
	line	223
	
l1101:	
	
l3948:	
	movf	(changePinState@ui8Pin),w
	xorlw	03h
	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l3954
u2500:
	line	225
	
l3950:	
	movlw	(02h)
	movwf	(??_changePinState+0)+0
	movf	(??_changePinState+0)+0,w
	addwf	(changePinState@ui8Pin),f
	line	226
	
l3952:	
	movlw	high(5)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(changePinState@pui8PortReg)
	line	230
	goto	l3966
	line	232
	
l1103:	
	
l3954:	
	movlw	(07h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2511
	goto	u2510
u2511:
	goto	l3966
u2510:
	line	234
	
l3956:	
	movlw	low(04h)
	subwf	(changePinState@ui8Pin),f
	line	235
	
l3958:	
	movlw	high(9)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(9)
	movwf	(changePinState@pui8PortReg)
	line	239
	goto	l3966
	line	240
	
l1105:	
	goto	l3966
	line	246
	
l1106:	
	goto	l3966
	
l1104:	
	goto	l3966
	
l1102:	
	line	247
	goto	l3966
	line	249
	
l1100:	
	
l3960:	
	movlw	(01Dh)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2521
	goto	u2520
u2521:
	goto	l3966
u2520:
	line	251
	
l3962:	
	movlw	low(015h)
	subwf	(changePinState@ui8Pin),f
	line	252
	
l3964:	
	movlw	high(8)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(8)
	movwf	(changePinState@pui8PortReg)
	line	256
	goto	l3966
	line	257
	
l1108:	
	goto	l3966
	line	263
	
l1109:	
	goto	l3966
	
l1107:	
	goto	l3966
	
l1099:	
	goto	l3966
	
l1097:	
	line	266
	
l3966:	
	movf	(changePinState@pui8PortReg+1),w
	iorwf	(changePinState@pui8PortReg),w
	skipnz
	goto	u2531
	goto	u2530
u2531:
	goto	l1116
u2530:
	line	268
	
l3968:	
	movf	(changePinState@eOperation),f
	skipz
	goto	u2541
	goto	u2540
u2541:
	goto	l3972
u2540:
	line	270
	
l3970:	
	movlw	(01h)
	movwf	(??_changePinState+0)+0
	incf	(changePinState@ui8Pin),w
	goto	u2554
u2555:
	clrc
	rlf	(??_changePinState+0)+0,f
u2554:
	addlw	-1
	skipz
	goto	u2555
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
	goto	l1116
	line	275
	
l1111:	
	
l3972:	
	movf	(changePinState@eOperation),w
	xorlw	01h
	skipz
	goto	u2561
	goto	u2560
u2561:
	goto	l3976
u2560:
	line	277
	
l3974:	
	movlw	(01h)
	movwf	(??_changePinState+0)+0
	incf	(changePinState@ui8Pin),w
	goto	u2574
u2575:
	clrc
	rlf	(??_changePinState+0)+0,f
u2574:
	addlw	-1
	skipz
	goto	u2575
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
	goto	l1116
	line	282
	
l1113:	
	line	284
	
l3976:	
	movlw	(01h)
	movwf	(??_changePinState+0)+0
	incf	(changePinState@ui8Pin),w
	goto	u2584
u2585:
	clrc
	rlf	(??_changePinState+0)+0,f
u2584:
	addlw	-1
	skipz
	goto	u2585
	movf	0+(??_changePinState+0)+0,w
	movwf	(??_changePinState+1)+0
	movf	(changePinState@pui8PortReg),w
	movwf	fsr0
	bsf	status,7
	btfss	(changePinState@pui8PortReg+1),0
	bcf	status,7
	movf	(??_changePinState+1)+0,w
	xorwf	indf,f
	goto	l1116
	line	288
	
l1114:	
	goto	l1116
	
l1112:	
	line	289
	goto	l1116
	line	290
	
l1110:	
	goto	l1116
	line	296
	
l1115:	
	line	297
	
l1116:	
	return
	opt stack 0
GLOBAL	__end_of_changePinState
	__end_of_changePinState:
	signat	_changePinState,8312
	global	_cycle

;; *************** function _cycle *****************
;; Defined at:
;;		line 31 in file "C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\Telemetry_DProtocol.phr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_pollSensors
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\Telemetry_DProtocol.phr.c"
	line	31
global __ptext17
__ptext17:	;psect for function _cycle
psect	text17
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\Telemetry_DProtocol.phr.c"
	line	31
	global	__size_of_cycle
	__size_of_cycle	equ	__end_of_cycle-_cycle
	
_cycle:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _cycle: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	33
	
l5864:	
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(pollSensors@ui16PollingInterval)
	movlw	high(03E8h)
	movwf	((pollSensors@ui16PollingInterval))+1
	fcall	_pollSensors
	line	34
	
l10:	
	return
	opt stack 0
GLOBAL	__end_of_cycle
	__end_of_cycle:
	signat	_cycle,88
	global	_pollSensors

;; *************** function _pollSensors *****************
;; Defined at:
;;		line 62 in file "libraries/Mobot_Lib\Telemetry.c"
;; Parameters:    Size  Location     Type
;;  ui16PollingI    2   15[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_getElapsedMs
;;		_getMs
;;		_pollLineSensorsTelemetry
;;		_pollWallSensorsTelemetry
;; This function is called by:
;;		_cycle
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"libraries/Mobot_Lib\Telemetry.c"
	line	62
global __ptext18
__ptext18:	;psect for function _pollSensors
psect	text18
	file	"libraries/Mobot_Lib\Telemetry.c"
	line	62
	global	__size_of_pollSensors
	__size_of_pollSensors	equ	__end_of_pollSensors-_pollSensors
	
_pollSensors:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _pollSensors: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	64
	
l5854:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ui16PollIntTimer+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getElapsedMs@ui16TimeMs+1)
	addwf	(getElapsedMs@ui16TimeMs+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ui16PollIntTimer)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getElapsedMs@ui16TimeMs)
	addwf	(getElapsedMs@ui16TimeMs)

	fcall	_getElapsedMs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(pollSensors@ui16PollingInterval+1),w
	subwf	(1+(?_getElapsedMs)),w
	skipz
	goto	u4785
	movf	(pollSensors@ui16PollingInterval),w
	subwf	(0+(?_getElapsedMs)),w
u4785:
	skipc
	goto	u4781
	goto	u4780
u4781:
	goto	l438
u4780:
	line	66
	
l5856:	
	fcall	_getMs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_getMs)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_ui16PollIntTimer+1)^080h
	addwf	(_ui16PollIntTimer+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_getMs)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_ui16PollIntTimer)^080h
	addwf	(_ui16PollIntTimer)^080h

	line	67
	
l5858:	
	fcall	_pollWallSensorsTelemetry
	line	68
	
l5860:	
	fcall	_pollLineSensorsTelemetry
	goto	l438
	line	70
	
l437:	
	line	71
	
l438:	
	return
	opt stack 0
GLOBAL	__end_of_pollSensors
	__end_of_pollSensors:
	signat	_pollSensors,4216
	global	_pollWallSensorsTelemetry

;; *************** function _pollWallSensorsTelemetry *****************
;; Defined at:
;;		line 74 in file "libraries/Mobot_Lib\Telemetry.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ui8ObstacleL    1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_detectObstacle
;;		_reportWallSensors
;; This function is called by:
;;		_pollSensors
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	line	74
global __ptext19
__ptext19:	;psect for function _pollWallSensorsTelemetry
psect	text19
	file	"libraries/Mobot_Lib\Telemetry.c"
	line	74
	global	__size_of_pollWallSensorsTelemetry
	__size_of_pollWallSensorsTelemetry	equ	__end_of_pollWallSensorsTelemetry-_pollWallSensorsTelemetry
	
_pollWallSensorsTelemetry:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _pollWallSensorsTelemetry: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	77
	
l5838:	
	fcall	_detectObstacle
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_pollWallSensorsTelemetry+0)+0
	movf	(??_pollWallSensorsTelemetry+0)+0,w
	movwf	(pollWallSensorsTelemetry@ui8ObstacleLocation)
	line	78
	
l5840:	
	movf	(pollWallSensorsTelemetry@ui8ObstacleLocation),w
	fcall	_reportWallSensors
	line	79
	
l441:	
	return
	opt stack 0
GLOBAL	__end_of_pollWallSensorsTelemetry
	__end_of_pollWallSensorsTelemetry:
	signat	_pollWallSensorsTelemetry,88
	global	_reportWallSensors

;; *************** function _reportWallSensors *****************
;; Defined at:
;;		line 88 in file "libraries/Mobot_Lib\Telemetry.c"
;; Parameters:    Size  Location     Type
;;  ui8ObstacleL    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8ObstacleL    1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_printD
;; This function is called by:
;;		_pollWallSensorsTelemetry
;;		_checkSensorCommands
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	88
global __ptext20
__ptext20:	;psect for function _reportWallSensors
psect	text20
	file	"libraries/Mobot_Lib\Telemetry.c"
	line	88
	global	__size_of_reportWallSensors
	__size_of_reportWallSensors	equ	__end_of_reportWallSensors-_reportWallSensors
	
_reportWallSensors:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _reportWallSensors: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	89
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(reportWallSensors@ui8ObstacleLocation)
	line	90
	
l5678:	
	goto	l5698
	line	92
	
l448:	
	line	93
	
l5680:	
	movlw	low((STR_37)|8000h)
	movwf	(printD@strDCommandCode)
	movlw	high((STR_37)|8000h)
	movwf	((printD@strDCommandCode))+1
	movlw	low((STR_38)|8000h)
	movwf	(printD@strDParam1)
	movlw	high((STR_38)|8000h)
	movwf	((printD@strDParam1))+1
	movlw	low((STR_39)|8000h)
	movwf	(printD@strDParam2)
	movlw	high((STR_39)|8000h)
	movwf	((printD@strDParam2))+1
	movlw	(_strDProtocolID)&0ffh
	fcall	_printD
	line	94
	goto	l457
	line	96
	
l450:	
	line	97
	
l5682:	
	movlw	low((STR_40)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printD@strDCommandCode)
	movlw	high((STR_40)|8000h)
	movwf	((printD@strDCommandCode))+1
	movlw	low((STR_41)|8000h)
	movwf	(printD@strDParam1)
	movlw	high((STR_41)|8000h)
	movwf	((printD@strDParam1))+1
	movlw	low((STR_42)|8000h)
	movwf	(printD@strDParam2)
	movlw	high((STR_42)|8000h)
	movwf	((printD@strDParam2))+1
	movlw	(_strDProtocolID)&0ffh
	fcall	_printD
	line	98
	goto	l457
	line	100
	
l451:	
	line	101
	
l5684:	
	movlw	low((STR_43)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printD@strDCommandCode)
	movlw	high((STR_43)|8000h)
	movwf	((printD@strDCommandCode))+1
	movlw	low((STR_44)|8000h)
	movwf	(printD@strDParam1)
	movlw	high((STR_44)|8000h)
	movwf	((printD@strDParam1))+1
	movlw	low((STR_45)|8000h)
	movwf	(printD@strDParam2)
	movlw	high((STR_45)|8000h)
	movwf	((printD@strDParam2))+1
	movlw	(_strDProtocolID)&0ffh
	fcall	_printD
	line	102
	goto	l457
	line	104
	
l452:	
	line	105
	
l5686:	
	movlw	low((STR_46)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printD@strDCommandCode)
	movlw	high((STR_46)|8000h)
	movwf	((printD@strDCommandCode))+1
	movlw	low((STR_47)|8000h)
	movwf	(printD@strDParam1)
	movlw	high((STR_47)|8000h)
	movwf	((printD@strDParam1))+1
	movlw	low((STR_48)|8000h)
	movwf	(printD@strDParam2)
	movlw	high((STR_48)|8000h)
	movwf	((printD@strDParam2))+1
	movlw	(_strDProtocolID)&0ffh
	fcall	_printD
	line	106
	goto	l457
	line	108
	
l453:	
	line	109
	
l5688:	
	movlw	low((STR_49)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printD@strDCommandCode)
	movlw	high((STR_49)|8000h)
	movwf	((printD@strDCommandCode))+1
	movlw	low((STR_50)|8000h)
	movwf	(printD@strDParam1)
	movlw	high((STR_50)|8000h)
	movwf	((printD@strDParam1))+1
	movlw	low((STR_51)|8000h)
	movwf	(printD@strDParam2)
	movlw	high((STR_51)|8000h)
	movwf	((printD@strDParam2))+1
	movlw	(_strDProtocolID)&0ffh
	fcall	_printD
	line	110
	goto	l457
	line	112
	
l454:	
	line	113
	
l5690:	
	movlw	low((STR_52)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printD@strDCommandCode)
	movlw	high((STR_52)|8000h)
	movwf	((printD@strDCommandCode))+1
	movlw	low((STR_53)|8000h)
	movwf	(printD@strDParam1)
	movlw	high((STR_53)|8000h)
	movwf	((printD@strDParam1))+1
	movlw	low((STR_54)|8000h)
	movwf	(printD@strDParam2)
	movlw	high((STR_54)|8000h)
	movwf	((printD@strDParam2))+1
	movlw	(_strDProtocolID)&0ffh
	fcall	_printD
	line	114
	goto	l457
	line	116
	
l455:	
	line	117
	
l5692:	
	movlw	low((STR_55)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printD@strDCommandCode)
	movlw	high((STR_55)|8000h)
	movwf	((printD@strDCommandCode))+1
	movlw	low((STR_56)|8000h)
	movwf	(printD@strDParam1)
	movlw	high((STR_56)|8000h)
	movwf	((printD@strDParam1))+1
	movlw	low((STR_57)|8000h)
	movwf	(printD@strDParam2)
	movlw	high((STR_57)|8000h)
	movwf	((printD@strDParam2))+1
	movlw	(_strDProtocolID)&0ffh
	fcall	_printD
	line	118
	goto	l457
	line	120
	
l456:	
	line	121
	
l5694:	
	movlw	low((STR_58)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printD@strDCommandCode)
	movlw	high((STR_58)|8000h)
	movwf	((printD@strDCommandCode))+1
	movlw	low((STR_59)|8000h)
	movwf	(printD@strDParam1)
	movlw	high((STR_59)|8000h)
	movwf	((printD@strDParam1))+1
	movlw	low((STR_60)|8000h)
	movwf	(printD@strDParam2)
	movlw	high((STR_60)|8000h)
	movwf	((printD@strDParam2))+1
	movlw	(_strDProtocolID)&0ffh
	fcall	_printD
	line	122
	goto	l457
	line	123
	
l5696:	
	goto	l457
	line	90
	
l447:	
	
l5698:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(reportWallSensors@ui8ObstacleLocation),w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 1 to 7
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           22    12 (average)
; direct_byte           32    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l5690
	xorlw	2^1	; case 2
	skipnz
	goto	l5682
	xorlw	3^2	; case 3
	skipnz
	goto	l5692
	xorlw	4^3	; case 4
	skipnz
	goto	l5684
	xorlw	5^4	; case 5
	skipnz
	goto	l5688
	xorlw	6^5	; case 6
	skipnz
	goto	l5680
	xorlw	7^6	; case 7
	skipnz
	goto	l5686
	goto	l5694
	opt asmopt_on

	line	123
	
l449:	
	line	124
	
l457:	
	return
	opt stack 0
GLOBAL	__end_of_reportWallSensors
	__end_of_reportWallSensors:
	signat	_reportWallSensors,4216
	global	_detectObstacle

;; *************** function _detectObstacle *****************
;; Defined at:
;;		line 153 in file "libraries/Mobot_Lib\Mobot_Lib.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_pollWallSensors
;; This function is called by:
;;		_pollWallSensorsTelemetry
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	153
global __ptext21
__ptext21:	;psect for function _detectObstacle
psect	text21
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	153
	global	__size_of_detectObstacle
	__size_of_detectObstacle	equ	__end_of_detectObstacle-_detectObstacle
	
_detectObstacle:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _detectObstacle: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	155
	
l5720:	
	movlw	(_blObstacleSensorPolarity)&0ffh
	fcall	_pollWallSensors
	line	158
	
l5722:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_blWallDetectedonLeft),w
	skipz
	goto	u4510
	goto	l5730
u4510:
	
l5724:	
	movf	(_blWallDetectedonCenter),w
	skipz
	goto	u4520
	goto	l5730
u4520:
	
l5726:	
	movf	(_blWallDetectedonRight),w
	skipz
	goto	u4530
	goto	l5730
u4530:
	line	160
	
l5728:	
	movlw	(06h)
	movwf	(??_detectObstacle+0)+0
	movf	(??_detectObstacle+0)+0,w
	movwf	(_ui8ObstacleLocation)
	line	161
	goto	l5762
	line	163
	
l327:	
	
l5730:	
	movf	(_blWallDetectedonLeft),w
	skipz
	goto	u4540
	goto	l5736
u4540:
	
l5732:	
	movf	(_blWallDetectedonCenter),w
	skipz
	goto	u4550
	goto	l5736
u4550:
	line	165
	
l5734:	
	movlw	(02h)
	movwf	(??_detectObstacle+0)+0
	movf	(??_detectObstacle+0)+0,w
	movwf	(_ui8ObstacleLocation)
	line	166
	goto	l5762
	line	168
	
l329:	
	
l5736:	
	movf	(_blWallDetectedonCenter),w
	skipz
	goto	u4560
	goto	l5742
u4560:
	
l5738:	
	movf	(_blWallDetectedonRight),w
	skipz
	goto	u4570
	goto	l5742
u4570:
	line	170
	
l5740:	
	movlw	(04h)
	movwf	(??_detectObstacle+0)+0
	movf	(??_detectObstacle+0)+0,w
	movwf	(_ui8ObstacleLocation)
	line	171
	goto	l5762
	line	173
	
l331:	
	
l5742:	
	movf	(_blWallDetectedonLeft),w
	skipz
	goto	u4580
	goto	l5748
u4580:
	
l5744:	
	movf	(_blWallDetectedonRight),w
	skipz
	goto	u4590
	goto	l5748
u4590:
	line	175
	
l5746:	
	movlw	(07h)
	movwf	(??_detectObstacle+0)+0
	movf	(??_detectObstacle+0)+0,w
	movwf	(_ui8ObstacleLocation)
	line	176
	goto	l5762
	line	178
	
l333:	
	
l5748:	
	movf	(_blWallDetectedonCenter),w
	skipz
	goto	u4600
	goto	l5752
u4600:
	line	180
	
l5750:	
	movlw	(05h)
	movwf	(??_detectObstacle+0)+0
	movf	(??_detectObstacle+0)+0,w
	movwf	(_ui8ObstacleLocation)
	line	181
	goto	l5762
	line	183
	
l335:	
	
l5752:	
	movf	(_blWallDetectedonLeft),w
	skipz
	goto	u4610
	goto	l5756
u4610:
	line	185
	
l5754:	
	clrf	(_ui8ObstacleLocation)
	incf	(_ui8ObstacleLocation),f
	line	186
	goto	l5762
	line	188
	
l337:	
	
l5756:	
	movf	(_blWallDetectedonRight),w
	skipz
	goto	u4620
	goto	l5760
u4620:
	line	190
	
l5758:	
	movlw	(03h)
	movwf	(??_detectObstacle+0)+0
	movf	(??_detectObstacle+0)+0,w
	movwf	(_ui8ObstacleLocation)
	line	191
	goto	l5762
	line	193
	
l339:	
	line	195
	
l5760:	
	clrf	(_ui8ObstacleLocation)
	goto	l5762
	line	196
	
l340:	
	goto	l5762
	
l338:	
	goto	l5762
	
l336:	
	goto	l5762
	
l334:	
	goto	l5762
	
l332:	
	goto	l5762
	
l330:	
	goto	l5762
	
l328:	
	line	198
	
l5762:	
	movf	(_ui8ObstacleLocation),w
	goto	l341
	
l5764:	
	line	199
	
l341:	
	return
	opt stack 0
GLOBAL	__end_of_detectObstacle
	__end_of_detectObstacle:
	signat	_detectObstacle,89
	global	_pollWallSensors

;; *************** function _pollWallSensors *****************
;; Defined at:
;;		line 272 in file "libraries/Mobot_Lib\LowLevelMobot.c"
;; Parameters:    Size  Location     Type
;;  blObstacleSe    1    wreg     PTR unsigned char 
;;		 -> blObstacleSensorPolarity(1), 
;; Auto vars:     Size  Location     Type
;;  blObstacleSe    1   11[BANK0 ] PTR unsigned char 
;;		 -> blObstacleSensorPolarity(1), 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_readSensorOutput
;; This function is called by:
;;		_detectObstacle
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"libraries/Mobot_Lib\LowLevelMobot.c"
	line	272
global __ptext22
__ptext22:	;psect for function _pollWallSensors
psect	text22
	file	"libraries/Mobot_Lib\LowLevelMobot.c"
	line	272
	global	__size_of_pollWallSensors
	__size_of_pollWallSensors	equ	__end_of_pollWallSensors-_pollWallSensors
	
_pollWallSensors:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _pollWallSensors: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	273
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(pollWallSensors@blObstacleSensorPolarity)
	line	274
	
l5670:	
	movf	(pollWallSensors@blObstacleSensorPolarity),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_pollWallSensors+0)+0
	movf	(??_pollWallSensors+0)+0,w
	movwf	(readSensorOutput@blPolarity)
	movlw	(04h)
	fcall	_readSensorOutput
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_pollWallSensors+1)+0
	movf	(??_pollWallSensors+1)+0,w
	movwf	(_blWallDetectedonLeft)
	line	275
	movf	(pollWallSensors@blObstacleSensorPolarity),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_pollWallSensors+0)+0
	movf	(??_pollWallSensors+0)+0,w
	movwf	(readSensorOutput@blPolarity)
	movlw	(0)
	fcall	_readSensorOutput
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_pollWallSensors+1)+0
	movf	(??_pollWallSensors+1)+0,w
	movwf	(_blWallDetectedonCenter)
	line	276
	movf	(pollWallSensors@blObstacleSensorPolarity),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_pollWallSensors+0)+0
	movf	(??_pollWallSensors+0)+0,w
	movwf	(readSensorOutput@blPolarity)
	movlw	(03h)
	fcall	_readSensorOutput
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_pollWallSensors+1)+0
	movf	(??_pollWallSensors+1)+0,w
	movwf	(_blWallDetectedonRight)
	line	277
	
l249:	
	return
	opt stack 0
GLOBAL	__end_of_pollWallSensors
	__end_of_pollWallSensors:
	signat	_pollWallSensors,4216
	global	_pollLineSensorsTelemetry

;; *************** function _pollLineSensorsTelemetry *****************
;; Defined at:
;;		line 81 in file "libraries/Mobot_Lib\Telemetry.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ui8LineLocat    1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_detectLine
;;		_reportLineSensors
;; This function is called by:
;;		_pollSensors
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"libraries/Mobot_Lib\Telemetry.c"
	line	81
global __ptext23
__ptext23:	;psect for function _pollLineSensorsTelemetry
psect	text23
	file	"libraries/Mobot_Lib\Telemetry.c"
	line	81
	global	__size_of_pollLineSensorsTelemetry
	__size_of_pollLineSensorsTelemetry	equ	__end_of_pollLineSensorsTelemetry-_pollLineSensorsTelemetry
	
_pollLineSensorsTelemetry:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _pollLineSensorsTelemetry: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	84
	
l5842:	
	fcall	_detectLine
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_pollLineSensorsTelemetry+0)+0
	movf	(??_pollLineSensorsTelemetry+0)+0,w
	movwf	(pollLineSensorsTelemetry@ui8LineLocation)
	line	85
	
l5844:	
	movf	(pollLineSensorsTelemetry@ui8LineLocation),w
	fcall	_reportLineSensors
	line	86
	
l444:	
	return
	opt stack 0
GLOBAL	__end_of_pollLineSensorsTelemetry
	__end_of_pollLineSensorsTelemetry:
	signat	_pollLineSensorsTelemetry,88
	global	_reportLineSensors

;; *************** function _reportLineSensors *****************
;; Defined at:
;;		line 126 in file "libraries/Mobot_Lib\Telemetry.c"
;; Parameters:    Size  Location     Type
;;  ui8LineLocat    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8LineLocat    1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_printD
;; This function is called by:
;;		_pollLineSensorsTelemetry
;;		_checkSensorCommands
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	126
global __ptext24
__ptext24:	;psect for function _reportLineSensors
psect	text24
	file	"libraries/Mobot_Lib\Telemetry.c"
	line	126
	global	__size_of_reportLineSensors
	__size_of_reportLineSensors	equ	__end_of_reportLineSensors-_reportLineSensors
	
_reportLineSensors:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _reportLineSensors: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	127
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(reportLineSensors@ui8LineLocation)
	line	128
	
l5700:	
	goto	l5718
	line	130
	
l461:	
	line	131
	
l5702:	
	movlw	low((STR_61)|8000h)
	movwf	(printD@strDCommandCode)
	movlw	high((STR_61)|8000h)
	movwf	((printD@strDCommandCode))+1
	movlw	low((STR_62)|8000h)
	movwf	(printD@strDParam1)
	movlw	high((STR_62)|8000h)
	movwf	((printD@strDParam1))+1
	movlw	low((STR_63)|8000h)
	movwf	(printD@strDParam2)
	movlw	high((STR_63)|8000h)
	movwf	((printD@strDParam2))+1
	movlw	(_strDProtocolID)&0ffh
	fcall	_printD
	line	132
	goto	l469
	line	134
	
l463:	
	line	135
	
l5704:	
	movlw	low((STR_64)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printD@strDCommandCode)
	movlw	high((STR_64)|8000h)
	movwf	((printD@strDCommandCode))+1
	movlw	low((STR_65)|8000h)
	movwf	(printD@strDParam1)
	movlw	high((STR_65)|8000h)
	movwf	((printD@strDParam1))+1
	movlw	low((STR_66)|8000h)
	movwf	(printD@strDParam2)
	movlw	high((STR_66)|8000h)
	movwf	((printD@strDParam2))+1
	movlw	(_strDProtocolID)&0ffh
	fcall	_printD
	line	136
	goto	l469
	line	138
	
l464:	
	line	139
	
l5706:	
	movlw	low((STR_67)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printD@strDCommandCode)
	movlw	high((STR_67)|8000h)
	movwf	((printD@strDCommandCode))+1
	movlw	low((STR_68)|8000h)
	movwf	(printD@strDParam1)
	movlw	high((STR_68)|8000h)
	movwf	((printD@strDParam1))+1
	movlw	low((STR_69)|8000h)
	movwf	(printD@strDParam2)
	movlw	high((STR_69)|8000h)
	movwf	((printD@strDParam2))+1
	movlw	(_strDProtocolID)&0ffh
	fcall	_printD
	line	140
	goto	l469
	line	142
	
l465:	
	line	143
	
l5708:	
	movlw	low((STR_70)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printD@strDCommandCode)
	movlw	high((STR_70)|8000h)
	movwf	((printD@strDCommandCode))+1
	movlw	low((STR_71)|8000h)
	movwf	(printD@strDParam1)
	movlw	high((STR_71)|8000h)
	movwf	((printD@strDParam1))+1
	movlw	low((STR_72)|8000h)
	movwf	(printD@strDParam2)
	movlw	high((STR_72)|8000h)
	movwf	((printD@strDParam2))+1
	movlw	(_strDProtocolID)&0ffh
	fcall	_printD
	line	144
	goto	l469
	line	146
	
l466:	
	line	147
	
l5710:	
	movlw	low((STR_73)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printD@strDCommandCode)
	movlw	high((STR_73)|8000h)
	movwf	((printD@strDCommandCode))+1
	movlw	low((STR_74)|8000h)
	movwf	(printD@strDParam1)
	movlw	high((STR_74)|8000h)
	movwf	((printD@strDParam1))+1
	movlw	low((STR_75)|8000h)
	movwf	(printD@strDParam2)
	movlw	high((STR_75)|8000h)
	movwf	((printD@strDParam2))+1
	movlw	(_strDProtocolID)&0ffh
	fcall	_printD
	line	148
	goto	l469
	line	150
	
l467:	
	line	151
	
l5712:	
	movlw	low((STR_76)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printD@strDCommandCode)
	movlw	high((STR_76)|8000h)
	movwf	((printD@strDCommandCode))+1
	movlw	low((STR_77)|8000h)
	movwf	(printD@strDParam1)
	movlw	high((STR_77)|8000h)
	movwf	((printD@strDParam1))+1
	movlw	low((STR_78)|8000h)
	movwf	(printD@strDParam2)
	movlw	high((STR_78)|8000h)
	movwf	((printD@strDParam2))+1
	movlw	(_strDProtocolID)&0ffh
	fcall	_printD
	line	152
	goto	l469
	line	154
	
l468:	
	line	155
	
l5714:	
	movlw	low((STR_79)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printD@strDCommandCode)
	movlw	high((STR_79)|8000h)
	movwf	((printD@strDCommandCode))+1
	movlw	low((STR_80)|8000h)
	movwf	(printD@strDParam1)
	movlw	high((STR_80)|8000h)
	movwf	((printD@strDParam1))+1
	movlw	low((STR_81)|8000h)
	movwf	(printD@strDParam2)
	movlw	high((STR_81)|8000h)
	movwf	((printD@strDParam2))+1
	movlw	(_strDProtocolID)&0ffh
	fcall	_printD
	line	156
	goto	l469
	line	157
	
l5716:	
	goto	l469
	line	128
	
l460:	
	
l5718:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(reportLineSensors@ui8LineLocation),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           29    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l5708
	xorlw	2^1	; case 2
	skipnz
	goto	l5704
	xorlw	3^2	; case 3
	skipnz
	goto	l5710
	xorlw	4^3	; case 4
	skipnz
	goto	l5706
	xorlw	5^4	; case 5
	skipnz
	goto	l5702
	xorlw	6^5	; case 6
	skipnz
	goto	l5712
	goto	l5714
	opt asmopt_on

	line	157
	
l462:	
	line	158
	
l469:	
	return
	opt stack 0
GLOBAL	__end_of_reportLineSensors
	__end_of_reportLineSensors:
	signat	_reportLineSensors,4216
	global	_printD

;; *************** function _printD *****************
;; Defined at:
;;		line 167 in file "libraries/Mobot_Lib\Telemetry.c"
;; Parameters:    Size  Location     Type
;;  strDHeader      1    wreg     PTR unsigned char 
;;		 -> strDProtocolID(4), 
;;  strDCommandC    2    4[BANK0 ] PTR unsigned char 
;;		 -> STR_79(5), STR_76(5), STR_73(5), STR_70(5), 
;;		 -> STR_67(5), STR_64(5), STR_61(5), STR_58(5), 
;;		 -> STR_55(5), STR_52(5), STR_49(5), STR_46(5), 
;;		 -> STR_43(5), STR_40(5), STR_37(5), STR_4(5), 
;;  strDParam1      2    6[BANK0 ] PTR unsigned char 
;;		 -> STR_80(5), STR_77(7), STR_74(6), STR_71(5), 
;;		 -> STR_68(6), STR_65(5), STR_62(5), STR_59(5), 
;;		 -> STR_56(6), STR_53(5), STR_50(4), STR_47(5), 
;;		 -> STR_44(6), STR_41(5), STR_38(5), STR_5(4), 
;;  strDParam2      2    8[BANK0 ] PTR unsigned char 
;;		 -> STR_81(5), STR_78(5), STR_75(5), STR_72(5), 
;;		 -> STR_69(7), STR_66(7), STR_63(5), STR_60(5), 
;;		 -> STR_57(5), STR_54(5), STR_51(6), STR_48(6), 
;;		 -> STR_45(7), STR_42(7), STR_39(6), STR_6(6), 
;; Auto vars:     Size  Location     Type
;;  strDHeader      1   10[BANK0 ] PTR unsigned char 
;;		 -> strDProtocolID(4), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_serialWrite
;;		_serialWriteString
;; This function is called by:
;;		_reportWallSensors
;;		_reportLineSensors
;;		_interpretDProtocolCommands
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	line	167
global __ptext25
__ptext25:	;psect for function _printD
psect	text25
	file	"libraries/Mobot_Lib\Telemetry.c"
	line	167
	global	__size_of_printD
	__size_of_printD	equ	__end_of_printD-_printD
	
_printD:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _printD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printD@strDHeader)
	line	169
	
l5656:	
	movf	(printD@strDHeader),w
	movwf	(serialWriteString@pucStrTxData)
	movlw	(0x0)
	movwf	(serialWriteString@pucStrTxData+1)
	fcall	_serialWriteString
	line	170
	movlw	low((STR_82)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialWriteString@pucStrTxData)
	movlw	high((STR_82)|8000h)
	movwf	((serialWriteString@pucStrTxData))+1
	fcall	_serialWriteString
	line	171
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printD@strDCommandCode+1),w
	clrf	(serialWriteString@pucStrTxData+1)
	addwf	(serialWriteString@pucStrTxData+1)
	movf	(printD@strDCommandCode),w
	clrf	(serialWriteString@pucStrTxData)
	addwf	(serialWriteString@pucStrTxData)

	fcall	_serialWriteString
	line	172
	movlw	low((STR_83)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialWriteString@pucStrTxData)
	movlw	high((STR_83)|8000h)
	movwf	((serialWriteString@pucStrTxData))+1
	fcall	_serialWriteString
	line	174
	
l5658:	
	movlw	high((STR_84)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(printD@strDParam1+1),w
	skipz
	goto	u4495
	movlw	low((STR_84)|8000h)
	xorwf	(printD@strDParam1),w
u4495:

	skipnz
	goto	u4491
	goto	u4490
u4491:
	goto	l5666
u4490:
	line	176
	
l5660:	
	movf	(printD@strDParam1+1),w
	clrf	(serialWriteString@pucStrTxData+1)
	addwf	(serialWriteString@pucStrTxData+1)
	movf	(printD@strDParam1),w
	clrf	(serialWriteString@pucStrTxData)
	addwf	(serialWriteString@pucStrTxData)

	fcall	_serialWriteString
	line	177
	movlw	low((STR_85)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialWriteString@pucStrTxData)
	movlw	high((STR_85)|8000h)
	movwf	((serialWriteString@pucStrTxData))+1
	fcall	_serialWriteString
	line	179
	
l5662:	
	movlw	high((STR_86)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(printD@strDParam2+1),w
	skipz
	goto	u4505
	movlw	low((STR_86)|8000h)
	xorwf	(printD@strDParam2),w
u4505:

	skipnz
	goto	u4501
	goto	u4500
u4501:
	goto	l5666
u4500:
	line	181
	
l5664:	
	movf	(printD@strDParam2+1),w
	clrf	(serialWriteString@pucStrTxData+1)
	addwf	(serialWriteString@pucStrTxData+1)
	movf	(printD@strDParam2),w
	clrf	(serialWriteString@pucStrTxData)
	addwf	(serialWriteString@pucStrTxData)

	fcall	_serialWriteString
	line	182
	movlw	low((STR_87)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialWriteString@pucStrTxData)
	movlw	high((STR_87)|8000h)
	movwf	((serialWriteString@pucStrTxData))+1
	fcall	_serialWriteString
	goto	l5666
	line	183
	
l473:	
	goto	l5666
	line	184
	
l472:	
	line	187
	
l5666:	
	movlw	(0Dh)
	fcall	_serialWrite
	line	188
	
l5668:	
	movlw	(0Ah)
	fcall	_serialWrite
	line	189
	
l474:	
	return
	opt stack 0
GLOBAL	__end_of_printD
	__end_of_printD:
	signat	_printD,16504
	global	_serialWriteString

;; *************** function _serialWriteString *****************
;; Defined at:
;;		line 143 in file "hardware/cores/lib\corelib_uart.c"
;; Parameters:    Size  Location     Type
;;  pucStrTxData    2    2[BANK0 ] PTR const unsigned char 
;;		 -> ROM(8192), STR_87(2), STR_85(2), STR_83(2), 
;;		 -> STR_82(2), STR_81(5), STR_80(5), STR_79(5), 
;;		 -> STR_78(5), STR_77(7), STR_76(5), STR_75(5), 
;;		 -> STR_74(6), STR_73(5), STR_72(5), STR_71(5), 
;;		 -> STR_70(5), STR_69(7), STR_68(6), STR_67(5), 
;;		 -> STR_66(7), STR_65(5), STR_64(5), STR_63(5), 
;;		 -> STR_62(5), STR_61(5), STR_60(5), STR_59(5), 
;;		 -> STR_58(5), STR_57(5), STR_56(6), STR_55(5), 
;;		 -> STR_54(5), STR_53(5), STR_52(5), STR_51(6), 
;;		 -> STR_50(4), STR_49(5), STR_48(6), STR_47(5), 
;;		 -> STR_46(5), STR_45(7), STR_44(6), STR_43(5), 
;;		 -> STR_42(7), STR_41(5), STR_40(5), STR_39(6), 
;;		 -> STR_38(5), STR_37(5), STR_36(11), STR_34(13), 
;;		 -> STR_32(14), STR_30(11), STR_28(12), STR_26(15), 
;;		 -> STR_24(14), STR_22(17), STR_20(18), STR_17(16), 
;;		 -> STR_14(17), STR_12(4), STR_11(21), STR_9(4), 
;;		 -> STR_8(21), STR_6(6), STR_5(4), STR_4(5), 
;;		 -> STR_3(23), STR_2(17), STR_1(20), strParam2(7), 
;;		 -> strParam1(7), strCommandCode(5), strDProtocolID(4), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_serialWrite
;; This function is called by:
;;		_printD
;;		_parseIncomingBytes
;;		_interpretDProtocolCommands
;;		_checkSensorCommands
;;		_checkPBotMotionCommands
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_uart.c"
	line	143
global __ptext26
__ptext26:	;psect for function _serialWriteString
psect	text26
	file	"hardware/cores/lib\corelib_uart.c"
	line	143
	global	__size_of_serialWriteString
	__size_of_serialWriteString	equ	__end_of_serialWriteString-_serialWriteString
	
_serialWriteString:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _serialWriteString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	145
	
l5610:	
	goto	l5616
	
l910:	
	line	147
	
l5612:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialWriteString@pucStrTxData+1),w
	movwf	btemp+1
	movf	(serialWriteString@pucStrTxData),w
	movwf	fsr0
	fcall	stringtab
	fcall	_serialWrite
	
l5614:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(serialWriteString@pucStrTxData),f
	skipnc
	incf	(serialWriteString@pucStrTxData+1),f
	movlw	high(01h)
	addwf	(serialWriteString@pucStrTxData+1),f
	goto	l5616
	line	151
	
l909:	
	line	145
	
l5616:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialWriteString@pucStrTxData+1),w
	movwf	btemp+1
	movf	(serialWriteString@pucStrTxData),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u4471
	goto	u4470
u4471:
	goto	l5612
u4470:
	goto	l5618
	
l911:	
	line	153
	
l5618:	
	movlw	(0)
	fcall	_serialWrite
	line	154
	
l912:	
	return
	opt stack 0
GLOBAL	__end_of_serialWriteString
	__end_of_serialWriteString:
	signat	_serialWriteString,4216
	global	_serialWrite

;; *************** function _serialWrite *****************
;; Defined at:
;;		line 108 in file "hardware/cores/lib\corelib_uart.c"
;; Parameters:    Size  Location     Type
;;  ui8TxData       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8TxData       1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_isSerialBufferFull
;; This function is called by:
;;		_printD
;;		_serialWriteString
;;		_parseIncomingBytes
;;		_interpretDProtocolCommands
;;		_checkSensorCommands
;;		_checkPBotMotionCommands
;;		_serialWriteBlock
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	line	108
global __ptext27
__ptext27:	;psect for function _serialWrite
psect	text27
	file	"hardware/cores/lib\corelib_uart.c"
	line	108
	global	__size_of_serialWrite
	__size_of_serialWrite	equ	__end_of_serialWrite-_serialWrite
	
_serialWrite:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _serialWrite: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialWrite@ui8TxData)
	line	110
	
l5520:	
	goto	l5522
	
l904:	
	line	115
	goto	l5522
	line	116
	
l903:	
	line	110
	
l5522:	
	fcall	_isSerialBufferFull
	iorlw	0
	skipz
	goto	u4451
	goto	u4450
u4451:
	goto	l5522
u4450:
	
l905:	
	line	118
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	119
	
l5524:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialWrite@ui8TxData),w
	movwf	(??_serialWrite+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_stUARTTXFiFo)^0180h+020h,w
	addlw	_stUARTTXFiFo&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_serialWrite+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	
l5526:	
	movlw	(01h)
	movwf	(??_serialWrite+0)+0
	movf	(??_serialWrite+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	0+(_stUARTTXFiFo)^0180h+020h,f
	line	120
	
l5528:	
	movlw	(01Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialWrite+0)+0
	movf	(??_serialWrite+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	0+(_stUARTTXFiFo)^0180h+020h,f
	line	121
	
l5530:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1124/8)^080h,(1124)&7	;volatile
	line	125
	
l906:	
	return
	opt stack 0
GLOBAL	__end_of_serialWrite
	__end_of_serialWrite:
	signat	_serialWrite,4216
	global	_isSerialBufferFull

;; *************** function _isSerialBufferFull *****************
;; Defined at:
;;		line 402 in file "hardware/cores/lib\corelib_uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_serialWrite
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	line	402
global __ptext28
__ptext28:	;psect for function _isSerialBufferFull
psect	text28
	file	"hardware/cores/lib\corelib_uart.c"
	line	402
	global	__size_of_isSerialBufferFull
	__size_of_isSerialBufferFull	equ	__end_of_isSerialBufferFull-_isSerialBufferFull
	
_isSerialBufferFull:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _isSerialBufferFull: [wreg+status,2+status,0]
	line	404
	
l5516:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_stUARTTXFiFo)^0180h+020h,w
	addlw	01h
	andlw	01Fh
	xorwf	0+(_stUARTTXFiFo)^0180h+021h,w
	movlw	0
	skipnz
	movlw	1
	goto	l949
	
l5518:	
	line	405
	
l949:	
	return
	opt stack 0
GLOBAL	__end_of_isSerialBufferFull
	__end_of_isSerialBufferFull:
	signat	_isSerialBufferFull,89
	global	_detectLine

;; *************** function _detectLine *****************
;; Defined at:
;;		line 202 in file "libraries/Mobot_Lib\Mobot_Lib.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_pollLineSensors
;; This function is called by:
;;		_pollLineSensorsTelemetry
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	202
global __ptext29
__ptext29:	;psect for function _detectLine
psect	text29
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	202
	global	__size_of_detectLine
	__size_of_detectLine	equ	__end_of_detectLine-_detectLine
	
_detectLine:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _detectLine: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	204
	
l5766:	
	movlw	(_blLineSensorPolarity)&0ffh
	fcall	_pollLineSensors
	line	207
	
l5768:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_blLineDetectedonLeft),w
	skipz
	goto	u4630
	goto	l5776
u4630:
	
l5770:	
	movf	(_blLineDetectedonCenter),w
	skipz
	goto	u4640
	goto	l5776
u4640:
	
l5772:	
	movf	(_blLineDetectedonRight),w
	skipz
	goto	u4650
	goto	l5776
u4650:
	line	209
	
l5774:	
	movlw	(05h)
	movwf	(??_detectLine+0)+0
	movf	(??_detectLine+0)+0,w
	movwf	(_ui8LineLocation)
	line	210
	goto	l5802
	line	212
	
l344:	
	
l5776:	
	movf	(_blLineDetectedonLeft),w
	skipz
	goto	u4660
	goto	l5782
u4660:
	
l5778:	
	movf	(_blLineDetectedonCenter),w
	skipz
	goto	u4670
	goto	l5782
u4670:
	line	214
	
l5780:	
	movlw	(02h)
	movwf	(??_detectLine+0)+0
	movf	(??_detectLine+0)+0,w
	movwf	(_ui8LineLocation)
	line	215
	goto	l5802
	line	217
	
l346:	
	
l5782:	
	movf	(_blLineDetectedonCenter),w
	skipz
	goto	u4680
	goto	l5788
u4680:
	
l5784:	
	movf	(_blLineDetectedonRight),w
	skipz
	goto	u4690
	goto	l5788
u4690:
	line	219
	
l5786:	
	movlw	(04h)
	movwf	(??_detectLine+0)+0
	movf	(??_detectLine+0)+0,w
	movwf	(_ui8LineLocation)
	line	220
	goto	l5802
	line	222
	
l348:	
	
l5788:	
	movf	(_blLineDetectedonLeft),w
	skipz
	goto	u4700
	goto	l5792
u4700:
	line	224
	
l5790:	
	clrf	(_ui8LineLocation)
	incf	(_ui8LineLocation),f
	line	225
	goto	l5802
	line	227
	
l350:	
	
l5792:	
	movf	(_blLineDetectedonRight),w
	skipz
	goto	u4710
	goto	l5796
u4710:
	line	229
	
l5794:	
	movlw	(03h)
	movwf	(??_detectLine+0)+0
	movf	(??_detectLine+0)+0,w
	movwf	(_ui8LineLocation)
	line	230
	goto	l5802
	line	232
	
l352:	
	
l5796:	
	movf	(_blLineDetectedonCenter),w
	skipz
	goto	u4720
	goto	l5800
u4720:
	line	234
	
l5798:	
	movlw	(06h)
	movwf	(??_detectLine+0)+0
	movf	(??_detectLine+0)+0,w
	movwf	(_ui8LineLocation)
	line	235
	goto	l5802
	line	237
	
l354:	
	line	239
	
l5800:	
	clrf	(_ui8LineLocation)
	goto	l5802
	line	240
	
l355:	
	goto	l5802
	
l353:	
	goto	l5802
	
l351:	
	goto	l5802
	
l349:	
	goto	l5802
	
l347:	
	goto	l5802
	
l345:	
	line	242
	
l5802:	
	movf	(_ui8LineLocation),w
	goto	l356
	
l5804:	
	line	243
	
l356:	
	return
	opt stack 0
GLOBAL	__end_of_detectLine
	__end_of_detectLine:
	signat	_detectLine,89
	global	_pollLineSensors

;; *************** function _pollLineSensors *****************
;; Defined at:
;;		line 279 in file "libraries/Mobot_Lib\LowLevelMobot.c"
;; Parameters:    Size  Location     Type
;;  blLineSensor    1    wreg     PTR unsigned char 
;;		 -> blLineSensorPolarity(1), 
;; Auto vars:     Size  Location     Type
;;  blLineSensor    1   11[BANK0 ] PTR unsigned char 
;;		 -> blLineSensorPolarity(1), 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_readSensorOutput
;; This function is called by:
;;		_detectLine
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"libraries/Mobot_Lib\LowLevelMobot.c"
	line	279
global __ptext30
__ptext30:	;psect for function _pollLineSensors
psect	text30
	file	"libraries/Mobot_Lib\LowLevelMobot.c"
	line	279
	global	__size_of_pollLineSensors
	__size_of_pollLineSensors	equ	__end_of_pollLineSensors-_pollLineSensors
	
_pollLineSensors:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _pollLineSensors: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	280
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(pollLineSensors@blLineSensorPolarity)
	line	281
	
l5672:	
	movf	(pollLineSensors@blLineSensorPolarity),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_pollLineSensors+0)+0
	movf	(??_pollLineSensors+0)+0,w
	movwf	(readSensorOutput@blPolarity)
	movlw	(0Ah)
	fcall	_readSensorOutput
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_pollLineSensors+1)+0
	movf	(??_pollLineSensors+1)+0,w
	movwf	(_blLineDetectedonLeft)
	line	282
	movf	(pollLineSensors@blLineSensorPolarity),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_pollLineSensors+0)+0
	movf	(??_pollLineSensors+0)+0,w
	movwf	(readSensorOutput@blPolarity)
	movlw	(05h)
	fcall	_readSensorOutput
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_pollLineSensors+1)+0
	movf	(??_pollLineSensors+1)+0,w
	movwf	(_blLineDetectedonCenter)
	line	283
	movf	(pollLineSensors@blLineSensorPolarity),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_pollLineSensors+0)+0
	movf	(??_pollLineSensors+0)+0,w
	movwf	(readSensorOutput@blPolarity)
	movlw	(09h)
	fcall	_readSensorOutput
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_pollLineSensors+1)+0
	movf	(??_pollLineSensors+1)+0,w
	movwf	(_blLineDetectedonRight)
	line	284
	
l252:	
	return
	opt stack 0
GLOBAL	__end_of_pollLineSensors
	__end_of_pollLineSensors:
	signat	_pollLineSensors,4216
	global	_readSensorOutput

;; *************** function _readSensorOutput *****************
;; Defined at:
;;		line 168 in file "libraries/Mobot_Lib\LowLevelMobot.c"
;; Parameters:    Size  Location     Type
;;  iSensorPin      1    wreg     unsigned char 
;;  blPolarity      1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  iSensorPin      1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;;		_checkPinState
;; This function is called by:
;;		_pollWallSensors
;;		_pollLineSensors
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	line	168
global __ptext31
__ptext31:	;psect for function _readSensorOutput
psect	text31
	file	"libraries/Mobot_Lib\LowLevelMobot.c"
	line	168
	global	__size_of_readSensorOutput
	__size_of_readSensorOutput	equ	__end_of_readSensorOutput-_readSensorOutput
	
_readSensorOutput:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _readSensorOutput: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(readSensorOutput@iSensorPin)
	line	170
	
l5620:	
	movf	(readSensorOutput@blPolarity),w
	skipz
	goto	u4480
	goto	l5628
u4480:
	line	172
	
l5622:	
	movf	(readSensorOutput@iSensorPin),w
	fcall	_checkPinState
	xorlw	0
	movlw	0
	skipnz
	movlw	1
	goto	l245
	
l5624:	
	goto	l245
	line	173
	
l5626:	
	goto	l245
	line	174
	
l244:	
	line	176
	
l5628:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(readSensorOutput@iSensorPin),w
	fcall	_checkPinState
	goto	l245
	
l5630:	
	goto	l245
	line	177
	
l246:	
	line	178
	
l245:	
	return
	opt stack 0
GLOBAL	__end_of_readSensorOutput
	__end_of_readSensorOutput:
	signat	_readSensorOutput,8313
	global	_checkPinState

;; *************** function _checkPinState *****************
;; Defined at:
;;		line 316 in file "hardware/cores/lib\hal_gpio.c"
;; Parameters:    Size  Location     Type
;;  ui8Pin          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Pin          1    6[BANK0 ] unsigned char 
;;  pui8PortReg     2    4[BANK0 ] PTR unsigned char 
;;		 -> NULL(0), PORTE(1), PORTD(1), PORTC(1), 
;;		 -> PORTB(1), PORTA(1), 
;;  ui8PinMask      1    3[BANK0 ] unsigned char 
;;  ui8PinStatus    1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       5       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readSensorOutput
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_gpio.c"
	line	316
global __ptext32
__ptext32:	;psect for function _checkPinState
psect	text32
	file	"hardware/cores/lib\hal_gpio.c"
	line	316
	global	__size_of_checkPinState
	__size_of_checkPinState	equ	__end_of_checkPinState-_checkPinState
	
_checkPinState:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _checkPinState: [wreg-fsr0h+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(checkPinState@ui8Pin)
	line	319
	
l3676:	
	clrf	(checkPinState@pui8PortReg)
	clrf	(checkPinState@pui8PortReg+1)
	line	322
	
l3678:	
	movlw	(08h)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u2311
	goto	u2310
u2311:
	goto	l3682
u2310:
	line	324
	
l3680:	
	movlw	high(7)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(7)
	movwf	(checkPinState@pui8PortReg)
	line	328
	goto	l3714
	line	330
	
l1119:	
	
l3682:	
	movlw	(0Eh)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u2321
	goto	u2320
u2321:
	goto	l3688
u2320:
	line	332
	
l3684:	
	movlw	low(08h)
	subwf	(checkPinState@ui8Pin),f
	line	333
	
l3686:	
	movlw	high(6)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(6)
	movwf	(checkPinState@pui8PortReg)
	line	337
	goto	l3714
	line	339
	
l1121:	
	
l3688:	
	movlw	(015h)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u2331
	goto	u2330
u2331:
	goto	l3708
u2330:
	line	341
	
l3690:	
	movlw	low(0Eh)
	subwf	(checkPinState@ui8Pin),f
	line	344
	
l3692:	
	movlw	(03h)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u2341
	goto	u2340
u2341:
	goto	l3696
u2340:
	line	346
	
l3694:	
	movlw	high(5)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(checkPinState@pui8PortReg)
	line	350
	goto	l3714
	line	352
	
l1124:	
	
l3696:	
	movf	(checkPinState@ui8Pin),w
	xorlw	03h
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l3702
u2350:
	line	354
	
l3698:	
	movlw	(02h)
	movwf	(??_checkPinState+0)+0
	movf	(??_checkPinState+0)+0,w
	addwf	(checkPinState@ui8Pin),f
	line	355
	
l3700:	
	movlw	high(5)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(checkPinState@pui8PortReg)
	line	359
	goto	l3714
	line	361
	
l1126:	
	
l3702:	
	movlw	(07h)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u2361
	goto	u2360
u2361:
	goto	l3714
u2360:
	line	363
	
l3704:	
	movlw	low(04h)
	subwf	(checkPinState@ui8Pin),f
	line	364
	
l3706:	
	movlw	high(9)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(9)
	movwf	(checkPinState@pui8PortReg)
	line	368
	goto	l3714
	line	369
	
l1128:	
	goto	l3714
	line	375
	
l1129:	
	goto	l3714
	
l1127:	
	goto	l3714
	
l1125:	
	line	376
	goto	l3714
	line	378
	
l1123:	
	
l3708:	
	movlw	(01Dh)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u2371
	goto	u2370
u2371:
	goto	l3714
u2370:
	line	380
	
l3710:	
	movlw	low(015h)
	subwf	(checkPinState@ui8Pin),f
	line	381
	
l3712:	
	movlw	high(8)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(8)
	movwf	(checkPinState@pui8PortReg)
	line	385
	goto	l3714
	line	386
	
l1131:	
	goto	l3714
	line	392
	
l1132:	
	goto	l3714
	
l1130:	
	goto	l3714
	
l1122:	
	goto	l3714
	
l1120:	
	line	395
	
l3714:	
	movf	(checkPinState@pui8PortReg+1),w
	iorwf	(checkPinState@pui8PortReg),w
	skipnz
	goto	u2381
	goto	u2380
u2381:
	goto	l3732
u2380:
	line	397
	
l3716:	
	movlw	(01h)
	movwf	(??_checkPinState+0)+0
	incf	(checkPinState@ui8Pin),w
	goto	u2394
u2395:
	clrc
	rlf	(??_checkPinState+0)+0,f
u2394:
	addlw	-1
	skipz
	goto	u2395
	movf	0+(??_checkPinState+0)+0,w
	movwf	(??_checkPinState+1)+0
	movf	(??_checkPinState+1)+0,w
	movwf	(checkPinState@ui8PinMask)
	line	398
	
l3718:	
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
	line	400
	
l3720:	
	movf	(checkPinState@ui8PinMask),w
	xorwf	(checkPinState@ui8PinStatus),w
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l3728
u2400:
	line	405
	
l3722:	
	movlw	(01h)
	goto	l1135
	
l3724:	
	goto	l1135
	line	406
	
l3726:	
	goto	l1135
	line	407
	
l1134:	
	line	412
	
l3728:	
	movlw	(0)
	goto	l1135
	
l3730:	
	goto	l1135
	line	413
	
l1136:	
	line	414
	goto	l1135
	line	415
	
l1133:	
	line	421
	
l3732:	
	movlw	(0)
	goto	l1135
	
l3734:	
	goto	l1135
	line	422
	
l1137:	
	line	423
	
l1135:	
	return
	opt stack 0
GLOBAL	__end_of_checkPinState
	__end_of_checkPinState:
	signat	_checkPinState,4217
	global	_adcCycle

;; *************** function _adcCycle *****************
;; Defined at:
;;		line 166 in file "hardware/cores/lib\corelib_adc.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_getElapsedMs
;;		_getMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_adc.c"
	line	166
global __ptext33
__ptext33:	;psect for function _adcCycle
psect	text33
	file	"hardware/cores/lib\corelib_adc.c"
	line	166
	global	__size_of_adcCycle
	__size_of_adcCycle	equ	__end_of_adcCycle-_adcCycle
	
_adcCycle:	
;incstack = 0
	opt	stack 1
; Regs used in _adcCycle: [wreg+status,2+status,0+pclath+cstack]
	line	173
	
l5872:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(adcCycle@ui16Timer+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getElapsedMs@ui16TimeMs+1)
	addwf	(getElapsedMs@ui16TimeMs+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(adcCycle@ui16Timer)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getElapsedMs@ui16TimeMs)
	addwf	(getElapsedMs@ui16TimeMs)

	fcall	_getElapsedMs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_getElapsedMs)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(adcCycle@ui16Counter+1)^080h
	addwf	(adcCycle@ui16Counter+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_getElapsedMs)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(adcCycle@ui16Counter)^080h
	addwf	(adcCycle@ui16Counter)^080h

	line	177
	
l5874:	
	movlw	high(05h)
	subwf	(adcCycle@ui16Counter+1)^080h,w
	movlw	low(05h)
	skipnz
	subwf	(adcCycle@ui16Counter)^080h,w
	skipc
	goto	u4791
	goto	u4790
u4791:
	goto	l713
u4790:
	line	183
	
l5876:	
	fcall	_getMs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_getMs)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(adcCycle@ui16Timer+1)^080h
	addwf	(adcCycle@ui16Timer+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_getMs)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(adcCycle@ui16Timer)^080h
	addwf	(adcCycle@ui16Timer)^080h

	line	191
	
l5878:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(250/8),(250)&7	;volatile
	goto	u4801
	goto	u4800
u4801:
	goto	l713
u4800:
	line	194
	
l5880:	
	bsf	(250/8),(250)&7	;volatile
	goto	l713
	line	198
	
l712:	
	goto	l713
	line	199
	
l711:	
	line	200
	
l713:	
	return
	opt stack 0
GLOBAL	__end_of_adcCycle
	__end_of_adcCycle:
	signat	_adcCycle,88
	global	_getMs

;; *************** function _getMs *****************
;; Defined at:
;;		line 128 in file "hardware/cores/lib\corelib_basetimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ui16TempBuff    2    6[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_get_gblISRLocked_FlagValue
;;		_get_gui16TimerMs_Value
;; This function is called by:
;;		_setupTelemetry
;;		_pollSensors
;;		_adcCycle
;;		_parseIncomingBytes
;;		_resetDProtocol
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	128
global __ptext34
__ptext34:	;psect for function _getMs
psect	text34
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	128
	global	__size_of_getMs
	__size_of_getMs	equ	__end_of_getMs-_getMs
	
_getMs:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _getMs: [wreg+status,2+status,0+pclath+cstack]
	line	132
	
l5596:	
	goto	l5598
	
l755:	
	goto	l5598
	
l754:	
	
l5598:	
	fcall	_get_gblISRLocked_FlagValue
	xorlw	01h
	skipnz
	goto	u4461
	goto	u4460
u4461:
	goto	l5598
u4460:
	
l756:	
	line	134
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	135
	
l5600:	
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
	
l5602:	
	bsf	(95/8),(95)&7	;volatile
	
l5604:	
	bsf	(94/8),(94)&7	;volatile
	line	137
	
l5606:	
	movf	(getMs@ui16TempBuff+1),w
	clrf	(?_getMs+1)
	addwf	(?_getMs+1)
	movf	(getMs@ui16TempBuff),w
	clrf	(?_getMs)
	addwf	(?_getMs)

	goto	l757
	
l5608:	
	line	138
	
l757:	
	return
	opt stack 0
GLOBAL	__end_of_getMs
	__end_of_getMs:
	signat	_getMs,90
	global	_getElapsedMs

;; *************** function _getElapsedMs *****************
;; Defined at:
;;		line 157 in file "hardware/cores/lib\corelib_basetimer.c"
;; Parameters:    Size  Location     Type
;;  ui16TimeMs      2    4[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  ui16TempBuff    2    8[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_get_gblISRLocked_FlagValue
;;		_get_gui16TimerMs_Value
;; This function is called by:
;;		_pollSensors
;;		_adcCycle
;;		_parseIncomingBytes
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	line	157
global __ptext35
__ptext35:	;psect for function _getElapsedMs
psect	text35
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	157
	global	__size_of_getElapsedMs
	__size_of_getElapsedMs	equ	__end_of_getElapsedMs-_getElapsedMs
	
_getElapsedMs:	
;incstack = 0
	opt	stack 0
; Regs used in _getElapsedMs: [wreg+status,2+status,0+pclath+cstack]
	line	161
	
l5820:	
	goto	l5822
	
l761:	
	goto	l5822
	
l760:	
	
l5822:	
	fcall	_get_gblISRLocked_FlagValue
	xorlw	01h
	skipnz
	goto	u4751
	goto	u4750
u4751:
	goto	l5822
u4750:
	
l762:	
	line	163
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	164
	
l5824:	
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
	line	165
	
l5826:	
	bsf	(95/8),(95)&7	;volatile
	
l5828:	
	bsf	(94/8),(94)&7	;volatile
	line	166
	
l5830:	
	movf	(getElapsedMs@ui16TempBuff+1),w
	clrf	(?_getElapsedMs+1)
	addwf	(?_getElapsedMs+1)
	movf	(getElapsedMs@ui16TempBuff),w
	clrf	(?_getElapsedMs)
	addwf	(?_getElapsedMs)

	goto	l763
	
l5832:	
	line	167
	
l763:	
	return
	opt stack 0
GLOBAL	__end_of_getElapsedMs
	__end_of_getElapsedMs:
	signat	_getElapsedMs,4218
	global	_get_gui16TimerMs_Value

;; *************** function _get_gui16TimerMs_Value *****************
;; Defined at:
;;		line 168 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ui16Temp        2    2[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getMs
;;		_getElapsedMs
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	168
global __ptext36
__ptext36:	;psect for function _get_gui16TimerMs_Value
psect	text36
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	168
	global	__size_of_get_gui16TimerMs_Value
	__size_of_get_gui16TimerMs_Value	equ	__end_of_get_gui16TimerMs_Value-_get_gui16TimerMs_Value
	
_get_gui16TimerMs_Value:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _get_gui16TimerMs_Value: [wreg+status,2+status,0]
	line	171
	
l5532:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_gui16TimerMs+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(get_gui16TimerMs_Value@ui16Temp+1)
	addwf	(get_gui16TimerMs_Value@ui16Temp+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_gui16TimerMs)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(get_gui16TimerMs_Value@ui16Temp)
	addwf	(get_gui16TimerMs_Value@ui16Temp)

	line	172
	movf	(get_gui16TimerMs_Value@ui16Temp+1),w
	clrf	(?_get_gui16TimerMs_Value+1)
	addwf	(?_get_gui16TimerMs_Value+1)
	movf	(get_gui16TimerMs_Value@ui16Temp),w
	clrf	(?_get_gui16TimerMs_Value)
	addwf	(?_get_gui16TimerMs_Value)

	goto	l527
	
l5534:	
	line	173
	
l527:	
	return
	opt stack 0
GLOBAL	__end_of_get_gui16TimerMs_Value
	__end_of_get_gui16TimerMs_Value:
	signat	_get_gui16TimerMs_Value,90
	global	_get_gblISRLocked_FlagValue

;; *************** function _get_gblISRLocked_FlagValue *****************
;; Defined at:
;;		line 82 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  blTemp          1    1[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getMs
;;		_getElapsedMs
;;		_getBaseTimerValue
;;		_getUs
;;		_getElapsedUs
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	line	82
global __ptext37
__ptext37:	;psect for function _get_gblISRLocked_FlagValue
psect	text37
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	82
	global	__size_of_get_gblISRLocked_FlagValue
	__size_of_get_gblISRLocked_FlagValue	equ	__end_of_get_gblISRLocked_FlagValue-_get_gblISRLocked_FlagValue
	
_get_gblISRLocked_FlagValue:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _get_gblISRLocked_FlagValue: [wreg]
	line	85
	
l3736:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gblISRLocked),w	;volatile
	movwf	(??_get_gblISRLocked_FlagValue+0)+0
	movf	(??_get_gblISRLocked_FlagValue+0)+0,w
	movwf	(get_gblISRLocked_FlagValue@blTemp)
	line	86
	movf	(get_gblISRLocked_FlagValue@blTemp),w
	goto	l505
	
l3738:	
	line	87
	
l505:	
	return
	opt stack 0
GLOBAL	__end_of_get_gblISRLocked_FlagValue
	__end_of_get_gblISRLocked_FlagValue:
	signat	_get_gblISRLocked_FlagValue,89
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 198 in file "hardware/cores\PhilRoboKit_CoreLib_Macro.c"
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
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_adcISR
;;		_clr_gblISRLocked_FlagValue
;;		_serialRxISR
;;		_serialTxISR
;;		_set_gblISRLocked_FlagValue
;;		_timer16BitISR
;;		_timer8BitISR
;;		_timerISR
;;		_userIntISR
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	198
global __ptext38
__ptext38:	;psect for function _isr
psect	text38
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	198
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;incstack = 0
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
	movwf	(??_isr+0)
	movf	fsr0,w
	movwf	(??_isr+1)
	movf	pclath,w
	movwf	(??_isr+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_isr+3)
	ljmp	_isr
psect	text38
	line	203
	
i1l5148:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	204
	
i1l5150:	
	fcall	_set_gblISRLocked_FlagValue
	line	205
	fcall	_timerISR
	line	206
	fcall	_timer16BitISR
	line	207
	fcall	_timer8BitISR
	line	208
	
i1l5152:	
	fcall	_serialRxISR
	line	209
	
i1l5154:	
	fcall	_userIntISR
	line	210
	fcall	_serialTxISR
	line	211
	fcall	_adcISR
	line	212
	
i1l5156:	
	fcall	_clr_gblISRLocked_FlagValue
	line	213
	
i1l5158:	
	bsf	(95/8),(95)&7	;volatile
	
i1l5160:	
	bsf	(94/8),(94)&7	;volatile
	line	214
	
i1l579:	
	movf	(??_isr+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_isr+2),w
	movwf	pclath
	movf	(??_isr+1),w
	movwf	fsr0
	swapf	(??_isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,88
	global	_userIntISR

;; *************** function _userIntISR *****************
;; Defined at:
;;		line 94 in file "hardware/cores/lib\corelib_user_interrupt.c"
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
psect	text39,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	94
global __ptext39
__ptext39:	;psect for function _userIntISR
psect	text39
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	94
	global	__size_of_userIntISR
	__size_of_userIntISR	equ	__end_of_userIntISR-_userIntISR
	
_userIntISR:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _userIntISR: [wreg+status,2+status,0+pclath+cstack]
	line	97
	
i1l4482:	
	btfss	(92/8),(92)&7	;volatile
	goto	u344_21
	goto	u344_20
u344_21:
	goto	i1l4494
u344_20:
	
i1l4484:	
	btfss	(89/8),(89)&7	;volatile
	goto	u345_21
	goto	u345_20
u345_21:
	goto	i1l4494
u345_20:
	line	99
	
i1l4486:	
	bcf	(92/8),(92)&7	;volatile
	line	101
	
i1l4488:	
	fcall	_extIntISR
	line	103
	
i1l4490:	
	bcf	(89/8),(89)&7	;volatile
	line	104
	
i1l4492:	
	bsf	(92/8),(92)&7	;volatile
	goto	i1l4494
	line	105
	
i1l1010:	
	line	133
	
i1l4494:	
	btfss	(91/8),(91)&7	;volatile
	goto	u346_21
	goto	u346_20
u346_21:
	goto	i1l1012
u346_20:
	
i1l4496:	
	btfss	(88/8),(88)&7	;volatile
	goto	u347_21
	goto	u347_20
u347_21:
	goto	i1l1012
u347_20:
	line	135
	
i1l4498:	
	bcf	(91/8),(91)&7	;volatile
	line	137
	
i1l4500:	
	fcall	_rbIntISR
	line	139
	
i1l4502:	
	bcf	(88/8),(88)&7	;volatile
	line	140
	
i1l4504:	
	bsf	(91/8),(91)&7	;volatile
	goto	i1l1012
	line	141
	
i1l1011:	
	line	142
	
i1l1012:	
	return
	opt stack 0
GLOBAL	__end_of_userIntISR
	__end_of_userIntISR:
	signat	_userIntISR,88
	global	_rbIntISR

;; *************** function _rbIntISR *****************
;; Defined at:
;;		line 228 in file "hardware/cores/lib\hal_user_interrupt.c"
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
psect	text40,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	228
global __ptext40
__ptext40:	;psect for function _rbIntISR
psect	text40
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	228
	global	__size_of_rbIntISR
	__size_of_rbIntISR	equ	__end_of_rbIntISR-_rbIntISR
	
_rbIntISR:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _rbIntISR: [wreg+status,2+status,0+pclath+cstack]
	line	232
	
i1l4238:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,w	;volatile
	xorwf	(_PORTB_BUFFER),w	;volatile
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	movwf	(rbIntISR@PORTCHANGE_BUFFER)
	line	234
	
i1l4240:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(4)&7
	goto	u302_21
	goto	u302_20
u302_21:
	goto	i1l4260
u302_20:
	line	236
	
i1l4242:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_eMod4_Mode),w
	xorlw	02h
	skipz
	goto	u303_21
	goto	u303_20
u303_21:
	goto	i1l4248
u303_20:
	
i1l4244:	
	btfsc	(6),(4)&7	;volatile
	goto	u304_21
	goto	u304_20
u304_21:
	goto	i1l4248
u304_20:
	goto	i1l4256
	line	239
	
i1l4246:	
	goto	i1l4256
	line	240
	
i1l1226:	
	
i1l4248:	
	movf	(_eMod4_Mode),w
	xorlw	03h
	skipz
	goto	u305_21
	goto	u305_20
u305_21:
	goto	i1l4254
u305_20:
	
i1l4250:	
	btfss	(6),(4)&7	;volatile
	goto	u306_21
	goto	u306_20
u306_21:
	goto	i1l4254
u306_20:
	goto	i1l4256
	line	243
	
i1l4252:	
	goto	i1l4256
	line	244
	
i1l1228:	
	line	247
	
i1l4254:	
	movf	(_pt2INT4),w
	fcall	i1fptable
	goto	i1l4256
	line	248
	
i1l1229:	
	goto	i1l4256
	
i1l1227:	
	line	250
	
i1l4256:	
	movlw	(0EFh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	andwf	(_PORTB_BUFFER),f	;volatile
	line	251
	
i1l4258:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	andlw	010h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l4260
	line	252
	
i1l1225:	
	line	254
	
i1l4260:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(5)&7
	goto	u307_21
	goto	u307_20
u307_21:
	goto	i1l4280
u307_20:
	line	256
	
i1l4262:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_eMod5_Mode),w
	xorlw	02h
	skipz
	goto	u308_21
	goto	u308_20
u308_21:
	goto	i1l4268
u308_20:
	
i1l4264:	
	btfsc	(6),(5)&7	;volatile
	goto	u309_21
	goto	u309_20
u309_21:
	goto	i1l4268
u309_20:
	goto	i1l4276
	line	259
	
i1l4266:	
	goto	i1l4276
	line	260
	
i1l1231:	
	
i1l4268:	
	movf	(_eMod5_Mode),w
	xorlw	03h
	skipz
	goto	u310_21
	goto	u310_20
u310_21:
	goto	i1l4274
u310_20:
	
i1l4270:	
	btfss	(6),(5)&7	;volatile
	goto	u311_21
	goto	u311_20
u311_21:
	goto	i1l4274
u311_20:
	goto	i1l4276
	line	263
	
i1l4272:	
	goto	i1l4276
	line	264
	
i1l1233:	
	line	267
	
i1l4274:	
	movf	(_pt2INT5),w
	fcall	i1fptable
	goto	i1l4276
	line	268
	
i1l1234:	
	goto	i1l4276
	
i1l1232:	
	line	270
	
i1l4276:	
	movlw	(0DFh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	andwf	(_PORTB_BUFFER),f	;volatile
	line	271
	
i1l4278:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	andlw	020h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l4280
	line	272
	
i1l1230:	
	line	274
	
i1l4280:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(6)&7
	goto	u312_21
	goto	u312_20
u312_21:
	goto	i1l4300
u312_20:
	line	276
	
i1l4282:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_eMod6_Mode),w
	xorlw	02h
	skipz
	goto	u313_21
	goto	u313_20
u313_21:
	goto	i1l4288
u313_20:
	
i1l4284:	
	btfsc	(6),(6)&7	;volatile
	goto	u314_21
	goto	u314_20
u314_21:
	goto	i1l4288
u314_20:
	goto	i1l4296
	line	279
	
i1l4286:	
	goto	i1l4296
	line	280
	
i1l1236:	
	
i1l4288:	
	movf	(_eMod6_Mode),w
	xorlw	03h
	skipz
	goto	u315_21
	goto	u315_20
u315_21:
	goto	i1l4294
u315_20:
	
i1l4290:	
	btfss	(6),(6)&7	;volatile
	goto	u316_21
	goto	u316_20
u316_21:
	goto	i1l4294
u316_20:
	goto	i1l4296
	line	283
	
i1l4292:	
	goto	i1l4296
	line	284
	
i1l1238:	
	line	287
	
i1l4294:	
	movf	(_pt2INT6),w
	fcall	i1fptable
	goto	i1l4296
	line	288
	
i1l1239:	
	goto	i1l4296
	
i1l1237:	
	line	290
	
i1l4296:	
	movlw	(0BFh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	andwf	(_PORTB_BUFFER),f	;volatile
	line	291
	
i1l4298:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	andlw	040h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l4300
	line	292
	
i1l1235:	
	line	294
	
i1l4300:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(7)&7
	goto	u317_21
	goto	u317_20
u317_21:
	goto	i1l4320
u317_20:
	line	296
	
i1l4302:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_eMod7_Mode),w
	xorlw	02h
	skipz
	goto	u318_21
	goto	u318_20
u318_21:
	goto	i1l4308
u318_20:
	
i1l4304:	
	btfsc	(6),(7)&7	;volatile
	goto	u319_21
	goto	u319_20
u319_21:
	goto	i1l4308
u319_20:
	goto	i1l4316
	line	299
	
i1l4306:	
	goto	i1l4316
	line	300
	
i1l1241:	
	
i1l4308:	
	movf	(_eMod7_Mode),w
	xorlw	03h
	skipz
	goto	u320_21
	goto	u320_20
u320_21:
	goto	i1l4314
u320_20:
	
i1l4310:	
	btfss	(6),(7)&7	;volatile
	goto	u321_21
	goto	u321_20
u321_21:
	goto	i1l4314
u321_20:
	goto	i1l4316
	line	303
	
i1l4312:	
	goto	i1l4316
	line	304
	
i1l1243:	
	line	307
	
i1l4314:	
	movf	(_pt2INT7),w
	fcall	i1fptable
	goto	i1l4316
	line	308
	
i1l1244:	
	goto	i1l4316
	
i1l1242:	
	line	310
	
i1l4316:	
	movlw	(07Fh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	andwf	(_PORTB_BUFFER),f	;volatile
	line	311
	
i1l4318:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	andlw	080h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l4320
	line	312
	
i1l1240:	
	line	314
	
i1l4320:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(134)^080h,w	;volatile
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	andwf	(_PORTB_BUFFER),f	;volatile
	line	315
	
i1l1245:	
	return
	opt stack 0
GLOBAL	__end_of_rbIntISR
	__end_of_rbIntISR:
	signat	_rbIntISR,88
	global	_extIntISR

;; *************** function _extIntISR *****************
;; Defined at:
;;		line 110 in file "hardware/cores/lib\hal_user_interrupt.c"
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
psect	text41,local,class=CODE,delta=2,merge=1
	line	110
global __ptext41
__ptext41:	;psect for function _extIntISR
psect	text41
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	110
	global	__size_of_extIntISR
	__size_of_extIntISR	equ	__end_of_extIntISR-_extIntISR
	
_extIntISR:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _extIntISR: [wreg+status,2+status,0+pclath+cstack]
	line	113
	
i1l4230:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_eMod0_Mode),w
	xorlw	01h
	skipz
	goto	u300_21
	goto	u300_20
u300_21:
	goto	i1l4236
u300_20:
	line	115
	
i1l4232:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1038/8)^080h,(1038)&7	;volatile
	goto	u301_21
	goto	u301_20
u301_21:
	goto	i1l1218
u301_20:
	line	117
	
i1l4234:	
	bsf	(1038/8)^080h,(1038)&7	;volatile
	line	118
	goto	i1l4236
	line	119
	
i1l1218:	
	line	121
	bcf	(1038/8)^080h,(1038)&7	;volatile
	goto	i1l4236
	line	122
	
i1l1219:	
	goto	i1l4236
	line	125
	
i1l1217:	
	line	128
	
i1l4236:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_pt2INT0),w
	fcall	i1fptable
	line	129
	
i1l1220:	
	return
	opt stack 0
GLOBAL	__end_of_extIntISR
	__end_of_extIntISR:
	signat	_extIntISR,88
	global	_nullIntFunction

;; *************** function _nullIntFunction *****************
;; Defined at:
;;		line 88 in file "hardware/cores/lib\hal_user_interrupt.c"
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
psect	text42,local,class=CODE,delta=2,merge=1
	line	88
global __ptext42
__ptext42:	;psect for function _nullIntFunction
psect	text42
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	88
	global	__size_of_nullIntFunction
	__size_of_nullIntFunction	equ	__end_of_nullIntFunction-_nullIntFunction
	
_nullIntFunction:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _nullIntFunction: []
	line	91
	
i1l1214:	
	return
	opt stack 0
GLOBAL	__end_of_nullIntFunction
	__end_of_nullIntFunction:
	signat	_nullIntFunction,88
	global	_timerISR

;; *************** function _timerISR *****************
;; Defined at:
;;		line 107 in file "hardware/cores/lib\hal_timer.c"
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
;;		_inc_gui16TimerMs_Value
;;		_inc_gui16TimerUsMSB_Value
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_timer.c"
	line	107
global __ptext43
__ptext43:	;psect for function _timerISR
psect	text43
	file	"hardware/cores/lib\hal_timer.c"
	line	107
	global	__size_of_timerISR
	__size_of_timerISR	equ	__end_of_timerISR-_timerISR
	
_timerISR:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _timerISR: [wreg+status,2+status,0+pclath+cstack]
	line	114
	
i1l4436:	
	btfss	(90/8),(90)&7	;volatile
	goto	u334_21
	goto	u334_20
u334_21:
	goto	i1l1165
u334_20:
	
i1l4438:	
	btfss	(93/8),(93)&7	;volatile
	goto	u335_21
	goto	u335_20
u335_21:
	goto	i1l1165
u335_20:
	line	116
	
i1l4440:	
	bcf	(90/8),(90)&7	;volatile
	line	117
	
i1l4442:	
	movlw	low(0100h)
	movwf	(inc_gui16TimerUsMSB_Value@ui16Value)
	movlw	high(0100h)
	movwf	((inc_gui16TimerUsMSB_Value@ui16Value))+1
	fcall	_inc_gui16TimerUsMSB_Value
	line	118
	
i1l4444:	
	movlw	low(0CDh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(timerISR@ui16UsCounter)^080h,f
	skipnc
	incf	(timerISR@ui16UsCounter+1)^080h,f
	movlw	high(0CDh)
	addwf	(timerISR@ui16UsCounter+1)^080h,f
	line	120
	goto	i1l4450
	
i1l1163:	
	line	122
	
i1l4446:	
	fcall	_inc_gui16TimerMs_Value
	line	123
	
i1l4448:	
	movlw	low(03E8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(timerISR@ui16UsCounter)^080h,f
	movlw	high(03E8h)
	skipc
	decf	(timerISR@ui16UsCounter+1)^080h,f
	subwf	(timerISR@ui16UsCounter+1)^080h,f
	goto	i1l4450
	line	130
	
i1l1162:	
	line	120
	
i1l4450:	
	movlw	high(03E8h)
	subwf	(timerISR@ui16UsCounter+1)^080h,w
	movlw	low(03E8h)
	skipnz
	subwf	(timerISR@ui16UsCounter)^080h,w
	skipnc
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l4446
u336_20:
	goto	i1l1165
	
i1l1164:	
	goto	i1l1165
	line	144
	
i1l1161:	
	line	145
	
i1l1165:	
	return
	opt stack 0
GLOBAL	__end_of_timerISR
	__end_of_timerISR:
	signat	_timerISR,88
	global	_inc_gui16TimerUsMSB_Value

;; *************** function _inc_gui16TimerUsMSB_Value *****************
;; Defined at:
;;		line 90 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
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
psect	text44,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	90
global __ptext44
__ptext44:	;psect for function _inc_gui16TimerUsMSB_Value
psect	text44
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	90
	global	__size_of_inc_gui16TimerUsMSB_Value
	__size_of_inc_gui16TimerUsMSB_Value	equ	__end_of_inc_gui16TimerUsMSB_Value-_inc_gui16TimerUsMSB_Value
	
_inc_gui16TimerUsMSB_Value:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _inc_gui16TimerUsMSB_Value: [wreg+status,2+status,0]
	line	92
	
i1l4200:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	93
	
i1l4202:	
	movf	(inc_gui16TimerUsMSB_Value@ui16Value),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_gui16TimerUsMSB)^080h,f	;volatile
	skipnc
	incf	(_gui16TimerUsMSB+1)^080h,f	;volatile
	movf	(inc_gui16TimerUsMSB_Value@ui16Value+1),w
	addwf	(_gui16TimerUsMSB+1)^080h,f	;volatile
	line	95
	
i1l4204:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gblISRLocked),f	;volatile
	skipz
	goto	u298_21
	goto	u298_20
u298_21:
	goto	i1l509
u298_20:
	line	97
	
i1l4206:	
	bsf	(95/8),(95)&7	;volatile
	bsf	(94/8),(94)&7	;volatile
	goto	i1l509
	line	98
	
i1l508:	
	line	99
	
i1l509:	
	return
	opt stack 0
GLOBAL	__end_of_inc_gui16TimerUsMSB_Value
	__end_of_inc_gui16TimerUsMSB_Value:
	signat	_inc_gui16TimerUsMSB_Value,4216
	global	_inc_gui16TimerMs_Value

;; *************** function _inc_gui16TimerMs_Value *****************
;; Defined at:
;;		line 157 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
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
psect	text45,local,class=CODE,delta=2,merge=1
	line	157
global __ptext45
__ptext45:	;psect for function _inc_gui16TimerMs_Value
psect	text45
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	157
	global	__size_of_inc_gui16TimerMs_Value
	__size_of_inc_gui16TimerMs_Value	equ	__end_of_inc_gui16TimerMs_Value-_inc_gui16TimerMs_Value
	
_inc_gui16TimerMs_Value:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _inc_gui16TimerMs_Value: [wreg+status,2+status,0]
	line	159
	
i1l4214:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	160
	
i1l4216:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_gui16TimerMs)^080h,f	;volatile
	skipnc
	incf	(_gui16TimerMs+1)^080h,f	;volatile
	movlw	high(01h)
	addwf	(_gui16TimerMs+1)^080h,f	;volatile
	line	162
	
i1l4218:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gblISRLocked),f	;volatile
	skipz
	goto	u299_21
	goto	u299_20
u299_21:
	goto	i1l524
u299_20:
	line	164
	
i1l4220:	
	bsf	(95/8),(95)&7	;volatile
	bsf	(94/8),(94)&7	;volatile
	goto	i1l524
	line	165
	
i1l523:	
	line	166
	
i1l524:	
	return
	opt stack 0
GLOBAL	__end_of_inc_gui16TimerMs_Value
	__end_of_inc_gui16TimerMs_Value:
	signat	_inc_gui16TimerMs_Value,88
	global	_timer8BitISR

;; *************** function _timer8BitISR *****************
;; Defined at:
;;		line 70 in file "hardware/cores/lib\corelib_8bit_timer.c"
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
;;		_nullTMRFunction
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	70
global __ptext46
__ptext46:	;psect for function _timer8BitISR
psect	text46
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	70
	global	__size_of_timer8BitISR
	__size_of_timer8BitISR	equ	__end_of_timer8BitISR-_timer8BitISR
	
_timer8BitISR:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _timer8BitISR: [wreg+status,2+status,0+pclath+cstack]
	line	74
	
i1l4460:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u339_21
	goto	u339_20
u339_21:
	goto	i1l638
u339_20:
	
i1l4462:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1121/8)^080h,(1121)&7	;volatile
	goto	u340_21
	goto	u340_20
u340_21:
	goto	i1l638
u340_20:
	line	77
	
i1l4464:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	78
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1121/8)^080h,(1121)&7	;volatile
	line	79
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(146/8),(146)&7	;volatile
	line	81
	
i1l4466:	
	movf	(_pt2TMR2ISR),w
	fcall	i1fptable
	goto	i1l638
	line	82
	
i1l637:	
	line	111
	
i1l638:	
	return
	opt stack 0
GLOBAL	__end_of_timer8BitISR
	__end_of_timer8BitISR:
	signat	_timer8BitISR,88
	global	_nullTMRFunction

;; *************** function _nullTMRFunction *****************
;; Defined at:
;;		line 66 in file "hardware/cores/lib\hal_8bit_timer.c"
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
psect	text47,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_8bit_timer.c"
	line	66
global __ptext47
__ptext47:	;psect for function _nullTMRFunction
psect	text47
	file	"hardware/cores/lib\hal_8bit_timer.c"
	line	66
	global	__size_of_nullTMRFunction
	__size_of_nullTMRFunction	equ	__end_of_nullTMRFunction-_nullTMRFunction
	
_nullTMRFunction:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _nullTMRFunction: []
	line	69
	
i1l1043:	
	return
	opt stack 0
GLOBAL	__end_of_nullTMRFunction
	__end_of_nullTMRFunction:
	signat	_nullTMRFunction,88
	global	_timer16BitISR

;; *************** function _timer16BitISR *****************
;; Defined at:
;;		line 67 in file "hardware/cores/lib\corelib_16bit_timer.c"
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
psect	text48,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	67
global __ptext48
__ptext48:	;psect for function _timer16BitISR
psect	text48
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	67
	global	__size_of_timer16BitISR
	__size_of_timer16BitISR	equ	__end_of_timer16BitISR-_timer16BitISR
	
_timer16BitISR:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _timer16BitISR: [wreg+status,2+status,0+pclath+cstack]
	line	71
	
i1l4452:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7	;volatile
	goto	u337_21
	goto	u337_20
u337_21:
	goto	i1l605
u337_20:
	
i1l4454:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1120/8)^080h,(1120)&7	;volatile
	goto	u338_21
	goto	u338_20
u338_21:
	goto	i1l605
u338_20:
	line	74
	
i1l4456:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(128/8),(128)&7	;volatile
	line	75
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1120/8)^080h,(1120)&7	;volatile
	line	76
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7	;volatile
	line	78
	
i1l4458:	
	movf	(_pt2TMR1ISR),w
	fcall	i1fptable
	goto	i1l605
	line	79
	
i1l604:	
	line	82
	
i1l605:	
	return
	opt stack 0
GLOBAL	__end_of_timer16BitISR
	__end_of_timer16BitISR:
	signat	_timer16BitISR,88
	global	_null16BitTMRFunction

;; *************** function _null16BitTMRFunction *****************
;; Defined at:
;;		line 65 in file "hardware/cores/lib\hal_16bit_timer.c"
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
psect	text49,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_16bit_timer.c"
	line	65
global __ptext49
__ptext49:	;psect for function _null16BitTMRFunction
psect	text49
	file	"hardware/cores/lib\hal_16bit_timer.c"
	line	65
	global	__size_of_null16BitTMRFunction
	__size_of_null16BitTMRFunction	equ	__end_of_null16BitTMRFunction-_null16BitTMRFunction
	
_null16BitTMRFunction:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _null16BitTMRFunction: []
	line	68
	
i1l1040:	
	return
	opt stack 0
GLOBAL	__end_of_null16BitTMRFunction
	__end_of_null16BitTMRFunction:
	signat	_null16BitTMRFunction,88
	global	_set_gblISRLocked_FlagValue

;; *************** function _set_gblISRLocked_FlagValue *****************
;; Defined at:
;;		line 72 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
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
psect	text50,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	72
global __ptext50
__ptext50:	;psect for function _set_gblISRLocked_FlagValue
psect	text50
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	72
	global	__size_of_set_gblISRLocked_FlagValue
	__size_of_set_gblISRLocked_FlagValue	equ	__end_of_set_gblISRLocked_FlagValue-_set_gblISRLocked_FlagValue
	
_set_gblISRLocked_FlagValue:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _set_gblISRLocked_FlagValue: [wreg]
	line	74
	
i1l4356:	
	movlw	(01h)
	movwf	(??_set_gblISRLocked_FlagValue+0)+0
	movf	(??_set_gblISRLocked_FlagValue+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_gblISRLocked)	;volatile
	line	75
	
i1l499:	
	return
	opt stack 0
GLOBAL	__end_of_set_gblISRLocked_FlagValue
	__end_of_set_gblISRLocked_FlagValue:
	signat	_set_gblISRLocked_FlagValue,88
	global	_serialTxISR

;; *************** function _serialTxISR *****************
;; Defined at:
;;		line 351 in file "hardware/cores/lib\corelib_uart.c"
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
psect	text51,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_uart.c"
	line	351
global __ptext51
__ptext51:	;psect for function _serialTxISR
psect	text51
	file	"hardware/cores/lib\corelib_uart.c"
	line	351
	global	__size_of_serialTxISR
	__size_of_serialTxISR	equ	__end_of_serialTxISR-_serialTxISR
	
_serialTxISR:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _serialTxISR: [wreg-fsr0h+status,2+status,0]
	line	353
	
i1l4506:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u348_21
	goto	u348_20
u348_21:
	goto	i1l946
u348_20:
	
i1l4508:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1124/8)^080h,(1124)&7	;volatile
	goto	u349_21
	goto	u349_20
u349_21:
	goto	i1l946
u349_20:
	line	355
	
i1l4510:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(100/8),(100)&7	;volatile
	line	358
	
i1l4512:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_stUARTTXFiFo)^0180h+021h,w
	xorwf	0+(_stUARTTXFiFo)^0180h+020h,w
	skipz
	goto	u350_21
	goto	u350_20
u350_21:
	goto	i1l4516
u350_20:
	line	360
	
i1l4514:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	364
	goto	i1l946
	line	365
	
i1l943:	
	line	367
	
i1l4516:	
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
	
i1l4518:	
	movlw	(01h)
	movwf	(??_serialTxISR+0)+0
	movf	(??_serialTxISR+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	0+(_stUARTTXFiFo)^0180h+021h,f
	line	368
	
i1l4520:	
	movlw	(01Fh)
	movwf	(??_serialTxISR+0)+0
	movf	(??_serialTxISR+0)+0,w
	andwf	0+(_stUARTTXFiFo)^0180h+021h,f
	line	373
	
i1l4522:	
	movf	0+(_stUARTTXFiFo)^0180h+021h,w
	xorwf	0+(_stUARTTXFiFo)^0180h+020h,w
	skipz
	goto	u351_21
	goto	u351_20
u351_21:
	goto	i1l946
u351_20:
	line	375
	
i1l4524:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1124/8)^080h,(1124)&7	;volatile
	goto	i1l946
	line	379
	
i1l945:	
	goto	i1l946
	line	380
	
i1l944:	
	goto	i1l946
	line	381
	
i1l942:	
	line	382
	
i1l946:	
	return
	opt stack 0
GLOBAL	__end_of_serialTxISR
	__end_of_serialTxISR:
	signat	_serialTxISR,88
	global	_serialRxISR

;; *************** function _serialRxISR *****************
;; Defined at:
;;		line 304 in file "hardware/cores/lib\corelib_uart.c"
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
psect	text52,local,class=CODE,delta=2,merge=1
	line	304
global __ptext52
__ptext52:	;psect for function _serialRxISR
psect	text52
	file	"hardware/cores/lib\corelib_uart.c"
	line	304
	global	__size_of_serialRxISR
	__size_of_serialRxISR	equ	__end_of_serialRxISR-_serialRxISR
	
_serialRxISR:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _serialRxISR: [wreg-fsr0h+status,2+status,0]
	line	308
	
i1l4468:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u341_21
	goto	u341_20
u341_21:
	goto	i1l939
u341_20:
	
i1l4470:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7	;volatile
	goto	u342_21
	goto	u342_20
u342_21:
	goto	i1l939
u342_20:
	line	310
	
i1l4472:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7	;volatile
	line	311
	
i1l4474:	
	movf	(26),w	;volatile
	movwf	(??_serialRxISR+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_stUARTRXFiFo)^0180h+020h,w
	addlw	_stUARTRXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialRxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	312
	
i1l4476:	
	movf	0+(_stUARTRXFiFo)^0180h+020h,w
	addlw	01h
	andlw	01Fh
	movwf	(??_serialRxISR+0)+0
	movf	(??_serialRxISR+0)+0,w
	movwf	(serialRxISR@ui8TempIn)
	line	314
	
i1l4478:	
	movf	0+(_stUARTRXFiFo)^0180h+021h,w
	xorwf	(serialRxISR@ui8TempIn),w
	skipnz
	goto	u343_21
	goto	u343_20
u343_21:
	goto	i1l939
u343_20:
	line	316
	
i1l4480:	
	movf	(serialRxISR@ui8TempIn),w
	movwf	(??_serialRxISR+0)+0
	movf	(??_serialRxISR+0)+0,w
	movwf	0+(_stUARTRXFiFo)^0180h+020h
	line	320
	goto	i1l939
	line	321
	
i1l937:	
	goto	i1l939
	line	327
	
i1l938:	
	goto	i1l939
	line	332
	
i1l936:	
	line	333
	
i1l939:	
	return
	opt stack 0
GLOBAL	__end_of_serialRxISR
	__end_of_serialRxISR:
	signat	_serialRxISR,88
	global	_clr_gblISRLocked_FlagValue

;; *************** function _clr_gblISRLocked_FlagValue *****************
;; Defined at:
;;		line 77 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
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
psect	text53,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	77
global __ptext53
__ptext53:	;psect for function _clr_gblISRLocked_FlagValue
psect	text53
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	77
	global	__size_of_clr_gblISRLocked_FlagValue
	__size_of_clr_gblISRLocked_FlagValue	equ	__end_of_clr_gblISRLocked_FlagValue-_clr_gblISRLocked_FlagValue
	
_clr_gblISRLocked_FlagValue:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _clr_gblISRLocked_FlagValue: [status,2]
	line	79
	
i1l4358:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_gblISRLocked)	;volatile
	line	80
	
i1l502:	
	return
	opt stack 0
GLOBAL	__end_of_clr_gblISRLocked_FlagValue
	__end_of_clr_gblISRLocked_FlagValue:
	signat	_clr_gblISRLocked_FlagValue,88
	global	_adcISR

;; *************** function _adcISR *****************
;; Defined at:
;;		line 85 in file "hardware/cores/lib\corelib_adc.c"
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
psect	text54,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_adc.c"
	line	85
global __ptext54
__ptext54:	;psect for function _adcISR
psect	text54
	file	"hardware/cores/lib\corelib_adc.c"
	line	85
	global	__size_of_adcISR
	__size_of_adcISR	equ	__end_of_adcISR-_adcISR
	
_adcISR:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _adcISR: [wreg-fsr0h+status,2+status,0]
	line	89
	
i1l4526:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(102/8),(102)&7	;volatile
	goto	u352_21
	goto	u352_20
u352_21:
	goto	i1l704
u352_20:
	
i1l4528:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1126/8)^080h,(1126)&7	;volatile
	goto	u353_21
	goto	u353_20
u353_21:
	goto	i1l704
u353_20:
	line	91
	
i1l4530:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7	;volatile
	line	94
	
i1l4532:	
	movf	(_eCurrentChannel),w
	xorlw	03h
	skipz
	goto	u354_21
	goto	u354_20
u354_21:
	goto	i1l4536
u354_20:
	goto	i1l4542
	line	100
	
i1l4534:	
	goto	i1l4542
	line	101
	
i1l697:	
	
i1l4536:	
	movlw	(04h)
	subwf	(_eCurrentChannel),w
	skipc
	goto	u355_21
	goto	u355_20
u355_21:
	goto	i1l4540
u355_20:
	line	103
	
i1l4538:	
	movf	(_eCurrentChannel),w
	addlw	0FFh
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	movwf	(adcISR@eEffectiveChannel)
	line	107
	goto	i1l4542
	line	108
	
i1l699:	
	line	110
	
i1l4540:	
	movf	(_eCurrentChannel),w
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	movwf	(adcISR@eEffectiveChannel)
	goto	i1l4542
	line	114
	
i1l700:	
	goto	i1l4542
	
i1l698:	
	line	117
	
i1l4542:	
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
	movf	(??_adcISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movf	(??_adcISR+0)+1,w
	movwf	indf
	line	120
	
i1l4544:	
	movlw	(07h)
	subwf	(_eCurrentChannel),w
	skipnc
	goto	u356_21
	goto	u356_20
u356_21:
	goto	i1l4552
u356_20:
	line	122
	
i1l4546:	
	movlw	(01h)
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	addwf	(_eCurrentChannel),f
	line	125
	
i1l4548:	
	movf	(_eCurrentChannel),w
	xorlw	03h
	skipz
	goto	u357_21
	goto	u357_20
u357_21:
	goto	i1l4554
u357_20:
	line	127
	
i1l4550:	
	movlw	(01h)
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	addwf	(_eCurrentChannel),f
	goto	i1l4554
	line	131
	
i1l702:	
	line	136
	goto	i1l4554
	line	137
	
i1l701:	
	line	139
	
i1l4552:	
	clrf	(_eCurrentChannel)
	goto	i1l4554
	line	143
	
i1l703:	
	line	146
	
i1l4554:	
	movlw	(0C7h)
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	andwf	(31),f	;volatile
	
i1l4556:	
	movf	(_eCurrentChannel),w
	movwf	(??_adcISR+0)+0
	movlw	(03h)-1
u358_25:
	clrc
	rlf	(??_adcISR+0)+0,f
	addlw	-1
	skipz
	goto	u358_25
	clrc
	rlf	(??_adcISR+0)+0,w
	andlw	038h
	movwf	(??_adcISR+1)+0
	movf	(??_adcISR+1)+0,w
	iorwf	(31),f	;volatile
	goto	i1l704
	line	147
	
i1l696:	
	line	148
	
i1l704:	
	return
	opt stack 0
GLOBAL	__end_of_adcISR
	__end_of_adcISR:
	signat	_adcISR,88
global	___latbits
___latbits	equ	2
	global	fptotal
fptotal equ 0
	global	i1fptotal
i1fptotal equ 12
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
fp__null16BitTMRFunction:
	ljmp	_null16BitTMRFunction
	file ""
	line	#
fp__nullTMRFunction:
	ljmp	_nullTMRFunction
	file ""
	line	#
fp__nullIntFunction:
	ljmp	_nullIntFunction
	global __end_of__i1fptable
	__end_of__i1fptable:
	global __size_of__i1fptable
	__size_of__i1fptable	equ	__end_of__i1fptable-__i1fptable
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
