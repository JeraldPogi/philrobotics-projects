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
	FNCALL	_init,_getMs
	FNCALL	_init,_setupPBot
	FNCALL	_setupPBot,_changePinState
	FNCALL	_setupPBot,_configPin
	FNCALL	_cycle,_changePinState
	FNCALL	_cycle,_getElapsedMs
	FNCALL	_cycle,_getMs
	FNCALL	_cycle,_moveBackward
	FNCALL	_cycle,_moveForward
	FNCALL	_cycle,_rotateLeft
	FNCALL	_cycle,_rotateRight
	FNCALL	_cycle,_runLeftMotor
	FNCALL	_cycle,_runRightMotor
	FNCALL	_cycle,_stopMotors
	FNCALL	_cycle,_turnLeft
	FNCALL	_cycle,_turnRight
	FNCALL	_turnRight,_runLeftMotor
	FNCALL	_turnRight,_runRightMotor
	FNCALL	_turnLeft,_runLeftMotor
	FNCALL	_turnLeft,_runRightMotor
	FNCALL	_stopMotors,_stopLeftMotor
	FNCALL	_stopMotors,_stopRightMotor
	FNCALL	_stopRightMotor,_changePinState
	FNCALL	_stopLeftMotor,_changePinState
	FNCALL	_rotateRight,_runLeftMotor
	FNCALL	_rotateRight,_runRightMotor
	FNCALL	_rotateLeft,_runLeftMotor
	FNCALL	_rotateLeft,_runRightMotor
	FNCALL	_moveForward,_runLeftMotor
	FNCALL	_moveForward,_runRightMotor
	FNCALL	_moveBackward,_runLeftMotor
	FNCALL	_moveBackward,_runRightMotor
	FNCALL	_runRightMotor,_changePinState
	FNCALL	_runLeftMotor,_changePinState
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
	FNCALL	_timer8BitISR,_servoController
	FNCALL	_timer8BitISR,_softDACController
	FNCALL	_softDACController,___bmul
	FNCALL	_softDACController,_set8BitTimer
	FNCALL	_softDACController,i1_changePinState
	FNCALL	_servoController,___bmul
	FNCALL	_servoController,_set8BitTimer
	FNCALL	_servoController,i1_changePinState
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
	global	_ui8DACEngineStates
	global	_ui8PreScalerVal
	global	_ui8SequenceCounter
	global	_ui8ServoState
	global	bubbleSortDAC@blOnGoing
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
	file	"libraries/soft_dac\soft_dac.c"
	line	62

;initializer for _ui8DACEngineStates
	retlw	04h
	file	"hardware/cores/lib\corelib_pwm.c"
	line	43

;initializer for _ui8PreScalerVal
	retlw	01h
	file	"libraries/Servo\servo.c"
	line	56

;initializer for _ui8SequenceCounter
	retlw	08h
	line	57

;initializer for _ui8ServoState
	retlw	01h
	file	"libraries/soft_dac\soft_dac.c"
	line	285

;initializer for bubbleSortDAC@blOnGoing
	retlw	01h
	file	"hardware/cores/lib\corelib_pwm.c"
	line	43

;initializer for _ui8PreScaler
	retlw	01h
	global	_iByteCounter
	global	_ui8DACScheduleTail
	global	_gui16TimerMs
	global	_gui16TimerUsMSB
	global	_PORTB_BUFFER
	global	_PORTB_DIRECTION
	global	_State
	global	_blBufferOverflow
	global	_blDPacketAvailable
	global	_blDPacketReady
	global	_blKickStarted
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
	global	_ui8PR2plus1
	global	_ui8PrevValue
	global	adcISR@eEffectiveChannel
	global	bubbleSortDAC@ui8Counter
	global	bubbleSortDAC@ui8Counter1
	global	bubbleSortDAC@ui8TempBuff
	global	rbIntISR@PORTCHANGE_BUFFER
	global	serialRxISR@ui8TempIn
	global	setupSoftDAC@blKickstarted
	global	softDACController@blScheduleCleared
	global	softDACController@ui8Counter
	global	_strDProtocolID
	global	_blLineSensorPolarity
	global	_blObstacleSensorPolarity
	global	_astDACModuleSchedule
	global	_strRxParam1
	global	_strRxParam2
	global	_strRxCommandCode
	global	_StateDuration
	global	_strRxDProtocolID
	global	_strRxDTerminator
	global	_gui16TimerSec
	global	_ui16DProtocolTimeout
	global	_ui16PollIntTimer
	global	adcCycle@ui16Counter
	global	adcCycle@ui16Timer
	global	timerISR@ui16UsCounter
	global	_strParam1
	global	_strParam2
	global	_strCommandCode
	global	_strDProtID
	global	_ui16ADCBuff
	global	_aui8Servo
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
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\CrazyMobot.phr.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_iByteCounter:
       ds      1

_ui8DACScheduleTail:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_gui16TimerMs:
       ds      2

_gui16TimerUsMSB:
       ds      2

_PORTB_BUFFER:
       ds      1

_PORTB_DIRECTION:
       ds      1

_State:
       ds      1

_blBufferOverflow:
       ds      1

_blDPacketAvailable:
       ds      1

_blDPacketReady:
       ds      1

_blKickStarted:
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

_ui8PR2plus1:
       ds      1

_ui8PrevValue:
       ds      1

adcISR@eEffectiveChannel:
       ds      1

bubbleSortDAC@ui8Counter:
       ds      1

bubbleSortDAC@ui8Counter1:
       ds      1

bubbleSortDAC@ui8TempBuff:
       ds      1

rbIntISR@PORTCHANGE_BUFFER:
       ds      1

serialRxISR@ui8TempIn:
       ds      1

setupSoftDAC@blKickstarted:
       ds      1

softDACController@blScheduleCleared:
       ds      1

softDACController@ui8Counter:
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

psect	dataBANK0
	file	"libraries/soft_dac\soft_dac.c"
	line	62
_ui8DACEngineStates:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_pwm.c"
	line	43
_ui8PreScalerVal:
       ds      1

psect	dataBANK0
	file	"libraries/Servo\servo.c"
	line	56
_ui8SequenceCounter:
       ds      1

psect	dataBANK0
	file	"libraries/Servo\servo.c"
	line	57
_ui8ServoState:
       ds      1

psect	dataBANK0
	file	"libraries/soft_dac\soft_dac.c"
	line	285
bubbleSortDAC@blOnGoing:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_pwm.c"
	line	43
_ui8PreScaler:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_astDACModuleSchedule:
       ds      12

_strRxParam1:
       ds      7

_strRxParam2:
       ds      7

_strRxCommandCode:
       ds      5

_StateDuration:
       ds      4

_strRxDProtocolID:
       ds      4

_strRxDTerminator:
       ds      3

_gui16TimerSec:
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
_aui8Servo:
       ds      24

_stUARTRXFiFo:
       ds      34

_stUARTTXFiFo:
       ds      34

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_ui16ADCBuff:
       ds      14

	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\CrazyMobot.phr.as"
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+031h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+04Dh)
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+05Ch)
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK2)
	movwf	fsr
	movlw	low((__pbssBANK2)+0Eh)
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
	movlw low(__pdataBANK0+15)
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
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
??_setupPBot:	; 0 bytes @ 0x0
	global	getElapsedMs@ui16TempBuff
getElapsedMs@ui16TempBuff:	; 2 bytes @ 0x0
	ds	2
??_cycle:	; 0 bytes @ 0x2
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_stopMotors:	; 0 bytes @ 0x0
?_moveForward:	; 0 bytes @ 0x0
?_moveBackward:	; 0 bytes @ 0x0
?_rotateLeft:	; 0 bytes @ 0x0
?_rotateRight:	; 0 bytes @ 0x0
?_turnLeft:	; 0 bytes @ 0x0
?_turnRight:	; 0 bytes @ 0x0
?_stopRightMotor:	; 0 bytes @ 0x0
?_stopLeftMotor:	; 0 bytes @ 0x0
?_softDACController:	; 0 bytes @ 0x0
?_servoController:	; 0 bytes @ 0x0
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
?_isr:	; 0 bytes @ 0x0
?_get_gblInitialized_FlagValue:	; 1 bytes @ 0x0
?_get_gblISRLocked_FlagValue:	; 1 bytes @ 0x0
?___bmul:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
runRightMotor@ui8Speed:	; 1 bytes @ 0x0
runLeftMotor@ui8Speed:	; 1 bytes @ 0x0
setupPBot@ui8Mode:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	inc_gui16TimerUsMSB_Value@ui16Value
inc_gui16TimerUsMSB_Value@ui16Value:	; 2 bytes @ 0x0
	ds	1
??_userIntISR:	; 0 bytes @ 0x1
??___bmul:	; 0 bytes @ 0x1
	ds	1
??_timerISR:	; 0 bytes @ 0x2
??_inc_gui16TimerUsMSB_Value:	; 0 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	ds	1
?_set8BitTimer:	; 0 bytes @ 0x4
?i1_changePinState:	; 0 bytes @ 0x4
	global	set8BitTimer@ui8Value
set8BitTimer@ui8Value:	; 1 bytes @ 0x4
	global	i1changePinState@eOperation
i1changePinState@eOperation:	; 1 bytes @ 0x4
	ds	1
??_set8BitTimer:	; 0 bytes @ 0x5
??i1_changePinState:	; 0 bytes @ 0x5
	global	set8BitTimer@eTmrModule
set8BitTimer@eTmrModule:	; 1 bytes @ 0x5
	ds	2
	global	i1changePinState@pui8PortReg
i1changePinState@pui8PortReg:	; 2 bytes @ 0x7
	ds	2
	global	i1changePinState@ui8Pin
i1changePinState@ui8Pin:	; 1 bytes @ 0x9
	ds	1
??_softDACController:	; 0 bytes @ 0xA
??_servoController:	; 0 bytes @ 0xA
	ds	2
??_timer8BitISR:	; 0 bytes @ 0xC
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_isr:	; 0 bytes @ 0x0
	ds	4
?_changePinState:	; 0 bytes @ 0x4
?_configPin:	; 0 bytes @ 0x4
??_setupGpio:	; 0 bytes @ 0x4
??_setupTimer:	; 0 bytes @ 0x4
??_configLowLvlADC:	; 0 bytes @ 0x4
??_set_gblInitialized_FlagValue:	; 0 bytes @ 0x4
??_get_gblInitialized_FlagValue:	; 0 bytes @ 0x4
??_get_gblISRLocked_FlagValue:	; 0 bytes @ 0x4
	global	?_get_gui16TimerMs_Value
?_get_gui16TimerMs_Value:	; 2 bytes @ 0x4
	global	configPin@ui8Direction
configPin@ui8Direction:	; 1 bytes @ 0x4
	global	changePinState@eOperation
changePinState@eOperation:	; 1 bytes @ 0x4
	ds	1
??_changePinState:	; 0 bytes @ 0x5
??_configPin:	; 0 bytes @ 0x5
	global	get_gblInitialized_FlagValue@blTemp
get_gblInitialized_FlagValue@blTemp:	; 1 bytes @ 0x5
	global	get_gblISRLocked_FlagValue@blTemp
get_gblISRLocked_FlagValue@blTemp:	; 1 bytes @ 0x5
	ds	1
??_setupADC:	; 0 bytes @ 0x6
??_get_gui16TimerMs_Value:	; 0 bytes @ 0x6
	global	get_gui16TimerMs_Value@ui16Temp
get_gui16TimerMs_Value@ui16Temp:	; 2 bytes @ 0x6
	ds	1
	global	configPin@pui8PortDirReg
configPin@pui8PortDirReg:	; 2 bytes @ 0x7
	global	changePinState@pui8PortReg
changePinState@pui8PortReg:	; 2 bytes @ 0x7
	ds	1
	global	?_getMs
?_getMs:	; 2 bytes @ 0x8
	global	?_getElapsedMs
?_getElapsedMs:	; 2 bytes @ 0x8
	global	setupADC@eVrefSource
setupADC@eVrefSource:	; 1 bytes @ 0x8
	global	getElapsedMs@ui16TimeMs
getElapsedMs@ui16TimeMs:	; 2 bytes @ 0x8
	ds	1
	global	configPin@ui8Pin
configPin@ui8Pin:	; 1 bytes @ 0x9
	global	changePinState@ui8Pin
changePinState@ui8Pin:	; 1 bytes @ 0x9
	ds	1
?_setupPBot:	; 0 bytes @ 0xA
??_getMs:	; 0 bytes @ 0xA
?_runRightMotor:	; 0 bytes @ 0xA
??_stopMotors:	; 0 bytes @ 0xA
?_runLeftMotor:	; 0 bytes @ 0xA
??_getElapsedMs:	; 0 bytes @ 0xA
??_stopRightMotor:	; 0 bytes @ 0xA
??_stopLeftMotor:	; 0 bytes @ 0xA
	global	runRightMotor@blDirection
runRightMotor@blDirection:	; 1 bytes @ 0xA
	global	runLeftMotor@blDirection
runLeftMotor@blDirection:	; 1 bytes @ 0xA
	global	setupPBot@blObstaclePolarity
setupPBot@blObstaclePolarity:	; 1 bytes @ 0xA
	global	getMs@ui16TempBuff
getMs@ui16TempBuff:	; 2 bytes @ 0xA
	ds	1
??_runRightMotor:	; 0 bytes @ 0xB
??_runLeftMotor:	; 0 bytes @ 0xB
??_moveForward:	; 0 bytes @ 0xB
??_moveBackward:	; 0 bytes @ 0xB
??_rotateLeft:	; 0 bytes @ 0xB
??_rotateRight:	; 0 bytes @ 0xB
??_turnLeft:	; 0 bytes @ 0xB
??_turnRight:	; 0 bytes @ 0xB
	global	setupPBot@blLinePolarity
setupPBot@blLinePolarity:	; 1 bytes @ 0xB
	global	moveForward@ui8Speed
moveForward@ui8Speed:	; 1 bytes @ 0xB
	global	moveBackward@ui8Speed
moveBackward@ui8Speed:	; 1 bytes @ 0xB
	global	turnLeft@ui8Speed
turnLeft@ui8Speed:	; 1 bytes @ 0xB
	global	turnRight@ui8Speed
turnRight@ui8Speed:	; 1 bytes @ 0xB
	global	rotateLeft@ui8Speed
rotateLeft@ui8Speed:	; 1 bytes @ 0xB
	global	rotateRight@ui8Speed
rotateRight@ui8Speed:	; 1 bytes @ 0xB
	ds	1
??_adcCycle:	; 0 bytes @ 0xC
??_init:	; 0 bytes @ 0xC
??_main:	; 0 bytes @ 0xC
;!
;!Data Sizes:
;!    Strings     422
;!    Constant    0
;!    Data        15
;!    BSS         234
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      14
;!    BANK0            80     12      76
;!    BANK1            80      3      80
;!    BANK3            96      0      92
;!    BANK2            96      0      14

