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
	FNCALL	_main,_adcCycle
	FNCALL	_main,_cycle
	FNCALL	_main,_init
	FNCALL	_main,_set_gblInitialized_FlagValue
	FNCALL	_main,_setupADC
	FNCALL	_main,_setupGpio
	FNCALL	_main,_setupTimer
	FNCALL	_setupADC,_configLowLvlADC
	FNCALL	_setupADC,_get_gblInitialized_FlagValue
	FNCALL	_init,_setupSerial
	FNCALL	_init,_setupSoftSerial
	FNCALL	_setupSoftSerial,___bmul
	FNCALL	_setupSoftSerial,_changePinState
	FNCALL	_setupSoftSerial,_configPin
	FNCALL	_setupSoftSerial,_set8BitTimer
	FNCALL	_setupSoftSerial,_setup8BitTimer
	FNCALL	_setupSerial,_hal_setSerialBAUD
	FNCALL	_cycle,_serialSoftDataCount
	FNCALL	_cycle,_serialSoftRead
	FNCALL	_cycle,_serialWrite
	FNCALL	_serialWrite,_isSerialBufferFull
	FNCALL	_serialSoftRead,___bmul
	FNCALL	_serialSoftRead,_isSoftSerialDataAvailable
	FNCALL	_serialSoftDataCount,___bmul
	FNCALL	_serialSoftDataCount,_isSoftSerialDataAvailable
	FNCALL	_isSoftSerialDataAvailable,___bmul
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
	FNCALL	_timerISR,_inc_gui16TimerSec_Value
	FNCALL	_timerISR,_inc_gui16TimerUsMSB_Value
	FNCALL	_timer8BitISR,_nullTMRFunction
	FNCALL	_timer8BitISR,_softUARTController
	FNCALL	_softUARTController,_serialSoftRxISR
	FNCALL	_softUARTController,_serialSoftTxISR
	FNCALL	_softUARTController,i1_set8BitTimer
	FNCALL	_serialSoftTxISR,i1___bmul
	FNCALL	_serialSoftTxISR,i1_changePinState
	FNCALL	_serialSoftRxISR,_checkPinState
	FNCALL	_serialSoftRxISR,i1___bmul
	FNCALL	_timer16BitISR,_null16BitTMRFunction
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_pt2INT0
	global	_pt2INT1
	global	_pt2INT2
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
	global	_gui16TimerMs
	global	_gui16TimerSec
	global	_gui16TimerUsMSB
	global	_ui16SUARTBitPeriod_div3
	global	adcCycle@ui16Counter
	global	adcCycle@ui16Timer
	global	timerISR@ui16MsCounter
	global	timerISR@ui16UsCounter
	global	_PORTB_BUFFER
	global	_PORTB_DIRECTION
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
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_serial/examples/.phr_out\Echo.phr.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
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

adcCycle@ui16Timer:
       ds      2

timerISR@ui16MsCounter:
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

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_ui16ADCBuff:
       ds      14

_stSUART_RXFiFo:
       ds      56

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_stSUART_TXFiFo:
       ds      46

_stUARTTXFiFo:
       ds      34

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_stUARTRXFiFo:
       ds      34

	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_serial/examples/.phr_out\Echo.phr.as"
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

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+024h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+046h)
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+050h)
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK2)
	movwf	fsr
	movlw	low((__pbssBANK2)+022h)
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
	movlw low(__pdataBANK0+13)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram0
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
?_set_gblInitialized_FlagValue:	; 0 bytes @ 0x0
?_set_gblISRLocked_FlagValue:	; 0 bytes @ 0x0
??_set_gblISRLocked_FlagValue:	; 0 bytes @ 0x0
?_clr_gblISRLocked_FlagValue:	; 0 bytes @ 0x0
??_clr_gblISRLocked_FlagValue:	; 0 bytes @ 0x0
?_inc_gui16TimerUsMSB_Value:	; 0 bytes @ 0x0
?_inc_gui16TimerMs_Value:	; 0 bytes @ 0x0
??_inc_gui16TimerMs_Value:	; 0 bytes @ 0x0
?_inc_gui16TimerSec_Value:	; 0 bytes @ 0x0
??_inc_gui16TimerSec_Value:	; 0 bytes @ 0x0
?_isr:	; 0 bytes @ 0x0
?i1_set8BitTimer:	; 0 bytes @ 0x0
?_serialSoftRead:	; 1 bytes @ 0x0
?_serialSoftDataCount:	; 1 bytes @ 0x0
?_isSoftSerialDataAvailable:	; 1 bytes @ 0x0
?_checkPinState:	; 1 bytes @ 0x0
?_isSerialBufferFull:	; 1 bytes @ 0x0
?_get_gblInitialized_FlagValue:	; 1 bytes @ 0x0
?_get_gblISRLocked_FlagValue:	; 1 bytes @ 0x0
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
	ds	1
??_serialSoftTxISR:	; 0 bytes @ 0xA
	ds	4
??_timer8BitISR:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_softUARTController:	; 0 bytes @ 0x0
	ds	1
??_isr:	; 0 bytes @ 0x1
	ds	4
??_serialWrite:	; 0 bytes @ 0x5
?_configPin:	; 0 bytes @ 0x5
?_changePinState:	; 0 bytes @ 0x5
?_setup8BitTimer:	; 0 bytes @ 0x5
?_set8BitTimer:	; 0 bytes @ 0x5
??_setupGpio:	; 0 bytes @ 0x5
??_setupTimer:	; 0 bytes @ 0x5
??_configLowLvlADC:	; 0 bytes @ 0x5
?_hal_setSerialBAUD:	; 0 bytes @ 0x5
??_isSerialBufferFull:	; 0 bytes @ 0x5
??_set_gblInitialized_FlagValue:	; 0 bytes @ 0x5
??_get_gblInitialized_FlagValue:	; 0 bytes @ 0x5
??_get_gblISRLocked_FlagValue:	; 0 bytes @ 0x5
?___bmul:	; 1 bytes @ 0x5
	global	?_get_gui16TimerMs_Value
?_get_gui16TimerMs_Value:	; 2 bytes @ 0x5
	global	setup8BitTimer@callback
setup8BitTimer@callback:	; 1 bytes @ 0x5
	global	set8BitTimer@ui8Value
set8BitTimer@ui8Value:	; 1 bytes @ 0x5
	global	configPin@ui8Direction
configPin@ui8Direction:	; 1 bytes @ 0x5
	global	changePinState@eOperation
changePinState@eOperation:	; 1 bytes @ 0x5
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x5
	global	hal_setSerialBAUD@ui24Baudrate
hal_setSerialBAUD@ui24Baudrate:	; 3 bytes @ 0x5
	ds	1
??_configPin:	; 0 bytes @ 0x6
??_changePinState:	; 0 bytes @ 0x6
??_setup8BitTimer:	; 0 bytes @ 0x6
??_set8BitTimer:	; 0 bytes @ 0x6
??___bmul:	; 0 bytes @ 0x6
	global	get_gblInitialized_FlagValue@blTemp
get_gblInitialized_FlagValue@blTemp:	; 1 bytes @ 0x6
	global	get_gblISRLocked_FlagValue@blTemp
get_gblISRLocked_FlagValue@blTemp:	; 1 bytes @ 0x6
	global	set8BitTimer@eTmrModule
set8BitTimer@eTmrModule:	; 1 bytes @ 0x6
	global	serialWrite@ui8TxData
serialWrite@ui8TxData:	; 1 bytes @ 0x6
	ds	1
??_setupADC:	; 0 bytes @ 0x7
??_get_gui16TimerMs_Value:	; 0 bytes @ 0x7
	global	setup8BitTimer@eTmrModule
setup8BitTimer@eTmrModule:	; 1 bytes @ 0x7
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x7
	global	get_gui16TimerMs_Value@ui16Temp
get_gui16TimerMs_Value@ui16Temp:	; 2 bytes @ 0x7
	ds	1
?_setupSerial:	; 0 bytes @ 0x8
??_hal_setSerialBAUD:	; 0 bytes @ 0x8
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x8
	global	setupSerial@ui16Baudrate
setupSerial@ui16Baudrate:	; 2 bytes @ 0x8
	global	configPin@pui8PortDirReg
configPin@pui8PortDirReg:	; 2 bytes @ 0x8
	global	changePinState@pui8PortReg
changePinState@pui8PortReg:	; 2 bytes @ 0x8
	ds	1
??_isSoftSerialDataAvailable:	; 0 bytes @ 0x9
	global	?_getElapsedMs
?_getElapsedMs:	; 2 bytes @ 0x9
	global	?_getMs
?_getMs:	; 2 bytes @ 0x9
	global	setupADC@eVrefSource
setupADC@eVrefSource:	; 1 bytes @ 0x9
	global	getElapsedMs@ui16TimeMs
getElapsedMs@ui16TimeMs:	; 2 bytes @ 0x9
	ds	1
??_setupSerial:	; 0 bytes @ 0xA
	global	configPin@ui8Pin
configPin@ui8Pin:	; 1 bytes @ 0xA
	global	changePinState@ui8Pin
changePinState@ui8Pin:	; 1 bytes @ 0xA
	ds	1
?_setupSoftSerial:	; 0 bytes @ 0xB
??_getElapsedMs:	; 0 bytes @ 0xB
??_getMs:	; 0 bytes @ 0xB
	global	setupSoftSerial@ui8TXPin
setupSoftSerial@ui8TXPin:	; 1 bytes @ 0xB
	global	getMs@ui16TempBuff
getMs@ui16TempBuff:	; 2 bytes @ 0xB
	ds	1
	global	setupSoftSerial@ui8RXPin
setupSoftSerial@ui8RXPin:	; 1 bytes @ 0xC
	global	isSoftSerialDataAvailable@eSUARTModule
isSoftSerialDataAvailable@eSUARTModule:	; 1 bytes @ 0xC
	ds	1
??_serialSoftRead:	; 0 bytes @ 0xD
??_serialSoftDataCount:	; 0 bytes @ 0xD
	global	setupSoftSerial@ui16Baudrate
setupSoftSerial@ui16Baudrate:	; 2 bytes @ 0xD
	global	getElapsedMs@ui16TempBuff
getElapsedMs@ui16TempBuff:	; 2 bytes @ 0xD
	ds	2
??_setupSoftSerial:	; 0 bytes @ 0xF
??_adcCycle:	; 0 bytes @ 0xF
	ds	1
	global	serialSoftDataCount@eSUARTModule
serialSoftDataCount@eSUARTModule:	; 1 bytes @ 0x10
	ds	1
	global	setupSoftSerial@eSUARTModule
setupSoftSerial@eSUARTModule:	; 1 bytes @ 0x11
	global	serialSoftRead@ui8serialData
serialSoftRead@ui8serialData:	; 1 bytes @ 0x11
	ds	1
??_init:	; 0 bytes @ 0x12
	global	serialSoftRead@eSUARTModule
serialSoftRead@eSUARTModule:	; 1 bytes @ 0x12
	ds	1