;!
;!Pointer List with Targets:
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
;!    pt2TMR2ISR	PTR FTN()void  size(1) Largest target is 0
;!		 -> nullTMRFunction(), servoController(), softDACController(), 
;!
;!    pt2TMR1ISR	PTR FTN()void  size(1) Largest target is 0
;!		 -> null16BitTMRFunction(), 
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
;!    _timer8BitISR->_servoController
;!    _timer8BitISR->_softDACController
;!    _softDACController->i1_changePinState
;!    _servoController->i1_changePinState
;!    i1_changePinState->___bmul
;!    _set8BitTimer->___bmul
;!
;!Critical Paths under _main in BANK0
;!
;!    _setupADC->_get_gblInitialized_FlagValue
;!    _init->_getMs
;!    _init->_setupPBot
;!    _setupPBot->_changePinState
;!    _setupPBot->_configPin
;!    _cycle->_getElapsedMs
;!    _cycle->_getMs
;!    _cycle->_moveBackward
;!    _cycle->_moveForward
;!    _cycle->_rotateLeft
;!    _cycle->_rotateRight
;!    _cycle->_turnLeft
;!    _cycle->_turnRight
;!    _turnRight->_runLeftMotor
;!    _turnRight->_runRightMotor
;!    _turnLeft->_runLeftMotor
;!    _turnLeft->_runRightMotor
;!    _stopRightMotor->_changePinState
;!    _stopLeftMotor->_changePinState
;!    _rotateRight->_runLeftMotor
;!    _rotateRight->_runRightMotor
;!    _rotateLeft->_runLeftMotor
;!    _rotateLeft->_runRightMotor
;!    _moveForward->_runLeftMotor
;!    _moveForward->_runRightMotor
;!    _moveBackward->_runLeftMotor
;!    _moveBackward->_runRightMotor
;!    _runRightMotor->_changePinState
;!    _runLeftMotor->_changePinState
;!    _adcCycle->_getElapsedMs
;!    _adcCycle->_getMs
;!    _getMs->_get_gui16TimerMs_Value
;!    _getElapsedMs->_get_gui16TimerMs_Value
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_cycle
;!    _init->_setupPBot
;!    _cycle->_getElapsedMs
;!    _adcCycle->_getElapsedMs
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
;! (0) _main                                                 0     0      0   41951
;!                           _adcCycle
;!                              _cycle
;!                               _init
;!       _set_gblInitialized_FlagValue
;!                           _setupADC
;!                          _setupGpio
;!                         _setupTimer
;! ---------------------------------------------------------------------------------
;! (1) _setupTimer                                           1     1      0       0
;!                                              4 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _setupGpio                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _setupADC                                             3     3      0      45
;!                                              6 BANK0      3     3      0
;!                    _configLowLvlADC
;!       _get_gblInitialized_FlagValue
;! ---------------------------------------------------------------------------------
;! (2) _get_gblInitialized_FlagValue                         2     2      0      23
;!                                              4 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _configLowLvlADC                                      1     1      0       0
;!                                              4 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _set_gblInitialized_FlagValue                         1     1      0       0
;!                                              4 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0    3131
;!                              _getMs
;!                          _setupPBot
;! ---------------------------------------------------------------------------------
;! (2) _setupPBot                                            4     2      2    3029
;!                                             10 BANK0      2     0      2
;!                                              0 BANK1      1     1      0
;!                     _changePinState
;!                          _configPin
;! ---------------------------------------------------------------------------------
;! (3) _configPin                                            6     5      1     934
;!                                              4 BANK0      6     5      1
;! ---------------------------------------------------------------------------------
;! (1) _cycle                                                1     1      0   38215
;!                                              2 BANK1      1     1      0
;!                     _changePinState
;!                       _getElapsedMs
;!                              _getMs
;!                       _moveBackward
;!                        _moveForward
;!                         _rotateLeft
;!                        _rotateRight
;!                       _runLeftMotor
;!                      _runRightMotor
;!                         _stopMotors
;!                           _turnLeft
;!                          _turnRight
;! ---------------------------------------------------------------------------------
;! (2) _turnRight                                            1     1      0    4610
;!                                             11 BANK0      1     1      0
;!                       _runLeftMotor
;!                      _runRightMotor
;! ---------------------------------------------------------------------------------
;! (2) _turnLeft                                             1     1      0    4610
;!                                             11 BANK0      1     1      0
;!                       _runLeftMotor
;!                      _runRightMotor
;! ---------------------------------------------------------------------------------
;! (2) _stopMotors                                           0     0      0    3546
;!                      _stopLeftMotor
;!                     _stopRightMotor
;! ---------------------------------------------------------------------------------
;! (3) _stopRightMotor                                       0     0      0    1773
;!                     _changePinState
;! ---------------------------------------------------------------------------------
;! (3) _stopLeftMotor                                        0     0      0    1773
;!                     _changePinState
;! ---------------------------------------------------------------------------------
;! (2) _rotateRight                                          1     1      0    4632
;!                                             11 BANK0      1     1      0
;!                       _runLeftMotor
;!                      _runRightMotor
;! ---------------------------------------------------------------------------------
;! (2) _rotateLeft                                           1     1      0    4632
;!                                             11 BANK0      1     1      0
;!                       _runLeftMotor
;!                      _runRightMotor
;! ---------------------------------------------------------------------------------
;! (2) _moveForward                                          1     1      0    4632
;!                                             11 BANK0      1     1      0
;!                       _runLeftMotor
;!                      _runRightMotor
;! ---------------------------------------------------------------------------------
;! (2) _moveBackward                                         1     1      0    4632
;!                                             11 BANK0      1     1      0
;!                       _runLeftMotor
;!                      _runRightMotor
;! ---------------------------------------------------------------------------------
;! (3) _runRightMotor                                        2     1      1    2294
;!                                             10 BANK0      1     0      1
;!                     _changePinState
;! ---------------------------------------------------------------------------------
;! (3) _runLeftMotor                                         2     1      1    2294
;!                                             10 BANK0      1     0      1
;!                     _changePinState
;! ---------------------------------------------------------------------------------
;! (3) _changePinState                                       6     5      1    1773
;!                                              4 BANK0      6     5      1
;! ---------------------------------------------------------------------------------
;! (1) _adcCycle                                             0     0      0     560
;!                       _getElapsedMs
;!                              _getMs
;! ---------------------------------------------------------------------------------
;! (2) _getMs                                                4     2      2     102
;!                                              8 BANK0      4     2      2
;!         _get_gblISRLocked_FlagValue
;!             _get_gui16TimerMs_Value
;! ---------------------------------------------------------------------------------
;! (2) _getElapsedMs                                         6     4      2     458
;!                                              8 BANK0      4     2      2
;!                                              0 BANK1      2     2      0
;!         _get_gblISRLocked_FlagValue
;!             _get_gui16TimerMs_Value
;! ---------------------------------------------------------------------------------
;! (3) _get_gui16TimerMs_Value                               4     2      2      34
;!                                              4 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (3) _get_gblISRLocked_FlagValue                           2     2      0      34
;!                                              4 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _isr                                                  4     4      0    5731
;!                                              0 BANK0      4     4      0
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
;!          _inc_gui16TimerUsMSB_Value
;! ---------------------------------------------------------------------------------
;! (7) _inc_gui16TimerUsMSB_Value                            2     0      2      75
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (7) _inc_gui16TimerMs_Value                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _timer8BitISR                                         0     0      0    5656
;!                    _nullTMRFunction *
;!                    _servoController *
;!                  _softDACController *
;! ---------------------------------------------------------------------------------
;! (7) _softDACController                                    2     2      0    2828
;!                                             10 COMMON     2     2      0
;!                             ___bmul
;!                       _set8BitTimer
;!                   i1_changePinState
;! ---------------------------------------------------------------------------------
;! (7) _servoController                                      2     2      0    2828
;!                                             10 COMMON     2     2      0
;!                             ___bmul
;!                       _set8BitTimer
;!                   i1_changePinState
;! ---------------------------------------------------------------------------------
;! (8) i1_changePinState                                     6     5      1     598
;!                                              4 COMMON     6     5      1
;!                             ___bmul (ARG)
;! ---------------------------------------------------------------------------------
;! (8) _set8BitTimer                                         2     1      1     680
;!                                              4 COMMON     2     1      1
;!                             ___bmul (ARG)
;! ---------------------------------------------------------------------------------
;! (8) ___bmul                                               4     3      1    1550
;!                                              0 COMMON     4     3      1
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
;! Estimated maximum stack depth 8
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
;!     _changePinState
;!     _getElapsedMs
;!       _get_gblISRLocked_FlagValue
;!       _get_gui16TimerMs_Value
;!     _getMs
;!       _get_gblISRLocked_FlagValue
;!       _get_gui16TimerMs_Value
;!     _moveBackward
;!       _runLeftMotor
;!         _changePinState
;!       _runRightMotor
;!         _changePinState
;!     _moveForward
;!       _runLeftMotor
;!         _changePinState
;!       _runRightMotor
;!         _changePinState
;!     _rotateLeft
;!       _runLeftMotor
;!         _changePinState
;!       _runRightMotor
;!         _changePinState
;!     _rotateRight
;!       _runLeftMotor
;!         _changePinState
;!       _runRightMotor
;!         _changePinState
;!     _runLeftMotor
;!       _changePinState
;!     _runRightMotor
;!       _changePinState
;!     _stopMotors
;!       _stopLeftMotor
;!         _changePinState
;!       _stopRightMotor
;!         _changePinState
;!     _turnLeft
;!       _runLeftMotor
;!         _changePinState
;!       _runRightMotor
;!         _changePinState
;!     _turnRight
;!       _runLeftMotor
;!         _changePinState
;!       _runRightMotor
;!         _changePinState
;!   _init
;!     _getMs
;!       _get_gblISRLocked_FlagValue
;!       _get_gui16TimerMs_Value
;!     _setupPBot
;!       _changePinState
;!       _configPin
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
;!     _servoController *
;!       ___bmul
;!       _set8BitTimer
;!         ___bmul (ARG)
;!       i1_changePinState
;!         ___bmul (ARG)
;!     _softDACController *
;!       ___bmul
;!       _set8BitTimer
;!         ___bmul (ARG)
;!       i1_changePinState
;!         ___bmul (ARG)
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
;!BANK3               60      0      5C       9       95.8%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       E      11       14.6%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      3      50       7      100.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      C      4C       5       95.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      C       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0     114      12        0.0%
;!ABS                  0      0     114       3        0.0%
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
;;                  2  771[COMMON] int 
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
;; Hardware stack levels required when called:    8
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
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	151
	
l6497:	
	fcall	_setupGpio
	line	153
	fcall	_setupTimer
	line	155
	movlw	(0)
	fcall	_setupADC
	line	162
	
l6499:	
	bsf	(95/8),(95)&7	;volatile
	
l6501:	
	bsf	(94/8),(94)&7	;volatile
	line	163
	fcall	_set_gblInitialized_FlagValue
	line	165
	
l6503:	
	fcall	_init
	line	167
	goto	l6505
	
l773:	
	line	170
	
l6505:	
	fcall	_adcCycle
	line	172
	
l6507:	
	fcall	_cycle
	goto	l6505
	line	173
	
l772:	
	line	167
	goto	l6505
	
l774:	
	line	176
;	Return value of _main is never used
	
l775:	
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
	
l4669:	
	movlw	(0F8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setupTimer+0)+0
	movf	(??_setupTimer+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(129)^080h,f	;volatile
	
l4671:	
	bsf	(129)^080h+(0/8),(0)&7	;volatile
	line	76
	
l4673:	
	bcf	(1037/8)^080h,(1037)&7	;volatile
	
l4675:	
	bcf	(1035/8)^080h,(1035)&7	;volatile
	
l4677:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	84
	
l4679:	
	bcf	(90/8),(90)&7	;volatile
	line	85
	
l4681:	
	bsf	(93/8),(93)&7	;volatile
	line	86
	
l1355:	
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
	
l4663:	
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
	
l4665:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	74
	
l4667:	
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
	
l995:	
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
;;  eVrefSource     1    8[BANK0 ] enum E1462
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
	
l4683:	
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
	
l4685:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setupADC@eVrefSource),w
	xorlw	01h
	skipz
	goto	u3921
	goto	u3920
u3921:
	goto	l4691
u3920:
	line	236
	
l4687:	
	movlw	(0F0h)
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(159)^080h,f	;volatile
	
l4689:	
	bsf	(159)^080h+(0/8),(0)&7	;volatile
	line	240
	goto	l4695
	line	241
	
l915:	
	line	244
	
l4691:	
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(159)^080h,f	;volatile
	
l4693:	
	movf	(159)^080h,w	;volatile
	goto	l4695
	line	248
	
l916:	
	line	250
	
l4695:	
	fcall	_configLowLvlADC
	line	252
	
l4697:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_eCurrentChannel)
	line	253
	
l4699:	
	movlw	(0C7h)
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	andwf	(31),f	;volatile
	
l4701:	
	movf	(_eCurrentChannel),w
	movwf	(??_setupADC+0)+0
	movlw	(03h)-1
u3935:
	clrc
	rlf	(??_setupADC+0)+0,f
	addlw	-1
	skipz
	goto	u3935
	clrc
	rlf	(??_setupADC+0)+0,w
	andlw	038h
	movwf	(??_setupADC+1)+0
	movf	(??_setupADC+1)+0,w
	iorwf	(31),f	;volatile
	line	255
	
l4703:	
	bcf	(102/8),(102)&7	;volatile
	line	256
	
l4705:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1126/8)^080h,(1126)&7	;volatile
	line	258
	
l4707:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7	;volatile
	line	259
	goto	l917
	
l918:	
	
l917:	
	btfsc	(95/8),(95)&7	;volatile
	goto	u3941
	goto	u3940
u3941:
	goto	l921
u3940:
	
l4709:	
	fcall	_get_gblInitialized_FlagValue
	xorlw	01h
	skipnz
	goto	u3951
	goto	u3950
u3951:
	goto	l917
u3950:
	goto	l921
	
l920:	
	
l921:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	
l4711:	
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_setupADC+0)+0,f
u6277:
decfsz	(??_setupADC+0)+0,f
	goto	u6277
	nop
opt asmopt_on

	
l4713:	
	bsf	(95/8),(95)&7	;volatile
	
l4715:	
	bsf	(94/8),(94)&7	;volatile
	line	261
	
l4717:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	262
	
l922:	
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
;;  blTemp          1    5[BANK0 ] unsigned char 
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
	
l4347:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gblInitialized),w	;volatile
	movwf	(??_get_gblInitialized_FlagValue+0)+0
	movf	(??_get_gblInitialized_FlagValue+0)+0,w
	movwf	(get_gblInitialized_FlagValue@blTemp)
	line	69
	movf	(get_gblInitialized_FlagValue@blTemp),w
	goto	l695
	
l4349:	
	line	70
	
l695:	
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
	
l4373:	
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_configLowLvlADC+0)+0
	movf	(??_configLowLvlADC+0)+0,w
	andwf	(31),f	;volatile
	
l4375:	
	bsf	(31)+(7/8),(7)&7	;volatile
	
l4377:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1278/8)^080h,(1278)&7	;volatile
	line	100
	
l4379:	
	bsf	(1279/8)^080h,(1279)&7	;volatile
	line	101
	
l1251:	
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
	
l4641:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_set_gblInitialized_FlagValue+0)+0
	movf	(??_set_gblInitialized_FlagValue+0)+0,w
	movwf	(_gblInitialized)	;volatile
	line	63
	
l692:	
	return
	opt stack 0
GLOBAL	__end_of_set_gblInitialized_FlagValue
	__end_of_set_gblInitialized_FlagValue:
	signat	_set_gblInitialized_FlagValue,88
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 34 in file "C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\CrazyMobot.phr.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_getMs
;;		_setupPBot
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\CrazyMobot.phr.c"
	line	34
global __ptext7
__ptext7:	;psect for function _init
psect	text7
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\CrazyMobot.phr.c"
	line	34
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 1
; Regs used in _init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	36
	
l6227:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(setupPBot@blObstaclePolarity)
	clrf	(setupPBot@blLinePolarity)
	incf	(setupPBot@blLinePolarity),f
	movlw	(0)
	fcall	_setupPBot
	line	40
	
l6229:	
	fcall	_getMs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_getMs)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_StateDuration)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_getMs)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((_StateDuration)^080h)+1
	clrf	2+((_StateDuration)^080h)
	clrf	3+((_StateDuration)^080h)
	line	41
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_setupPBot

;; *************** function _setupPBot *****************
;; Defined at:
;;		line 72 in file "libraries/Mobot_Lib\Mobot_Lib.c"
;; Parameters:    Size  Location     Type
;;  ui8Mode         1    wreg     unsigned char 
;;  blObstaclePo    1   10[BANK0 ] unsigned char 
;;  blLinePolari    1   11[BANK0 ] unsigned char 
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
;;      Temps:          0       0       1       0       0
;;      Totals:         0       2       1       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_changePinState
;;		_configPin
;; This function is called by:
;;		_init
;;		_setupPBotUART
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	72
global __ptext8
__ptext8:	;psect for function _setupPBot
psect	text8
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	72
	global	__size_of_setupPBot
	__size_of_setupPBot	equ	__end_of_setupPBot-_setupPBot
	
_setupPBot:	
;incstack = 0
	opt	stack 1
; Regs used in _setupPBot: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	74
	
l6169:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setupPBot@blObstaclePolarity)
	movlw	0
	skipnz
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_setupPBot+0)^080h+0
	movf	(??_setupPBot+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_blObstacleSensorPolarity)
	line	75
	movf	(setupPBot@blLinePolarity),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_setupPBot+0)^080h+0
	movf	(??_setupPBot+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_blLineSensorPolarity)
	line	77
	
l6171:	
	clrf	(configPin@ui8Direction)
	incf	(configPin@ui8Direction),f
	movlw	(03h)
	fcall	_configPin
	line	78
	
l6173:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	incf	(configPin@ui8Direction),f
	movlw	(0)
	fcall	_configPin
	line	79
	
l6175:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	incf	(configPin@ui8Direction),f
	movlw	(04h)
	fcall	_configPin
	line	81
	
l6177:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	incf	(configPin@ui8Direction),f
	movlw	(09h)
	fcall	_configPin
	line	82
	
l6179:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	incf	(configPin@ui8Direction),f
	movlw	(05h)
	fcall	_configPin
	line	83
	
l6181:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	incf	(configPin@ui8Direction),f
	movlw	(0Ah)
	fcall	_configPin
	line	85
	
l6183:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(08h)
	fcall	_changePinState
	line	86
	
l6185:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(01h)
	fcall	_changePinState
	line	87
	
l6187:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(02h)
	fcall	_changePinState
	line	88
	
l6189:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(0Bh)
	fcall	_changePinState
	line	89
	
l6191:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	movlw	(08h)
	fcall	_configPin
	line	90
	
l6193:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	movlw	(01h)
	fcall	_configPin
	line	91
	
l6195:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	movlw	(02h)
	fcall	_configPin
	line	92
	
l6197:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(configPin@ui8Direction)
	movlw	(0Bh)
	fcall	_configPin
	line	107
	
l349:	
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
;;  ui8Direction    1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Pin          1    9[BANK0 ] unsigned char 
;;  pui8PortDirR    2    7[BANK0 ] PTR unsigned char 
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
;;		_setupSoftDAC
;;		_removeSoftDAC
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_gpio.c"
	line	66
global __ptext9
__ptext9:	;psect for function _configPin
psect	text9
	file	"hardware/cores/lib\hal_gpio.c"
	line	66
	global	__size_of_configPin
	__size_of_configPin	equ	__end_of_configPin-_configPin
	
_configPin:	
;incstack = 0
	opt	stack 1
; Regs used in _configPin: [wreg-fsr0h+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(configPin@ui8Pin)
	line	68
	
l4041:	
	clrf	(configPin@pui8PortDirReg)
	clrf	(configPin@pui8PortDirReg+1)
	line	71
	
l4043:	
	movlw	(08h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2971
	goto	u2970
u2971:
	goto	l4047
u2970:
	line	73
	
l4045:	
	movlw	high(135)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(135)
	movwf	(configPin@pui8PortDirReg)
	line	77
	goto	l4079
	line	79
	
l1274:	
	
l4047:	
	movlw	(0Eh)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2981
	goto	u2980
u2981:
	goto	l4053
u2980:
	line	81
	
l4049:	
	movlw	low(08h)
	subwf	(configPin@ui8Pin),f
	line	82
	
l4051:	
	movlw	high(134)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(134)
	movwf	(configPin@pui8PortDirReg)
	line	86
	goto	l4079
	line	88
	
l1276:	
	
l4053:	
	movlw	(015h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u2991
	goto	u2990
u2991:
	goto	l4073
u2990:
	line	90
	
l4055:	
	movlw	low(0Eh)
	subwf	(configPin@ui8Pin),f
	line	93
	
l4057:	
	movlw	(03h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u3001
	goto	u3000
u3001:
	goto	l4061
u3000:
	line	95
	
l4059:	
	movlw	high(133)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(133)
	movwf	(configPin@pui8PortDirReg)
	line	99
	goto	l4079
	line	101
	
l1279:	
	
l4061:	
	movf	(configPin@ui8Pin),w
	xorlw	03h
	skipz
	goto	u3011
	goto	u3010
u3011:
	goto	l4067
u3010:
	line	103
	
l4063:	
	movlw	(02h)
	movwf	(??_configPin+0)+0
	movf	(??_configPin+0)+0,w
	addwf	(configPin@ui8Pin),f
	line	104
	
l4065:	
	movlw	high(133)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(133)
	movwf	(configPin@pui8PortDirReg)
	line	108
	goto	l4079
	line	110
	
l1281:	
	
l4067:	
	movlw	(07h)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u3021
	goto	u3020
u3021:
	goto	l4079
u3020:
	line	112
	
l4069:	
	movlw	low(04h)
	subwf	(configPin@ui8Pin),f
	line	113
	
l4071:	
	movlw	high(137)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(137)
	movwf	(configPin@pui8PortDirReg)
	line	117
	goto	l4079
	line	118
	
l1283:	
	goto	l4079
	line	124
	
l1284:	
	goto	l4079
	
l1282:	
	goto	l4079
	
l1280:	
	line	125
	goto	l4079
	line	127
	
l1278:	
	
l4073:	
	movlw	(01Dh)
	subwf	(configPin@ui8Pin),w
	skipnc
	goto	u3031
	goto	u3030
u3031:
	goto	l4079
u3030:
	line	129
	
l4075:	
	movlw	low(015h)
	subwf	(configPin@ui8Pin),f
	line	130
	
l4077:	
	movlw	high(136)
	movwf	(configPin@pui8PortDirReg+1)
	movlw	low(136)
	movwf	(configPin@pui8PortDirReg)
	line	134
	goto	l4079
	line	135
	
l1286:	
	goto	l4079
	line	141
	
l1287:	
	goto	l4079
	
l1285:	
	goto	l4079
	
l1277:	
	goto	l4079
	
l1275:	
	line	144
	
l4079:	
	movf	(configPin@pui8PortDirReg+1),w
	iorwf	(configPin@pui8PortDirReg),w
	skipnz
	goto	u3041
	goto	u3040
u3041:
	goto	l1292
u3040:
	line	146
	
l4081:	
	movf	(configPin@ui8Direction),w
	xorlw	01h
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l4085
u3050:
	line	148
	
l4083:	
	movlw	(01h)
	movwf	(??_configPin+0)+0
	incf	(configPin@ui8Pin),w
	goto	u3064
u3065:
	clrc
	rlf	(??_configPin+0)+0,f
u3064:
	addlw	-1
	skipz
	goto	u3065
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
	goto	l1292
	line	153
	
l1289:	
	line	155
	
l4085:	
	movlw	(01h)
	movwf	(??_configPin+0)+0
	incf	(configPin@ui8Pin),w
	goto	u3074
u3075:
	clrc
	rlf	(??_configPin+0)+0,f
u3074:
	addlw	-1
	skipz
	goto	u3075
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
	goto	l1292
	line	159
	
l1290:	
	line	160
	goto	l1292
	line	161
	
l1288:	
	goto	l1292
	line	167
	
l1291:	
	line	168
	
l1292:	
	return
	opt stack 0
GLOBAL	__end_of_configPin
	__end_of_configPin:
	signat	_configPin,8312
	global	_cycle

;; *************** function _cycle *****************
;; Defined at:
;;		line 43 in file "C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\CrazyMobot.phr.c"
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
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_changePinState
;;		_getElapsedMs
;;		_getMs
;;		_moveBackward
;;		_moveForward
;;		_rotateLeft
;;		_rotateRight
;;		_runLeftMotor
;;		_runRightMotor
;;		_stopMotors
;;		_turnLeft
;;		_turnRight
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\CrazyMobot.phr.c"
	line	43
global __ptext10
__ptext10:	;psect for function _cycle
psect	text10
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out\CrazyMobot.phr.c"
	line	43
	global	__size_of_cycle
	__size_of_cycle	equ	__end_of_cycle-_cycle
	
_cycle:	
;incstack = 0
	opt	stack 0
; Regs used in _cycle: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	46
	
l6231:	
	goto	l6265
	line	48
	
l37:	
	line	50
	
l6233:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(runRightMotor@blDirection)
	movlw	(0FFh)
	fcall	_runRightMotor
	line	51
	goto	l6267
	line	53
	
l39:	
	line	55
	
l6235:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(runRightMotor@blDirection)
	incf	(runRightMotor@blDirection),f
	movlw	(0FFh)
	fcall	_runRightMotor
	line	56
	goto	l6267
	line	58
	
l40:	
	line	60
	
l6237:	
	fcall	_stopMotors
	line	61
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(runLeftMotor@blDirection)
	movlw	(0FFh)
	fcall	_runLeftMotor
	line	62
	goto	l6267
	line	64
	
l41:	
	line	66
	
l6239:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(runLeftMotor@blDirection)
	incf	(runLeftMotor@blDirection),f
	movlw	(0FFh)
	fcall	_runLeftMotor
	line	67
	goto	l6267
	line	69
	
l42:	
	line	71
	
l6241:	
	movlw	(096h)
	fcall	_moveForward
	line	72
	goto	l6267
	line	74
	
l43:	
	line	76
	
l6243:	
	movlw	(04Bh)
	fcall	_moveForward
	line	77
	goto	l6267
	line	79
	
l44:	
	line	81
	
l6245:	
	movlw	(04Bh)
	fcall	_moveBackward
	line	82
	goto	l6267
	line	84
	
l45:	
	line	86
	
l6247:	
	movlw	(096h)
	fcall	_rotateLeft
	line	87
	goto	l6267
	line	89
	
l46:	
	line	91
	
l6249:	
	movlw	(096h)
	fcall	_rotateRight
	line	92
	goto	l6267
	line	94
	
l47:	
	line	96
	
l6251:	
	movlw	(096h)
	fcall	_turnLeft
	line	97
	goto	l6267
	line	99
	
l48:	
	line	101
	
l6253:	
	movlw	(096h)
	fcall	_turnRight
	line	102
	goto	l6267
	line	104
	
l49:	
	line	107
	
l6255:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_StateDuration+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getElapsedMs@ui16TimeMs+1)
	addwf	(getElapsedMs@ui16TimeMs+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_StateDuration)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getElapsedMs@ui16TimeMs)
	addwf	(getElapsedMs@ui16TimeMs)

	fcall	_getElapsedMs
	movlw	high(02EFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(1+(?_getElapsedMs)),w
	movlw	low(02EFh)
	skipnz
	subwf	(0+(?_getElapsedMs)),w
	skipnc
	goto	u5891
	goto	u5890
u5891:
	goto	l6259
u5890:
	line	109
	
l6257:	
	movlw	(0FFh)
	fcall	_rotateRight
	line	110
	goto	l51
	line	111
	
l50:	
	line	113
	
l6259:	
	movlw	(0FFh)
	fcall	_rotateLeft
	line	114
	
l51:	
	line	115
	fcall	_stopMotors
	line	116
	goto	l6267
	line	118
	
l52:	
	line	120
	
l6261:	
	fcall	_stopMotors
	line	121
	goto	l6267
	line	123
	
l6263:	
	goto	l6267
	line	46
	
l36:	
	
l6265:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_State),w
	; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 0 to 11
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
; direct_byte           44     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l6233
	xorlw	1^0	; case 1
	skipnz
	goto	l6235
	xorlw	2^1	; case 2
	skipnz
	goto	l6237
	xorlw	3^2	; case 3
	skipnz
	goto	l6239
	xorlw	4^3	; case 4
	skipnz
	goto	l6241
	xorlw	5^4	; case 5
	skipnz
	goto	l6243
	xorlw	6^5	; case 6
	skipnz
	goto	l6245
	xorlw	7^6	; case 7
	skipnz
	goto	l6247
	xorlw	8^7	; case 8
	skipnz
	goto	l6249
	xorlw	9^8	; case 9
	skipnz
	goto	l6251
	xorlw	10^9	; case 10
	skipnz
	goto	l6253
	xorlw	11^10	; case 11
	skipnz
	goto	l6255
	goto	l6261
	opt asmopt_on

	line	123
	
l38:	
	line	126
	
l6267:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_StateDuration+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getElapsedMs@ui16TimeMs+1)
	addwf	(getElapsedMs@ui16TimeMs+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_StateDuration)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getElapsedMs@ui16TimeMs)
	addwf	(getElapsedMs@ui16TimeMs)

	fcall	_getElapsedMs
	movlw	high(05DCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(1+(?_getElapsedMs)),w
	movlw	low(05DCh)
	skipnz
	subwf	(0+(?_getElapsedMs)),w
	skipc
	goto	u5901
	goto	u5900
u5901:
	goto	l56
u5900:
	line	128
	
l6269:	
	fcall	_getMs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_getMs)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_StateDuration)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_getMs)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((_StateDuration)^080h)+1
	clrf	2+((_StateDuration)^080h)
	clrf	3+((_StateDuration)^080h)
	line	130
	
l6271:	
	movlw	(02h)
	movwf	(??_cycle+0)^080h+0
	movf	(??_cycle+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(changePinState@eOperation)
	movlw	(01Ch)
	fcall	_changePinState
	line	132
	
l6273:	
	movlw	(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_State),w
	skipnc
	goto	u5911
	goto	u5910
u5911:
	goto	l6277
u5910:
	line	134
	
l6275:	
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_cycle+0)^080h+0
	movf	(??_cycle+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_State),f
	line	135
	goto	l56
	line	136
	
l54:	
	line	138
	
l6277:	
	clrf	(_State)
	goto	l56
	line	139
	
l55:	
	goto	l56
	line	140
	
l53:	
	line	141
	
l56:	
	return
	opt stack 0
GLOBAL	__end_of_cycle
	__end_of_cycle:
	signat	_cycle,88
	global	_turnRight

;; *************** function _turnRight *****************
;; Defined at:
;;		line 128 in file "libraries/Mobot_Lib\Mobot_Lib.c"
;; Parameters:    Size  Location     Type
;;  ui8Speed        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Speed        1   11[BANK0 ] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_runLeftMotor
;;		_runRightMotor
;; This function is called by:
;;		_cycle
;;		_checkPBotMotionCommands
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	128
global __ptext11
__ptext11:	;psect for function _turnRight
psect	text11
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	128
	global	__size_of_turnRight
	__size_of_turnRight	equ	__end_of_turnRight-_turnRight
	
_turnRight:	
;incstack = 0
	opt	stack 0
; Regs used in _turnRight: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(turnRight@ui8Speed)
	line	130
	
l4227:	
	clrf	(runRightMotor@blDirection)
	decf	(turnRight@ui8Speed),w
	xorlw	0ffh
	addlw	0FFh
	fcall	_runRightMotor
	line	131
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(runLeftMotor@blDirection)
	movlw	(0FFh)
	fcall	_runLeftMotor
	line	132
	
l361:	
	return
	opt stack 0
GLOBAL	__end_of_turnRight
	__end_of_turnRight:
	signat	_turnRight,4216
	global	_turnLeft