??_cycle:	; 0 bytes @ 0x13
??_main:	; 0 bytes @ 0x13
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        13
;!    BSS         220
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     19      68
;!    BANK1            80      0      70
;!    BANK3            96      0      80
;!    BANK2            96      0      34

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
;!    setup8BitTimer@callback	PTR FTN()void  size(1) Largest target is 0
;!		 -> softUARTController(), 
;!
;!    pt2TMR2ISR	PTR FTN()void  size(1) Largest target is 0
;!		 -> nullTMRFunction(), softUARTController(), 
;!
;!    pt2TMR1ISR	PTR FTN()void  size(1) Largest target is 0
;!		 -> null16BitTMRFunction(), 
;!
;!    sp__memset	PTR void  size(2) Largest target is 56
;!		 -> stSUART_RXFiFo(BANK1[56]), stSUART_TXFiFo(BANK3[46]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _isr in COMMON
;!
;!    _userIntISR->_rbIntISR
;!    _timerISR->_inc_gui16TimerUsMSB_Value
;!    _softUARTController->_serialSoftTxISR
;!    _serialSoftTxISR->i1_changePinState
;!    i1_changePinState->i1___bmul
;!    _serialSoftRxISR->_checkPinState
;!
;!Critical Paths under _main in BANK0
;!
;!    _setupADC->_get_gblInitialized_FlagValue
;!    _init->_setupSoftSerial
;!    _setupSoftSerial->_changePinState
;!    _setupSoftSerial->_configPin
;!    _setupSerial->_hal_setSerialBAUD
;!    _cycle->_serialSoftRead
;!    _serialSoftRead->_isSoftSerialDataAvailable
;!    _serialSoftDataCount->_isSoftSerialDataAvailable
;!    _isSoftSerialDataAvailable->___bmul
;!    _adcCycle->_getElapsedMs
;!    _getMs->_get_gui16TimerMs_Value
;!    _getElapsedMs->_get_gui16TimerMs_Value
;!
;!Critical Paths under _isr in BANK0
;!
;!    _timer8BitISR->_softUARTController
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
;! (0) _main                                                 0     0      0   10059
;!                           _adcCycle
;!                              _cycle
;!                               _init
;!       _set_gblInitialized_FlagValue
;!                           _setupADC
;!                          _setupGpio
;!                         _setupTimer
;! ---------------------------------------------------------------------------------
;! (1) _setupTimer                                           1     1      0       0
;!                                              5 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _setupGpio                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _setupADC                                             3     3      0      45
;!                                              7 BANK0      3     3      0
;!                    _configLowLvlADC
;!       _get_gblInitialized_FlagValue
;! ---------------------------------------------------------------------------------
;! (2) _get_gblInitialized_FlagValue                         2     2      0      23
;!                                              5 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _configLowLvlADC                                      1     1      0       0
;!                                              5 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _set_gblInitialized_FlagValue                         1     1      0       0
;!                                              5 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0    3372
;!                        _setupSerial
;!                    _setupSoftSerial
;! ---------------------------------------------------------------------------------
;! (2) _setupSoftSerial                                      7     3      4    3222
;!                                             11 BANK0      7     3      4
;!                             ___bmul
;!                     _changePinState
;!                          _configPin
;!                       _set8BitTimer
;!                     _setup8BitTimer
;! ---------------------------------------------------------------------------------
;! (3) _setup8BitTimer                                       3     2      1      97
;!                                              5 BANK0      3     2      1
;! ---------------------------------------------------------------------------------
;! (3) _set8BitTimer                                         2     1      1     177
;!                                              5 BANK0      2     1      1
;! ---------------------------------------------------------------------------------
;! (3) _configPin                                            6     5      1     404
;!                                              5 BANK0      6     5      1
;! ---------------------------------------------------------------------------------
;! (3) _changePinState                                       6     5      1     525
;!                                              5 BANK0      6     5      1
;! ---------------------------------------------------------------------------------
;! (2) _setupSerial                                          2     0      2     150
;!                                              8 BANK0      2     0      2
;!                  _hal_setSerialBAUD
;! ---------------------------------------------------------------------------------
;! (3) _hal_setSerialBAUD                                    3     0      3      75
;!                                              5 BANK0      3     0      3
;! ---------------------------------------------------------------------------------
;! (1) _cycle                                                0     0      0    6429
;!                _serialSoftDataCount
;!                     _serialSoftRead
;!                        _serialWrite
;! ---------------------------------------------------------------------------------
;! (2) _serialWrite                                          2     2      0      22
;!                                              5 BANK0      2     2      0
;!                 _isSerialBufferFull
;! ---------------------------------------------------------------------------------
;! (3) _isSerialBufferFull                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _serialSoftRead                                       6     6      0    3237
;!                                             13 BANK0      6     6      0
;!                             ___bmul
;!          _isSoftSerialDataAvailable
;! ---------------------------------------------------------------------------------
;! (2) _serialSoftDataCount                                  4     4      0    3170
;!                                             13 BANK0      4     4      0
;!                             ___bmul
;!          _isSoftSerialDataAvailable
;! ---------------------------------------------------------------------------------
;! (3) _isSoftSerialDataAvailable                            4     4      0    1574
;!                                              9 BANK0      4     4      0
;!                             ___bmul
;! ---------------------------------------------------------------------------------
;! (3) ___bmul                                               4     3      1    1530
;!                                              5 BANK0      4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _adcCycle                                             0     0      0     213
;!                       _getElapsedMs
;!                              _getMs
;! ---------------------------------------------------------------------------------
;! (2) _getMs                                                4     2      2      69
;!                                              9 BANK0      4     2      2
;!         _get_gblISRLocked_FlagValue
;!             _get_gui16TimerMs_Value
;! ---------------------------------------------------------------------------------
;! (2) _getElapsedMs                                         6     4      2     144
;!                                              9 BANK0      6     4      2
;!         _get_gblISRLocked_FlagValue
;!             _get_gui16TimerMs_Value
;! ---------------------------------------------------------------------------------
;! (3) _get_gui16TimerMs_Value                               4     2      2      23
;!                                              5 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (3) _get_gblISRLocked_FlagValue                           2     2      0      23
;!                                              5 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _isr                                                  4     4      0    4621
;!                                              1 BANK0      4     4      0
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
;! (6) _userIntISR                                           0     0      0       0
;!                          _extIntISR
;!                           _rbIntISR
;! ---------------------------------------------------------------------------------
;! (7) _rbIntISR                                             1     1      0       0
;!                                              0 COMMON     1     1      0
;!                    _nullIntFunction *
;! ---------------------------------------------------------------------------------
;! (7) _extIntISR                                            0     0      0       0
;!                    _nullIntFunction *
;! ---------------------------------------------------------------------------------
;! (8) _nullIntFunction                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _timerISR                                             0     0      0      75
;!             _inc_gui16TimerMs_Value
;!            _inc_gui16TimerSec_Value
;!          _inc_gui16TimerUsMSB_Value
;! ---------------------------------------------------------------------------------
;! (7) _inc_gui16TimerUsMSB_Value                            2     0      2      75
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (7) _inc_gui16TimerSec_Value                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _inc_gui16TimerMs_Value                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _timer8BitISR                                         0     0      0    4546
;!                    _nullTMRFunction *
;!                 _softUARTController *
;! ---------------------------------------------------------------------------------
;! (7) _softUARTController                                   1     1      0    4546
;!                                              0 BANK0      1     1      0
;!                    _serialSoftRxISR
;!                    _serialSoftTxISR
;!                     i1_set8BitTimer
;! ---------------------------------------------------------------------------------
;! (8) i1_set8BitTimer                                       2     1      1      70
;!                                              0 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! (8) _serialSoftTxISR                                      4     4      0    2322
;!                                             10 COMMON     4     4      0
;!                           i1___bmul
;!                   i1_changePinState
;! ---------------------------------------------------------------------------------
;! (9) i1_changePinState                                     6     5      1     468
;!                                              4 COMMON     6     5      1
;!                           i1___bmul (ARG)
;! ---------------------------------------------------------------------------------
;! (8) _serialSoftRxISR                                      4     4      0    2154
;!                                              7 COMMON     4     4      0
;!                      _checkPinState
;!                           i1___bmul
;! ---------------------------------------------------------------------------------
;! (9) i1___bmul                                             4     3      1    1854
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (9) _checkPinState                                        7     7      0     300
;!                                              0 COMMON     7     7      0
;! ---------------------------------------------------------------------------------
;! (7) _nullTMRFunction                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _timer16BitISR                                        0     0      0       0
;!               _null16BitTMRFunction *
;! ---------------------------------------------------------------------------------
;! (7) _null16BitTMRFunction                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _set_gblISRLocked_FlagValue                           1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (6) _serialTxISR                                          1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (6) _serialRxISR                                          1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (6) _clr_gblISRLocked_FlagValue                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _adcISR                                               3     3      0       0
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 9
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
;!     _serialSoftDataCount
;!       ___bmul
;!       _isSoftSerialDataAvailable
;!         ___bmul
;!     _serialSoftRead
;!       ___bmul
;!       _isSoftSerialDataAvailable
;!         ___bmul
;!     _serialWrite
;!       _isSerialBufferFull
;!   _init
;!     _setupSerial
;!       _hal_setSerialBAUD
;!     _setupSoftSerial
;!       ___bmul
;!       _changePinState
;!       _configPin
;!       _set8BitTimer
;!       _setup8BitTimer
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
;!     _softUARTController *
;!       _serialSoftRxISR
;!         _checkPinState
;!         i1___bmul
;!       _serialSoftTxISR
;!         i1___bmul
;!         i1_changePinState
;!           i1___bmul (ARG)
;!       i1_set8BitTimer
;!   _timerISR
;!     _inc_gui16TimerMs_Value
;!     _inc_gui16TimerSec_Value
;!     _inc_gui16TimerUsMSB_Value
;!   _userIntISR
;!     _extIntISR
;!       _nullIntFunction *
;!     _rbIntISR
;!       _nullIntFunction *
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
;!BANK1               50      0      46       7       87.5%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     13      44       5       85.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0     10A      12        0.0%
;!ABS                  0      0     10A       3        0.0%
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
;;                  2  259[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    9
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
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	151
	
l3920:	
	fcall	_setupGpio
	line	153
	fcall	_setupTimer
	line	155
	movlw	(0)
	fcall	_setupADC
	line	162
	
l3922:	
	bsf	(95/8),(95)&7	;volatile
	
l3924:	
	bsf	(94/8),(94)&7	;volatile
	line	163
	fcall	_set_gblInitialized_FlagValue
	line	165
	
l3926:	
	fcall	_init
	line	167
	goto	l3928
	
l261:	
	line	170
	
l3928:	
	fcall	_adcCycle
	line	172
	
l3930:	
	fcall	_cycle
	goto	l3928
	line	173
	
l260:	
	line	167
	goto	l3928
	
l262:	
	line	176
;	Return value of _main is never used
	
l263:	
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
;; Hardware stack levels required when called:    5
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
	opt	stack 2
; Regs used in _setupTimer: [wreg+status,2+status,0]
	line	74
	
l3686:	
	movlw	(0F8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setupTimer+0)+0
	movf	(??_setupTimer+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(129)^080h,f	;volatile
	
l3688:	
	bsf	(129)^080h+(0/8),(0)&7	;volatile
	line	76
	
l3690:	
	bcf	(1037/8)^080h,(1037)&7	;volatile
	
l3692:	
	bcf	(1035/8)^080h,(1035)&7	;volatile
	
l3694:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	84
	
l3696:	
	bcf	(90/8),(90)&7	;volatile
	line	85
	
l3698:	
	bsf	(93/8),(93)&7	;volatile
	line	86
	
l859:	
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
;; Hardware stack levels required when called:    5
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
	opt	stack 2
; Regs used in _setupGpio: [wreg+status,2]
	line	69
	
l3680:	
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
	
l3682:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	74
	
l3684:	
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
	
l497:	
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
;;  eVrefSource     1    wreg     enum E1466
;; Auto vars:     Size  Location     Type
;;  eVrefSource     1    9[BANK0 ] enum E1466
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
	opt	stack 1
; Regs used in _setupADC: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setupADC@eVrefSource)
	line	223
	
l3700:	
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
	
l3702:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setupADC@eVrefSource),w
	xorlw	01h
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l3708
u3060:
	line	236
	
l3704:	
	movlw	(0F0h)
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(159)^080h,f	;volatile
	
l3706:	
	bsf	(159)^080h+(0/8),(0)&7	;volatile
	line	240
	goto	l3712
	line	241
	
l403:	
	line	244
	
l3708:	
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(159)^080h,f	;volatile
	
l3710:	
	movf	(159)^080h,w	;volatile
	goto	l3712
	line	248
	
l404:	
	line	250
	
l3712:	
	fcall	_configLowLvlADC
	line	252
	
l3714:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_eCurrentChannel)
	line	253
	
l3716:	
	movlw	(0C7h)
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	andwf	(31),f	;volatile
	
l3718:	
	movf	(_eCurrentChannel),w
	movwf	(??_setupADC+0)+0
	movlw	(03h)-1
u3075:
	clrc
	rlf	(??_setupADC+0)+0,f
	addlw	-1
	skipz
	goto	u3075
	clrc
	rlf	(??_setupADC+0)+0,w
	andlw	038h
	movwf	(??_setupADC+1)+0
	movf	(??_setupADC+1)+0,w
	iorwf	(31),f	;volatile
	line	255
	
l3720:	
	bcf	(102/8),(102)&7	;volatile
	line	256
	
l3722:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1126/8)^080h,(1126)&7	;volatile
	line	258
	
l3724:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7	;volatile
	line	259
	goto	l405
	
l406:	
	
l405:	
	btfsc	(95/8),(95)&7	;volatile
	goto	u3081
	goto	u3080
u3081:
	goto	l409
u3080:
	
l3726:	
	fcall	_get_gblInitialized_FlagValue
	xorlw	01h
	skipnz
	goto	u3091
	goto	u3090
u3091:
	goto	l405
u3090:
	goto	l409
	
l408:	
	
l409:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	
l3728:	
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_setupADC+0)+0,f
u4027:
decfsz	(??_setupADC+0)+0,f
	goto	u4027
	nop
opt asmopt_on

	
l3730:	
	bsf	(95/8),(95)&7	;volatile
	
l3732:	
	bsf	(94/8),(94)&7	;volatile
	line	261
	
l3734:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	262
	
l410:	
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
;;  blTemp          1    6[BANK0 ] unsigned char 
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
	opt	stack 1
; Regs used in _get_gblInitialized_FlagValue: [wreg]
	line	68
	
l3480:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gblInitialized),w	;volatile
	movwf	(??_get_gblInitialized_FlagValue+0)+0
	movf	(??_get_gblInitialized_FlagValue+0)+0,w
	movwf	(get_gblInitialized_FlagValue@blTemp)
	line	69
	movf	(get_gblInitialized_FlagValue@blTemp),w
	goto	l183
	
l3482:	
	line	70
	
l183:	
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
;; Hardware stack levels required when called:    5
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
	opt	stack 1
; Regs used in _configLowLvlADC: [wreg+status,2+status,0]
	line	95
	
l3542:	
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_configLowLvlADC+0)+0
	movf	(??_configLowLvlADC+0)+0,w
	andwf	(31),f	;volatile
	
l3544:	
	bsf	(31)+(7/8),(7)&7	;volatile
	
l3546:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1278/8)^080h,(1278)&7	;volatile
	line	100
	
l3548:	
	bsf	(1279/8)^080h,(1279)&7	;volatile
	line	101
	
l753:	
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
;; Hardware stack levels required when called:    5
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
	opt	stack 2
; Regs used in _set_gblInitialized_FlagValue: [wreg]
	line	62
	
l3654:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_set_gblInitialized_FlagValue+0)+0
	movf	(??_set_gblInitialized_FlagValue+0)+0,w
	movwf	(_gblInitialized)	;volatile
	line	63
	
l180:	
	return
	opt stack 0
GLOBAL	__end_of_set_gblInitialized_FlagValue
	__end_of_set_gblInitialized_FlagValue:
	signat	_set_gblInitialized_FlagValue,88
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 17 in file "C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_serial/examples/.phr_out\Echo.phr.c"
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
;;		_setupSerial
;;		_setupSoftSerial
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_serial/examples/.phr_out\Echo.phr.c"
	line	17
global __ptext7
__ptext7:	;psect for function _init
psect	text7
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_serial/examples/.phr_out\Echo.phr.c"
	line	17
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 0
; Regs used in _init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	19
	
l3642:	
	movlw	low(02580h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setupSerial@ui16Baudrate)
	movlw	high(02580h)
	movwf	((setupSerial@ui16Baudrate))+1
	fcall	_setupSerial
	line	20
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setupSoftSerial@ui8TXPin)
	incf	(setupSoftSerial@ui8TXPin),f
	clrf	(setupSoftSerial@ui8RXPin)
	movlw	low(012C0h)
	movwf	(setupSoftSerial@ui16Baudrate)
	movlw	high(012C0h)
	movwf	((setupSoftSerial@ui16Baudrate))+1
	movlw	(0)
	fcall	_setupSoftSerial
	line	21
	
l13:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_setupSoftSerial

;; *************** function _setupSoftSerial *****************
;; Defined at:
;;		line 118 in file "libraries/soft_serial\soft_serial.c"
;; Parameters:    Size  Location     Type
;;  eSUARTModule    1    wreg     enum E1538
;;  ui8TXPin        1   11[BANK0 ] unsigned char 
;;  ui8RXPin        1   12[BANK0 ] unsigned char 
;;  ui16Baudrate    2   13[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  eSUARTModule    1   17[BANK0 ] enum E1538
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___bmul
;;		_changePinState
;;		_configPin
;;		_set8BitTimer
;;		_setup8BitTimer
;; This function is called by:
;;		_init
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"libraries/soft_serial\soft_serial.c"
	line	118
global __ptext8
__ptext8:	;psect for function _setupSoftSerial
psect	text8
	file	"libraries/soft_serial\soft_serial.c"
	line	118
	global	__size_of_setupSoftSerial
	__size_of_setupSoftSerial	equ	__end_of_setupSoftSerial-_setupSoftSerial
	
_setupSoftSerial:	
;incstack = 0
	opt	stack 0
; Regs used in _setupSoftSerial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setupSoftSerial@eSUARTModule)
	line	121
	