;; *************** function _turnLeft *****************
;; Defined at:
;;		line 122 in file "libraries/Mobot_Lib\Mobot_Lib.c"
;; Parameters:    Size  Location     Type
;;  ui8Speed        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Speed        1   11[BANK0 ] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_runLeftMotor
;;		_runRightMotor
;; This function is called by:
;;		_cycle
;;		_checkPBotMotionCommands
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	122
global __ptext12
__ptext12:	;psect for function _turnLeft
psect	text12
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	122
	global	__size_of_turnLeft
	__size_of_turnLeft	equ	__end_of_turnLeft-_turnLeft
	
_turnLeft:	
;incstack = 0
	opt	stack 0
; Regs used in _turnLeft: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(turnLeft@ui8Speed)
	line	124
	
l4225:	
	clrf	(runRightMotor@blDirection)
	movlw	(0FFh)
	fcall	_runRightMotor
	line	125
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(runLeftMotor@blDirection)
	decf	(turnLeft@ui8Speed),w
	xorlw	0ffh
	addlw	0FFh
	fcall	_runLeftMotor
	line	126
	
l358:	
	return
	opt stack 0
GLOBAL	__end_of_turnLeft
	__end_of_turnLeft:
	signat	_turnLeft,4216
	global	_stopMotors

;; *************** function _stopMotors *****************
;; Defined at:
;;		line 146 in file "libraries/Mobot_Lib\Mobot_Lib.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_stopLeftMotor
;;		_stopRightMotor
;; This function is called by:
;;		_cycle
;;		_interpretDProtocolCommands
;;		_checkPBotMotionCommands
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	146
global __ptext13
__ptext13:	;psect for function _stopMotors
psect	text13
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	146
	global	__size_of_stopMotors
	__size_of_stopMotors	equ	__end_of_stopMotors-_stopMotors
	
_stopMotors:	
;incstack = 0
	opt	stack 0
; Regs used in _stopMotors: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	148
	
l4215:	
	fcall	_stopRightMotor
	line	149
	fcall	_stopLeftMotor
	line	150
	
l370:	
	return
	opt stack 0
GLOBAL	__end_of_stopMotors
	__end_of_stopMotors:
	signat	_stopMotors,88
	global	_stopRightMotor

;; *************** function _stopRightMotor *****************
;; Defined at:
;;		line 141 in file "libraries/Mobot_Lib\LowLevelMobot.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_changePinState
;; This function is called by:
;;		_stopMotors
;;		_checkPBotMotionCommands
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"libraries/Mobot_Lib\LowLevelMobot.c"
	line	141
global __ptext14
__ptext14:	;psect for function _stopRightMotor
psect	text14
	file	"libraries/Mobot_Lib\LowLevelMobot.c"
	line	141
	global	__size_of_stopRightMotor
	__size_of_stopRightMotor	equ	__end_of_stopRightMotor-_stopRightMotor
	
_stopRightMotor:	
;incstack = 0
	opt	stack 0
; Regs used in _stopRightMotor: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	143
	
l4025:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(08h)
	fcall	_changePinState
	line	145
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(01h)
	fcall	_changePinState
	line	152
	
l284:	
	return
	opt stack 0
GLOBAL	__end_of_stopRightMotor
	__end_of_stopRightMotor:
	signat	_stopRightMotor,88
	global	_stopLeftMotor

;; *************** function _stopLeftMotor *****************
;; Defined at:
;;		line 154 in file "libraries/Mobot_Lib\LowLevelMobot.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_changePinState
;; This function is called by:
;;		_stopMotors
;;		_checkPBotMotionCommands
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	154
global __ptext15
__ptext15:	;psect for function _stopLeftMotor
psect	text15
	file	"libraries/Mobot_Lib\LowLevelMobot.c"
	line	154
	global	__size_of_stopLeftMotor
	__size_of_stopLeftMotor	equ	__end_of_stopLeftMotor-_stopLeftMotor
	
_stopLeftMotor:	
;incstack = 0
	opt	stack 0
; Regs used in _stopLeftMotor: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	156
	
l4027:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(0Bh)
	fcall	_changePinState
	line	158
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(02h)
	fcall	_changePinState
	line	165
	
l287:	
	return
	opt stack 0
GLOBAL	__end_of_stopLeftMotor
	__end_of_stopLeftMotor:
	signat	_stopLeftMotor,88
	global	_rotateRight

;; *************** function _rotateRight *****************
;; Defined at:
;;		line 140 in file "libraries/Mobot_Lib\Mobot_Lib.c"
;; Parameters:    Size  Location     Type
;;  ui8Speed        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Speed        1   11[BANK0 ] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_runLeftMotor
;;		_runRightMotor
;; This function is called by:
;;		_cycle
;;		_checkPBotMotionCommands
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	140
global __ptext16
__ptext16:	;psect for function _rotateRight
psect	text16
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	140
	global	__size_of_rotateRight
	__size_of_rotateRight	equ	__end_of_rotateRight-_rotateRight
	
_rotateRight:	
;incstack = 0
	opt	stack 0
; Regs used in _rotateRight: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(rotateRight@ui8Speed)
	line	142
	
l4223:	
	clrf	(runRightMotor@blDirection)
	incf	(runRightMotor@blDirection),f
	movf	(rotateRight@ui8Speed),w
	fcall	_runRightMotor
	line	143
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(runLeftMotor@blDirection)
	movf	(rotateRight@ui8Speed),w
	fcall	_runLeftMotor
	line	144
	
l367:	
	return
	opt stack 0
GLOBAL	__end_of_rotateRight
	__end_of_rotateRight:
	signat	_rotateRight,4216
	global	_rotateLeft

;; *************** function _rotateLeft *****************
;; Defined at:
;;		line 134 in file "libraries/Mobot_Lib\Mobot_Lib.c"
;; Parameters:    Size  Location     Type
;;  ui8Speed        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Speed        1   11[BANK0 ] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_runLeftMotor
;;		_runRightMotor
;; This function is called by:
;;		_cycle
;;		_checkPBotMotionCommands
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	line	134
global __ptext17
__ptext17:	;psect for function _rotateLeft
psect	text17
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	134
	global	__size_of_rotateLeft
	__size_of_rotateLeft	equ	__end_of_rotateLeft-_rotateLeft
	
_rotateLeft:	
;incstack = 0
	opt	stack 0
; Regs used in _rotateLeft: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(rotateLeft@ui8Speed)
	line	136
	
l4221:	
	clrf	(runRightMotor@blDirection)
	movf	(rotateLeft@ui8Speed),w
	fcall	_runRightMotor
	line	137
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(runLeftMotor@blDirection)
	incf	(runLeftMotor@blDirection),f
	movf	(rotateLeft@ui8Speed),w
	fcall	_runLeftMotor
	line	138
	
l364:	
	return
	opt stack 0
GLOBAL	__end_of_rotateLeft
	__end_of_rotateLeft:
	signat	_rotateLeft,4216
	global	_moveForward

;; *************** function _moveForward *****************
;; Defined at:
;;		line 110 in file "libraries/Mobot_Lib\Mobot_Lib.c"
;; Parameters:    Size  Location     Type
;;  ui8Speed        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Speed        1   11[BANK0 ] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_runLeftMotor
;;		_runRightMotor
;; This function is called by:
;;		_cycle
;;		_checkPBotMotionCommands
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	110
global __ptext18
__ptext18:	;psect for function _moveForward
psect	text18
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	110
	global	__size_of_moveForward
	__size_of_moveForward	equ	__end_of_moveForward-_moveForward
	
_moveForward:	
;incstack = 0
	opt	stack 0
; Regs used in _moveForward: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(moveForward@ui8Speed)
	line	112
	
l4217:	
	clrf	(runRightMotor@blDirection)
	movf	(moveForward@ui8Speed),w
	fcall	_runRightMotor
	line	113
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(runLeftMotor@blDirection)
	movf	(moveForward@ui8Speed),w
	fcall	_runLeftMotor
	line	114
	
l352:	
	return
	opt stack 0
GLOBAL	__end_of_moveForward
	__end_of_moveForward:
	signat	_moveForward,4216
	global	_moveBackward

;; *************** function _moveBackward *****************
;; Defined at:
;;		line 116 in file "libraries/Mobot_Lib\Mobot_Lib.c"
;; Parameters:    Size  Location     Type
;;  ui8Speed        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Speed        1   11[BANK0 ] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_runLeftMotor
;;		_runRightMotor
;; This function is called by:
;;		_cycle
;;		_checkPBotMotionCommands
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	line	116
global __ptext19
__ptext19:	;psect for function _moveBackward
psect	text19
	file	"libraries/Mobot_Lib\Mobot_Lib.c"
	line	116
	global	__size_of_moveBackward
	__size_of_moveBackward	equ	__end_of_moveBackward-_moveBackward
	
_moveBackward:	
;incstack = 0
	opt	stack 0
; Regs used in _moveBackward: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(moveBackward@ui8Speed)
	line	118
	
l4219:	
	clrf	(runRightMotor@blDirection)
	incf	(runRightMotor@blDirection),f
	movf	(moveBackward@ui8Speed),w
	fcall	_runRightMotor
	line	119
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(runLeftMotor@blDirection)
	incf	(runLeftMotor@blDirection),f
	movf	(moveBackward@ui8Speed),w
	fcall	_runLeftMotor
	line	120
	
l355:	
	return
	opt stack 0
GLOBAL	__end_of_moveBackward
	__end_of_moveBackward:
	signat	_moveBackward,4216
	global	_runRightMotor

;; *************** function _runRightMotor *****************
;; Defined at:
;;		line 55 in file "libraries/Mobot_Lib\LowLevelMobot.c"
;; Parameters:    Size  Location     Type
;;  ui8Speed        1    wreg     unsigned char 
;;  blDirection     1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Speed        1    0[COMMON] unsigned char 
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_changePinState
;; This function is called by:
;;		_cycle
;;		_moveForward
;;		_moveBackward
;;		_turnLeft
;;		_turnRight
;;		_rotateLeft
;;		_rotateRight
;;		_checkPBotMotionCommands
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"libraries/Mobot_Lib\LowLevelMobot.c"
	line	55
global __ptext20
__ptext20:	;psect for function _runRightMotor
psect	text20
	file	"libraries/Mobot_Lib\LowLevelMobot.c"
	line	55
	global	__size_of_runRightMotor
	__size_of_runRightMotor	equ	__end_of_runRightMotor-_runRightMotor
	
_runRightMotor:	
;incstack = 0
	opt	stack 0
; Regs used in _runRightMotor: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	57
	
l4001:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(runRightMotor@blDirection),w
	xorlw	01h
	skipz
	goto	u2921
	goto	u2920
u2921:
	goto	l4005
u2920:
	line	59
	
l4003:	
	clrf	(changePinState@eOperation)
	movlw	(08h)
	fcall	_changePinState
	line	60
	goto	l4007
	line	61
	
l270:	
	line	63
	
l4005:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(08h)
	fcall	_changePinState
	goto	l4007
	line	64
	
l271:	
	line	68
	
l4007:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(runRightMotor@blDirection),w
	xorlw	01h
	skipz
	goto	u2931
	goto	u2930
u2931:
	goto	l4011
u2930:
	line	70
	
l4009:	
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(01h)
	fcall	_changePinState
	line	71
	goto	l274
	line	72
	
l272:	
	line	74
	
l4011:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	movlw	(01h)
	fcall	_changePinState
	goto	l274
	line	75
	
l273:	
	line	96
	
l274:	
	return
	opt stack 0
GLOBAL	__end_of_runRightMotor
	__end_of_runRightMotor:
	signat	_runRightMotor,8312
	global	_runLeftMotor

;; *************** function _runLeftMotor *****************
;; Defined at:
;;		line 98 in file "libraries/Mobot_Lib\LowLevelMobot.c"
;; Parameters:    Size  Location     Type
;;  ui8Speed        1    wreg     unsigned char 
;;  blDirection     1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Speed        1    0[COMMON] unsigned char 
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_changePinState
;; This function is called by:
;;		_cycle
;;		_moveForward
;;		_moveBackward
;;		_turnLeft
;;		_turnRight
;;		_rotateLeft
;;		_rotateRight
;;		_checkPBotMotionCommands
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	98
global __ptext21
__ptext21:	;psect for function _runLeftMotor
psect	text21
	file	"libraries/Mobot_Lib\LowLevelMobot.c"
	line	98
	global	__size_of_runLeftMotor
	__size_of_runLeftMotor	equ	__end_of_runLeftMotor-_runLeftMotor
	
_runLeftMotor:	
;incstack = 0
	opt	stack 0
; Regs used in _runLeftMotor: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	100
	
l4013:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(runLeftMotor@blDirection),w
	xorlw	01h
	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l4017
u2940:
	line	102
	
l4015:	
	clrf	(changePinState@eOperation)
	movlw	(0Bh)
	fcall	_changePinState
	line	103
	goto	l4019
	line	104
	
l277:	
	line	106
	
l4017:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(0Bh)
	fcall	_changePinState
	goto	l4019
	line	107
	
l278:	
	line	111
	
l4019:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(runLeftMotor@blDirection),w
	xorlw	01h
	skipz
	goto	u2951
	goto	u2950
u2951:
	goto	l4023
u2950:
	line	113
	
l4021:	
	clrf	(changePinState@eOperation)
	incf	(changePinState@eOperation),f
	movlw	(02h)
	fcall	_changePinState
	line	114
	goto	l281
	line	115
	
l279:	
	line	117
	
l4023:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(changePinState@eOperation)
	movlw	(02h)
	fcall	_changePinState
	goto	l281
	line	118
	
l280:	
	line	139
	
l281:	
	return
	opt stack 0
GLOBAL	__end_of_runLeftMotor
	__end_of_runLeftMotor:
	signat	_runLeftMotor,8312
	global	_changePinState

;; *************** function _changePinState *****************
;; Defined at:
;;		line 188 in file "hardware/cores/lib\hal_gpio.c"
;; Parameters:    Size  Location     Type
;;  ui8Pin          1    wreg     unsigned char 
;;  eOperation      1    4[BANK0 ] enum E1426
;; Auto vars:     Size  Location     Type
;;  ui8Pin          1    9[BANK0 ] unsigned char 
;;  pui8PortReg     2    7[BANK0 ] PTR unsigned char 
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
;;		_cycle
;;		_runRightMotor
;;		_runLeftMotor
;;		_stopRightMotor
;;		_stopLeftMotor
;;		_setupPBot
;;		_setupSoftDAC
;;		_setSoftDAC
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_gpio.c"
	line	188
global __ptext22
__ptext22:	;psect for function _changePinState
psect	text22
	file	"hardware/cores/lib\hal_gpio.c"
	line	188
	global	__size_of_changePinState
	__size_of_changePinState	equ	__end_of_changePinState-_changePinState
	
_changePinState:	
;incstack = 0
	opt	stack 1
; Regs used in _changePinState: [wreg-fsr0h+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(changePinState@ui8Pin)
	line	190
	
l3951:	
	clrf	(changePinState@pui8PortReg)
	clrf	(changePinState@pui8PortReg+1)
	line	193
	
l3953:	
	movlw	(08h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2791
	goto	u2790
u2791:
	goto	l3957
u2790:
	line	195
	
l3955:	
	movlw	high(7)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(7)
	movwf	(changePinState@pui8PortReg)
	line	199
	goto	l3989
	line	201
	
l1295:	
	
l3957:	
	movlw	(0Eh)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2801
	goto	u2800
u2801:
	goto	l3963
u2800:
	line	203
	
l3959:	
	movlw	low(08h)
	subwf	(changePinState@ui8Pin),f
	line	204
	
l3961:	
	movlw	high(6)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(6)
	movwf	(changePinState@pui8PortReg)
	line	208
	goto	l3989
	line	210
	
l1297:	
	
l3963:	
	movlw	(015h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2811
	goto	u2810
u2811:
	goto	l3983
u2810:
	line	212
	
l3965:	
	movlw	low(0Eh)
	subwf	(changePinState@ui8Pin),f
	line	215
	
l3967:	
	movlw	(03h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2821
	goto	u2820
u2821:
	goto	l3971
u2820:
	line	217
	
l3969:	
	movlw	high(5)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(changePinState@pui8PortReg)
	line	221
	goto	l3989
	line	223
	
l1300:	
	
l3971:	
	movf	(changePinState@ui8Pin),w
	xorlw	03h
	skipz
	goto	u2831
	goto	u2830
u2831:
	goto	l3977
u2830:
	line	225
	
l3973:	
	movlw	(02h)
	movwf	(??_changePinState+0)+0
	movf	(??_changePinState+0)+0,w
	addwf	(changePinState@ui8Pin),f
	line	226
	
l3975:	
	movlw	high(5)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(changePinState@pui8PortReg)
	line	230
	goto	l3989
	line	232
	
l1302:	
	
l3977:	
	movlw	(07h)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2841
	goto	u2840
u2841:
	goto	l3989
u2840:
	line	234
	
l3979:	
	movlw	low(04h)
	subwf	(changePinState@ui8Pin),f
	line	235
	
l3981:	
	movlw	high(9)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(9)
	movwf	(changePinState@pui8PortReg)
	line	239
	goto	l3989
	line	240
	
l1304:	
	goto	l3989
	line	246
	
l1305:	
	goto	l3989
	
l1303:	
	goto	l3989
	
l1301:	
	line	247
	goto	l3989
	line	249
	
l1299:	
	
l3983:	
	movlw	(01Dh)
	subwf	(changePinState@ui8Pin),w
	skipnc
	goto	u2851
	goto	u2850
u2851:
	goto	l3989
u2850:
	line	251
	
l3985:	
	movlw	low(015h)
	subwf	(changePinState@ui8Pin),f
	line	252
	
l3987:	
	movlw	high(8)
	movwf	(changePinState@pui8PortReg+1)
	movlw	low(8)
	movwf	(changePinState@pui8PortReg)
	line	256
	goto	l3989
	line	257
	
l1307:	
	goto	l3989
	line	263
	
l1308:	
	goto	l3989
	
l1306:	
	goto	l3989
	
l1298:	
	goto	l3989
	
l1296:	
	line	266
	
l3989:	
	movf	(changePinState@pui8PortReg+1),w
	iorwf	(changePinState@pui8PortReg),w
	skipnz
	goto	u2861
	goto	u2860
u2861:
	goto	l1315
u2860:
	line	268
	
l3991:	
	movf	(changePinState@eOperation),f
	skipz
	goto	u2871
	goto	u2870
u2871:
	goto	l3995
u2870:
	line	270
	
l3993:	
	movlw	(01h)
	movwf	(??_changePinState+0)+0
	incf	(changePinState@ui8Pin),w
	goto	u2884
u2885:
	clrc
	rlf	(??_changePinState+0)+0,f
u2884:
	addlw	-1
	skipz
	goto	u2885
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
	goto	l1315
	line	275
	
l1310:	
	
l3995:	
	movf	(changePinState@eOperation),w
	xorlw	01h
	skipz
	goto	u2891
	goto	u2890
u2891:
	goto	l3999
u2890:
	line	277
	
l3997:	
	movlw	(01h)
	movwf	(??_changePinState+0)+0
	incf	(changePinState@ui8Pin),w
	goto	u2904
u2905:
	clrc
	rlf	(??_changePinState+0)+0,f
u2904:
	addlw	-1
	skipz
	goto	u2905
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
	goto	l1315
	line	282
	
l1312:	
	line	284
	
l3999:	
	movlw	(01h)
	movwf	(??_changePinState+0)+0
	incf	(changePinState@ui8Pin),w
	goto	u2914
u2915:
	clrc
	rlf	(??_changePinState+0)+0,f
u2914:
	addlw	-1
	skipz
	goto	u2915
	movf	0+(??_changePinState+0)+0,w
	movwf	(??_changePinState+1)+0
	movf	(changePinState@pui8PortReg),w
	movwf	fsr0
	bsf	status,7
	btfss	(changePinState@pui8PortReg+1),0
	bcf	status,7
	movf	(??_changePinState+1)+0,w
	xorwf	indf,f
	goto	l1315
	line	288
	
l1313:	
	goto	l1315
	
l1311:	
	line	289
	goto	l1315
	line	290
	
l1309:	
	goto	l1315
	line	296
	
l1314:	
	line	297
	
l1315:	
	return
	opt stack 0
GLOBAL	__end_of_changePinState
	__end_of_changePinState:
	signat	_changePinState,8312
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
psect	text23,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_adc.c"
	line	166
global __ptext23
__ptext23:	;psect for function _adcCycle
psect	text23
	file	"hardware/cores/lib\corelib_adc.c"
	line	166
	global	__size_of_adcCycle
	__size_of_adcCycle	equ	__end_of_adcCycle-_adcCycle
	
_adcCycle:	
;incstack = 0
	opt	stack 1
; Regs used in _adcCycle: [wreg+status,2+status,0+pclath+cstack]
	line	173
	
l6295:	
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
	
l6297:	
	movlw	high(05h)
	subwf	(adcCycle@ui16Counter+1)^080h,w
	movlw	low(05h)
	skipnz
	subwf	(adcCycle@ui16Counter)^080h,w
	skipc
	goto	u5941
	goto	u5940
u5941:
	goto	l912
u5940:
	line	183
	
l6299:	
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
	
l6301:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(250/8),(250)&7	;volatile
	goto	u5951
	goto	u5950
u5951:
	goto	l912
u5950:
	line	194
	
l6303:	
	bsf	(250/8),(250)&7	;volatile
	goto	l912
	line	198
	
l911:	
	goto	l912
	line	199
	
l910:	
	line	200
	
l912:	
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
;;  ui16TempBuff    2   10[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    8[BANK0 ] unsigned int 
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
;;		_init
;;		_cycle
;;		_adcCycle
;;		_parseIncomingBytes
;;		_resetDProtocol
;;		_setupTelemetry
;;		_pollSensors
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	128
global __ptext24
__ptext24:	;psect for function _getMs
psect	text24
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	128
	global	__size_of_getMs
	__size_of_getMs	equ	__end_of_getMs-_getMs
	
_getMs:	
;incstack = 0
	opt	stack 1
; Regs used in _getMs: [wreg+status,2+status,0+pclath+cstack]
	line	132
	
l6199:	
	goto	l6201
	
l954:	
	goto	l6201
	
l953:	
	
l6201:	
	fcall	_get_gblISRLocked_FlagValue
	xorlw	01h
	skipnz
	goto	u5871
	goto	u5870
u5871:
	goto	l6201
u5870:
	
l955:	
	line	134
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	135
	
l6203:	
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
	
l6205:	
	bsf	(95/8),(95)&7	;volatile
	
l6207:	
	bsf	(94/8),(94)&7	;volatile
	line	137
	
l6209:	
	movf	(getMs@ui16TempBuff+1),w
	clrf	(?_getMs+1)
	addwf	(?_getMs+1)
	movf	(getMs@ui16TempBuff),w
	clrf	(?_getMs)
	addwf	(?_getMs)

	goto	l956
	
l6211:	
	line	138
	
l956:	
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
;;  ui16TimeMs      2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  ui16TempBuff    2    0[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    8[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       2       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_get_gblISRLocked_FlagValue
;;		_get_gui16TimerMs_Value
;; This function is called by:
;;		_cycle
;;		_adcCycle
;;		_parseIncomingBytes
;;		_pollSensors
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	line	157
global __ptext25
__ptext25:	;psect for function _getElapsedMs
psect	text25
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	157
	global	__size_of_getElapsedMs
	__size_of_getElapsedMs	equ	__end_of_getElapsedMs-_getElapsedMs
	
_getElapsedMs:	
;incstack = 0
	opt	stack 1
; Regs used in _getElapsedMs: [wreg+status,2+status,0+pclath+cstack]
	line	161
	
l6213:	
	goto	l6215
	
l960:	
	goto	l6215
	
l959:	
	
l6215:	
	fcall	_get_gblISRLocked_FlagValue
	xorlw	01h
	skipnz
	goto	u5881
	goto	u5880
u5881:
	goto	l6215
u5880:
	
l961:	
	line	163
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	164
	
l6217:	
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(getElapsedMs@ui16TempBuff)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_getElapsedMs+0)+0,w
	skipnc
	incf	1+(??_getElapsedMs+0)+0,w
	addwf	(1+(?_get_gui16TimerMs_Value)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(getElapsedMs@ui16TempBuff)^080h
	line	165
	
l6219:	
	bsf	(95/8),(95)&7	;volatile
	
l6221:	
	bsf	(94/8),(94)&7	;volatile
	line	166
	
l6223:	
	movf	(getElapsedMs@ui16TempBuff+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_getElapsedMs+1)
	addwf	(?_getElapsedMs+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(getElapsedMs@ui16TempBuff)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_getElapsedMs)
	addwf	(?_getElapsedMs)

	goto	l962
	
l6225:	
	line	167
	
l962:	
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
;;  ui16Temp        2    6[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] unsigned int 
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
psect	text26,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	168
global __ptext26
__ptext26:	;psect for function _get_gui16TimerMs_Value
psect	text26
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	168
	global	__size_of_get_gui16TimerMs_Value
	__size_of_get_gui16TimerMs_Value	equ	__end_of_get_gui16TimerMs_Value-_get_gui16TimerMs_Value
	
_get_gui16TimerMs_Value:	
;incstack = 0
	opt	stack 1
; Regs used in _get_gui16TimerMs_Value: [wreg+status,2+status,0]
	line	171
	
l6165:	
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

	goto	l726
	
l6167:	
	line	173
	
l726:	
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
;;  blTemp          1    5[BANK0 ] unsigned char 
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
psect	text27,local,class=CODE,delta=2,merge=1
	line	82
global __ptext27
__ptext27:	;psect for function _get_gblISRLocked_FlagValue
psect	text27
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	82
	global	__size_of_get_gblISRLocked_FlagValue
	__size_of_get_gblISRLocked_FlagValue	equ	__end_of_get_gblISRLocked_FlagValue-_get_gblISRLocked_FlagValue
	
_get_gblISRLocked_FlagValue:	
;incstack = 0
	opt	stack 1
; Regs used in _get_gblISRLocked_FlagValue: [wreg]
	line	85
	
l6161:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gblISRLocked),w	;volatile
	movwf	(??_get_gblISRLocked_FlagValue+0)+0
	movf	(??_get_gblISRLocked_FlagValue+0)+0,w
	movwf	(get_gblISRLocked_FlagValue@blTemp)
	line	86
	movf	(get_gblISRLocked_FlagValue@blTemp),w
	goto	l704
	
l6163:	
	line	87
	
l704:	
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
psect	text28,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	198
global __ptext28
__ptext28:	;psect for function _isr
psect	text28
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	198
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;incstack = 0
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
psect	text28
	line	203
	
i1l5761:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	204
	
i1l5763:	
	fcall	_set_gblISRLocked_FlagValue
	line	205
	fcall	_timerISR
	line	206
	fcall	_timer16BitISR
	line	207
	
i1l5765:	
	fcall	_timer8BitISR
	line	208
	
i1l5767:	
	fcall	_serialRxISR
	line	209
	fcall	_userIntISR
	line	210
	
i1l5769:	
	fcall	_serialTxISR
	line	211
	
i1l5771:	
	fcall	_adcISR
	line	212
	
i1l5773:	
	fcall	_clr_gblISRLocked_FlagValue
	line	213
	
i1l5775:	
	bsf	(95/8),(95)&7	;volatile
	
i1l5777:	
	bsf	(94/8),(94)&7	;volatile
	line	214
	
i1l778:	
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
psect	text29,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	94
global __ptext29
__ptext29:	;psect for function _userIntISR
psect	text29
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	94
	global	__size_of_userIntISR
	__size_of_userIntISR	equ	__end_of_userIntISR-_userIntISR
	
_userIntISR:	
;incstack = 0
	opt	stack 0
; Regs used in _userIntISR: [wreg+status,2+status,0+pclath+cstack]
	line	97
	
i1l4775:	
	btfss	(92/8),(92)&7	;volatile
	goto	u408_21
	goto	u408_20
u408_21:
	goto	i1l4787
u408_20:
	
i1l4777:	
	btfss	(89/8),(89)&7	;volatile
	goto	u409_21
	goto	u409_20
u409_21:
	goto	i1l4787
u409_20:
	line	99
	
i1l4779:	
	bcf	(92/8),(92)&7	;volatile
	line	101
	
i1l4781:	
	fcall	_extIntISR
	line	103
	
i1l4783:	
	bcf	(89/8),(89)&7	;volatile
	line	104
	
i1l4785:	
	bsf	(92/8),(92)&7	;volatile
	goto	i1l4787
	line	105
	
i1l1209:	
	line	133
	
i1l4787:	
	btfss	(91/8),(91)&7	;volatile
	goto	u410_21
	goto	u410_20
u410_21:
	goto	i1l1211
u410_20:
	
i1l4789:	
	btfss	(88/8),(88)&7	;volatile
	goto	u411_21
	goto	u411_20
u411_21:
	goto	i1l1211
u411_20:
	line	135
	
i1l4791:	
	bcf	(91/8),(91)&7	;volatile
	line	137
	
i1l4793:	
	fcall	_rbIntISR
	line	139
	
i1l4795:	
	bcf	(88/8),(88)&7	;volatile
	line	140
	
i1l4797:	
	bsf	(91/8),(91)&7	;volatile
	goto	i1l1211
	line	141
	
i1l1210:	
	line	142
	
i1l1211:	
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
psect	text30,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	228
global __ptext30
__ptext30:	;psect for function _rbIntISR
psect	text30
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	228
	global	__size_of_rbIntISR
	__size_of_rbIntISR	equ	__end_of_rbIntISR-_rbIntISR
	
_rbIntISR:	
;incstack = 0
	opt	stack 0
; Regs used in _rbIntISR: [wreg+status,2+status,0+pclath+cstack]
	line	232
	
i1l4389:	
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
	
i1l4391:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(4)&7
	goto	u341_21
	goto	u341_20
u341_21:
	goto	i1l4411
u341_20:
	line	236
	
i1l4393:	
	movf	(_eMod4_Mode),w
	xorlw	02h
	skipz
	goto	u342_21
	goto	u342_20
u342_21:
	goto	i1l4399
u342_20:
	
i1l4395:	
	btfsc	(6),(4)&7	;volatile
	goto	u343_21
	goto	u343_20
u343_21:
	goto	i1l4399
u343_20:
	goto	i1l4407
	line	239
	
i1l4397:	
	goto	i1l4407
	line	240
	
i1l1425:	
	
i1l4399:	
	movf	(_eMod4_Mode),w
	xorlw	03h
	skipz
	goto	u344_21
	goto	u344_20
u344_21:
	goto	i1l4405
u344_20:
	
i1l4401:	
	btfss	(6),(4)&7	;volatile
	goto	u345_21
	goto	u345_20
u345_21:
	goto	i1l4405
u345_20:
	goto	i1l4407
	line	243
	
i1l4403:	
	goto	i1l4407
	line	244
	
i1l1427:	
	line	247
	
i1l4405:	
	movf	(_pt2INT4),w
	fcall	i1fptable
	goto	i1l4407
	line	248
	
i1l1428:	
	goto	i1l4407
	
i1l1426:	
	line	250
	
i1l4407:	
	movlw	(0EFh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	251
	
i1l4409:	
	movf	(6),w	;volatile
	andlw	010h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l4411
	line	252
	
i1l1424:	
	line	254
	
i1l4411:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(5)&7
	goto	u346_21
	goto	u346_20
u346_21:
	goto	i1l4431
u346_20:
	line	256
	
i1l4413:	
	movf	(_eMod5_Mode),w
	xorlw	02h
	skipz
	goto	u347_21
	goto	u347_20
u347_21:
	goto	i1l4419
u347_20:
	
i1l4415:	
	btfsc	(6),(5)&7	;volatile
	goto	u348_21
	goto	u348_20
u348_21:
	goto	i1l4419
u348_20:
	goto	i1l4427
	line	259
	
i1l4417:	
	goto	i1l4427
	line	260
	
i1l1430:	
	
i1l4419:	
	movf	(_eMod5_Mode),w
	xorlw	03h
	skipz
	goto	u349_21
	goto	u349_20
u349_21:
	goto	i1l4425
u349_20:
	
i1l4421:	
	btfss	(6),(5)&7	;volatile
	goto	u350_21
	goto	u350_20
u350_21:
	goto	i1l4425
u350_20:
	goto	i1l4427
	line	263
	
i1l4423:	
	goto	i1l4427
	line	264
	
i1l1432:	
	line	267
	
i1l4425:	
	movf	(_pt2INT5),w
	fcall	i1fptable
	goto	i1l4427
	line	268
	
i1l1433:	
	goto	i1l4427
	
i1l1431:	
	line	270
	
i1l4427:	
	movlw	(0DFh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	271
	
i1l4429:	
	movf	(6),w	;volatile
	andlw	020h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l4431
	line	272
	
i1l1429:	
	line	274
	
i1l4431:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(6)&7
	goto	u351_21
	goto	u351_20
u351_21:
	goto	i1l4451
u351_20:
	line	276
	
i1l4433:	
	movf	(_eMod6_Mode),w
	xorlw	02h
	skipz
	goto	u352_21
	goto	u352_20
u352_21:
	goto	i1l4439
u352_20:
	
i1l4435:	
	btfsc	(6),(6)&7	;volatile
	goto	u353_21
	goto	u353_20
u353_21:
	goto	i1l4439
u353_20:
	goto	i1l4447
	line	279
	
i1l4437:	
	goto	i1l4447
	line	280
	
i1l1435:	
	
i1l4439:	
	movf	(_eMod6_Mode),w
	xorlw	03h
	skipz
	goto	u354_21
	goto	u354_20
u354_21:
	goto	i1l4445
u354_20:
	
i1l4441:	
	btfss	(6),(6)&7	;volatile
	goto	u355_21
	goto	u355_20
u355_21:
	goto	i1l4445
u355_20:
	goto	i1l4447
	line	283
	
i1l4443:	
	goto	i1l4447
	line	284
	
i1l1437:	
	line	287
	
i1l4445:	
	movf	(_pt2INT6),w
	fcall	i1fptable
	goto	i1l4447
	line	288
	
i1l1438:	
	goto	i1l4447
	
i1l1436:	
	line	290
	
i1l4447:	
	movlw	(0BFh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	291
	
i1l4449:	
	movf	(6),w	;volatile
	andlw	040h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l4451
	line	292
	
i1l1434:	
	line	294
	
i1l4451:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(7)&7
	goto	u356_21
	goto	u356_20
u356_21:
	goto	i1l4471
u356_20:
	line	296
	
i1l4453:	
	movf	(_eMod7_Mode),w
	xorlw	02h
	skipz
	goto	u357_21
	goto	u357_20
u357_21:
	goto	i1l4459
u357_20:
	
i1l4455:	
	btfsc	(6),(7)&7	;volatile
	goto	u358_21
	goto	u358_20
u358_21:
	goto	i1l4459
u358_20:
	goto	i1l4467
	line	299
	
i1l4457:	
	goto	i1l4467
	line	300
	
i1l1440:	
	
i1l4459:	
	movf	(_eMod7_Mode),w
	xorlw	03h
	skipz
	goto	u359_21
	goto	u359_20
u359_21:
	goto	i1l4465
u359_20:
	
i1l4461:	
	btfss	(6),(7)&7	;volatile
	goto	u360_21
	goto	u360_20
u360_21:
	goto	i1l4465
u360_20:
	goto	i1l4467
	line	303
	
i1l4463:	
	goto	i1l4467
	line	304
	
i1l1442:	
	line	307
	
i1l4465:	
	movf	(_pt2INT7),w
	fcall	i1fptable
	goto	i1l4467
	line	308
	
i1l1443:	
	goto	i1l4467
	
i1l1441:	
	line	310
	
i1l4467:	
	movlw	(07Fh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	311
	
i1l4469:	
	movf	(6),w	;volatile
	andlw	080h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l4471
	line	312
	
i1l1439:	
	line	314
	
i1l4471:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(134)^080h,w	;volatile
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	315
	
i1l1444:	
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
psect	text31,local,class=CODE,delta=2,merge=1
	line	110
global __ptext31
__ptext31:	;psect for function _extIntISR
psect	text31
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	110
	global	__size_of_extIntISR
	__size_of_extIntISR	equ	__end_of_extIntISR-_extIntISR
	
_extIntISR:	
;incstack = 0
	opt	stack 0
; Regs used in _extIntISR: [wreg+status,2+status,0+pclath+cstack]
	line	113
	
i1l4381:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_eMod0_Mode),w
	xorlw	01h
	skipz
	goto	u339_21
	goto	u339_20
u339_21:
	goto	i1l4387
u339_20:
	line	115
	
i1l4383:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1038/8)^080h,(1038)&7	;volatile
	goto	u340_21
	goto	u340_20
u340_21:
	goto	i1l1417
u340_20:
	line	117
	
i1l4385:	
	bsf	(1038/8)^080h,(1038)&7	;volatile
	line	118
	goto	i1l4387
	line	119
	
i1l1417:	
	line	121
	bcf	(1038/8)^080h,(1038)&7	;volatile
	goto	i1l4387
	line	122
	
i1l1418:	
	goto	i1l4387
	line	125
	
i1l1416:	
	line	128
	
i1l4387:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_pt2INT0),w
	fcall	i1fptable
	line	129
	
i1l1419:	
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
psect	text32,local,class=CODE,delta=2,merge=1
	line	88
global __ptext32
__ptext32:	;psect for function _nullIntFunction
psect	text32
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	88
	global	__size_of_nullIntFunction
	__size_of_nullIntFunction	equ	__end_of_nullIntFunction-_nullIntFunction
	
_nullIntFunction:	
;incstack = 0
	opt	stack 0
; Regs used in _nullIntFunction: []
	line	91
	
i1l1413:	
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
psect	text33,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_timer.c"
	line	107
global __ptext33
__ptext33:	;psect for function _timerISR
psect	text33
	file	"hardware/cores/lib\hal_timer.c"
	line	107
	global	__size_of_timerISR
	__size_of_timerISR	equ	__end_of_timerISR-_timerISR
	
_timerISR:	
;incstack = 0
	opt	stack 1
; Regs used in _timerISR: [wreg+status,2+status,0+pclath+cstack]
	line	114
	
i1l4729:	
	btfss	(90/8),(90)&7	;volatile
	goto	u398_21
	goto	u398_20
u398_21:
	goto	i1l1364
u398_20:
	
i1l4731:	
	btfss	(93/8),(93)&7	;volatile
	goto	u399_21
	goto	u399_20
u399_21:
	goto	i1l1364
u399_20:
	line	116
	
i1l4733:	
	bcf	(90/8),(90)&7	;volatile
	line	117
	
i1l4735:	
	movlw	low(0100h)
	movwf	(inc_gui16TimerUsMSB_Value@ui16Value)
	movlw	high(0100h)
	movwf	((inc_gui16TimerUsMSB_Value@ui16Value))+1
	fcall	_inc_gui16TimerUsMSB_Value
	line	118
	
i1l4737:	
	movlw	low(0CDh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(timerISR@ui16UsCounter)^080h,f
	skipnc
	incf	(timerISR@ui16UsCounter+1)^080h,f
	movlw	high(0CDh)
	addwf	(timerISR@ui16UsCounter+1)^080h,f
	line	120
	goto	i1l4743
	
i1l1362:	
	line	122
	
i1l4739:	
	fcall	_inc_gui16TimerMs_Value
	line	123
	
i1l4741:	
	movlw	low(03E8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(timerISR@ui16UsCounter)^080h,f
	movlw	high(03E8h)
	skipc
	decf	(timerISR@ui16UsCounter+1)^080h,f
	subwf	(timerISR@ui16UsCounter+1)^080h,f
	goto	i1l4743
	line	130
	
i1l1361:	
	line	120
	
i1l4743:	
	movlw	high(03E8h)
	subwf	(timerISR@ui16UsCounter+1)^080h,w
	movlw	low(03E8h)
	skipnz
	subwf	(timerISR@ui16UsCounter)^080h,w
	skipnc
	goto	u400_21
	goto	u400_20
u400_21:
	goto	i1l4739
u400_20:
	goto	i1l1364
	
i1l1363:	
	goto	i1l1364
	line	144
	
i1l1360:	
	line	145
	
i1l1364:	
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
psect	text34,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	90
global __ptext34
__ptext34:	;psect for function _inc_gui16TimerUsMSB_Value
psect	text34
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	90
	global	__size_of_inc_gui16TimerUsMSB_Value
	__size_of_inc_gui16TimerUsMSB_Value	equ	__end_of_inc_gui16TimerUsMSB_Value-_inc_gui16TimerUsMSB_Value
	
_inc_gui16TimerUsMSB_Value:	
;incstack = 0
	opt	stack 1
; Regs used in _inc_gui16TimerUsMSB_Value: [wreg+status,2+status,0]
	line	92
	
i1l4351:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	93
	
i1l4353:	
	movf	(inc_gui16TimerUsMSB_Value@ui16Value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_gui16TimerUsMSB),f	;volatile
	skipnc
	incf	(_gui16TimerUsMSB+1),f	;volatile
	movf	(inc_gui16TimerUsMSB_Value@ui16Value+1),w
	addwf	(_gui16TimerUsMSB+1),f	;volatile
	line	95
	
i1l4355:	
	movf	(_gblISRLocked),f	;volatile
	skipz
	goto	u337_21
	goto	u337_20
u337_21:
	goto	i1l708
u337_20:
	line	97
	
i1l4357:	
	bsf	(95/8),(95)&7	;volatile
	bsf	(94/8),(94)&7	;volatile
	goto	i1l708
	line	98
	
i1l707:	
	line	99
	
i1l708:	
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
	
i1l4365:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	160
	
i1l4367:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_gui16TimerMs),f	;volatile
	skipnc
	incf	(_gui16TimerMs+1),f	;volatile
	movlw	high(01h)
	addwf	(_gui16TimerMs+1),f	;volatile
	line	162
	
i1l4369:	
	movf	(_gblISRLocked),f	;volatile
	skipz
	goto	u338_21
	goto	u338_20
u338_21:
	goto	i1l723
u338_20:
	line	164
	
i1l4371:	
	bsf	(95/8),(95)&7	;volatile
	bsf	(94/8),(94)&7	;volatile
	goto	i1l723
	line	165
	
i1l722:	
	line	166
	
i1l723:	
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_nullTMRFunction
;;		_servoController
;;		_softDACController
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
	opt	stack 0
; Regs used in _timer8BitISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	74
	
i1l4753:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u403_21
	goto	u403_20
u403_21:
	goto	i1l837
u403_20:
	
i1l4755:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1121/8)^080h,(1121)&7	;volatile
	goto	u404_21
	goto	u404_20
u404_21:
	goto	i1l837
u404_20:
	line	77
	
i1l4757:	
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
	
i1l4759:	
	movf	(_pt2TMR2ISR),w
	fcall	i1fptable
	goto	i1l837
	line	82
	
i1l836:	
	line	111
	
i1l837:	
	return
	opt stack 0
GLOBAL	__end_of_timer8BitISR
	__end_of_timer8BitISR:
	signat	_timer8BitISR,88
	global	_softDACController
	global	_servoController
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
	
i1l1242:	
	return
	opt stack 0
GLOBAL	__end_of_nullTMRFunction
	__end_of_nullTMRFunction:
	signat	_nullTMRFunction,88

;; *************** function _servoController *****************
;; Defined at:
;;		line 220 in file "libraries/Servo\servo.c"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___bmul
;;		_set8BitTimer
;;		i1_changePinState
;; This function is called by:
;;		_setupServoFull
;;		_timer8BitISR
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"libraries/Servo\servo.c"
	line	220
global __ptext38
__ptext38:	;psect for function _servoController
psect	text38
	file	"libraries/Servo\servo.c"
	line	220
	global	__size_of_servoController
	__size_of_servoController	equ	__end_of_servoController-_servoController
	
_servoController:	
;incstack = 0
	opt	stack 0
; Regs used in _servoController: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	223
	
i1l4311:	
	goto	i1l4345
	line	225
	
i1l665:	
	line	227
	
i1l4313:	
	movlw	(03h)
	movwf	(??_servoController+0)+0
	movf	(??_servoController+0)+0,w
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui8SequenceCounter),w
	fcall	___bmul
	addlw	01h
	addlw	_aui8Servo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	decf	indf,w
	xorlw	0ffh
	addlw	0FAh
	movwf	(??_servoController+1)+0
	movf	(??_servoController+1)+0,w
	movwf	(set8BitTimer@ui8Value)
	movlw	(02h)
	fcall	_set8BitTimer
	line	228
	clrf	(i1changePinState@eOperation)
	incf	(i1changePinState@eOperation),f
	movlw	(03h)
	movwf	(??_servoController+0)+0
	movf	(??_servoController+0)+0,w
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui8SequenceCounter),w
	fcall	___bmul
	addlw	_aui8Servo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	i1_changePinState
	line	229
	
i1l4315:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ui8ServoState)
	incf	(_ui8ServoState),f
	line	230
	goto	i1l673
	line	232
	
i1l667:	
	line	235
	
i1l4317:	
	movlw	(08h)
	subwf	(_ui8SequenceCounter),w
	skipnc
	goto	u335_21
	goto	u335_20
u335_21:
	goto	i1l4321
u335_20:
	line	237
	
i1l4319:	
	movlw	(01h)
	movwf	(??_servoController+0)+0
	movf	(??_servoController+0)+0,w
	addwf	(_ui8SequenceCounter),f
	line	238
	goto	i1l4323
	line	239
	
i1l668:	
	line	241
	
i1l4321:	
	clrf	(_ui8SequenceCounter)
	goto	i1l4323
	line	242
	
i1l669:	
	line	245
	
i1l4323:	
	movlw	(03h)
	movwf	(??_servoController+0)+0
	movf	(??_servoController+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(_ui8SequenceCounter),w
	fcall	___bmul
	addlw	01h
	addlw	_aui8Servo&0ffh
	movwf	fsr0
	movlw	(032h)
	bsf	status, 7	;select IRP bank3
	subwf	indf,w
	skipnc
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l4333
u336_20:
	line	248
	
i1l4325:	
	movlw	(03h)
	movwf	(??_servoController+0)+0
	movf	(??_servoController+0)+0,w
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui8SequenceCounter),w
	fcall	___bmul
	addlw	01h
	addlw	_aui8Servo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	249
	
i1l4327:	
	movlw	(0FAh)
	movwf	(??_servoController+0)+0
	movf	(??_servoController+0)+0,w
	movwf	(set8BitTimer@ui8Value)
	movlw	(02h)
	fcall	_set8BitTimer
	line	250
	
i1l4329:	
	clrf	(i1changePinState@eOperation)
	incf	(i1changePinState@eOperation),f
	movlw	(03h)
	movwf	(??_servoController+0)+0
	movf	(??_servoController+0)+0,w
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui8SequenceCounter),w
	fcall	___bmul
	addlw	_aui8Servo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	i1_changePinState
	line	251
	
i1l4331:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ui8ServoState)
	incf	(_ui8ServoState),f
	line	252
	goto	i1l673
	line	253
	
i1l670:	
	line	255
	
i1l4333:	
	movlw	(03h)
	movwf	(??_servoController+0)+0
	movf	(??_servoController+0)+0,w
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui8SequenceCounter),w
	fcall	___bmul
	addlw	01h
	addlw	_aui8Servo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_servoController+1)+0
	movf	(??_servoController+1)+0,w
	movwf	(set8BitTimer@ui8Value)
	movlw	(02h)
	fcall	_set8BitTimer
	line	256
	clrf	(i1changePinState@eOperation)
	movlw	(03h)
	movwf	(??_servoController+0)+0
	movf	(??_servoController+0)+0,w
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui8SequenceCounter),w
	fcall	___bmul
	addlw	_aui8Servo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	i1_changePinState
	line	257
	