l3428:	
	movlw	(017h)
	movwf	(??_setupSoftSerial+0)+0
	movf	(??_setupSoftSerial+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(setupSoftSerial@eSUARTModule),w
	fcall	___bmul
	addlw	010h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	122
	movlw	(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setupSoftSerial+0)+0
	movf	(??_setupSoftSerial+0)+0,w
	movwf	(___bmul@multiplicand)
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
	movwf	(??_setupSoftSerial+0)+0
	movlw	(017h)
	movwf	(??_setupSoftSerial+1)+0
	movf	(??_setupSoftSerial+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(setupSoftSerial@eSUARTModule),w
	fcall	___bmul
	addlw	012h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_setupSoftSerial+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	124
	movlw	(017h)
	movwf	(??_setupSoftSerial+0)+0
	movf	(??_setupSoftSerial+0)+0,w
	movwf	(___bmul@multiplicand)
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
	clrf	(configPin@ui8Direction)
	movf	(setupSoftSerial@ui8TXPin),w
	fcall	_configPin
	line	126
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	movf	(setupSoftSerial@ui8TXPin),w
	fcall	_changePinState
	line	129
	movlw	(01Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setupSoftSerial+0)+0
	movf	(??_setupSoftSerial+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(setupSoftSerial@eSUARTModule),w
	fcall	___bmul
	addlw	010h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	130
	movlw	(01Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setupSoftSerial+0)+0
	movf	(??_setupSoftSerial+0)+0,w
	movwf	(___bmul@multiplicand)
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
	movwf	(??_setupSoftSerial+0)+0
	movlw	(01Ch)
	movwf	(??_setupSoftSerial+1)+0
	movf	(??_setupSoftSerial+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(setupSoftSerial@eSUARTModule),w
	fcall	___bmul
	addlw	012h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_setupSoftSerial+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	132
	movlw	(01Ch)
	movwf	(??_setupSoftSerial+0)+0
	movf	(??_setupSoftSerial+0)+0,w
	movwf	(___bmul@multiplicand)
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setupSoftSerial+0)+0
	movf	(??_setupSoftSerial+0)+0,w
	movwf	(___bmul@multiplicand)
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setupSoftSerial+0)+0
	movf	(??_setupSoftSerial+0)+0,w
	movwf	(___bmul@multiplicand)
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
	clrf	(configPin@ui8Direction)
	incf	(configPin@ui8Direction),f
	movf	(setupSoftSerial@ui8RXPin),w
	fcall	_configPin
	line	138
	
l3430:	
	movlw	low(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ui16SUARTBitPeriod_div3)
	movlw	high(0Eh)
	movwf	((_ui16SUARTBitPeriod_div3))+1
	line	141
	
l3432:	
	movlw	((fp__softUARTController-fpbase))&0ffh
	movwf	(??_setupSoftSerial+0)+0
	movf	(??_setupSoftSerial+0)+0,w
	movwf	(setup8BitTimer@callback)
	movlw	(02h)
	fcall	_setup8BitTimer
	line	142
	
l3434:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui16SUARTBitPeriod_div3),w
	movwf	(??_setupSoftSerial+0)+0
	movf	(??_setupSoftSerial+0)+0,w
	movwf	(set8BitTimer@ui8Value)
	movlw	(02h)
	fcall	_set8BitTimer
	line	143
	
l50:	
	return
	opt stack 0
GLOBAL	__end_of_setupSoftSerial
	__end_of_setupSoftSerial:
	signat	_setupSoftSerial,16504
	global	_setup8BitTimer

;; *************** function _setup8BitTimer *****************
;; Defined at:
;;		line 189 in file "hardware/cores/lib\corelib_8bit_timer.c"
;; Parameters:    Size  Location     Type
;;  eTmrModule      1    wreg     enum E1461
;;  callback        1    5[BANK0 ] PTR FTN()void 
;;		 -> softUARTController(0), 
;; Auto vars:     Size  Location     Type
;;  eTmrModule      1    7[BANK0 ] enum E1461
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
psect	text9,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	189
global __ptext9
__ptext9:	;psect for function _setup8BitTimer
psect	text9
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	189
	global	__size_of_setup8BitTimer
	__size_of_setup8BitTimer	equ	__end_of_setup8BitTimer-_setup8BitTimer
	
_setup8BitTimer:	
;incstack = 0
	opt	stack 0
; Regs used in _setup8BitTimer: [wreg+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setup8BitTimer@eTmrModule)
	line	193
	
l3162:	
	movf	(setup8BitTimer@eTmrModule),w
	xorlw	02h
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l335
u2440:
	line	195
	
l3164:	
	movlw	(0FCh)
	movwf	(??_setup8BitTimer+0)+0
	movf	(??_setup8BitTimer+0)+0,w
	andwf	(18),f	;volatile
	
l3166:	
	bsf	(18)+(1/8),(1)&7	;volatile
	line	196
	movlw	(087h)
	movwf	(??_setup8BitTimer+0)+0
	movf	(??_setup8BitTimer+0)+0,w
	andwf	(18),f	;volatile
	
l3168:	
	bsf	(18)+(4/8),(4)&7	;volatile
	line	197
	
l3170:	
	movf	(setup8BitTimer@callback),w
	movwf	(??_setup8BitTimer+0)+0
	movf	(??_setup8BitTimer+0)+0,w
	movwf	(_pt2TMR2ISR)
	line	198
	goto	l335
	line	218
	
l333:	
	goto	l335
	line	221
	
l334:	
	line	222
	
l335:	
	return
	opt stack 0
GLOBAL	__end_of_setup8BitTimer
	__end_of_setup8BitTimer:
	signat	_setup8BitTimer,8312
	global	_set8BitTimer

;; *************** function _set8BitTimer *****************
;; Defined at:
;;		line 243 in file "hardware/cores/lib\corelib_8bit_timer.c"
;; Parameters:    Size  Location     Type
;;  eTmrModule      1    wreg     enum E1461
;;  ui8Value        1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  eTmrModule      1    6[BANK0 ] enum E1461
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
psect	text10,local,class=CODE,delta=2,merge=1
	line	243
global __ptext10
__ptext10:	;psect for function _set8BitTimer
psect	text10
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	243
	global	__size_of_set8BitTimer
	__size_of_set8BitTimer	equ	__end_of_set8BitTimer-_set8BitTimer
	
_set8BitTimer:	
;incstack = 0
	opt	stack 0
; Regs used in _set8BitTimer: [wreg+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(set8BitTimer@eTmrModule)
	line	246
	
l3172:	
	movf	(set8BitTimer@eTmrModule),w
	xorlw	02h
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l340
u2450:
	line	248
	
l3174:	
	movf	(set8BitTimer@ui8Value),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	250
	
l3176:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	251
	
l3178:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	253
	
l3180:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	line	254
	goto	l340
	line	280
	
l338:	
	goto	l340
	line	283
	
l339:	
	line	284
	
l340:	
	return
	opt stack 0
GLOBAL	__end_of_set8BitTimer
	__end_of_set8BitTimer:
	signat	_set8BitTimer,8312
	global	_configPin

;; *************** function _configPin *****************
;; Defined at:
;;		line 66 in file "hardware/cores/lib\hal_gpio.c"
;; Parameters:    Size  Location     Type
;;  ui8Pin          1    wreg     unsigned char 
;;  ui8Direction    1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Pin          1   10[BANK0 ] unsigned char 
;;  pui8PortDirR    2    8[BANK0 ] PTR unsigned char 
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
psect	text11,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_gpio.c"
	line	66
global __ptext11
__ptext11:	;psect for function _configPin
psect	text11
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
	
l3066:	
	clrf	(configPin@pui8PortDirReg)
	clrf	(configPin@pui8PortDirReg+1)
	line	71
	
l3068:	
	movlw	(08h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2201
	goto	u2200
u2201:
	goto	l3072
u2200:
	line	73
	
l3070:	
	movlw	high(135)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(135)
	movwf	(configPin@pui8PortDirReg)
	line	77
	goto	l3104
	line	79
	
l776:	
	
l3072:	
	movlw	(0Eh)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2211
	goto	u2210
u2211:
	goto	l3078
u2210:
	line	81
	
l3074:	
	movlw	low(08h)
	subwf	(configPin@ui8Pin),f
	line	82
	
l3076:	
	movlw	high(134)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(134)
	movwf	(configPin@pui8PortDirReg)
	line	86
	goto	l3104
	line	88
	
l778:	
	
l3078:	
	movlw	(015h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2221
	goto	u2220
u2221:
	goto	l3098
u2220:
	line	90
	
l3080:	
	movlw	low(0Eh)
	subwf	(configPin@ui8Pin),f
	line	93
	
l3082:	
	movlw	(03h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2231
	goto	u2230
u2231:
	goto	l3086
u2230:
	line	95
	
l3084:	
	movlw	high(133)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(133)
	movwf	(configPin@pui8PortDirReg)
	line	99
	goto	l3104
	line	101
	
l781:	
	
l3086:	
	movf	(configPin@ui8Pin),w
	xorlw	03h
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l3092
u2240:
	line	103
	
l3088:	
	movlw	(02h)
	movwf	(??_configPin+0)+0
	movf	(??_configPin+0)+0,w
	addwf	(configPin@ui8Pin),f
	line	104
	
l3090:	
	movlw	high(133)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(133)
	movwf	(configPin@pui8PortDirReg)
	line	108
	goto	l3104
	line	110
	
l783:	
	
l3092:	
	movlw	(07h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2251
	goto	u2250
u2251:
	goto	l3104
u2250:
	line	112
	
l3094:	
	movlw	low(04h)
	subwf	(configPin@ui8Pin),f
	line	113
	
l3096:	
	movlw	high(137)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(137)
	movwf	(configPin@pui8PortDirReg)
	line	117
	goto	l3104
	line	118
	
l785:	
	goto	l3104
	line	124
	
l786:	
	goto	l3104
	
l784:	
	goto	l3104
	
l782:	
	line	125
	goto	l3104
	line	127
	
l780:	
	
l3098:	
	movlw	(01Dh)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2261
	goto	u2260
u2261:
	goto	l3104
u2260:
	line	129
	
l3100:	
	movlw	low(015h)
	subwf	(configPin@ui8Pin),f
	line	130
	
l3102:	
	movlw	high(136)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(136)
	movwf	(configPin@pui8PortDirReg)
	line	134
	goto	l3104
	line	135
	
l788:	
	goto	l3104
	line	141
	
l789:	
	goto	l3104
	
l787:	
	goto	l3104
	
l779:	
	goto	l3104
	
l777:	
	line	144
	
l3104:	
	movf	(configPin@pui8PortDirReg+1),w
	iorwf	(configPin@pui8PortDirReg),w
	skipnz
	goto	u2271
	goto	u2270
u2271:
	goto	l794
u2270:
	line	146
	
l3106:	
	movf	(configPin@ui8Direction),w
	xorlw	01h
	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l3110
u2280:
	line	148
	
l3108:	
	movlw	(01h)
	movwf	(??_configPin+0)+0
	incf	(configPin@ui8Pin),w
	goto	u2294
u2295:
	clrc
	rlf	(??_configPin+0)+0,f
u2294:
	addlw	-1
	skipz
	goto	u2295
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
	goto	l794
	line	153
	
l791:	
	line	155
	
l3110:	
	movlw	(01h)
	movwf	(??_configPin+0)+0
	incf	(configPin@ui8Pin),w
	goto	u2304
u2305:
	clrc
	rlf	(??_configPin+0)+0,f
u2304:
	addlw	-1
	skipz
	goto	u2305
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
	goto	l794
	line	159
	
l792:	
	line	160
	goto	l794
	line	161
	
l790:	
	goto	l794
	line	167
	
l793:	
	line	168
	
l794:	
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
;;  eOperation      1    5[BANK0 ] enum E1430
;; Auto vars:     Size  Location     Type
;;  ui8Pin          1   10[BANK0 ] unsigned char 
;;  pui8PortReg     2    8[BANK0 ] PTR unsigned char 
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
psect	text12,local,class=CODE,delta=2,merge=1
	line	188
global __ptext12
__ptext12:	;psect for function _changePinState
psect	text12
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
	
l3112:	
	clrf	(changePinState@pui8PortReg)
	clrf	(changePinState@pui8PortReg+1)
	line	193
	
l3114:	
	movlw	(08h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2311
	goto	u2310
u2311:
	goto	l3118
u2310:
	line	195
	
l3116:	
	movlw	high(7)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(7)
	movwf	(changePinState@pui8PortReg)
	line	199
	goto	l3150
	line	201
	
l797:	
	
l3118:	
	movlw	(0Eh)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2321
	goto	u2320
u2321:
	goto	l3124
u2320:
	line	203
	
l3120:	
	movlw	low(08h)
	subwf	(changePinState@ui8Pin),f
	line	204
	
l3122:	
	movlw	high(6)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(6)
	movwf	(changePinState@pui8PortReg)
	line	208
	goto	l3150
	line	210
	
l799:	
	
l3124:	
	movlw	(015h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2331
	goto	u2330
u2331:
	goto	l3144
u2330:
	line	212
	
l3126:	
	movlw	low(0Eh)
	subwf	(changePinState@ui8Pin),f
	line	215
	
l3128:	
	movlw	(03h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2341
	goto	u2340
u2341:
	goto	l3132
u2340:
	line	217
	
l3130:	
	movlw	high(5)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(changePinState@pui8PortReg)
	line	221
	goto	l3150
	line	223
	
l802:	
	
l3132:	
	movf	(changePinState@ui8Pin),w
	xorlw	03h
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l3138
u2350:
	line	225
	
l3134:	
	movlw	(02h)
	movwf	(??_changePinState+0)+0
	movf	(??_changePinState+0)+0,w
	addwf	(changePinState@ui8Pin),f
	line	226
	
l3136:	
	movlw	high(5)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(changePinState@pui8PortReg)
	line	230
	goto	l3150
	line	232
	
l804:	
	
l3138:	
	movlw	(07h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2361
	goto	u2360
u2361:
	goto	l3150
u2360:
	line	234
	
l3140:	
	movlw	low(04h)
	subwf	(changePinState@ui8Pin),f
	line	235
	
l3142:	
	movlw	high(9)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(9)
	movwf	(changePinState@pui8PortReg)
	line	239
	goto	l3150
	line	240
	
l806:	
	goto	l3150
	line	246
	
l807:	
	goto	l3150
	
l805:	
	goto	l3150
	
l803:	
	line	247
	goto	l3150
	line	249
	
l801:	
	
l3144:	
	movlw	(01Dh)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2371
	goto	u2370
u2371:
	goto	l3150
u2370:
	line	251
	
l3146:	
	movlw	low(015h)
	subwf	(changePinState@ui8Pin),f
	line	252
	
l3148:	
	movlw	high(8)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(8)
	movwf	(changePinState@pui8PortReg)
	line	256
	goto	l3150
	line	257
	
l809:	
	goto	l3150
	line	263
	
l810:	
	goto	l3150
	
l808:	
	goto	l3150
	
l800:	
	goto	l3150
	
l798:	
	line	266
	
l3150:	
	movf	(changePinState@pui8PortReg+1),w
	iorwf	(changePinState@pui8PortReg),w
	skipnz
	goto	u2381
	goto	u2380
u2381:
	goto	l817
u2380:
	line	268
	
l3152:	
	movf	(changePinState@eOperation),f
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l3156
u2390:
	line	270
	
l3154:	
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
	iorwf	indf,f
	line	274
	goto	l817
	line	275
	
l812:	
	
l3156:	
	movf	(changePinState@eOperation),w
	xorlw	01h
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l3160
u2410:
	line	277
	
l3158:	
	movlw	(01h)
	movwf	(??_changePinState+0)+0
	incf	(changePinState@ui8Pin),w
	goto	u2424
u2425:
	clrc
	rlf	(??_changePinState+0)+0,f
u2424:
	addlw	-1
	skipz
	goto	u2425
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
	goto	l817
	line	282
	
l814:	
	line	284
	
l3160:	
	movlw	(01h)
	movwf	(??_changePinState+0)+0
	incf	(changePinState@ui8Pin),w
	goto	u2434
u2435:
	clrc
	rlf	(??_changePinState+0)+0,f
u2434:
	addlw	-1
	skipz
	goto	u2435
	movf	0+(??_changePinState+0)+0,w
	movwf	(??_changePinState+1)+0
	movf	(changePinState@pui8PortReg),w
	movwf	fsr0
	bsf	status,7
	btfss	(changePinState@pui8PortReg+1),0
	bcf	status,7
	movf	(??_changePinState+1)+0,w
	xorwf	indf,f
	goto	l817
	line	288
	
l815:	
	goto	l817
	
l813:	
	line	289
	goto	l817
	line	290
	
l811:	
	goto	l817
	line	296
	
l816:	
	line	297
	
l817:	
	return
	opt stack 0
GLOBAL	__end_of_changePinState
	__end_of_changePinState:
	signat	_changePinState,8312
	global	_setupSerial

;; *************** function _setupSerial *****************
;; Defined at:
;;		line 72 in file "hardware/cores/lib\corelib_uart.c"
;; Parameters:    Size  Location     Type
;;  ui16Baudrate    2    8[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_hal_setSerialBAUD
;; This function is called by:
;;		_init
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_uart.c"
	line	72
global __ptext13
__ptext13:	;psect for function _setupSerial
psect	text13
	file	"hardware/cores/lib\corelib_uart.c"
	line	72
	global	__size_of_setupSerial
	__size_of_setupSerial	equ	__end_of_setupSerial-_setupSerial
	
_setupSerial:	
;incstack = 0
	opt	stack 0
; Regs used in _setupSerial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	75
	
l3404:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	0+(_stUARTTXFiFo)^0180h+020h
	line	76
	clrf	0+(_stUARTTXFiFo)^0180h+021h
	line	77
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	0+(_stUARTRXFiFo)^0100h+020h
	line	78
	clrf	0+(_stUARTRXFiFo)^0100h+021h
	line	80
	
l3406:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setupSerial@ui16Baudrate),w
	movwf	(hal_setSerialBAUD@ui24Baudrate)
	movf	(setupSerial@ui16Baudrate+1),w
	movwf	(hal_setSerialBAUD@ui24Baudrate+1)
	clrf	(hal_setSerialBAUD@ui24Baudrate+2)
	fcall	_hal_setSerialBAUD
	line	82
	
l3408:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7	;volatile
	
l3410:	
	bcf	(1220/8)^080h,(1220)&7	;volatile
	
l3412:	
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	83
	
l3414:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(198/8),(198)&7	;volatile
	
l3416:	
	bsf	(196/8),(196)&7	;volatile
	
l3418:	
	bsf	(199/8),(199)&7	;volatile
	line	85
	
l3420:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	86
	
l3422:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(100/8),(100)&7	;volatile
	line	88
	
l3424:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	89
	
l3426:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7	;volatile
	line	90
	
l601:	
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
;;  ui24Baudrate    3    5[BANK0 ] unsigned um
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupSerial
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_uart.c"
	line	69
global __ptext14
__ptext14:	;psect for function _hal_setSerialBAUD
psect	text14
	file	"hardware/cores/lib\hal_uart.c"
	line	69
	global	__size_of_hal_setSerialBAUD
	__size_of_hal_setSerialBAUD	equ	__end_of_hal_setSerialBAUD-_hal_setSerialBAUD
	
_hal_setSerialBAUD:	
;incstack = 0
	opt	stack 0
; Regs used in _hal_setSerialBAUD: [wreg-fsr0h+status,2+status,0]
	line	71
	
l3330:	
	goto	l3352
	line	73
	
l879:	
	line	75
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	76
	
l3332:	
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	80
	goto	l889
	line	83
	
l881:	
	line	85
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	86
	
l3334:	
	movlw	(014h)
	movwf	(153)^080h	;volatile
	line	90
	goto	l889
	line	95
	
l882:	
	line	97
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	98
	
l3336:	
	movlw	(0Ah)
	movwf	(153)^080h	;volatile
	line	102
	goto	l889
	line	107
	
l883:	
	line	109
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	110
	
l3338:	
	movlw	(040h)
	movwf	(153)^080h	;volatile
	line	114
	goto	l889
	line	117
	
l884:	
	line	119
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1218/8)^080h,(1218)&7	;volatile
	line	120
	
l3340:	
	movlw	(040h)
	movwf	(153)^080h	;volatile
	line	124
	goto	l889
	line	127
	
l885:	
	line	129
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	130
	
l3342:	
	movlw	(020h)
	movwf	(153)^080h	;volatile
	line	134
	goto	l889
	line	137
	
l886:	
	line	139
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1218/8)^080h,(1218)&7	;volatile
	line	140
	
l3344:	
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	144
	goto	l889
	line	149
	
l887:	
	line	151
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1218/8)^080h,(1218)&7	;volatile
	line	152
	
l3346:	
	movlw	(0FFh)
	movwf	(153)^080h	;volatile
	line	156
	goto	l889
	line	161
	
l888:	
	line	163
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	164
	
l3348:	
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	168
	goto	l889
	line	170
	
l3350:	
	goto	l889
	line	71
	
l878:	
	
l3352:	
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
	goto	l4460
	goto	l888
	opt asmopt_on
	
l4460:	
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
	goto	l4462
	xorlw	9^4	; case 9
	skipnz
	goto	l4464
	xorlw	18^9	; case 18
	skipnz
	goto	l4466
	xorlw	37^18	; case 37
	skipnz
	goto	l4468
	xorlw	75^37	; case 75
	skipnz
	goto	l4470
	xorlw	150^75	; case 150
	skipnz
	goto	l4472
	xorlw	194^150	; case 194
	skipnz
	goto	l4474
	xorlw	225^194	; case 225
	skipnz
	goto	l4476
	goto	l888
	opt asmopt_on
	
l4462:	
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
	goto	l887
	goto	l888
	opt asmopt_on
	
l4464:	
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
	goto	l886
	goto	l888
	opt asmopt_on
	
l4466:	
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
	goto	l884
	goto	l888
	opt asmopt_on
	
l4468:	
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
	goto	l879
	goto	l888
	opt asmopt_on
	
l4470:	
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
	goto	l883
	goto	l888
	opt asmopt_on
	
l4472:	
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
	goto	l885
	goto	l888
	opt asmopt_on
	
l4474:	
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
	goto	l882
	goto	l888
	opt asmopt_on
	
l4476:	
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
	goto	l881
	goto	l888
	opt asmopt_on

	line	170
	
l880:	
	line	171
	
l889:	
	return
	opt stack 0
GLOBAL	__end_of_hal_setSerialBAUD
	__end_of_hal_setSerialBAUD:
	signat	_hal_setSerialBAUD,4216
	global	_cycle

;; *************** function _cycle *****************
;; Defined at:
;;		line 23 in file "C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_serial/examples/.phr_out\Echo.phr.c"
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_serialSoftDataCount
;;		_serialSoftRead
;;		_serialWrite
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_serial/examples/.phr_out\Echo.phr.c"
	line	23
global __ptext15
__ptext15:	;psect for function _cycle
psect	text15
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_serial/examples/.phr_out\Echo.phr.c"
	line	23
	global	__size_of_cycle
	__size_of_cycle	equ	__end_of_cycle-_cycle
	
_cycle:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _cycle: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	25
	
l3644:	
	goto	l16
	
l17:	
	line	27
	
l3646:	
	movlw	(0)
	fcall	_serialSoftRead
	fcall	_serialWrite
	line	28
	
l16:	
	line	25
	movlw	(0)
	fcall	_serialSoftDataCount
	iorlw	0
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l3646
u3020:
	goto	l19
	
l18:	
	line	29
	
l19:	
	return
	opt stack 0
GLOBAL	__end_of_cycle
	__end_of_cycle:
	signat	_cycle,88
	global	_serialWrite

;; *************** function _serialWrite *****************
;; Defined at:
;;		line 108 in file "hardware/cores/lib\corelib_uart.c"
;; Parameters:    Size  Location     Type
;;  ui8TxData       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8TxData       1    6[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_isSerialBufferFull
;; This function is called by:
;;		_cycle
;;		_serialWriteString
;;		_serialWriteBlock
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_uart.c"
	line	108
global __ptext16
__ptext16:	;psect for function _serialWrite
psect	text16
	file	"hardware/cores/lib\corelib_uart.c"
	line	108
	global	__size_of_serialWrite
	__size_of_serialWrite	equ	__end_of_serialWrite-_serialWrite
	
_serialWrite:	
;incstack = 0
	opt	stack 0
; Regs used in _serialWrite: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialWrite@ui8TxData)
	line	110
	
l3450:	
	goto	l3452
	
l605:	
	line	115
	goto	l3452
	line	116
	
l604:	
	line	110
	
l3452:	
	fcall	_isSerialBufferFull
	iorlw	0
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l3452
u2730:
	
l606:	
	line	118
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	119
	
l3454:	
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
	
l3456:	
	movlw	(01h)
	movwf	(??_serialWrite+0)+0
	movf	(??_serialWrite+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	0+(_stUARTTXFiFo)^0180h+020h,f
	line	120
	
l3458:	
	movlw	(01Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialWrite+0)+0
	movf	(??_serialWrite+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	0+(_stUARTTXFiFo)^0180h+020h,f
	line	121
	
l3460:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1124/8)^080h,(1124)&7	;volatile
	line	125
	
l607:	
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_serialWrite
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	line	402
global __ptext17
__ptext17:	;psect for function _isSerialBufferFull
psect	text17
	file	"hardware/cores/lib\corelib_uart.c"
	line	402
	global	__size_of_isSerialBufferFull
	__size_of_isSerialBufferFull	equ	__end_of_isSerialBufferFull-_isSerialBufferFull
	
_isSerialBufferFull:	
;incstack = 0
	opt	stack 0
; Regs used in _isSerialBufferFull: [wreg+status,2+status,0]
	line	404
	
l3390:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_stUARTTXFiFo)^0180h+020h,w
	addlw	01h
	andlw	01Fh
	xorwf	0+(_stUARTTXFiFo)^0180h+021h,w
	movlw	0
	skipnz
	movlw	1
	goto	l650
	
l3392:	
	line	405
	
l650:	
	return
	opt stack 0
GLOBAL	__end_of_isSerialBufferFull
	__end_of_isSerialBufferFull:
	signat	_isSerialBufferFull,89
	global	_serialSoftRead

;; *************** function _serialSoftRead *****************
;; Defined at:
;;		line 291 in file "libraries/soft_serial\soft_serial.c"
;; Parameters:    Size  Location     Type
;;  eSUARTModule    1    wreg     enum E1538
;; Auto vars:     Size  Location     Type
;;  eSUARTModule    1   18[BANK0 ] enum E1538
;;  ui8serialDat    1   17[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___bmul
;;		_isSoftSerialDataAvailable
;; This function is called by:
;;		_cycle
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"libraries/soft_serial\soft_serial.c"
	line	291
global __ptext18
__ptext18:	;psect for function _serialSoftRead
psect	text18
	file	"libraries/soft_serial\soft_serial.c"
	line	291
	global	__size_of_serialSoftRead
	__size_of_serialSoftRead	equ	__end_of_serialSoftRead-_serialSoftRead
	
_serialSoftRead:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _serialSoftRead: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialSoftRead@eSUARTModule)
	line	295
	
l3436:	
	movf	(serialSoftRead@eSUARTModule),w
	fcall	_isSoftSerialDataAvailable
	iorlw	0
	skipz
	goto	u2721
	goto	u2720
u2721:
	goto	l3444
u2720:
	line	300
	
l3438:	
	movlw	(0)
	goto	l77
	
l3440:	
	goto	l77
	line	301
	
l3442:	
	goto	l77
	line	302
	
l76:	
	line	305
	
l3444:	
	movlw	(01Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftRead+0)+0
	movf	(??_serialSoftRead+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(serialSoftRead@eSUARTModule),w
	fcall	___bmul
	addlw	011h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movlw	(01Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftRead+1)+0
	movf	(??_serialSoftRead+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(serialSoftRead@eSUARTModule),w
	fcall	___bmul
	addlw	_stSUART_RXFiFo&0ffh
	bcf	status, 7	;select IRP bank1
	addwf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftRead+2)+0
	movf	0+(??_serialSoftRead+2)+0,w
	movwf	fsr0
	movf	indf,w
	movwf	(??_serialSoftRead+3)+0
	movf	(??_serialSoftRead+3)+0,w
	movwf	(serialSoftRead@ui8serialData)
	movlw	(01h)
	movwf	(??_serialSoftRead+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRead+1)+0
	movf	(??_serialSoftRead+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(serialSoftRead@eSUARTModule),w
	fcall	___bmul
	addlw	011h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_serialSoftRead+0)+0,w
	bcf	status, 7	;select IRP bank1
	addwf	indf,f
	line	306
	movlw	(0Fh)
	movwf	(??_serialSoftRead+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRead+1)+0
	movf	(??_serialSoftRead+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(serialSoftRead@eSUARTModule),w
	fcall	___bmul
	addlw	011h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_serialSoftRead+0)+0,w
	bcf	status, 7	;select IRP bank1
	andwf	indf,f
	line	311
	
l3446:	
	movf	(serialSoftRead@ui8serialData),w
	goto	l77
	
l3448:	
	goto	l77
	line	312
	
l78:	
	line	313
	
l77:	
	return
	opt stack 0
GLOBAL	__end_of_serialSoftRead
	__end_of_serialSoftRead:
	signat	_serialSoftRead,4217
	global	_serialSoftDataCount

;; *************** function _serialSoftDataCount *****************
;; Defined at:
;;		line 256 in file "libraries/soft_serial\soft_serial.c"
;; Parameters:    Size  Location     Type
;;  eSUARTModule    1    wreg     enum E1538
;; Auto vars:     Size  Location     Type
;;  eSUARTModule    1   16[BANK0 ] enum E1538
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___bmul
;;		_isSoftSerialDataAvailable
;; This function is called by:
;;		_cycle
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	line	256
global __ptext19
__ptext19:	;psect for function _serialSoftDataCount
psect	text19
	file	"libraries/soft_serial\soft_serial.c"
	line	256
	global	__size_of_serialSoftDataCount
	__size_of_serialSoftDataCount	equ	__end_of_serialSoftDataCount-_serialSoftDataCount
	
_serialSoftDataCount:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _serialSoftDataCount: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialSoftDataCount@eSUARTModule)
	line	258
	
l3462:	
	movf	(serialSoftDataCount@eSUARTModule),w
	fcall	_isSoftSerialDataAvailable
	xorlw	01h
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l3470
u2740:
	line	263
	
l3464:	
	movlw	(01Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftDataCount+0)+0
	movf	(??_serialSoftDataCount+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(serialSoftDataCount@eSUARTModule),w
	fcall	___bmul
	addlw	010h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serialSoftDataCount+1)+0
	movlw	(01Ch)
	movwf	(??_serialSoftDataCount+2)+0
	movf	(??_serialSoftDataCount+2)+0,w
	movwf	(___bmul@multiplicand)
	movf	(serialSoftDataCount@eSUARTModule),w
	fcall	___bmul
	addlw	011h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	decf	indf,w
	xorlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(??_serialSoftDataCount+1)+0,w
	goto	l72
	
l3466:	
	goto	l72
	line	264
	
l3468:	
	goto	l72
	line	265
	
l71:	
	line	270
	
l3470:	
	movlw	(0)
	goto	l72
	
l3472:	
	goto	l72
	line	271
	
l73:	
	line	272
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_serialSoftDataCount
	__end_of_serialSoftDataCount:
	signat	_serialSoftDataCount,4217
	global	_isSoftSerialDataAvailable

;; *************** function _isSoftSerialDataAvailable *****************
;; Defined at:
;;		line 729 in file "libraries/soft_serial\soft_serial.c"
;; Parameters:    Size  Location     Type
;;  eSUARTModule    1    wreg     enum E1538
;; Auto vars:     Size  Location     Type
;;  eSUARTModule    1   12[BANK0 ] enum E1538
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
;;		_serialSoftDataCount
;;		_serialSoftRead
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	729
global __ptext20
__ptext20:	;psect for function _isSoftSerialDataAvailable
psect	text20
	file	"libraries/soft_serial\soft_serial.c"
	line	729
	global	__size_of_isSoftSerialDataAvailable
	__size_of_isSoftSerialDataAvailable	equ	__end_of_isSoftSerialDataAvailable-_isSoftSerialDataAvailable
	
_isSoftSerialDataAvailable:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _isSoftSerialDataAvailable: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(isSoftSerialDataAvailable@eSUARTModule)
	line	731
	
l3182:	
	movlw	(01Ch)
	movwf	(??_isSoftSerialDataAvailable+0)+0
	movf	(??_isSoftSerialDataAvailable+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(isSoftSerialDataAvailable@eSUARTModule),w
	fcall	___bmul
	addlw	011h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_isSoftSerialDataAvailable+1)+0
	movlw	(01Ch)
	movwf	(??_isSoftSerialDataAvailable+2)+0
	movf	(??_isSoftSerialDataAvailable+2)+0,w
	movwf	(___bmul@multiplicand)
	movf	(isSoftSerialDataAvailable@eSUARTModule),w
	fcall	___bmul
	addlw	010h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(??_isSoftSerialDataAvailable+1)+0,w
	movlw	0
	skipz
	movlw	1
	goto	l161
	
l3184:	
	line	732
	
l161:	
	return
	opt stack 0
GLOBAL	__end_of_isSoftSerialDataAvailable
	__end_of_isSoftSerialDataAvailable:
	signat	_isSoftSerialDataAvailable,4217
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    8[BANK0 ] unsigned char 
;;  product         1    7[BANK0 ] unsigned char 
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
;;		_serialSoftDataCount
;;		_serialSoftRead
;;		_serialSoftRxISR
;;		_serialSoftTxISR
;;		_isSoftSerialDataAvailable
;;		_serialSoftWrite
;;		_serialSoftFlush
;;		_isSoftSerialBufferFull
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\sources\common\Umul8.c"
	line	4
global __ptext21
__ptext21:	;psect for function ___bmul
psect	text21
	file	"C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 0
; Regs used in ___bmul: [wreg+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	6
	
l2984:	
	clrf	(___bmul@product)
	goto	l2986
	line	42
	
l1052:	
	line	43
	
l2986:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2031
	goto	u2030
u2031:
	goto	l2990
u2030:
	line	44
	
l2988:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l2990
	
l1053:	
	line	45
	
l2990:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l2992:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l2994:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2041
	goto	u2040
u2041:
	goto	l2986
u2040:
	goto	l2996
	
l1054:	
	line	50
	
l2996:	
	movf	(___bmul@product),w
	goto	l1055
	
l2998:	
	line	51
	
l1055:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_getElapsedMs
;;		_getMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_adc.c"
	line	166
global __ptext22
__ptext22:	;psect for function _adcCycle
psect	text22
	file	"hardware/cores/lib\corelib_adc.c"
	line	166
	global	__size_of_adcCycle
	__size_of_adcCycle	equ	__end_of_adcCycle-_adcCycle
	
_adcCycle:	
;incstack = 0
	opt	stack 0
; Regs used in _adcCycle: [wreg+status,2+status,0+pclath+cstack]
	line	173
	
l3736:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adcCycle@ui16Timer+1),w
	clrf	(getElapsedMs@ui16TimeMs+1)
	addwf	(getElapsedMs@ui16TimeMs+1)
	movf	(adcCycle@ui16Timer),w
	clrf	(getElapsedMs@ui16TimeMs)
	addwf	(getElapsedMs@ui16TimeMs)

	fcall	_getElapsedMs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_getElapsedMs)),w
	clrf	(adcCycle@ui16Counter+1)
	addwf	(adcCycle@ui16Counter+1)
	movf	(0+(?_getElapsedMs)),w
	clrf	(adcCycle@ui16Counter)
	addwf	(adcCycle@ui16Counter)

	line	177
	
l3738:	
	movlw	high(05h)
	subwf	(adcCycle@ui16Counter+1),w
	movlw	low(05h)
	skipnz
	subwf	(adcCycle@ui16Counter),w
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l400
u3100:
	line	183
	
l3740:	
	fcall	_getMs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_getMs)),w
	clrf	(adcCycle@ui16Timer+1)
	addwf	(adcCycle@ui16Timer+1)
	movf	(0+(?_getMs)),w
	clrf	(adcCycle@ui16Timer)
	addwf	(adcCycle@ui16Timer)

	line	191
	
l3742:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u3111
	goto	u3110
u3111:
	goto	l400
u3110:
	line	194
	
l3744:	
	bsf	(250/8),(250)&7	;volatile
	goto	l400
	line	198
	
l399:	
	goto	l400
	line	199
	
l398:	
	line	200
	
l400:	
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
;;  ui16TempBuff    2   11[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    9[BANK0 ] unsigned int 
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
;;		_adcCycle
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	128
global __ptext23
__ptext23:	;psect for function _getMs
psect	text23
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	128
	global	__size_of_getMs
	__size_of_getMs	equ	__end_of_getMs-_getMs
	
_getMs:	
;incstack = 0
	opt	stack 0
; Regs used in _getMs: [wreg+status,2+status,0+pclath+cstack]
	line	132
	
l3528:	
	goto	l3530
	
l444:	
	goto	l3530
	
l443:	
	
l3530:	
	fcall	_get_gblISRLocked_FlagValue
	xorlw	01h
	skipnz
	goto	u2791
	goto	u2790
u2791:
	goto	l3530
u2790:
	
l445:	
	line	134
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	135
	
l3532:	
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
	
l3534:	
	bsf	(95/8),(95)&7	;volatile
	
l3536:	
	bsf	(94/8),(94)&7	;volatile
	line	137
	
l3538:	
	movf	(getMs@ui16TempBuff+1),w
	clrf	(?_getMs+1)
	addwf	(?_getMs+1)
	movf	(getMs@ui16TempBuff),w
	clrf	(?_getMs)
	addwf	(?_getMs)

	goto	l446
	
l3540:	
	line	138
	
l446:	
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
;;  ui16TimeMs      2    9[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  ui16TempBuff    2   13[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    9[BANK0 ] unsigned int 
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
;;		_adcCycle
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	157
global __ptext24
__ptext24:	;psect for function _getElapsedMs
psect	text24
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	157
	global	__size_of_getElapsedMs
	__size_of_getElapsedMs	equ	__end_of_getElapsedMs-_getElapsedMs
	
_getElapsedMs:	
;incstack = 0
	opt	stack 0
; Regs used in _getElapsedMs: [wreg+status,2+status,0+pclath+cstack]
	line	161
	
l3514:	
	goto	l3516
	
l450:	
	goto	l3516
	
l449:	
	
l3516:	
	fcall	_get_gblISRLocked_FlagValue
	xorlw	01h
	skipnz
	goto	u2781
	goto	u2780
u2781:
	goto	l3516
u2780:
	
l451:	
	line	163
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	164
	
l3518:	
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
	
l3520:	
	bsf	(95/8),(95)&7	;volatile
	
l3522:	
	bsf	(94/8),(94)&7	;volatile
	line	166
	
l3524:	
	movf	(getElapsedMs@ui16TempBuff+1),w
	clrf	(?_getElapsedMs+1)
	addwf	(?_getElapsedMs+1)
	movf	(getElapsedMs@ui16TempBuff),w
	clrf	(?_getElapsedMs)
	addwf	(?_getElapsedMs)

	goto	l452
	
l3526:	
	line	167
	
l452:	
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
;;  ui16Temp        2    7[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] unsigned int 
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
psect	text25,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	168
global __ptext25
__ptext25:	;psect for function _get_gui16TimerMs_Value
psect	text25
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	168
	global	__size_of_get_gui16TimerMs_Value
	__size_of_get_gui16TimerMs_Value	equ	__end_of_get_gui16TimerMs_Value-_get_gui16TimerMs_Value
	
_get_gui16TimerMs_Value:	
;incstack = 0
	opt	stack 0
; Regs used in _get_gui16TimerMs_Value: [wreg+status,2+status,0]
	line	171
	
l3326:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gui16TimerMs+1),w	;volatile
	clrf	(get_gui16TimerMs_Value@ui16Temp+1)
	addwf	(get_gui16TimerMs_Value@ui16Temp+1)
	movf	(_gui16TimerMs),w	;volatile
	clrf	(get_gui16TimerMs_Value@ui16Temp)
	addwf	(get_gui16TimerMs_Value@ui16Temp)

	line	172
	movf	(get_gui16TimerMs_Value@ui16Temp+1),w
	clrf	(?_get_gui16TimerMs_Value+1)
	addwf	(?_get_gui16TimerMs_Value+1)
	movf	(get_gui16TimerMs_Value@ui16Temp),w
	clrf	(?_get_gui16TimerMs_Value)
	addwf	(?_get_gui16TimerMs_Value)

	goto	l214
	
l3328:	
	line	173
	
l214:	
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
;;  blTemp          1    6[BANK0 ] unsigned char 
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
;;		_getBaseTimerValue
;;		_getUs
;;		_getElapsedUs
;;		_getSec
;;		_getElapsedSec
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	line	82
global __ptext26
__ptext26:	;psect for function _get_gblISRLocked_FlagValue
psect	text26
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	82
	global	__size_of_get_gblISRLocked_FlagValue
	__size_of_get_gblISRLocked_FlagValue	equ	__end_of_get_gblISRLocked_FlagValue-_get_gblISRLocked_FlagValue
	
_get_gblISRLocked_FlagValue:	
;incstack = 0
	opt	stack 0
; Regs used in _get_gblISRLocked_FlagValue: [wreg]
	line	85
	
l3322:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gblISRLocked),w	;volatile
	movwf	(??_get_gblISRLocked_FlagValue+0)+0
	movf	(??_get_gblISRLocked_FlagValue+0)+0,w
	movwf	(get_gblISRLocked_FlagValue@blTemp)
	line	86
	movf	(get_gblISRLocked_FlagValue@blTemp),w
	goto	l192
	
l3324:	
	line	87
	
l192:	
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
;;      Temps:          0       4       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
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
psect	text27,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	198
global __ptext27
__ptext27:	;psect for function _isr
psect	text27
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
psect	text27
	line	203
	
i1l3932:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	204
	
i1l3934:	
	fcall	_set_gblISRLocked_FlagValue
	line	205
	fcall	_timerISR
	line	206
	fcall	_timer16BitISR
	line	207
	
i1l3936:	
	fcall	_timer8BitISR
	line	208
	
i1l3938:	
	fcall	_serialRxISR
	line	209
	fcall	_userIntISR
	line	210
	
i1l3940:	
	fcall	_serialTxISR
	line	211
	
i1l3942:	
	fcall	_adcISR
	line	212
	
i1l3944:	
	fcall	_clr_gblISRLocked_FlagValue
	line	213
	
i1l3946:	
	bsf	(95/8),(95)&7	;volatile
	
i1l3948:	
	bsf	(94/8),(94)&7	;volatile
	line	214
	
i1l266:	
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
psect	text28,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	94
global __ptext28
__ptext28:	;psect for function _userIntISR
psect	text28
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	94
	global	__size_of_userIntISR
	__size_of_userIntISR	equ	__end_of_userIntISR-_userIntISR
	
_userIntISR:	
;incstack = 0
	opt	stack 0
; Regs used in _userIntISR: [wreg+status,2+status,0+pclath+cstack]
	line	97
	
i1l3800:	
	btfss	(92/8),(92)&7	;volatile
	goto	u323_21
	goto	u323_20
u323_21:
	goto	i1l3812
u323_20:
	
i1l3802:	
	btfss	(89/8),(89)&7	;volatile
	goto	u324_21
	goto	u324_20
u324_21:
	goto	i1l3812
u324_20:
	line	99
	
i1l3804:	
	bcf	(92/8),(92)&7	;volatile
	line	101
	
i1l3806:	
	fcall	_extIntISR
	line	103
	
i1l3808:	
	bcf	(89/8),(89)&7	;volatile
	line	104
	
i1l3810:	
	bsf	(92/8),(92)&7	;volatile
	goto	i1l3812
	line	105
	
i1l711:	
	line	133
	
i1l3812:	
	btfss	(91/8),(91)&7	;volatile
	goto	u325_21
	goto	u325_20
u325_21:
	goto	i1l713
u325_20:
	
i1l3814:	
	btfss	(88/8),(88)&7	;volatile
	goto	u326_21
	goto	u326_20
u326_21:
	goto	i1l713
u326_20:
	line	135
	
i1l3816:	
	bcf	(91/8),(91)&7	;volatile
	line	137
	
i1l3818:	
	fcall	_rbIntISR
	line	139
	
i1l3820:	
	bcf	(88/8),(88)&7	;volatile
	line	140
	
i1l3822:	
	bsf	(91/8),(91)&7	;volatile
	goto	i1l713
	line	141
	
i1l712:	
	line	142
	
i1l713:	
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
psect	text29,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	228
global __ptext29
__ptext29:	;psect for function _rbIntISR
psect	text29
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	228
	global	__size_of_rbIntISR
	__size_of_rbIntISR	equ	__end_of_rbIntISR-_rbIntISR
	
_rbIntISR:	
;incstack = 0
	opt	stack 0
; Regs used in _rbIntISR: [wreg+status,2+status,0+pclath+cstack]
	line	232
	
i1l3558:	
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
	line	234
	
i1l3560:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(4)&7
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l3580
u282_20:
	line	236
	
i1l3562:	
	movf	(_eMod4_Mode),w
	xorlw	02h
	skipz
	goto	u283_21
	goto	u283_20
u283_21:
	goto	i1l3568
u283_20:
	
i1l3564:	
	btfsc	(6),(4)&7	;volatile
	goto	u284_21
	goto	u284_20
u284_21:
	goto	i1l3568
u284_20:
	goto	i1l3576
	line	239
	
i1l3566:	
	goto	i1l3576
	line	240
	
i1l932:	
	
i1l3568:	
	movf	(_eMod4_Mode),w
	xorlw	03h
	skipz
	goto	u285_21
	goto	u285_20
u285_21:
	goto	i1l3574
u285_20:
	
i1l3570:	
	btfss	(6),(4)&7	;volatile
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l3574
u286_20:
	goto	i1l3576
	line	243
	
i1l3572:	
	goto	i1l3576
	line	244
	
i1l934:	
	line	247
	
i1l3574:	
	movf	(_pt2INT4),w
	fcall	i1fptable
	goto	i1l3576
	line	248
	
i1l935:	
	goto	i1l3576
	
i1l933:	
	line	250
	
i1l3576:	
	movlw	(0EFh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	251
	
i1l3578:	
	movf	(6),w	;volatile
	andlw	010h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l3580
	line	252
	
i1l931:	
	line	254
	
i1l3580:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(5)&7
	goto	u287_21
	goto	u287_20
u287_21:
	goto	i1l3600
u287_20:
	line	256
	
i1l3582:	
	movf	(_eMod5_Mode),w
	xorlw	02h
	skipz
	goto	u288_21
	goto	u288_20
u288_21:
	goto	i1l3588
u288_20:
	
i1l3584:	
	btfsc	(6),(5)&7	;volatile
	goto	u289_21
	goto	u289_20
u289_21:
	goto	i1l3588
u289_20:
	goto	i1l3596
	line	259
	
i1l3586:	
	goto	i1l3596
	line	260
	
i1l937:	
	
i1l3588:	
	movf	(_eMod5_Mode),w
	xorlw	03h
	skipz
	goto	u290_21
	goto	u290_20
u290_21:
	goto	i1l3594
u290_20:
	
i1l3590:	
	btfss	(6),(5)&7	;volatile
	goto	u291_21
	goto	u291_20
u291_21:
	goto	i1l3594
u291_20:
	goto	i1l3596
	line	263
	
i1l3592:	
	goto	i1l3596
	line	264
	
i1l939:	
	line	267
	
i1l3594:	
	movf	(_pt2INT5),w
	fcall	i1fptable
	goto	i1l3596
	line	268
	
i1l940:	
	goto	i1l3596
	
i1l938:	
	line	270
	
i1l3596:	
	movlw	(0DFh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	271
	
i1l3598:	
	movf	(6),w	;volatile
	andlw	020h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l3600
	line	272
	
i1l936:	
	line	274
	
i1l3600:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(6)&7
	goto	u292_21
	goto	u292_20
u292_21:
	goto	i1l3620
u292_20:
	line	276
	
i1l3602:	
	movf	(_eMod6_Mode),w
	xorlw	02h
	skipz
	goto	u293_21
	goto	u293_20
u293_21:
	goto	i1l3608
u293_20:
	
i1l3604:	
	btfsc	(6),(6)&7	;volatile
	goto	u294_21
	goto	u294_20
u294_21:
	goto	i1l3608
u294_20:
	goto	i1l3616
	line	279
	
i1l3606:	
	goto	i1l3616
	line	280
	
i1l942:	
	
i1l3608:	
	movf	(_eMod6_Mode),w
	xorlw	03h
	skipz
	goto	u295_21
	goto	u295_20
u295_21:
	goto	i1l3614
u295_20:
	
i1l3610:	
	btfss	(6),(6)&7	;volatile
	goto	u296_21
	goto	u296_20
u296_21:
	goto	i1l3614
u296_20:
	goto	i1l3616
	line	283
	
i1l3612:	
	goto	i1l3616
	line	284
	
i1l944:	
	line	287
	
i1l3614:	
	movf	(_pt2INT6),w
	fcall	i1fptable
	goto	i1l3616
	line	288
	
i1l945:	
	goto	i1l3616
	
i1l943:	
	line	290
	
i1l3616:	
	movlw	(0BFh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	291
	
i1l3618:	
	movf	(6),w	;volatile
	andlw	040h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l3620
	line	292
	
i1l941:	
	line	294
	
i1l3620:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(7)&7
	goto	u297_21
	goto	u297_20
u297_21:
	goto	i1l3640
u297_20:
	line	296
	
i1l3622:	
	movf	(_eMod7_Mode),w
	xorlw	02h
	skipz
	goto	u298_21
	goto	u298_20
u298_21:
	goto	i1l3628
u298_20:
	
i1l3624:	
	btfsc	(6),(7)&7	;volatile
	goto	u299_21
	goto	u299_20
u299_21:
	goto	i1l3628
u299_20:
	goto	i1l3636
	line	299
	
i1l3626:	
	goto	i1l3636
	line	300
	
i1l947:	
	
i1l3628:	
	movf	(_eMod7_Mode),w
	xorlw	03h
	skipz
	goto	u300_21
	goto	u300_20
u300_21:
	goto	i1l3634
u300_20:
	
i1l3630:	
	btfss	(6),(7)&7	;volatile
	goto	u301_21
	goto	u301_20
u301_21:
	goto	i1l3634
u301_20:
	goto	i1l3636
	line	303
	
i1l3632:	
	goto	i1l3636
	line	304
	
i1l949:	
	line	307
	
i1l3634:	
	movf	(_pt2INT7),w
	fcall	i1fptable
	goto	i1l3636
	line	308
	
i1l950:	
	goto	i1l3636
	
i1l948:	
	line	310
	
i1l3636:	
	movlw	(07Fh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	311
	
i1l3638:	
	movf	(6),w	;volatile
	andlw	080h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l3640
	line	312
	
i1l946:	
	line	314
	
i1l3640:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(134)^080h,w	;volatile
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	315
	
i1l951:	
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
psect	text30,local,class=CODE,delta=2,merge=1
	line	110
global __ptext30
__ptext30:	;psect for function _extIntISR
psect	text30
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	110
	global	__size_of_extIntISR
	__size_of_extIntISR	equ	__end_of_extIntISR-_extIntISR
	
_extIntISR:	
;incstack = 0
	opt	stack 0
; Regs used in _extIntISR: [wreg+status,2+status,0+pclath+cstack]
	line	113
	
i1l3550:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_eMod0_Mode),w
	xorlw	01h
	skipz
	goto	u280_21
	goto	u280_20
u280_21:
	goto	i1l3556
u280_20:
	line	115
	
i1l3552:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1038/8)^080h,(1038)&7	;volatile
	goto	u281_21
	goto	u281_20
u281_21:
	goto	i1l924
u281_20:
	line	117
	
i1l3554:	
	bsf	(1038/8)^080h,(1038)&7	;volatile
	line	118
	goto	i1l3556
	line	119
	
i1l924:	
	line	121
	bcf	(1038/8)^080h,(1038)&7	;volatile
	goto	i1l3556
	line	122
	
i1l925:	
	goto	i1l3556
	line	125
	
i1l923:	
	line	128
	
i1l3556:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_pt2INT0),w
	fcall	i1fptable
	line	129
	
i1l926:	
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
psect	text31,local,class=CODE,delta=2,merge=1
	line	88
global __ptext31
__ptext31:	;psect for function _nullIntFunction
psect	text31
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	88
	global	__size_of_nullIntFunction
	__size_of_nullIntFunction	equ	__end_of_nullIntFunction-_nullIntFunction
	
_nullIntFunction:	
;incstack = 0
	opt	stack 0
; Regs used in _nullIntFunction: []
	line	91
	
i1l920:	
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
;;		_inc_gui16TimerSec_Value
;;		_inc_gui16TimerUsMSB_Value
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_timer.c"
	line	107
global __ptext32
__ptext32:	;psect for function _timerISR
psect	text32
	file	"hardware/cores/lib\hal_timer.c"
	line	107
	global	__size_of_timerISR
	__size_of_timerISR	equ	__end_of_timerISR-_timerISR
	
_timerISR:	
;incstack = 0
	opt	stack 1
; Regs used in _timerISR: [wreg+status,2+status,0+pclath+cstack]
	line	114
	
i1l3746:	
	btfss	(90/8),(90)&7	;volatile
	goto	u312_21
	goto	u312_20
u312_21:
	goto	i1l871
u312_20:
	
i1l3748:	
	btfss	(93/8),(93)&7	;volatile
	goto	u313_21
	goto	u313_20
u313_21:
	goto	i1l871
u313_20:
	line	116
	
i1l3750:	
	bcf	(90/8),(90)&7	;volatile
	line	117
	
i1l3752:	
	movlw	low(0100h)
	movwf	(inc_gui16TimerUsMSB_Value@ui16Value)
	movlw	high(0100h)
	movwf	((inc_gui16TimerUsMSB_Value@ui16Value))+1
	fcall	_inc_gui16TimerUsMSB_Value
	line	118
	
i1l3754:	
	movlw	low(0CDh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(timerISR@ui16UsCounter),f
	skipnc
	incf	(timerISR@ui16UsCounter+1),f
	movlw	high(0CDh)
	addwf	(timerISR@ui16UsCounter+1),f
	line	120
	goto	i1l3762
	
i1l868:	
	line	122
	
i1l3756:	
	fcall	_inc_gui16TimerMs_Value
	line	123
	
i1l3758:	
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(timerISR@ui16UsCounter),f
	movlw	high(03E8h)
	skipc
	decf	(timerISR@ui16UsCounter+1),f
	subwf	(timerISR@ui16UsCounter+1),f
	line	125
	
i1l3760:	
	movlw	low(01h)
	addwf	(timerISR@ui16MsCounter),f
	skipnc
	incf	(timerISR@ui16MsCounter+1),f
	movlw	high(01h)
	addwf	(timerISR@ui16MsCounter+1),f
	goto	i1l3762
	line	130
	
i1l867:	
	line	120
	
i1l3762:	
	movlw	high(03E8h)
	subwf	(timerISR@ui16UsCounter+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(timerISR@ui16UsCounter),w
	skipnc
	goto	u314_21
	goto	u314_20
u314_21:
	goto	i1l3756
u314_20:
	goto	i1l3764
	
i1l869:	
	line	134
	
i1l3764:	
	movlw	high(03E8h)
	subwf	(timerISR@ui16MsCounter+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(timerISR@ui16MsCounter),w
	skipc
	goto	u315_21
	goto	u315_20
u315_21:
	goto	i1l871
u315_20:
	line	136
	
i1l3766:	
	fcall	_inc_gui16TimerSec_Value
	line	137
	
i1l3768:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(timerISR@ui16MsCounter)
	clrf	(timerISR@ui16MsCounter+1)
	goto	i1l871
	line	141
	
i1l870:	
	goto	i1l871
	line	144
	
i1l866:	
	line	145
	
i1l871:	
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
psect	text33,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	90
global __ptext33
__ptext33:	;psect for function _inc_gui16TimerUsMSB_Value
psect	text33
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	90
	global	__size_of_inc_gui16TimerUsMSB_Value
	__size_of_inc_gui16TimerUsMSB_Value	equ	__end_of_inc_gui16TimerUsMSB_Value-_inc_gui16TimerUsMSB_Value
	
_inc_gui16TimerUsMSB_Value:	
;incstack = 0
	opt	stack 1
; Regs used in _inc_gui16TimerUsMSB_Value: [wreg+status,2+status,0]
	line	92
	
i1l3484:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	93
	
i1l3486:	
	movf	(inc_gui16TimerUsMSB_Value@ui16Value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_gui16TimerUsMSB),f	;volatile
	skipnc
	incf	(_gui16TimerUsMSB+1),f	;volatile
	movf	(inc_gui16TimerUsMSB_Value@ui16Value+1),w
	addwf	(_gui16TimerUsMSB+1),f	;volatile
	line	95
	
i1l3488:	
	movf	(_gblISRLocked),f	;volatile
	skipz
	goto	u275_21
	goto	u275_20
u275_21:
	goto	i1l196
u275_20:
	line	97
	
i1l3490:	
	bsf	(95/8),(95)&7	;volatile
	bsf	(94/8),(94)&7	;volatile
	goto	i1l196
	line	98
	
i1l195:	
	line	99
	
i1l196:	
	return
	opt stack 0
GLOBAL	__end_of_inc_gui16TimerUsMSB_Value
	__end_of_inc_gui16TimerUsMSB_Value:
	signat	_inc_gui16TimerUsMSB_Value,4216
	global	_inc_gui16TimerSec_Value

;; *************** function _inc_gui16TimerSec_Value *****************
;; Defined at:
;;		line 176 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
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
psect	text34,local,class=CODE,delta=2,merge=1
	line	176
global __ptext34
__ptext34:	;psect for function _inc_gui16TimerSec_Value
psect	text34
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	176
	global	__size_of_inc_gui16TimerSec_Value
	__size_of_inc_gui16TimerSec_Value	equ	__end_of_inc_gui16TimerSec_Value-_inc_gui16TimerSec_Value
	
_inc_gui16TimerSec_Value:	
;incstack = 0
	opt	stack 1
; Regs used in _inc_gui16TimerSec_Value: [wreg+status,2+status,0]
	line	178
	
i1l3506:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	179
	
i1l3508:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_gui16TimerSec),f	;volatile
	skipnc
	incf	(_gui16TimerSec+1),f	;volatile
	movlw	high(01h)
	addwf	(_gui16TimerSec+1),f	;volatile
	line	181
	
i1l3510:	
	movf	(_gblISRLocked),f	;volatile
	skipz
	goto	u277_21
	goto	u277_20
u277_21:
	goto	i1l218
u277_20:
	line	183
	
i1l3512:	
	bsf	(95/8),(95)&7	;volatile
	bsf	(94/8),(94)&7	;volatile
	goto	i1l218
	line	184
	
i1l217:	
	line	185
	
i1l218:	
	return
	opt stack 0
GLOBAL	__end_of_inc_gui16TimerSec_Value
	__end_of_inc_gui16TimerSec_Value:
	signat	_inc_gui16TimerSec_Value,88
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
psect	text35,local,class=CODE,delta=2,merge=1
	line	157
global __ptext35
__ptext35:	;psect for function _inc_gui16TimerMs_Value
psect	text35
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	157
	global	__size_of_inc_gui16TimerMs_Value
	__size_of_inc_gui16TimerMs_Value	equ	__end_of_inc_gui16TimerMs_Value-_inc_gui16TimerMs_Value
	
_inc_gui16TimerMs_Value:	
;incstack = 0
	opt	stack 1
; Regs used in _inc_gui16TimerMs_Value: [wreg+status,2+status,0]
	line	159
	
i1l3498:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	160
	
i1l3500:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_gui16TimerMs),f	;volatile
	skipnc
	incf	(_gui16TimerMs+1),f	;volatile
	movlw	high(01h)
	addwf	(_gui16TimerMs+1),f	;volatile
	line	162
	
i1l3502:	
	movf	(_gblISRLocked),f	;volatile
	skipz
	goto	u276_21
	goto	u276_20
u276_21:
	goto	i1l211
u276_20:
	line	164
	
i1l3504:	
	bsf	(95/8),(95)&7	;volatile
	bsf	(94/8),(94)&7	;volatile
	goto	i1l211
	line	165
	
i1l210:	
	line	166
	
i1l211:	
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
;;		_nullTMRFunction
;;		_softUARTController
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	70
global __ptext36
__ptext36:	;psect for function _timer8BitISR
psect	text36
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	70
	global	__size_of_timer8BitISR
	__size_of_timer8BitISR	equ	__end_of_timer8BitISR-_timer8BitISR
	
_timer8BitISR:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _timer8BitISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	74
	
i1l3778:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u318_21
	goto	u318_20
u318_21:
	goto	i1l325
u318_20:
	
i1l3780:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1121/8)^080h,(1121)&7	;volatile
	goto	u319_21
	goto	u319_20
u319_21:
	goto	i1l325
u319_20:
	line	77
	
i1l3782:	
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
	
i1l3784:	
	movf	(_pt2TMR2ISR),w
	fcall	i1fptable
	goto	i1l325
	line	82
	
i1l324:	
	line	111
	
i1l325:	
	return
	opt stack 0
GLOBAL	__end_of_timer8BitISR
	__end_of_timer8BitISR:
	signat	_timer8BitISR,88
	global	_softUARTController
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
psect	text37,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_8bit_timer.c"
	line	66
global __ptext37
__ptext37:	;psect for function _nullTMRFunction
psect	text37
	file	"hardware/cores/lib\hal_8bit_timer.c"
	line	66
	global	__size_of_nullTMRFunction
	__size_of_nullTMRFunction	equ	__end_of_nullTMRFunction-_nullTMRFunction
	
_nullTMRFunction:	
;incstack = 0
	opt	stack 1
; Regs used in _nullTMRFunction: []
	line	69
	
i1l744:	
	return
	opt stack 0
GLOBAL	__end_of_nullTMRFunction
	__end_of_nullTMRFunction:
	signat	_nullTMRFunction,88

;; *************** function _softUARTController *****************
;; Defined at:
;;		line 358 in file "libraries/soft_serial\soft_serial.c"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_serialSoftRxISR
;;		_serialSoftTxISR
;;		i1_set8BitTimer
;; This function is called by:
;;		_setupSoftSerial
;;		_timer8BitISR
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"libraries/soft_serial\soft_serial.c"
	line	358
global __ptext38
__ptext38:	;psect for function _softUARTController
psect	text38
	file	"libraries/soft_serial\soft_serial.c"
	line	358
	global	__size_of_softUARTController
	__size_of_softUARTController	equ	__end_of_softUARTController-_softUARTController
	
_softUARTController:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _softUARTController: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	360
	
i1l3474:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui16SUARTBitPeriod_div3),w
	movwf	(??_softUARTController+0)+0
	movf	(??_softUARTController+0)+0,w
	movwf	(i1set8BitTimer@ui8Value)
	movlw	(02h)
	fcall	i1_set8BitTimer
	line	361
	
i1l3476:	
	fcall	_serialSoftRxISR
	line	362
	
i1l3478:	
	fcall	_serialSoftTxISR
	line	363
	
i1l84:	
	return
	opt stack 0
GLOBAL	__end_of_softUARTController
	__end_of_softUARTController:
	signat	_softUARTController,88
	global	i1_set8BitTimer

;; *************** function i1_set8BitTimer *****************
;; Defined at:
;;		line 243 in file "hardware/cores/lib\corelib_8bit_timer.c"
;; Parameters:    Size  Location     Type
;;  eTmrModule      1    wreg     enum E1461
;;  ui8Value        1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  eTmrModule      1    1[COMMON] enum E1461
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
psect	text39,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	243
global __ptext39
__ptext39:	;psect for function i1_set8BitTimer
psect	text39
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	243
	global	__size_ofi1_set8BitTimer
	__size_ofi1_set8BitTimer	equ	__end_ofi1_set8BitTimer-i1_set8BitTimer
	
i1_set8BitTimer:	
;incstack = 0
	opt	stack 0
; Regs used in i1_set8BitTimer: [wreg+status,2+status,0]
	movwf	(i1set8BitTimer@eTmrModule)
	line	246
	
i1l3394:	
	movf	(i1set8BitTimer@eTmrModule),w
	xorlw	02h
	skipz
	goto	u271_21
	goto	u271_20
u271_21:
	goto	i1l340
u271_20:
	line	248
	
i1l3396:	
	movf	(i1set8BitTimer@ui8Value),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	250
	
i1l3398:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	251
	
i1l3400:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	253
	
i1l3402:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	line	254
	goto	i1l340
	line	280
	
i1l338:	
	goto	i1l340
	line	283
	
i1l339:	
	line	284
	
i1l340:	
	return
	opt stack 0
GLOBAL	__end_ofi1_set8BitTimer
	__end_ofi1_set8BitTimer:
	signat	i1_set8BitTimer,88
	global	_serialSoftTxISR

;; *************** function _serialSoftTxISR *****************
;; Defined at:
;;		line 593 in file "libraries/soft_serial\soft_serial.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___bmul
;;		i1_changePinState
;; This function is called by:
;;		_softUARTController
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	file	"libraries/soft_serial\soft_serial.c"
	line	593
global __ptext40
__ptext40:	;psect for function _serialSoftTxISR
psect	text40
	file	"libraries/soft_serial\soft_serial.c"
	line	593
	global	__size_of_serialSoftTxISR
	__size_of_serialSoftTxISR	equ	__end_of_serialSoftTxISR-_serialSoftTxISR
	
_serialSoftTxISR:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _serialSoftTxISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	600
	
i1l3274:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(serialSoftTxISR@ui8ModuleCounter)
	
i1l3276:	
	movlw	(02h)
	subwf	(serialSoftTxISR@ui8ModuleCounter),w
	skipc
	goto	u263_21
	goto	u263_20
u263_21:
	goto	i1l3280
u263_20:
	goto	i1l139
	
i1l3278:	
	goto	i1l139
	line	601
	
i1l135:	
	line	603
	
i1l3280:	
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,f
	skipz
	goto	u264_21
	goto	u264_20
u264_21:
	goto	i1l3290
u264_20:
	line	605
	
i1l3282:	
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	010h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_serialSoftTxISR+1)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+2)+0
	movf	(??_serialSoftTxISR+2)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	011h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	xorwf	(??_serialSoftTxISR+1)+0,w
	skipz
	goto	u265_21
	goto	u265_20
u265_21:
	goto	i1l3288
u265_20:
	goto	i1l139
	line	607
	
i1l3284:	
	goto	i1l139
	line	608
	
i1l3286:	
	goto	i1l3318
	line	609
	
i1l138:	
	line	611
	
i1l3288:	
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	011h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	_stSUART_TXFiFo&0ffh
	bsf	status, 7	;select IRP bank3
	addwf	indf,w
	movwf	(??_serialSoftTxISR+2)+0
	movf	0+(??_serialSoftTxISR+2)+0,w
	movwf	fsr0
	movf	indf,w
	movwf	(??_serialSoftTxISR+3)+0
	movf	(??_serialSoftTxISR+3)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialSoftTxISR@ui8TempByte)
	movlw	(01h)
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	011h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	addwf	indf,f
	line	612
	movlw	(0Fh)
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	011h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	andwf	indf,f
	line	615
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	incf	indf,f
	goto	i1l3318
	line	617
	
i1l140:	
	line	618
	goto	i1l3318
	line	619
	
i1l137:	
	line	621
	
i1l3290:	
	movlw	(01h)
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	addwf	indf,f
	line	623
	goto	i1l3316
	line	625
	
i1l143:	
	line	627
	
i1l3292:	
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	628
	goto	i1l3318
	line	630
	
i1l145:	
	line	632
	
i1l3294:	
	clrf	(i1changePinState@eOperation)
	incf	(i1changePinState@eOperation),f
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	635
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	015h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	636
	movlw	(03h)
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	637
	goto	i1l3318
	line	639
	
i1l146:	
	line	641
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(serialSoftTxISR@ui8TempByte),(0)&7
	goto	u266_21
	goto	u266_20
u266_21:
	goto	i1l3298
u266_20:
	line	643
	
i1l3296:	
	clrf	(i1changePinState@eOperation)
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	012h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	i1_changePinState
	line	644
	goto	i1l148
	line	645
	
i1l147:	
	line	647
	
i1l3298:	
	clrf	(i1changePinState@eOperation)
	incf	(i1changePinState@eOperation),f
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	012h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	i1_changePinState
	line	648
	
i1l148:	
	line	650
	movlw	(01h)
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	015h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	addwf	indf,f
	line	651
	movlw	(03h)
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	652
	goto	i1l3318
	line	654
	
i1l149:	
	line	656
	
i1l3300:	
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	movlw	(03h)
	bsf	status, 7	;select IRP bank3
	subwf	indf,w
	skipc
	goto	u267_21
	goto	u267_20
u267_21:
	goto	i1l3318
u267_20:
	line	658
	
i1l3302:	
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	015h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	movlw	(08h)
	bsf	status, 7	;select IRP bank3
	subwf	indf,w
	skipnc
	goto	u268_21
	goto	u268_20
u268_21:
	goto	i1l3308
u268_20:
	line	660
	
i1l3304:	
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rrf	(serialSoftTxISR@ui8TempByte),f

	line	661
	
i1l3306:	
	movlw	(02h)
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	662
	goto	i1l152
	line	663
	
i1l151:	
	line	665
	
i1l3308:	
	movlw	(04h)
	movwf	(??_serialSoftTxISR+0)+0
	movlw	(017h)
	movwf	(??_serialSoftTxISR+1)+0
	movf	(??_serialSoftTxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftTxISR+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	666
	
i1l152:	
	line	667
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	goto	i1l3318
	line	668
	
i1l150:	
	line	669
	goto	i1l3318
	line	671
	
i1l153:	
	line	673
	
i1l3310:	
	clrf	(i1changePinState@eOperation)
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	movlw	(03h)
	bsf	status, 7	;select IRP bank3
	subwf	indf,w
	skipc
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l3318
u269_20:
	line	677
	
i1l3312:	
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftTxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	013h
	addlw	_stSUART_TXFiFo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	goto	i1l3318
	line	678
	
i1l154:	
	line	679
	goto	i1l3318
	line	681
	
i1l155:	
	line	683
	goto	i1l3318
	line	685
	
i1l3314:	
	goto	i1l3318
	line	623
	
i1l142:	
	
i1l3316:	
	movlw	(017h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l3292
	xorlw	1^0	; case 1
	skipnz
	goto	i1l3294
	xorlw	2^1	; case 2
	skipnz
	goto	i1l146
	xorlw	3^2	; case 3
	skipnz
	goto	i1l3300
	xorlw	4^3	; case 4
	skipnz
	goto	i1l3310
	goto	i1l3318
	opt asmopt_on

	line	685
	
i1l144:	
	goto	i1l3318
	line	686
	
i1l141:	
	line	600
	
i1l3318:	
	movlw	(01h)
	movwf	(??_serialSoftTxISR+0)+0
	movf	(??_serialSoftTxISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(serialSoftTxISR@ui8ModuleCounter),f
	
i1l3320:	
	movlw	(02h)
	subwf	(serialSoftTxISR@ui8ModuleCounter),w
	skipc
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l3280
u270_20:
	goto	i1l139
	
i1l136:	
	line	688
	
i1l139:	
	return
	opt stack 0
GLOBAL	__end_of_serialSoftTxISR
	__end_of_serialSoftTxISR:
	signat	_serialSoftTxISR,88
	global	i1_changePinState

;; *************** function i1_changePinState *****************
;; Defined at:
;;		line 188 in file "hardware/cores/lib\hal_gpio.c"
;; Parameters:    Size  Location     Type
;;  ui8Pin          1    wreg     unsigned char 
;;  eOperation      1    4[COMMON] enum E1430
;; Auto vars:     Size  Location     Type
;;  ui8Pin          1    9[COMMON] unsigned char 
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
psect	text41,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_gpio.c"
	line	188
global __ptext41
__ptext41:	;psect for function i1_changePinState
psect	text41
	file	"hardware/cores/lib\hal_gpio.c"
	line	188
	global	__size_ofi1_changePinState
	__size_ofi1_changePinState	equ	__end_ofi1_changePinState-i1_changePinState
	
i1_changePinState:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_changePinState: [wreg-fsr0h+status,2+status,0]
	movwf	(i1changePinState@ui8Pin)
	line	190
	
i1l3000:	
	clrf	(i1changePinState@pui8PortReg)
	clrf	(i1changePinState@pui8PortReg+1)
	line	193
	
i1l3002:	
	movlw	(08h)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l3006
u205_20:
	line	195
	
i1l3004:	
	movlw	high(7)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(7)
	movwf	(i1changePinState@pui8PortReg)
	line	199
	goto	i1l3038
	line	201
	
i1l797:	
	
i1l3006:	
	movlw	(0Eh)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l3012
u206_20:
	line	203
	
i1l3008:	
	movlw	low(08h)
	subwf	(i1changePinState@ui8Pin),f
	line	204
	
i1l3010:	
	movlw	high(6)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(6)
	movwf	(i1changePinState@pui8PortReg)
	line	208
	goto	i1l3038
	line	210
	
i1l799:	
	
i1l3012:	
	movlw	(015h)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l3032
u207_20:
	line	212
	
i1l3014:	
	movlw	low(0Eh)
	subwf	(i1changePinState@ui8Pin),f
	line	215
	
i1l3016:	
	movlw	(03h)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l3020
u208_20:
	line	217
	
i1l3018:	
	movlw	high(5)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(i1changePinState@pui8PortReg)
	line	221
	goto	i1l3038
	line	223
	
i1l802:	
	
i1l3020:	
	movf	(i1changePinState@ui8Pin),w
	xorlw	03h
	skipz
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l3026
u209_20:
	line	225
	
i1l3022:	
	movlw	(02h)
	movwf	(??i1_changePinState+0)+0
	movf	(??i1_changePinState+0)+0,w
	addwf	(i1changePinState@ui8Pin),f
	line	226
	
i1l3024:	
	movlw	high(5)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(i1changePinState@pui8PortReg)
	line	230
	goto	i1l3038
	line	232
	
i1l804:	
	
i1l3026:	
	movlw	(07h)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l3038
u210_20:
	line	234
	
i1l3028:	
	movlw	low(04h)
	subwf	(i1changePinState@ui8Pin),f
	line	235
	
i1l3030:	
	movlw	high(9)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(9)
	movwf	(i1changePinState@pui8PortReg)
	line	239
	goto	i1l3038
	line	240
	
i1l806:	
	goto	i1l3038
	line	246
	
i1l807:	
	goto	i1l3038
	
i1l805:	
	goto	i1l3038
	
i1l803:	
	line	247
	goto	i1l3038
	line	249
	
i1l801:	
	
i1l3032:	
	movlw	(01Dh)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l3038
u211_20:
	line	251
	
i1l3034:	
	movlw	low(015h)
	subwf	(i1changePinState@ui8Pin),f
	line	252
	
i1l3036:	
	movlw	high(8)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(8)
	movwf	(i1changePinState@pui8PortReg)
	line	256
	goto	i1l3038
	line	257
	
i1l809:	
	goto	i1l3038
	line	263
	
i1l810:	
	goto	i1l3038
	
i1l808:	
	goto	i1l3038
	
i1l800:	
	goto	i1l3038
	
i1l798:	
	line	266
	
i1l3038:	
	movf	(i1changePinState@pui8PortReg+1),w
	iorwf	(i1changePinState@pui8PortReg),w
	skipnz
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l817
u212_20:
	line	268
	
i1l3040:	
	movf	(i1changePinState@eOperation),f
	skipz
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l3044
u213_20:
	line	270
	
i1l3042:	
	movlw	(01h)
	movwf	(??i1_changePinState+0)+0
	incf	(i1changePinState@ui8Pin),w
	goto	u214_24
u214_25:
	clrc
	rlf	(??i1_changePinState+0)+0,f
u214_24:
	addlw	-1
	skipz
	goto	u214_25
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
	goto	i1l817
	line	275
	
i1l812:	
	
i1l3044:	
	movf	(i1changePinState@eOperation),w
	xorlw	01h
	skipz
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l3048
u215_20:
	line	277
	
i1l3046:	
	movlw	(01h)
	movwf	(??i1_changePinState+0)+0
	incf	(i1changePinState@ui8Pin),w
	goto	u216_24
u216_25:
	clrc
	rlf	(??i1_changePinState+0)+0,f
u216_24:
	addlw	-1
	skipz
	goto	u216_25
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
	goto	i1l817
	line	282
	
i1l814:	
	line	284
	
i1l3048:	
	movlw	(01h)
	movwf	(??i1_changePinState+0)+0
	incf	(i1changePinState@ui8Pin),w
	goto	u217_24
u217_25:
	clrc
	rlf	(??i1_changePinState+0)+0,f
u217_24:
	addlw	-1
	skipz
	goto	u217_25
	movf	0+(??i1_changePinState+0)+0,w
	movwf	(??i1_changePinState+1)+0
	movf	(i1changePinState@pui8PortReg),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1changePinState@pui8PortReg+1),0
	bcf	status,7
	movf	(??i1_changePinState+1)+0,w
	xorwf	indf,f
	goto	i1l817
	line	288
	
i1l815:	
	goto	i1l817
	
i1l813:	
	line	289
	goto	i1l817
	line	290
	
i1l811:	
	goto	i1l817
	line	296
	
i1l816:	
	line	297
	
i1l817:	
	return
	opt stack 0
GLOBAL	__end_ofi1_changePinState
	__end_ofi1_changePinState:
	signat	i1_changePinState,88
	global	_serialSoftRxISR

;; *************** function _serialSoftRxISR *****************
;; Defined at:
;;		line 381 in file "libraries/soft_serial\soft_serial.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_checkPinState
;;		i1___bmul
;; This function is called by:
;;		_softUARTController
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1
	file	"libraries/soft_serial\soft_serial.c"
	line	381
global __ptext42
__ptext42:	;psect for function _serialSoftRxISR
psect	text42
	file	"libraries/soft_serial\soft_serial.c"
	line	381
	global	__size_of_serialSoftRxISR
	__size_of_serialSoftRxISR	equ	__end_of_serialSoftRxISR-_serialSoftRxISR
	
_serialSoftRxISR:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _serialSoftRxISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	389
	
i1l3186:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(serialSoftRxISR@ui8ModuleCounter)
	
i1l3188:	
	movlw	(02h)
	subwf	(serialSoftRxISR@ui8ModuleCounter),w
	skipc
	goto	u246_21
	goto	u246_20
u246_21:
	goto	i1l3192
u246_20:
	goto	i1l128
	
i1l3190:	
	goto	i1l128
	line	390
	
i1l93:	
	line	392
	
i1l3192:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	goto	i1l3266
	line	397
	
i1l96:	
	line	400
	
i1l3194:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	u247_21
	goto	u247_20
u247_21:
	goto	i1l3198
u247_20:
	line	402
	
i1l3196:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	i1l98
	line	404
	
i1l97:	
	line	406
	
i1l3198:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	
i1l98:	
	line	410
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	u248_21
	goto	u248_20
u248_21:
	goto	i1l3268
u248_20:
	line	412
	
i1l3200:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	015h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	goto	i1l3268
	line	420
	
i1l99:	
	line	421
	goto	i1l3268
	line	423
	
i1l101:	
	line	426
	
i1l3202:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	u249_21
	goto	u249_20
u249_21:
	goto	i1l3208
u249_20:
	
i1l3204:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	u250_21
	goto	u250_20
u250_21:
	goto	i1l3208
u250_20:
	line	428
	
i1l3206:	
	movlw	(02h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	goto	i1l3268
	line	432
	
i1l102:	
	line	435
	
i1l3208:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	goto	i1l3268
	line	436
	
i1l103:	
	line	437
	goto	i1l3268
	line	439
	
i1l104:	
	line	441
	
i1l3210:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	u251_21
	goto	u251_20
u251_21:
	goto	i1l3214
u251_20:
	line	443
	
i1l3212:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	i1l106
	line	445
	
i1l105:	
	line	447
	
i1l3214:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
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
	
i1l106:	
	line	451
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	u252_21
	goto	u252_20
u252_21:
	goto	i1l3268
u252_20:
	line	453
	
i1l3216:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	goto	u253_21
	goto	u253_20
u253_21:
	goto	i1l3220
u253_20:
	line	455
	
i1l3218:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	goto	i1l109
	line	458
	
i1l108:	
	line	460
	
i1l3220:	
	movlw	(05h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
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
	
i1l109:	
	line	464
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	goto	i1l3268
	line	467
	
i1l107:	
	line	468
	goto	i1l3268
	line	470
	
i1l110:	
	line	472
	
i1l3222:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	u254_21
	goto	u254_20
u254_21:
	goto	i1l3226
u254_20:
	line	474
	
i1l3224:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	i1l112
	line	476
	
i1l111:	
	line	478
	
i1l3226:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
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
	
i1l112:	
	line	482
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	u255_21
	goto	u255_20
u255_21:
	goto	i1l3240
u255_20:
	line	484
	
i1l3228:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	goto	u256_21
	goto	u256_20
u256_21:
	goto	i1l3232
u256_20:
	line	488
	
i1l3230:	
	movlw	(0Fh)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(serialSoftRxISR@ui8TempByte),f
	line	489
	goto	i1l3234
	line	490
	
i1l114:	
	line	492
	
i1l3232:	
	movlw	(0F0h)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(serialSoftRxISR@ui8TempByte),f
	goto	i1l3234
	line	493
	
i1l115:	
	line	496
	
i1l3234:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	014h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	497
	
i1l3236:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	
i1l3238:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	goto	i1l3240
	line	499
	
i1l113:	
	line	501
	
i1l3240:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	u257_21
	goto	u257_20
u257_21:
	goto	i1l3244
u257_20:
	line	503
	
i1l3242:	
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rrf	(serialSoftRxISR@ui8TempByte),f

	line	504
	goto	i1l3268
	line	506
	
i1l116:	
	line	508
	
i1l3244:	
	movlw	(04h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	015h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	goto	i1l3268
	line	512
	
i1l117:	
	line	513
	goto	i1l3268
	line	515
	
i1l118:	
	line	517
	
i1l3246:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	u258_21
	goto	u258_20
u258_21:
	goto	i1l3250
u258_20:
	line	519
	
i1l3248:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	i1l120
	line	521
	
i1l119:	
	line	523
	
i1l3250:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
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
	
i1l120:	
	line	527
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	u259_21
	goto	u259_20
u259_21:
	goto	i1l3268
u259_20:
	line	530
	
i1l3252:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	goto	u260_21
	goto	u260_20
u260_21:
	goto	i1l3260
u260_20:
	line	532
	
i1l3254:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8TempByte),w
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	010h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+2)+0
	movf	(??_serialSoftRxISR+2)+0,w
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	_stSUART_RXFiFo&0ffh
	bcf	status, 7	;select IRP bank1
	addwf	indf,w
	movwf	(??_serialSoftRxISR+3)+0
	movf	0+(??_serialSoftRxISR+3)+0,w
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	indf
	line	533
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	goto	u261_21
	goto	u261_20
u261_21:
	goto	i1l3258
u261_20:
	line	537
	
i1l3256:	
	movf	(serialSoftRxISR@ui8TempIn),w
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	010h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	538
	goto	i1l3258
	line	539
	
i1l123:	
	goto	i1l3258
	line	542
	
i1l124:	
	line	544
	
i1l3258:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	goto	i1l125
	line	546
	
i1l122:	
	line	548
	
i1l3260:	
	movlw	(05h)
	movwf	(??_serialSoftRxISR+0)+0
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+1)+0
	movf	(??_serialSoftRxISR+1)+0,w
	movwf	(i1___bmul@multiplicand)
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
	
i1l125:	
	line	552
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(serialSoftRxISR@ui8ModuleCounter),w
	fcall	i1___bmul
	addlw	016h
	addlw	_stSUART_RXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	goto	i1l3268
	line	556
	
i1l121:	
	line	557
	goto	i1l3268
	line	559
	
i1l126:	
	line	561
	
i1l3262:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	goto	i1l3268
	line	566
	
i1l127:	
	line	569
	goto	i1l3268
	line	571
	
i1l3264:	
	goto	i1l3268
	line	395
	
i1l95:	
	
i1l3266:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l3194
	xorlw	1^0	; case 1
	skipnz
	goto	i1l3202
	xorlw	2^1	; case 2
	skipnz
	goto	i1l3210
	xorlw	3^2	; case 3
	skipnz
	goto	i1l3222
	xorlw	4^3	; case 4
	skipnz
	goto	i1l3246
	xorlw	5^4	; case 5
	skipnz
	goto	i1l3262
	goto	i1l3268
	opt asmopt_on

	line	571
	
i1l100:	
	line	573
	
i1l3268:	
	movlw	(01Ch)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	movwf	(i1___bmul@multiplicand)
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
	movwf	(i1___bmul@multiplicand)
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
	
i1l3270:	
	movlw	(01h)
	movwf	(??_serialSoftRxISR+0)+0
	movf	(??_serialSoftRxISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(serialSoftRxISR@ui8ModuleCounter),f
	
i1l3272:	
	movlw	(02h)
	subwf	(serialSoftRxISR@ui8ModuleCounter),w
	skipc
	goto	u262_21
	goto	u262_20
u262_21:
	goto	i1l3192
u262_20:
	goto	i1l128
	
i1l94:	
	line	575
	
i1l128:	
	return
	opt stack 0
GLOBAL	__end_of_serialSoftRxISR
	__end_of_serialSoftRxISR:
	signat	_serialSoftRxISR,88
	global	i1___bmul

;; *************** function i1___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    2[COMMON] unsigned char 
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
psect	text43,local,class=CODE,delta=2,merge=1
	file	"C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\sources\common\Umul8.c"
	line	4
global __ptext43
__ptext43:	;psect for function i1___bmul
psect	text43
	file	"C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\sources\common\Umul8.c"
	line	4
	global	__size_ofi1___bmul
	__size_ofi1___bmul	equ	__end_ofi1___bmul-i1___bmul
	
i1___bmul:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___bmul: [wreg+status,2+status,0]
	movwf	(i1___bmul@multiplier)
	line	6
	
i1l3050:	
	clrf	(i1___bmul@product)
	goto	i1l3052
	line	42
	
i1l1052:	
	line	43
	
i1l3052:	
	btfss	(i1___bmul@multiplier),(0)&7
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l3056
u218_20:
	line	44
	
i1l3054:	
	movf	(i1___bmul@multiplicand),w
	movwf	(??i1___bmul+0)+0
	movf	(??i1___bmul+0)+0,w
	addwf	(i1___bmul@product),f
	goto	i1l3056
	
i1l1053:	
	line	45
	
i1l3056:	
	clrc
	rlf	(i1___bmul@multiplicand),f

	line	46
	
i1l3058:	
	clrc
	rrf	(i1___bmul@multiplier),f

	line	47
	
i1l3060:	
	movf	(i1___bmul@multiplier),f
	skipz
	goto	u219_21
	goto	u219_20
u219_21:
	goto	i1l3052
u219_20:
	goto	i1l3062
	
i1l1054:	
	line	50
	
i1l3062:	
	movf	(i1___bmul@product),w
	goto	i1l1055
	
i1l3064:	
	line	51
	
i1l1055:	
	return
	opt stack 0
GLOBAL	__end_ofi1___bmul
	__end_ofi1___bmul:
	signat	i1___bmul,89
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
psect	text44,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_gpio.c"
	line	316
global __ptext44
__ptext44:	;psect for function _checkPinState
psect	text44
	file	"hardware/cores/lib\hal_gpio.c"
	line	316
	global	__size_of_checkPinState
	__size_of_checkPinState	equ	__end_of_checkPinState-_checkPinState
	
_checkPinState:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _checkPinState: [wreg-fsr0h+status,2+status,0]
	movwf	(checkPinState@ui8Pin)
	line	319
	
i1l2924:	
	clrf	(checkPinState@pui8PortReg)
	clrf	(checkPinState@pui8PortReg+1)
	line	322
	
i1l2926:	
	movlw	(08h)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l2930
u193_20:
	line	324
	
i1l2928:	
	movlw	high(7)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(7)
	movwf	(checkPinState@pui8PortReg)
	line	328
	goto	i1l2962
	line	330
	
i1l820:	
	
i1l2930:	
	movlw	(0Eh)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l2936
u194_20:
	line	332
	
i1l2932:	
	movlw	low(08h)
	subwf	(checkPinState@ui8Pin),f
	line	333
	
i1l2934:	
	movlw	high(6)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(6)
	movwf	(checkPinState@pui8PortReg)
	line	337
	goto	i1l2962
	line	339
	
i1l822:	
	
i1l2936:	
	movlw	(015h)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l2956
u195_20:
	line	341
	
i1l2938:	
	movlw	low(0Eh)
	subwf	(checkPinState@ui8Pin),f
	line	344
	
i1l2940:	
	movlw	(03h)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l2944
u196_20:
	line	346
	
i1l2942:	
	movlw	high(5)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(checkPinState@pui8PortReg)
	line	350
	goto	i1l2962
	line	352
	
i1l825:	
	
i1l2944:	
	movf	(checkPinState@ui8Pin),w
	xorlw	03h
	skipz
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l2950
u197_20:
	line	354
	
i1l2946:	
	movlw	(02h)
	movwf	(??_checkPinState+0)+0
	movf	(??_checkPinState+0)+0,w
	addwf	(checkPinState@ui8Pin),f
	line	355
	
i1l2948:	
	movlw	high(5)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(checkPinState@pui8PortReg)
	line	359
	goto	i1l2962
	line	361
	
i1l827:	
	
i1l2950:	
	movlw	(07h)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l2962
u198_20:
	line	363
	
i1l2952:	
	movlw	low(04h)
	subwf	(checkPinState@ui8Pin),f
	line	364
	
i1l2954:	
	movlw	high(9)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(9)
	movwf	(checkPinState@pui8PortReg)
	line	368
	goto	i1l2962
	line	369
	
i1l829:	
	goto	i1l2962
	line	375
	
i1l830:	
	goto	i1l2962
	
i1l828:	
	goto	i1l2962
	
i1l826:	
	line	376
	goto	i1l2962
	line	378
	
i1l824:	
	
i1l2956:	
	movlw	(01Dh)
	subwf	(checkPinState@ui8Pin),w
	skipnc
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l2962
u199_20:
	line	380
	
i1l2958:	
	movlw	low(015h)
	subwf	(checkPinState@ui8Pin),f
	line	381
	
i1l2960:	
	movlw	high(8)
	movwf	(checkPinState@pui8PortReg+1)
	movlw	low(8)
	movwf	(checkPinState@pui8PortReg)
	line	385
	goto	i1l2962
	line	386
	
i1l832:	
	goto	i1l2962
	line	392
	
i1l833:	
	goto	i1l2962
	
i1l831:	
	goto	i1l2962
	
i1l823:	
	goto	i1l2962
	
i1l821:	
	line	395
	
i1l2962:	
	movf	(checkPinState@pui8PortReg+1),w
	iorwf	(checkPinState@pui8PortReg),w
	skipnz
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l2980
u200_20:
	line	397
	
i1l2964:	
	movlw	(01h)
	movwf	(??_checkPinState+0)+0
	incf	(checkPinState@ui8Pin),w
	goto	u201_24
u201_25:
	clrc
	rlf	(??_checkPinState+0)+0,f
u201_24:
	addlw	-1
	skipz
	goto	u201_25
	movf	0+(??_checkPinState+0)+0,w
	movwf	(??_checkPinState+1)+0
	movf	(??_checkPinState+1)+0,w
	movwf	(checkPinState@ui8PinMask)
	line	398
	
i1l2966:	
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
	
i1l2968:	
	movf	(checkPinState@ui8PinMask),w
	xorwf	(checkPinState@ui8PinStatus),w
	skipz
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l2976
u202_20:
	line	405
	
i1l2970:	
	movlw	(01h)
	goto	i1l836
	
i1l2972:	
	goto	i1l836
	line	406
	
i1l2974:	
	goto	i1l836
	line	407
	
i1l835:	
	line	412
	
i1l2976:	
	movlw	(0)
	goto	i1l836
	
i1l2978:	
	goto	i1l836
	line	413
	
i1l837:	
	line	414
	goto	i1l836
	line	415
	
i1l834:	
	line	421
	
i1l2980:	
	movlw	(0)
	goto	i1l836
	
i1l2982:	
	goto	i1l836
	line	422
	
i1l838:	
	line	423
	
i1l836:	
	return
	opt stack 0
GLOBAL	__end_of_checkPinState
	__end_of_checkPinState:
	signat	_checkPinState,4217
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
psect	text45,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	67
global __ptext45
__ptext45:	;psect for function _timer16BitISR
psect	text45
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	67
	global	__size_of_timer16BitISR
	__size_of_timer16BitISR	equ	__end_of_timer16BitISR-_timer16BitISR
	
_timer16BitISR:	
;incstack = 0
	opt	stack 1
; Regs used in _timer16BitISR: [wreg+status,2+status,0+pclath+cstack]
	line	71
	
i1l3770:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7	;volatile
	goto	u316_21
	goto	u316_20
u316_21:
	goto	i1l292
u316_20:
	
i1l3772:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1120/8)^080h,(1120)&7	;volatile
	goto	u317_21
	goto	u317_20
u317_21:
	goto	i1l292
u317_20:
	line	74
	
i1l3774:	
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
	
i1l3776:	
	movf	(_pt2TMR1ISR),w
	fcall	i1fptable
	goto	i1l292
	line	79
	
i1l291:	
	line	82
	
i1l292:	
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
psect	text46,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_16bit_timer.c"
	line	65
global __ptext46
__ptext46:	;psect for function _null16BitTMRFunction
psect	text46
	file	"hardware/cores/lib\hal_16bit_timer.c"
	line	65
	global	__size_of_null16BitTMRFunction
	__size_of_null16BitTMRFunction	equ	__end_of_null16BitTMRFunction-_null16BitTMRFunction
	
_null16BitTMRFunction:	
;incstack = 0
	opt	stack 1
; Regs used in _null16BitTMRFunction: []
	line	68
	
i1l741:	
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
psect	text47,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	72
global __ptext47
__ptext47:	;psect for function _set_gblISRLocked_FlagValue
psect	text47
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	72
	global	__size_of_set_gblISRLocked_FlagValue
	__size_of_set_gblISRLocked_FlagValue	equ	__end_of_set_gblISRLocked_FlagValue-_set_gblISRLocked_FlagValue
	
_set_gblISRLocked_FlagValue:	
;incstack = 0
	opt	stack 2
; Regs used in _set_gblISRLocked_FlagValue: [wreg]
	line	74
	
i1l3656:	
	movlw	(01h)
	movwf	(??_set_gblISRLocked_FlagValue+0)+0
	movf	(??_set_gblISRLocked_FlagValue+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_gblISRLocked)	;volatile
	line	75
	
i1l186:	
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
psect	text48,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_uart.c"
	line	351
global __ptext48
__ptext48:	;psect for function _serialTxISR
psect	text48
	file	"hardware/cores/lib\corelib_uart.c"
	line	351
	global	__size_of_serialTxISR
	__size_of_serialTxISR	equ	__end_of_serialTxISR-_serialTxISR
	
_serialTxISR:	
;incstack = 0
	opt	stack 2
; Regs used in _serialTxISR: [wreg-fsr0h+status,2+status,0]
	line	353
	
i1l3824:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u327_21
	goto	u327_20
u327_21:
	goto	i1l647
u327_20:
	
i1l3826:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1124/8)^080h,(1124)&7	;volatile
	goto	u328_21
	goto	u328_20
u328_21:
	goto	i1l647
u328_20:
	line	355
	
i1l3828:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(100/8),(100)&7	;volatile
	line	358
	
i1l3830:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_stUARTTXFiFo)^0180h+021h,w
	xorwf	0+(_stUARTTXFiFo)^0180h+020h,w
	skipz
	goto	u329_21
	goto	u329_20
u329_21:
	goto	i1l3834
u329_20:
	line	360
	
i1l3832:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	364
	goto	i1l647
	line	365
	
i1l644:	
	line	367
	
i1l3834:	
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
	
i1l3836:	
	movlw	(01h)
	movwf	(??_serialTxISR+0)+0
	movf	(??_serialTxISR+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	0+(_stUARTTXFiFo)^0180h+021h,f
	line	368
	
i1l3838:	
	movlw	(01Fh)
	movwf	(??_serialTxISR+0)+0
	movf	(??_serialTxISR+0)+0,w
	andwf	0+(_stUARTTXFiFo)^0180h+021h,f
	line	373
	
i1l3840:	
	movf	0+(_stUARTTXFiFo)^0180h+021h,w
	xorwf	0+(_stUARTTXFiFo)^0180h+020h,w
	skipz
	goto	u330_21
	goto	u330_20
u330_21:
	goto	i1l647
u330_20:
	line	375
	
i1l3842:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1124/8)^080h,(1124)&7	;volatile
	goto	i1l647
	line	379
	
i1l646:	
	goto	i1l647
	line	380
	
i1l645:	
	goto	i1l647
	line	381
	
i1l643:	
	line	382
	
i1l647:	
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
psect	text49,local,class=CODE,delta=2,merge=1
	line	304
global __ptext49
__ptext49:	;psect for function _serialRxISR
psect	text49
	file	"hardware/cores/lib\corelib_uart.c"
	line	304
	global	__size_of_serialRxISR
	__size_of_serialRxISR	equ	__end_of_serialRxISR-_serialRxISR
	
_serialRxISR:	
;incstack = 0
	opt	stack 2
; Regs used in _serialRxISR: [wreg-fsr0h+status,2+status,0]
	line	308
	
i1l3786:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u320_21
	goto	u320_20
u320_21:
	goto	i1l640
u320_20:
	
i1l3788:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7	;volatile
	goto	u321_21
	goto	u321_20
u321_21:
	goto	i1l640
u321_20:
	line	310
	
i1l3790:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7	;volatile
	line	311
	
i1l3792:	
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
	
i1l3794:	
	movf	0+(_stUARTRXFiFo)^0100h+020h,w
	addlw	01h
	andlw	01Fh
	movwf	(??_serialRxISR+0)+0
	movf	(??_serialRxISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialRxISR@ui8TempIn)
	line	314
	
i1l3796:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(_stUARTRXFiFo)^0100h+021h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(serialRxISR@ui8TempIn),w
	skipnz
	goto	u322_21
	goto	u322_20
u322_21:
	goto	i1l640
u322_20:
	line	316
	
i1l3798:	
	movf	(serialRxISR@ui8TempIn),w
	movwf	(??_serialRxISR+0)+0
	movf	(??_serialRxISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	0+(_stUARTRXFiFo)^0100h+020h
	line	320
	goto	i1l640
	line	321
	
i1l638:	
	goto	i1l640
	line	327
	
i1l639:	
	goto	i1l640
	line	332
	
i1l637:	
	line	333
	
i1l640:	
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
psect	text50,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	77
global __ptext50
__ptext50:	;psect for function _clr_gblISRLocked_FlagValue
psect	text50
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	77
	global	__size_of_clr_gblISRLocked_FlagValue
	__size_of_clr_gblISRLocked_FlagValue	equ	__end_of_clr_gblISRLocked_FlagValue-_clr_gblISRLocked_FlagValue
	
_clr_gblISRLocked_FlagValue:	
;incstack = 0
	opt	stack 2
; Regs used in _clr_gblISRLocked_FlagValue: [status,2]
	line	79
	
i1l3658:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_gblISRLocked)	;volatile
	line	80
	
i1l189:	
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
psect	text51,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_adc.c"
	line	85
global __ptext51
__ptext51:	;psect for function _adcISR
psect	text51
	file	"hardware/cores/lib\corelib_adc.c"
	line	85
	global	__size_of_adcISR
	__size_of_adcISR	equ	__end_of_adcISR-_adcISR
	
_adcISR:	
;incstack = 0
	opt	stack 2
; Regs used in _adcISR: [wreg-fsr0h+status,2+status,0]
	line	89
	
i1l3844:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(102/8),(102)&7	;volatile
	goto	u331_21
	goto	u331_20
u331_21:
	goto	i1l391
u331_20:
	
i1l3846:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1126/8)^080h,(1126)&7	;volatile
	goto	u332_21
	goto	u332_20
u332_21:
	goto	i1l391
u332_20:
	line	91
	
i1l3848:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7	;volatile
	line	94
	
i1l3850:	
	movf	(_eCurrentChannel),w
	xorlw	03h
	skipz
	goto	u333_21
	goto	u333_20
u333_21:
	goto	i1l3854
u333_20:
	goto	i1l3860
	line	100
	
i1l3852:	
	goto	i1l3860
	line	101
	
i1l384:	
	
i1l3854:	
	movlw	(04h)
	subwf	(_eCurrentChannel),w
	skipc
	goto	u334_21
	goto	u334_20
u334_21:
	goto	i1l3858
u334_20:
	line	103
	
i1l3856:	
	movf	(_eCurrentChannel),w
	addlw	0FFh
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	movwf	(adcISR@eEffectiveChannel)
	line	107
	goto	i1l3860
	line	108
	
i1l386:	
	line	110
	
i1l3858:	
	movf	(_eCurrentChannel),w
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	movwf	(adcISR@eEffectiveChannel)
	goto	i1l3860
	line	114
	
i1l387:	
	goto	i1l3860
	
i1l385:	
	line	117
	
i1l3860:	
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
	
i1l3862:	
	movlw	(07h)
	subwf	(_eCurrentChannel),w
	skipnc
	goto	u335_21
	goto	u335_20