i1l4335:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ui8ServoState)
	goto	i1l673
	line	258
	
i1l671:	
	line	259
	goto	i1l673
	line	261
	
i1l672:	
	line	263
	
i1l4337:	
	movlw	(0FAh)
	movwf	(??_servoController+0)+0
	movf	(??_servoController+0)+0,w
	movwf	(set8BitTimer@ui8Value)
	movlw	(02h)
	fcall	_set8BitTimer
	line	264
	
i1l4339:	
	movlw	(08h)
	movwf	(??_servoController+0)+0
	movf	(??_servoController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ui8SequenceCounter)
	line	265
	
i1l4341:	
	clrf	(_ui8ServoState)
	incf	(_ui8ServoState),f
	line	266
	goto	i1l673
	line	268
	
i1l4343:	
	goto	i1l673
	line	223
	
i1l664:	
	
i1l4345:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui8ServoState),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l4313
	xorlw	1^0	; case 1
	skipnz
	goto	i1l4317
	goto	i1l4337
	opt asmopt_on

	line	268
	
i1l666:	
	line	269
	
i1l673:	
	return
	opt stack 0
GLOBAL	__end_of_servoController
	__end_of_servoController:
	signat	_servoController,88

;; *************** function _softDACController *****************
;; Defined at:
;;		line 338 in file "libraries/soft_dac\soft_dac.c"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___bmul
;;		_set8BitTimer
;;		i1_changePinState
;; This function is called by:
;;		_setupSoftDAC
;;		_timer8BitISR
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1
	file	"libraries/soft_dac\soft_dac.c"
	line	338