u335_21:
	goto	i1l3870
u335_20:
	line	122
	
i1l3864:	
	movlw	(01h)
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	addwf	(_eCurrentChannel),f
	line	125
	
i1l3866:	
	movf	(_eCurrentChannel),w
	xorlw	03h
	skipz
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l3872
u336_20:
	line	127
	
i1l3868:	
	movlw	(01h)
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	addwf	(_eCurrentChannel),f
	goto	i1l3872
	line	131
	
i1l389:	
	line	136
	goto	i1l3872
	line	137
	
i1l388:	
	line	139
	
i1l3870:	
	clrf	(_eCurrentChannel)
	goto	i1l3872
	line	143
	
i1l390:	
	line	146
	
i1l3872:	
	movlw	(0C7h)
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	andwf	(31),f	;volatile
	
i1l3874:	
	movf	(_eCurrentChannel),w
	movwf	(??_adcISR+0)+0
	movlw	(03h)-1
u337_25:
	clrc
	rlf	(??_adcISR+0)+0,f
	addlw	-1
	skipz
	goto	u337_25
	clrc
	rlf	(??_adcISR+0)+0,w
	andlw	038h
	movwf	(??_adcISR+1)+0
	movf	(??_adcISR+1)+0,w
	iorwf	(31),f	;volatile
	goto	i1l391
	line	147
	
i1l383:	
	line	148
	
i1l391:	
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