global __ptext39
__ptext39:	;psect for function _softDACController
psect	text39
	file	"libraries/soft_dac\soft_dac.c"
	line	338
	global	__size_of_softDACController
	__size_of_softDACController	equ	__end_of_softDACController-_softDACController
	
_softDACController:	
;incstack = 0
	opt	stack 0
; Regs used in _softDACController: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	343
	
i1l4247:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(softDACController@blScheduleCleared)
	line	345
	goto	i1l4307
	
i1l604:	
	line	347
	goto	i1l4271
	line	349
	
i1l606:	
	line	352
	
i1l4249:	
	clrf	(softDACController@ui8Counter)
	goto	i1l4259
	line	353
	
i1l608:	
	line	354
	
i1l4251:	
	movlw	(03h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(softDACController@ui8Counter),w
	fcall	___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf
	skipnz
	goto	u326_21
	goto	u326_20
u326_21:
	goto	i1l4255
u326_20:
	line	356
	
i1l4253:	
	clrf	(i1changePinState@eOperation)
	movlw	(03h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(softDACController@ui8Counter),w
	fcall	___bmul
	addlw	01h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	i1_changePinState
	line	357
	goto	i1l4257
	line	358
	
i1l609:	
	line	360
	
i1l4255:	
	clrf	(i1changePinState@eOperation)
	incf	(i1changePinState@eOperation),f
	movlw	(03h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(softDACController@ui8Counter),w
	fcall	___bmul
	addlw	01h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	i1_changePinState
	goto	i1l4257
	line	361
	
i1l610:	
	line	352
	
i1l4257:	
	movlw	(01h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(softDACController@ui8Counter),f
	goto	i1l4259
	
i1l607:	
	
i1l4259:	
	movf	(_ui8DACScheduleTail),w
	subwf	(softDACController@ui8Counter),w
	skipc
	goto	u327_21
	goto	u327_20
u327_21:
	goto	i1l4251
u327_20:
	goto	i1l612
	
i1l611:	
	line	363
	goto	i1l612
	line	365
	
i1l613:	
	line	368
	
i1l4261:	
	clrf	(i1changePinState@eOperation)
	incf	(i1changePinState@eOperation),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_astDACModuleSchedule)^080h+01h,w
	fcall	i1_changePinState
	line	369
	goto	i1l612
	line	371
	
i1l614:	
	line	374
	
i1l4263:	
	clrf	(i1changePinState@eOperation)
	incf	(i1changePinState@eOperation),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_astDACModuleSchedule)^080h+04h,w
	fcall	i1_changePinState
	line	375
	goto	i1l612
	line	377
	
i1l615:	
	line	380
	
i1l4265:	
	clrf	(i1changePinState@eOperation)
	incf	(i1changePinState@eOperation),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_astDACModuleSchedule)^080h+07h,w
	fcall	i1_changePinState
	line	381
	goto	i1l612
	line	383
	
i1l616:	
	line	386
	
i1l4267:	
	clrf	(i1changePinState@eOperation)
	incf	(i1changePinState@eOperation),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_astDACModuleSchedule)^080h+0Ah,w
	fcall	i1_changePinState
	line	387
	goto	i1l612
	line	389
	
i1l617:	
	line	392
	goto	i1l612
	line	394
	
i1l4269:	
	goto	i1l612
	line	347
	
i1l605:	
	
i1l4271:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui8DACEngineStates),w
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
	goto	i1l4261
	xorlw	1^0	; case 1
	skipnz
	goto	i1l4263
	xorlw	2^1	; case 2
	skipnz
	goto	i1l4265
	xorlw	3^2	; case 3
	skipnz
	goto	i1l4267
	xorlw	4^3	; case 4
	skipnz
	goto	i1l4249
	goto	i1l612
	opt asmopt_on

	line	394
	
i1l612:	
	line	397
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(softDACController@blScheduleCleared)
	incf	(softDACController@blScheduleCleared),f
	line	399
	
i1l4273:	
	movf	(_ui8DACEngineStates),w
	xorlw	04h
	skipz
	goto	u328_21
	goto	u328_20
u328_21:
	goto	i1l4289
u328_20:
	line	401
	
i1l4275:	
	clrf	(_ui8DACEngineStates)
	line	404
	
i1l4277:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_astDACModuleSchedule)^080h+02h,w
	xorlw	0FFh
	skipnz
	goto	u329_21
	goto	u329_20
u329_21:
	goto	i1l4283
u329_20:
	line	406
	
i1l4279:	
	movf	0+(_astDACModuleSchedule)^080h+02h,w
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(set8BitTimer@ui8Value)
	movlw	(02h)
	fcall	_set8BitTimer
	line	407
	
i1l4281:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_astDACModuleSchedule)^080h+02h,w
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ui8PrevValue)
	line	408
	goto	i1l4307
	line	409
	
i1l619:	
	line	411
	
i1l4283:	
	bcf	status, 5	;RP0=0, select bank0
	decf	(_ui8PrevValue),w
	xorlw	0ffh
	addlw	0FFh
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(set8BitTimer@ui8Value)
	movlw	(02h)
	fcall	_set8BitTimer
	line	412
	
i1l4285:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ui8PrevValue)
	line	413
	
i1l4287:	
	movlw	(04h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(_ui8DACEngineStates)
	goto	i1l4307
	line	414
	
i1l620:	
	line	415
	goto	i1l4307
	line	416
	
i1l618:	
	line	419
	
i1l4289:	
	movlw	(01h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	addwf	(_ui8DACEngineStates),f
	line	423
	
i1l4291:	
	movf	(_ui8DACScheduleTail),w
	subwf	(_ui8DACEngineStates),w
	skipnc
	goto	u330_21
	goto	u330_20
u330_21:
	goto	i1l4301
u330_20:
	
i1l4293:	
	movlw	(03h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(_ui8DACEngineStates),w
	fcall	___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	xorlw	0FFh
	skipnz
	goto	u331_21
	goto	u331_20
u331_21:
	goto	i1l4301
u331_20:
	line	426
	
i1l4295:	
	movlw	(03h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui8DACEngineStates),w
	fcall	___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_ui8PrevValue),w
	skipnz
	goto	u332_21
	goto	u332_20
u332_21:
	goto	i1l4299
u332_20:
	line	428
	
i1l4297:	
	movlw	(03h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(_ui8DACEngineStates),w
	fcall	___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(_ui8PrevValue),w
	xorlw	0ffh
	bcf	status, 7	;select IRP bank1
	addwf	indf,w
	movwf	(??_softDACController+1)+0
	movf	(??_softDACController+1)+0,w
	movwf	(set8BitTimer@ui8Value)
	movlw	(02h)
	fcall	_set8BitTimer
	line	429
	movlw	(03h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui8DACEngineStates),w
	fcall	___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_softDACController+1)+0
	movf	(??_softDACController+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ui8PrevValue)
	line	430
	goto	i1l4307
	line	431
	
i1l623:	
	line	434
	
i1l4299:	
	clrf	(softDACController@blScheduleCleared)
	goto	i1l4307
	line	435
	
i1l624:	
	line	436
	goto	i1l4307
	line	437
	
i1l622:	
	line	439
	
i1l4301:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(_ui8PrevValue),w
	xorlw	0ffh
	addlw	0FFh
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(set8BitTimer@ui8Value)
	movlw	(02h)
	fcall	_set8BitTimer
	line	440
	
i1l4303:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ui8PrevValue)
	line	441
	
i1l4305:	
	movlw	(04h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(_ui8DACEngineStates)
	goto	i1l4307
	line	442
	
i1l625:	
	goto	i1l4307
	line	443
	
i1l621:	
	goto	i1l4307
	line	444
	
i1l603:	
	line	345
	
i1l4307:	
	movf	(softDACController@blScheduleCleared),f
	skipz
	goto	u333_21
	goto	u333_20
u333_21:
	goto	i1l629
u333_20:
	
i1l4309:	
	movf	(_ui8DACScheduleTail),f
	skipz
	goto	u334_21
	goto	u334_20
u334_21:
	goto	i1l4271
u334_20:
	goto	i1l629
	
i1l627:	
	goto	i1l629
	
i1l628:	
	line	445
	
i1l629:	
	return
	opt stack 0
GLOBAL	__end_of_softDACController
	__end_of_softDACController:
	signat	_softDACController,88
	global	i1_changePinState

;; *************** function i1_changePinState *****************
;; Defined at:
;;		line 188 in file "hardware/cores/lib\hal_gpio.c"
;; Parameters:    Size  Location     Type
;;  ui8Pin          1    wreg     unsigned char 
;;  eOperation      1    4[COMMON] enum E1426
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
;;		_softDACController
;;		_servoController
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_gpio.c"
	line	188
global __ptext40
__ptext40:	;psect for function i1_changePinState
psect	text40
	file	"hardware/cores/lib\hal_gpio.c"
	line	188
	global	__size_ofi1_changePinState
	__size_ofi1_changePinState	equ	__end_ofi1_changePinState-i1_changePinState
	
i1_changePinState:	
;incstack = 0
	opt	stack 0
; Regs used in i1_changePinState: [wreg-fsr0h+status,2+status,0]
	movwf	(i1changePinState@ui8Pin)
	line	190
	
i1l4121:	
	clrf	(i1changePinState@pui8PortReg)
	clrf	(i1changePinState@pui8PortReg+1)
	line	193
	
i1l4123:	
	movlw	(08h)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u311_21
	goto	u311_20
u311_21:
	goto	i1l4127
u311_20:
	line	195
	
i1l4125:	
	movlw	high(7)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(7)
	movwf	(i1changePinState@pui8PortReg)
	line	199
	goto	i1l4159
	line	201
	
i1l1295:	
	
i1l4127:	
	movlw	(0Eh)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u312_21
	goto	u312_20
u312_21:
	goto	i1l4133
u312_20:
	line	203
	
i1l4129:	
	movlw	low(08h)
	subwf	(i1changePinState@ui8Pin),f
	line	204
	
i1l4131:	
	movlw	high(6)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(6)
	movwf	(i1changePinState@pui8PortReg)
	line	208
	goto	i1l4159
	line	210
	
i1l1297:	
	
i1l4133:	
	movlw	(015h)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u313_21
	goto	u313_20
u313_21:
	goto	i1l4153
u313_20:
	line	212
	
i1l4135:	
	movlw	low(0Eh)
	subwf	(i1changePinState@ui8Pin),f
	line	215
	
i1l4137:	
	movlw	(03h)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u314_21
	goto	u314_20
u314_21:
	goto	i1l4141
u314_20:
	line	217
	
i1l4139:	
	movlw	high(5)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(i1changePinState@pui8PortReg)
	line	221
	goto	i1l4159
	line	223
	
i1l1300:	
	
i1l4141:	
	movf	(i1changePinState@ui8Pin),w
	xorlw	03h
	skipz
	goto	u315_21
	goto	u315_20
u315_21:
	goto	i1l4147
u315_20:
	line	225
	
i1l4143:	
	movlw	(02h)
	movwf	(??i1_changePinState+0)+0
	movf	(??i1_changePinState+0)+0,w
	addwf	(i1changePinState@ui8Pin),f
	line	226
	
i1l4145:	
	movlw	high(5)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(5)
	movwf	(i1changePinState@pui8PortReg)
	line	230
	goto	i1l4159
	line	232
	
i1l1302:	
	
i1l4147:	
	movlw	(07h)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u316_21
	goto	u316_20
u316_21:
	goto	i1l4159
u316_20:
	line	234
	
i1l4149:	
	movlw	low(04h)
	subwf	(i1changePinState@ui8Pin),f
	line	235
	
i1l4151:	
	movlw	high(9)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(9)
	movwf	(i1changePinState@pui8PortReg)
	line	239
	goto	i1l4159
	line	240
	
i1l1304:	
	goto	i1l4159
	line	246
	
i1l1305:	
	goto	i1l4159
	
i1l1303:	
	goto	i1l4159
	
i1l1301:	
	line	247
	goto	i1l4159
	line	249
	
i1l1299:	
	
i1l4153:	
	movlw	(01Dh)
	subwf	(i1changePinState@ui8Pin),w
	skipnc
	goto	u317_21
	goto	u317_20
u317_21:
	goto	i1l4159
u317_20:
	line	251
	
i1l4155:	
	movlw	low(015h)
	subwf	(i1changePinState@ui8Pin),f
	line	252
	
i1l4157:	
	movlw	high(8)
	movwf	(i1changePinState@pui8PortReg+1)
	movlw	low(8)
	movwf	(i1changePinState@pui8PortReg)
	line	256
	goto	i1l4159
	line	257
	
i1l1307:	
	goto	i1l4159
	line	263
	
i1l1308:	
	goto	i1l4159
	
i1l1306:	
	goto	i1l4159
	
i1l1298:	
	goto	i1l4159
	
i1l1296:	
	line	266
	
i1l4159:	
	movf	(i1changePinState@pui8PortReg+1),w
	iorwf	(i1changePinState@pui8PortReg),w
	skipnz
	goto	u318_21
	goto	u318_20
u318_21:
	goto	i1l1315
u318_20:
	line	268
	
i1l4161:	
	movf	(i1changePinState@eOperation),f
	skipz
	goto	u319_21
	goto	u319_20
u319_21:
	goto	i1l4165
u319_20:
	line	270
	
i1l4163:	
	movlw	(01h)
	movwf	(??i1_changePinState+0)+0
	incf	(i1changePinState@ui8Pin),w
	goto	u320_24
u320_25:
	clrc
	rlf	(??i1_changePinState+0)+0,f
u320_24:
	addlw	-1
	skipz
	goto	u320_25
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
	goto	i1l1315
	line	275
	
i1l1310:	
	
i1l4165:	
	movf	(i1changePinState@eOperation),w
	xorlw	01h
	skipz
	goto	u321_21
	goto	u321_20
u321_21:
	goto	i1l4169
u321_20:
	line	277
	
i1l4167:	
	movlw	(01h)
	movwf	(??i1_changePinState+0)+0
	incf	(i1changePinState@ui8Pin),w
	goto	u322_24
u322_25:
	clrc
	rlf	(??i1_changePinState+0)+0,f
u322_24:
	addlw	-1
	skipz
	goto	u322_25
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
	goto	i1l1315
	line	282
	
i1l1312:	
	line	284
	
i1l4169:	
	movlw	(01h)
	movwf	(??i1_changePinState+0)+0
	incf	(i1changePinState@ui8Pin),w
	goto	u323_24
u323_25:
	clrc
	rlf	(??i1_changePinState+0)+0,f
u323_24:
	addlw	-1
	skipz
	goto	u323_25
	movf	0+(??i1_changePinState+0)+0,w
	movwf	(??i1_changePinState+1)+0
	movf	(i1changePinState@pui8PortReg),w
	movwf	fsr0
	bsf	status,7
	btfss	(i1changePinState@pui8PortReg+1),0
	bcf	status,7
	movf	(??i1_changePinState+1)+0,w
	xorwf	indf,f
	goto	i1l1315
	line	288
	
i1l1313:	
	goto	i1l1315
	
i1l1311:	
	line	289
	goto	i1l1315
	line	290
	
i1l1309:	
	goto	i1l1315
	line	296
	
i1l1314:	
	line	297
	
i1l1315:	
	return
	opt stack 0
GLOBAL	__end_ofi1_changePinState
	__end_ofi1_changePinState:
	signat	i1_changePinState,88
	global	_set8BitTimer

;; *************** function _set8BitTimer *****************
;; Defined at:
;;		line 243 in file "hardware/cores/lib\corelib_8bit_timer.c"
;; Parameters:    Size  Location     Type
;;  eTmrModule      1    wreg     enum E1457
;;  ui8Value        1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  eTmrModule      1    5[COMMON] enum E1457
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
;;		_softDACController
;;		_servoController
;;		_setupSoftDAC
;;		_setupServoFull
;;		_setPWMFrequency
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	243
global __ptext41
__ptext41:	;psect for function _set8BitTimer
psect	text41
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	243
	global	__size_of_set8BitTimer
	__size_of_set8BitTimer	equ	__end_of_set8BitTimer-_set8BitTimer
	
_set8BitTimer:	
;incstack = 0
	opt	stack 0
; Regs used in _set8BitTimer: [wreg+status,2+status,0]
	movwf	(set8BitTimer@eTmrModule)
	line	246
	
i1l4087:	
	movf	(set8BitTimer@eTmrModule),w
	xorlw	02h
	skipz
	goto	u308_21
	goto	u308_20
u308_21:
	goto	i1l852
u308_20:
	line	248
	
i1l4089:	
	movf	(set8BitTimer@ui8Value),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	250
	
i1l4091:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	251
	
i1l4093:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	253
	
i1l4095:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	line	254
	goto	i1l852
	line	280
	
i1l850:	
	goto	i1l852
	line	283
	
i1l851:	
	line	284
	
i1l852:	
	return
	opt stack 0
GLOBAL	__end_of_set8BitTimer
	__end_of_set8BitTimer:
	signat	_set8BitTimer,8312
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
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
;;		_softDACController
;;		_servoController
;;		_stringToByte
;;		_setupSoftDAC
;;		_setSoftDAC
;;		_removeSoftDAC
;;		_bubbleSortDAC
;;		_setupServoFull
;;		_setServoAngle
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1
	file	"C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\sources\common\Umul8.c"
	line	4
global __ptext42
__ptext42:	;psect for function ___bmul
psect	text42
	file	"C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 0
; Regs used in ___bmul: [wreg+status,2+status,0]
	movwf	(___bmul@multiplier)
	line	6
	
i1l4105:	
	clrf	(___bmul@product)
	goto	i1l4107
	line	42
	
i1l1545:	
	line	43
	
i1l4107:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u309_21
	goto	u309_20
u309_21:
	goto	i1l4111
u309_20:
	line	44
	
i1l4109:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	i1l4111
	
i1l1546:	
	line	45
	
i1l4111:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
i1l4113:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
i1l4115:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u310_21
	goto	u310_20
u310_21:
	goto	i1l4107
u310_20:
	goto	i1l4117
	
i1l1547:	
	line	50
	
i1l4117:	
	movf	(___bmul@product),w
	goto	i1l1548
	
i1l4119:	
	line	51
	
i1l1548:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
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
psect	text43,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	67
global __ptext43
__ptext43:	;psect for function _timer16BitISR
psect	text43
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	67
	global	__size_of_timer16BitISR
	__size_of_timer16BitISR	equ	__end_of_timer16BitISR-_timer16BitISR
	
_timer16BitISR:	
;incstack = 0
	opt	stack 1
; Regs used in _timer16BitISR: [wreg+status,2+status,0+pclath+cstack]
	line	71
	
i1l4745:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7	;volatile
	goto	u401_21
	goto	u401_20
u401_21:
	goto	i1l804
u401_20:
	
i1l4747:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1120/8)^080h,(1120)&7	;volatile
	goto	u402_21
	goto	u402_20
u402_21:
	goto	i1l804
u402_20:
	line	74
	
i1l4749:	
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
	
i1l4751:	
	movf	(_pt2TMR1ISR),w
	fcall	i1fptable
	goto	i1l804
	line	79
	
i1l803:	
	line	82
	
i1l804:	
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
psect	text44,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_16bit_timer.c"
	line	65
global __ptext44
__ptext44:	;psect for function _null16BitTMRFunction
psect	text44
	file	"hardware/cores/lib\hal_16bit_timer.c"
	line	65
	global	__size_of_null16BitTMRFunction
	__size_of_null16BitTMRFunction	equ	__end_of_null16BitTMRFunction-_null16BitTMRFunction
	
_null16BitTMRFunction:	
;incstack = 0
	opt	stack 1
; Regs used in _null16BitTMRFunction: []
	line	68
	
i1l1239:	
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
psect	text45,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	72
global __ptext45
__ptext45:	;psect for function _set_gblISRLocked_FlagValue
psect	text45
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	72
	global	__size_of_set_gblISRLocked_FlagValue
	__size_of_set_gblISRLocked_FlagValue	equ	__end_of_set_gblISRLocked_FlagValue-_set_gblISRLocked_FlagValue
	
_set_gblISRLocked_FlagValue:	
;incstack = 0
	opt	stack 2
; Regs used in _set_gblISRLocked_FlagValue: [wreg]
	line	74
	
i1l4643:	
	movlw	(01h)
	movwf	(??_set_gblISRLocked_FlagValue+0)+0
	movf	(??_set_gblISRLocked_FlagValue+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_gblISRLocked)	;volatile
	line	75
	
i1l698:	
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
psect	text46,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_uart.c"
	line	351
global __ptext46
__ptext46:	;psect for function _serialTxISR
psect	text46
	file	"hardware/cores/lib\corelib_uart.c"
	line	351
	global	__size_of_serialTxISR
	__size_of_serialTxISR	equ	__end_of_serialTxISR-_serialTxISR
	
_serialTxISR:	
;incstack = 0
	opt	stack 2
; Regs used in _serialTxISR: [wreg-fsr0h+status,2+status,0]
	line	353
	
i1l4799:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u412_21
	goto	u412_20
u412_21:
	goto	i1l1145
u412_20:
	
i1l4801:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1124/8)^080h,(1124)&7	;volatile
	goto	u413_21
	goto	u413_20
u413_21:
	goto	i1l1145
u413_20:
	line	355
	
i1l4803:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(100/8),(100)&7	;volatile
	line	358
	
i1l4805:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_stUARTTXFiFo)^0180h+021h,w
	xorwf	0+(_stUARTTXFiFo)^0180h+020h,w
	skipz
	goto	u414_21
	goto	u414_20
u414_21:
	goto	i1l4809
u414_20:
	line	360
	
i1l4807:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	364
	goto	i1l1145
	line	365
	
i1l1142:	
	line	367
	
i1l4809:	
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
	
i1l4811:	
	movlw	(01h)
	movwf	(??_serialTxISR+0)+0
	movf	(??_serialTxISR+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	0+(_stUARTTXFiFo)^0180h+021h,f
	line	368
	
i1l4813:	
	movlw	(01Fh)
	movwf	(??_serialTxISR+0)+0
	movf	(??_serialTxISR+0)+0,w
	andwf	0+(_stUARTTXFiFo)^0180h+021h,f
	line	373
	
i1l4815:	
	movf	0+(_stUARTTXFiFo)^0180h+021h,w
	xorwf	0+(_stUARTTXFiFo)^0180h+020h,w
	skipz
	goto	u415_21
	goto	u415_20
u415_21:
	goto	i1l1145
u415_20:
	line	375
	
i1l4817:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1124/8)^080h,(1124)&7	;volatile
	goto	i1l1145
	line	379
	
i1l1144:	
	goto	i1l1145
	line	380
	
i1l1143:	
	goto	i1l1145
	line	381
	
i1l1141:	
	line	382
	
i1l1145:	
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
psect	text47,local,class=CODE,delta=2,merge=1
	line	304
global __ptext47
__ptext47:	;psect for function _serialRxISR
psect	text47
	file	"hardware/cores/lib\corelib_uart.c"
	line	304
	global	__size_of_serialRxISR
	__size_of_serialRxISR	equ	__end_of_serialRxISR-_serialRxISR
	
_serialRxISR:	
;incstack = 0
	opt	stack 2
; Regs used in _serialRxISR: [wreg-fsr0h+status,2+status,0]
	line	308
	
i1l4761:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u405_21
	goto	u405_20
u405_21:
	goto	i1l1138
u405_20:
	
i1l4763:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7	;volatile
	goto	u406_21
	goto	u406_20
u406_21:
	goto	i1l1138
u406_20:
	line	310
	
i1l4765:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7	;volatile
	line	311
	
i1l4767:	
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
	
i1l4769:	
	movf	0+(_stUARTRXFiFo)^0180h+020h,w
	addlw	01h
	andlw	01Fh
	movwf	(??_serialRxISR+0)+0
	movf	(??_serialRxISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialRxISR@ui8TempIn)
	line	314
	
i1l4771:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_stUARTRXFiFo)^0180h+021h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(serialRxISR@ui8TempIn),w
	skipnz
	goto	u407_21
	goto	u407_20
u407_21:
	goto	i1l1138
u407_20:
	line	316
	
i1l4773:	
	movf	(serialRxISR@ui8TempIn),w
	movwf	(??_serialRxISR+0)+0
	movf	(??_serialRxISR+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_stUARTRXFiFo)^0180h+020h
	line	320
	goto	i1l1138
	line	321
	
i1l1136:	
	goto	i1l1138
	line	327
	
i1l1137:	
	goto	i1l1138
	line	332
	
i1l1135:	
	line	333
	
i1l1138:	
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
psect	text48,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	77
global __ptext48
__ptext48:	;psect for function _clr_gblISRLocked_FlagValue
psect	text48
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	77
	global	__size_of_clr_gblISRLocked_FlagValue
	__size_of_clr_gblISRLocked_FlagValue	equ	__end_of_clr_gblISRLocked_FlagValue-_clr_gblISRLocked_FlagValue
	
_clr_gblISRLocked_FlagValue:	
;incstack = 0
	opt	stack 2
; Regs used in _clr_gblISRLocked_FlagValue: [status,2]
	line	79
	
i1l4645:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_gblISRLocked)	;volatile
	line	80
	
i1l701:	
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
psect	text49,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_adc.c"
	line	85
global __ptext49
__ptext49:	;psect for function _adcISR
psect	text49
	file	"hardware/cores/lib\corelib_adc.c"
	line	85
	global	__size_of_adcISR
	__size_of_adcISR	equ	__end_of_adcISR-_adcISR
	
_adcISR:	
;incstack = 0
	opt	stack 2
; Regs used in _adcISR: [wreg-fsr0h+status,2+status,0]
	line	89
	
i1l4819:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(102/8),(102)&7	;volatile
	goto	u416_21
	goto	u416_20
u416_21:
	goto	i1l903
u416_20:
	
i1l4821:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1126/8)^080h,(1126)&7	;volatile
	goto	u417_21
	goto	u417_20
u417_21:
	goto	i1l903
u417_20:
	line	91
	
i1l4823:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7	;volatile
	line	94
	
i1l4825:	
	movf	(_eCurrentChannel),w
	xorlw	03h
	skipz
	goto	u418_21
	goto	u418_20
u418_21:
	goto	i1l4829
u418_20:
	goto	i1l4835
	line	100
	
i1l4827:	
	goto	i1l4835
	line	101
	
i1l896:	
	
i1l4829:	
	movlw	(04h)
	subwf	(_eCurrentChannel),w
	skipc
	goto	u419_21
	goto	u419_20
u419_21:
	goto	i1l4833
u419_20:
	line	103
	
i1l4831:	
	movf	(_eCurrentChannel),w
	addlw	0FFh
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	movwf	(adcISR@eEffectiveChannel)
	line	107
	goto	i1l4835
	line	108
	
i1l898:	
	line	110
	
i1l4833:	
	movf	(_eCurrentChannel),w
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	movwf	(adcISR@eEffectiveChannel)
	goto	i1l4835
	line	114
	
i1l899:	
	goto	i1l4835
	
i1l897:	
	line	117
	
i1l4835:	
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
	bsf	status, 7	;select IRP bank2
	movwf	indf
	incf	fsr0,f
	movf	(??_adcISR+0)+1,w
	movwf	indf
	line	120
	
i1l4837:	
	movlw	(07h)
	subwf	(_eCurrentChannel),w
	skipnc
	goto	u420_21
	goto	u420_20
u420_21:
	goto	i1l4845
u420_20:
	line	122
	
i1l4839:	
	movlw	(01h)
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	addwf	(_eCurrentChannel),f
	line	125
	
i1l4841:	
	movf	(_eCurrentChannel),w
	xorlw	03h
	skipz
	goto	u421_21
	goto	u421_20
u421_21:
	goto	i1l4847
u421_20:
	line	127
	
i1l4843:	
	movlw	(01h)
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	addwf	(_eCurrentChannel),f
	goto	i1l4847
	line	131
	
i1l901:	
	line	136
	goto	i1l4847
	line	137
	
i1l900:	
	line	139
	
i1l4845:	
	clrf	(_eCurrentChannel)
	goto	i1l4847
	line	143
	
i1l902:	
	line	146
	
i1l4847:	
	movlw	(0C7h)
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	andwf	(31),f	;volatile
	
i1l4849:	
	movf	(_eCurrentChannel),w
	movwf	(??_adcISR+0)+0
	movlw	(03h)-1
u422_25:
	clrc
	rlf	(??_adcISR+0)+0,f
	addlw	-1
	skipz
	goto	u422_25
	clrc
	rlf	(??_adcISR+0)+0,w
	andlw	038h
	movwf	(??_adcISR+1)+0
	movf	(??_adcISR+1)+0,w
	iorwf	(31),f	;volatile
	goto	i1l903
	line	147
	
i1l895:	
	line	148
	
i1l903:	
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
fp__softDACController:
	ljmp	_softDACController
	file ""
	line	#
fp__servoController:
	ljmp	_servoController
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
