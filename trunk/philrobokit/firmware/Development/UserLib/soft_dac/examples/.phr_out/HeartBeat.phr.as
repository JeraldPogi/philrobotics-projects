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
	FNCALL	_main,_cycle
	FNCALL	_main,_init
	FNCALL	_main,_set_gblInitialized_FlagValue
	FNCALL	_main,_setupADC
	FNCALL	_main,_setupGpio
	FNCALL	_setupADC,_get_gblInitialized_FlagValue
	FNCALL	_init,_getMs
	FNCALL	_init,_setupSoftDAC
	FNCALL	_setupSoftDAC,___bmul
	FNCALL	_setupSoftDAC,_bubbleSortDAC
	FNCALL	_cycle,_getElapsedMs
	FNCALL	_cycle,_getMs
	FNCALL	_cycle,_setSoftDAC
	FNCALL	_setSoftDAC,___bmul
	FNCALL	_setSoftDAC,_bubbleSortDAC
	FNCALL	_bubbleSortDAC,___bmul
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
	FNCALL	_timer8BitISR,_nullTMRFunction
	FNCALL	_timer8BitISR,_softDACController
	FNCALL	_softDACController,i1___bmul
	FNCALL	_timer16BitISR,_null16BitTMRFunction
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_ui8DACEngineStates
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
	global	_ui8PreScaler
	global	_LogLookup
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"libraries/soft_dac\soft_dac.c"
	line	62

;initializer for _ui8DACEngineStates
	retlw	04h
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	63

;initializer for _pt2INT0
	retlw	(fp__nullIntFunction-fpbase)&0ffh
	line	64

;initializer for _pt2INT1
	retlw	(fp__nullIntFunction-fpbase)&0ffh
	line	65

;initializer for _pt2INT2
	retlw	(fp__nullIntFunction-fpbase)&0ffh
	line	70

;initializer for _pt2INT4
	retlw	(fp__nullIntFunction-fpbase)&0ffh
	line	71

;initializer for _pt2INT5
	retlw	(fp__nullIntFunction-fpbase)&0ffh
	line	72

;initializer for _pt2INT6
	retlw	(fp__nullIntFunction-fpbase)&0ffh
	line	73

;initializer for _pt2INT7
	retlw	(fp__nullIntFunction-fpbase)&0ffh
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	46

;initializer for _pt2TMR1ISR
	retlw	(fp__null16BitTMRFunction-fpbase)&0ffh
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	47

;initializer for _pt2TMR2ISR
	retlw	(fp__nullTMRFunction-fpbase)&0ffh
	file	"hardware/cores/lib\corelib_pwm.c"
	line	46

;initializer for _ui8PreScalerVal
	retlw	01h

;initializer for _ui8PreScaler
	retlw	01h
psect	idataBANK3,class=CODE,space=0,delta=2,noexec
global __pidataBANK3
__pidataBANK3:
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.c"
	line	7

;initializer for _LogLookup
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	02h
	retlw	03h
	retlw	05h
	retlw	08h
	retlw	0Bh
	retlw	010h
	retlw	017h
	retlw	020h
	retlw	02Dh
	retlw	040h
	retlw	05Ah
	retlw	07Fh
	retlw	0B4h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	global	_ui8PrevValue
	global	_astDACModuleSchedule
	global	_BlinkTimer
	global	_LoopTimer
	global	_TimerDelta
	global	_gui16TimerMs
	global	_gui16TimerSec
	global	timerISR@ui16MsCounter
	global	_ADCOutValue
	global	_LEDCounter
	global	_LEDDirection
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
	global	_ui8DACScheduleTail
	global	_ui8PR2plus1
	global	adcISR@eEffectiveChannel
	global	rbIntISR@PORTCHANGE_BUFFER
	global	serialRxISR@ui8TempIn
	global	setupSoftDAC@blKickstarted
	global	_stUARTRXFiFo
	global	_stUARTTXFiFo
	global	_ui16ADCBuff
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
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_ui8PrevValue:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"libraries/soft_dac\soft_dac.c"
	line	62
_ui8DACEngineStates:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_astDACModuleSchedule:
       ds      12

_BlinkTimer:
       ds      2

_LoopTimer:
       ds      2

_TimerDelta:
       ds      2

_gui16TimerMs:
       ds      2

_gui16TimerSec:
       ds      2

timerISR@ui16MsCounter:
       ds      2

_ADCOutValue:
       ds      1

_LEDCounter:
       ds      1

_LEDDirection:
       ds      1

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

_ui8DACScheduleTail:
       ds      1

_ui8PR2plus1:
       ds      1

adcISR@eEffectiveChannel:
       ds      1

rbIntISR@PORTCHANGE_BUFFER:
       ds      1

serialRxISR@ui8TempIn:
       ds      1

setupSoftDAC@blKickstarted:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	63
_pt2INT0:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	64
_pt2INT1:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	65
_pt2INT2:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	70
_pt2INT4:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	71
_pt2INT5:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	72
_pt2INT6:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	73
_pt2INT7:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	46
_pt2TMR1ISR:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	47
_pt2TMR2ISR:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_pwm.c"
	line	46
_ui8PreScalerVal:
       ds      1

psect	dataBANK0
	file	"hardware/cores/lib\corelib_pwm.c"
	line	46
_ui8PreScaler:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_stUARTRXFiFo:
       ds      34

_stUARTTXFiFo:
       ds      34

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_ui16ADCBuff:
       ds      14

psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.c"
	line	7
_LogLookup:
       ds      25

	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.as"
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+02Eh)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+044h)
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+0Eh)
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
; Initialize objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK3
	movlw low(__pdataBANK3+25)
	movwf btemp-1,f
	movlw high(__pidataBANK3)
	movwf btemp,f
	movlw low(__pidataBANK3)
	movwf btemp+1,f
	movlw low(__pdataBANK3)
	movwf fsr,f
	fcall init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+11)
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
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_softDACController:	; 0 bytes @ 0x0
?_bubbleSortDAC:	; 0 bytes @ 0x0
?_setupGpio:	; 0 bytes @ 0x0
?_setupADC:	; 0 bytes @ 0x0
?_timerISR:	; 0 bytes @ 0x0
??_timerISR:	; 0 bytes @ 0x0
?_timer8BitISR:	; 0 bytes @ 0x0
?_timer16BitISR:	; 0 bytes @ 0x0
??_timer16BitISR:	; 0 bytes @ 0x0
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
?_inc_gui16TimerMs_Value:	; 0 bytes @ 0x0
??_inc_gui16TimerMs_Value:	; 0 bytes @ 0x0
?_inc_gui16TimerSec_Value:	; 0 bytes @ 0x0
??_inc_gui16TimerSec_Value:	; 0 bytes @ 0x0
?_isr:	; 0 bytes @ 0x0
?_get_gblInitialized_FlagValue:	; 1 bytes @ 0x0
?_get_gblISRLocked_FlagValue:	; 1 bytes @ 0x0
?i1___bmul:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	i1___bmul@multiplicand
i1___bmul@multiplicand:	; 1 bytes @ 0x0
	ds	1
??_userIntISR:	; 0 bytes @ 0x1
??i1___bmul:	; 0 bytes @ 0x1
	ds	1
	global	i1___bmul@multiplier
i1___bmul@multiplier:	; 1 bytes @ 0x2
	ds	1
	global	i1___bmul@product
i1___bmul@product:	; 1 bytes @ 0x3
	ds	1
??_softDACController:	; 0 bytes @ 0x4
	ds	2
	global	softDACController@blScheduleCleared
softDACController@blScheduleCleared:	; 1 bytes @ 0x6
	ds	1
	global	softDACController@ui8Counter
softDACController@ui8Counter:	; 1 bytes @ 0x7
	ds	1
??_timer8BitISR:	; 0 bytes @ 0x8
??_isr:	; 0 bytes @ 0x8
	ds	4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_setupGpio:	; 0 bytes @ 0x0
??_set_gblInitialized_FlagValue:	; 0 bytes @ 0x0
??_get_gblInitialized_FlagValue:	; 0 bytes @ 0x0
??_get_gblISRLocked_FlagValue:	; 0 bytes @ 0x0
?___bmul:	; 1 bytes @ 0x0
	global	?_get_gui16TimerMs_Value
?_get_gui16TimerMs_Value:	; 2 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	ds	1
??___bmul:	; 0 bytes @ 0x1
	global	get_gblInitialized_FlagValue@blTemp
get_gblInitialized_FlagValue@blTemp:	; 1 bytes @ 0x1
	global	get_gblISRLocked_FlagValue@blTemp
get_gblISRLocked_FlagValue@blTemp:	; 1 bytes @ 0x1
	ds	1
??_setupADC:	; 0 bytes @ 0x2
??_get_gui16TimerMs_Value:	; 0 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	get_gui16TimerMs_Value@ui16Temp
get_gui16TimerMs_Value@ui16Temp:	; 2 bytes @ 0x2
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	ds	1
??_bubbleSortDAC:	; 0 bytes @ 0x4
	global	?_getMs
?_getMs:	; 2 bytes @ 0x4
	global	?_getElapsedMs
?_getElapsedMs:	; 2 bytes @ 0x4
	global	setupADC@eVrefSource
setupADC@eVrefSource:	; 1 bytes @ 0x4
	global	getElapsedMs@ui16TimeMs
getElapsedMs@ui16TimeMs:	; 2 bytes @ 0x4
	ds	2
??_getMs:	; 0 bytes @ 0x6
??_getElapsedMs:	; 0 bytes @ 0x6
	global	getMs@ui16TempBuff
getMs@ui16TempBuff:	; 2 bytes @ 0x6
	ds	2
	global	bubbleSortDAC@ui8MaxCount
bubbleSortDAC@ui8MaxCount:	; 1 bytes @ 0x8
	global	getElapsedMs@ui16TempBuff
getElapsedMs@ui16TempBuff:	; 2 bytes @ 0x8
	ds	1
	global	bubbleSortDAC@ui8Counter1
bubbleSortDAC@ui8Counter1:	; 1 bytes @ 0x9
	ds	1
	global	bubbleSortDAC@blOnGoing
bubbleSortDAC@blOnGoing:	; 1 bytes @ 0xA
	ds	1
	global	bubbleSortDAC@ui8TempBuff
bubbleSortDAC@ui8TempBuff:	; 1 bytes @ 0xB
	ds	1
	global	bubbleSortDAC@ui8Counter
bubbleSortDAC@ui8Counter:	; 1 bytes @ 0xC
	ds	1
?_setupSoftDAC:	; 0 bytes @ 0xD
?_setSoftDAC:	; 0 bytes @ 0xD
	global	setupSoftDAC@ui8Pin
setupSoftDAC@ui8Pin:	; 1 bytes @ 0xD
	global	setSoftDAC@ui8Value
setSoftDAC@ui8Value:	; 1 bytes @ 0xD
	ds	1
??_setSoftDAC:	; 0 bytes @ 0xE
	global	setupSoftDAC@ui8Value
setupSoftDAC@ui8Value:	; 1 bytes @ 0xE
	ds	1
??_setupSoftDAC:	; 0 bytes @ 0xF
	ds	1
	global	setSoftDAC@eSDACModule
setSoftDAC@eSDACModule:	; 1 bytes @ 0x10
	ds	1
	global	setupSoftDAC@blScheduled
setupSoftDAC@blScheduled:	; 1 bytes @ 0x11
	global	setSoftDAC@ui8Counter
setSoftDAC@ui8Counter:	; 1 bytes @ 0x11
	ds	1
??_cycle:	; 0 bytes @ 0x12
	global	setupSoftDAC@eSDACModule
setupSoftDAC@eSDACModule:	; 1 bytes @ 0x12
	ds	1
	global	setupSoftDAC@ui8Counter
setupSoftDAC@ui8Counter:	; 1 bytes @ 0x13
	ds	1
??_init:	; 0 bytes @ 0x14
	ds	2
??_main:	; 0 bytes @ 0x16
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        37
;!    BSS         129
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      14
;!    BANK0            80     23      80
;!    BANK1            80      0      68
;!    BANK3            96      0      39
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
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
;!    pt2TMR1ISR	PTR FTN()void  size(1) Largest target is 0
;!		 -> null16BitTMRFunction(), 
;!
;!    pt2TMR2ISR	PTR FTN()void  size(1) Largest target is 0
;!		 -> nullTMRFunction(), softDACController(), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _isr in COMMON
;!
;!    _userIntISR->_rbIntISR
;!    _timer8BitISR->_softDACController
;!    _softDACController->i1___bmul
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_init
;!    _setupADC->_get_gblInitialized_FlagValue
;!    _init->_setupSoftDAC
;!    _setupSoftDAC->_bubbleSortDAC
;!    _cycle->_setSoftDAC
;!    _setSoftDAC->_bubbleSortDAC
;!    _bubbleSortDAC->___bmul
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0    5836
;!                                             22 BANK0      1     1      0
;!                              _cycle
;!                               _init
;!       _set_gblInitialized_FlagValue
;!                           _setupADC
;!                          _setupGpio
;! ---------------------------------------------------------------------------------
;! (1) _setupGpio                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _setupADC                                             3     3      0      45
;!                                              2 BANK0      3     3      0
;!       _get_gblInitialized_FlagValue
;! ---------------------------------------------------------------------------------
;! (2) _get_gblInitialized_FlagValue                         2     2      0      23
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _set_gblInitialized_FlagValue                         1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 2     2      0    2884
;!                                             20 BANK0      2     2      0
;!                              _getMs
;!                       _setupSoftDAC
;! ---------------------------------------------------------------------------------
;! (2) _setupSoftDAC                                         7     5      2    2815
;!                                             13 BANK0      7     5      2
;!                             ___bmul
;!                      _bubbleSortDAC
;! ---------------------------------------------------------------------------------
;! (1) _cycle                                                1     1      0    2907
;!                                             18 BANK0      1     1      0
;!                       _getElapsedMs
;!                              _getMs
;!                         _setSoftDAC
;! ---------------------------------------------------------------------------------
;! (2) _setSoftDAC                                           5     4      1    2694
;!                                             13 BANK0      5     4      1
;!                             ___bmul
;!                      _bubbleSortDAC
;! ---------------------------------------------------------------------------------
;! (3) _bubbleSortDAC                                        9     9      0    1468
;!                                              4 BANK0      9     9      0
;!                             ___bmul
;! ---------------------------------------------------------------------------------
;! (4) ___bmul                                               4     3      1     973
;!                                              0 BANK0      4     3      1
;! ---------------------------------------------------------------------------------
;! (2) _getMs                                                4     2      2      69
;!                                              4 BANK0      4     2      2
;!         _get_gblISRLocked_FlagValue
;!             _get_gui16TimerMs_Value
;! ---------------------------------------------------------------------------------
;! (2) _getElapsedMs                                         6     4      2     144
;!                                              4 BANK0      6     4      2
;!         _get_gblISRLocked_FlagValue
;!             _get_gui16TimerMs_Value
;! ---------------------------------------------------------------------------------
;! (3) _get_gui16TimerMs_Value                               4     2      2      23
;!                                              0 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (3) _get_gblISRLocked_FlagValue                           2     2      0      23
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _isr                                                  4     4      0     317
;!                                              8 COMMON     4     4      0
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
;! (6) _timerISR                                             0     0      0       0
;!             _inc_gui16TimerMs_Value
;!            _inc_gui16TimerSec_Value
;! ---------------------------------------------------------------------------------
;! (7) _inc_gui16TimerSec_Value                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _inc_gui16TimerMs_Value                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _timer8BitISR                                         0     0      0     317
;!                    _nullTMRFunction *
;!                  _softDACController *
;! ---------------------------------------------------------------------------------
;! (7) _softDACController                                    4     4      0     317
;!                                              4 COMMON     4     4      0
;!                           i1___bmul
;! ---------------------------------------------------------------------------------
;! (8) i1___bmul                                             4     3      1     201
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
;!   _cycle
;!     _getElapsedMs
;!       _get_gblISRLocked_FlagValue
;!       _get_gui16TimerMs_Value
;!     _getMs
;!       _get_gblISRLocked_FlagValue
;!       _get_gui16TimerMs_Value
;!     _setSoftDAC
;!       ___bmul
;!       _bubbleSortDAC
;!         ___bmul
;!   _init
;!     _getMs
;!       _get_gblISRLocked_FlagValue
;!       _get_gui16TimerMs_Value
;!     _setupSoftDAC
;!       ___bmul
;!       _bubbleSortDAC
;!         ___bmul
;!   _set_gblInitialized_FlagValue
;!   _setupADC
;!     _get_gblInitialized_FlagValue
;!   _setupGpio
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
;!     _softDACController *
;!       i1___bmul
;!   _timerISR
;!     _inc_gui16TimerMs_Value
;!     _inc_gui16TimerSec_Value
;!   _userIntISR
;!     _extIntISR
;!       _nullIntFunction *
;!     _rbIntISR
;!       _nullIntFunction *
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0      27       9       40.6%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0      44       7       85.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     17      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      C       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      C9      12        0.0%
;!ABS                  0      0      C9       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 146 in file "hardware/cores\PhilRoboKit_CoreLib_Macro.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  611[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_cycle
;;		_init
;;		_set_gblInitialized_FlagValue
;;		_setupADC
;;		_setupGpio
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	146
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	146
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	149
	
l4561:	
	fcall	_setupGpio
	line	151
	
l4563:	
	movlw	(0F8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(129)^080h,f	;volatile
	
l4565:	
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(129)^080h,f	;volatile
	
l4567:	
	bcf	(1037/8)^080h,(1037)&7	;volatile
	
l4569:	
	bcf	(1035/8)^080h,(1035)&7	;volatile
	
l4571:	
	movlw	(0D9h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	
l4573:	
	bcf	(90/8),(90)&7	;volatile
	
l4575:	
	bsf	(93/8),(93)&7	;volatile
	line	154
	
l4577:	
	movlw	(0)
	fcall	_setupADC
	line	158
	
l4579:	
	bsf	(95/8),(95)&7	;volatile
	
l4581:	
	bsf	(94/8),(94)&7	;volatile
	line	159
	
l4583:	
	fcall	_set_gblInitialized_FlagValue
	line	161
	
l4585:	
	fcall	_init
	line	163
	goto	l4587
	
l613:	
	line	165
	
l4587:	
	fcall	_cycle
	goto	l4587
	line	166
	
l612:	
	line	163
	goto	l4587
	
l614:	
	line	169
;	Return value of _main is never used
	
l615:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
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
psect	text1,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_gpio.c"
	line	65
global __ptext1
__ptext1:	;psect for function _setupGpio
psect	text1
	file	"hardware/cores/lib\corelib_gpio.c"
	line	65
	global	__size_of_setupGpio
	__size_of_setupGpio	equ	__end_of_setupGpio-_setupGpio
	
_setupGpio:	
;incstack = 0
	opt	stack 3
; Regs used in _setupGpio: [wreg+status,2]
	line	69
	
l4347:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	70
	
l4349:	
	movlw	(03Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	73
	
l4351:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	74
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	77
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	78
	movlw	(0BFh)
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
	
l824:	
	return
	opt stack 0
GLOBAL	__end_of_setupGpio
	__end_of_setupGpio:
	signat	_setupGpio,88
	global	_setupADC

;; *************** function _setupADC *****************
;; Defined at:
;;		line 170 in file "hardware/cores/lib\corelib_adc.c"
;; Parameters:    Size  Location     Type
;;  eVrefSource     1    wreg     enum E1226
;; Auto vars:     Size  Location     Type
;;  eVrefSource     1    4[BANK0 ] enum E1226
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
;;		_get_gblInitialized_FlagValue
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_adc.c"
	line	170
global __ptext2
__ptext2:	;psect for function _setupADC
psect	text2
	file	"hardware/cores/lib\corelib_adc.c"
	line	170
	global	__size_of_setupADC
	__size_of_setupADC	equ	__end_of_setupADC-_setupADC
	
_setupADC:	
;incstack = 0
	opt	stack 2
; Regs used in _setupADC: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setupADC@eVrefSource)
	line	173
	
l4353:	
	bcf	(248/8),(248)&7	;volatile
	line	175
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(133)^080h+(0/8),(0)&7	;volatile
	line	176
	bsf	(133)^080h+(1/8),(1)&7	;volatile
	line	177
	bsf	(133)^080h+(2/8),(2)&7	;volatile
	line	178
	bsf	(133)^080h+(5/8),(5)&7	;volatile
	line	179
	bsf	(137)^080h+(0/8),(0)&7	;volatile
	line	180
	bsf	(137)^080h+(1/8),(1)&7	;volatile
	line	181
	bsf	(137)^080h+(2/8),(2)&7	;volatile
	line	183
	
l4355:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setupADC@eVrefSource),w
	xorlw	01h
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l4361
u2240:
	line	186
	
l4357:	
	movlw	(0F0h)
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(159)^080h,f	;volatile
	
l4359:	
	bsf	(159)^080h+(0/8),(0)&7	;volatile
	line	190
	goto	l4365
	line	191
	
l744:	
	line	194
	
l4361:	
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(159)^080h,f	;volatile
	
l4363:	
	movf	(159)^080h,w	;volatile
	goto	l4365
	line	198
	
l745:	
	line	200
	
l4365:	
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	andwf	(31),f	;volatile
	
l4367:	
	bsf	(31)+(7/8),(7)&7	;volatile
	
l4369:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1278/8)^080h,(1278)&7	;volatile
	
l4371:	
	bsf	(1279/8)^080h,(1279)&7	;volatile
	line	202
	
l4373:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_eCurrentChannel)
	line	203
	
l4375:	
	movlw	(0C7h)
	movwf	(??_setupADC+0)+0
	movf	(??_setupADC+0)+0,w
	andwf	(31),f	;volatile
	
l4377:	
	movf	(_eCurrentChannel),w
	movwf	(??_setupADC+0)+0
	movlw	(03h)-1
u2255:
	clrc
	rlf	(??_setupADC+0)+0,f
	addlw	-1
	skipz
	goto	u2255
	clrc
	rlf	(??_setupADC+0)+0,w
	andlw	038h
	movwf	(??_setupADC+1)+0
	movf	(??_setupADC+1)+0,w
	iorwf	(31),f	;volatile
	line	205
	
l4379:	
	bcf	(102/8),(102)&7	;volatile
	line	206
	
l4381:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1126/8)^080h,(1126)&7	;volatile
	line	208
	
l4383:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7	;volatile
	line	209
	goto	l746
	
l747:	
	
l746:	
	btfsc	(95/8),(95)&7	;volatile
	goto	u2261
	goto	u2260
u2261:
	goto	l750
u2260:
	
l4385:	
	fcall	_get_gblInitialized_FlagValue
	xorlw	01h
	skipnz
	goto	u2271
	goto	u2270
u2271:
	goto	l746
u2270:
	goto	l750
	
l749:	
	
l750:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	
l4387:	
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_setupADC+0)+0,f
u3177:
decfsz	(??_setupADC+0)+0,f
	goto	u3177
	nop
opt asmopt_on

	
l4389:	
	bsf	(95/8),(95)&7	;volatile
	
l4391:	
	bsf	(94/8),(94)&7	;volatile
	line	211
	
l4393:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	212
	
l751:	
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
psect	text3,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	65
global __ptext3
__ptext3:	;psect for function _get_gblInitialized_FlagValue
psect	text3
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	65
	global	__size_of_get_gblInitialized_FlagValue
	__size_of_get_gblInitialized_FlagValue	equ	__end_of_get_gblInitialized_FlagValue-_get_gblInitialized_FlagValue
	
_get_gblInitialized_FlagValue:	
;incstack = 0
	opt	stack 2
; Regs used in _get_gblInitialized_FlagValue: [wreg]
	line	68
	
l4195:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gblInitialized),w	;volatile
	movwf	(??_get_gblInitialized_FlagValue+0)+0
	movf	(??_get_gblInitialized_FlagValue+0)+0,w
	movwf	(get_gblInitialized_FlagValue@blTemp)
	line	69
	movf	(get_gblInitialized_FlagValue@blTemp),w
	goto	l542
	
l4197:	
	line	70
	
l542:	
	return
	opt stack 0
GLOBAL	__end_of_get_gblInitialized_FlagValue
	__end_of_get_gblInitialized_FlagValue:
	signat	_get_gblInitialized_FlagValue,89
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
psect	text4,local,class=CODE,delta=2,merge=1
	line	60
global __ptext4
__ptext4:	;psect for function _set_gblInitialized_FlagValue
psect	text4
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	60
	global	__size_of_set_gblInitialized_FlagValue
	__size_of_set_gblInitialized_FlagValue	equ	__end_of_set_gblInitialized_FlagValue-_set_gblInitialized_FlagValue
	
_set_gblInitialized_FlagValue:	
;incstack = 0
	opt	stack 3
; Regs used in _set_gblInitialized_FlagValue: [wreg]
	line	62
	
l4337:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_set_gblInitialized_FlagValue+0)+0
	movf	(??_set_gblInitialized_FlagValue+0)+0,w
	movwf	(_gblInitialized)	;volatile
	line	63
	
l539:	
	return
	opt stack 0
GLOBAL	__end_of_set_gblInitialized_FlagValue
	__end_of_set_gblInitialized_FlagValue:
	signat	_set_gblInitialized_FlagValue,88
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 11 in file "C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.c"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_getMs
;;		_setupSoftDAC
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.c"
	line	11
global __ptext5
__ptext5:	;psect for function _init
psect	text5
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.c"
	line	11
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 0
; Regs used in _init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	13
	
l4307:	
	movlw	(01Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_init+0)+0
	movf	(??_init+0)+0,w
	movwf	(setupSoftDAC@ui8Pin)
	movf	(_ADCOutValue),w
	movwf	(??_init+1)+0
	movf	(??_init+1)+0,w
	movwf	(setupSoftDAC@ui8Value)
	movlw	(0)
	fcall	_setupSoftDAC
	line	14
	
l4309:	
	fcall	_getMs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_getMs)),w
	clrf	(_LoopTimer+1)
	addwf	(_LoopTimer+1)
	movf	(0+(?_getMs)),w
	clrf	(_LoopTimer)
	addwf	(_LoopTimer)

	line	15
	
l25:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_setupSoftDAC

;; *************** function _setupSoftDAC *****************
;; Defined at:
;;		line 91 in file "libraries/soft_dac\soft_dac.c"
;; Parameters:    Size  Location     Type
;;  eSDACModule     1    wreg     enum E1473
;;  ui8Pin          1   13[BANK0 ] unsigned char 
;;  ui8Value        1   14[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  eSDACModule     1   18[BANK0 ] enum E1473
;;  ui8Counter      1   19[BANK0 ] unsigned char 
;;  blScheduled     1   17[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___bmul
;;		_bubbleSortDAC
;; This function is called by:
;;		_init
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"libraries/soft_dac\soft_dac.c"
	line	91
global __ptext6
__ptext6:	;psect for function _setupSoftDAC
psect	text6
	file	"libraries/soft_dac\soft_dac.c"
	line	91
	global	__size_of_setupSoftDAC
	__size_of_setupSoftDAC	equ	__end_of_setupSoftDAC-_setupSoftDAC
	
_setupSoftDAC:	
;incstack = 0
	opt	stack 0
; Regs used in _setupSoftDAC: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setupSoftDAC@eSDACModule)
	line	94
	
l3499:	
	clrf	(setupSoftDAC@blScheduled)
	line	98
	
l3501:	
	movlw	(0FCh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(18),f	;volatile
	
l3503:	
	bsf	(18)+(1/8),(1)&7	;volatile
	
l3505:	
	movlw	(087h)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(18),f	;volatile
	
l3507:	
	bsf	(18)+(4/8),(4)&7	;volatile
	
l3509:	
	movlw	((fp__softDACController-fpbase))&0ffh
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	movwf	(_pt2TMR2ISR)
	line	101
	goto	l3571
	
l85:	
	
l3511:	
	movlw	(0FEh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	goto	l3573
	
l87:	
	
l3513:	
	movlw	(0FDh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	goto	l3573
	
l88:	
	
l3515:	
	movlw	(0FBh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	goto	l3573
	
l89:	
	
l3517:	
	movlw	(0F7h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	goto	l3573
	
l90:	
	
l3519:	
	movlw	(0EFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	goto	l3573
	
l91:	
	
l3521:	
	movlw	(0DFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	goto	l3573
	
l92:	
	
l3523:	
	movlw	(0BFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	goto	l3573
	
l93:	
	
l3525:	
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	goto	l3573
	
l94:	
	
l3527:	
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,f	;volatile
	goto	l3573
	
l95:	
	
l3529:	
	movlw	(0FDh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,f	;volatile
	goto	l3573
	
l96:	
	
l3531:	
	movlw	(0FBh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,f	;volatile
	goto	l3573
	
l97:	
	
l3533:	
	movlw	(0F7h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,f	;volatile
	goto	l3573
	
l98:	
	
l3535:	
	movlw	(0EFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,f	;volatile
	goto	l3573
	
l99:	
	
l3537:	
	movlw	(0DFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(134)^080h,f	;volatile
	goto	l3573
	
l100:	
	
l3539:	
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(133)^080h,f	;volatile
	goto	l3573
	
l101:	
	
l3541:	
	movlw	(0FDh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(133)^080h,f	;volatile
	goto	l3573
	
l102:	
	
l3543:	
	movlw	(0FBh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(133)^080h,f	;volatile
	goto	l3573
	
l103:	
	
l3545:	
	movlw	(0DFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(133)^080h,f	;volatile
	goto	l3573
	
l104:	
	
l3547:	
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(137)^080h,f	;volatile
	goto	l3573
	
l105:	
	
l3549:	
	movlw	(0FDh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(137)^080h,f	;volatile
	goto	l3573
	
l106:	
	
l3551:	
	movlw	(0FBh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(137)^080h,f	;volatile
	goto	l3573
	
l107:	
	
l3553:	
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(136)^080h,f	;volatile
	goto	l3573
	
l108:	
	
l3555:	
	movlw	(0FDh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(136)^080h,f	;volatile
	goto	l3573
	
l109:	
	
l3557:	
	movlw	(0FBh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(136)^080h,f	;volatile
	goto	l3573
	
l110:	
	
l3559:	
	movlw	(0F7h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(136)^080h,f	;volatile
	goto	l3573
	
l111:	
	
l3561:	
	movlw	(0EFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(136)^080h,f	;volatile
	goto	l3573
	
l112:	
	
l3563:	
	movlw	(0DFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(136)^080h,f	;volatile
	goto	l3573
	
l113:	
	
l3565:	
	movlw	(0BFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(136)^080h,f	;volatile
	goto	l3573
	
l114:	
	
l3567:	
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(136)^080h,f	;volatile
	goto	l3573
	
l3569:	
	goto	l3573
	
l84:	
	
l3571:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(setupSoftDAC@ui8Pin),w
	; Switch size 1, requested type "space"
; Number of cases is 29, Range of values is 0 to 28
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           88    45 (average)
; direct_byte           95     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3511
	xorlw	1^0	; case 1
	skipnz
	goto	l3513
	xorlw	2^1	; case 2
	skipnz
	goto	l3515
	xorlw	3^2	; case 3
	skipnz
	goto	l3517
	xorlw	4^3	; case 4
	skipnz
	goto	l3519
	xorlw	5^4	; case 5
	skipnz
	goto	l3521
	xorlw	6^5	; case 6
	skipnz
	goto	l3523
	xorlw	7^6	; case 7
	skipnz
	goto	l3525
	xorlw	8^7	; case 8
	skipnz
	goto	l3527
	xorlw	9^8	; case 9
	skipnz
	goto	l3529
	xorlw	10^9	; case 10
	skipnz
	goto	l3531
	xorlw	11^10	; case 11
	skipnz
	goto	l3533
	xorlw	12^11	; case 12
	skipnz
	goto	l3535
	xorlw	13^12	; case 13
	skipnz
	goto	l3537
	xorlw	14^13	; case 14
	skipnz
	goto	l3539
	xorlw	15^14	; case 15
	skipnz
	goto	l3541
	xorlw	16^15	; case 16
	skipnz
	goto	l3543
	xorlw	17^16	; case 17
	skipnz
	goto	l3545
	xorlw	18^17	; case 18
	skipnz
	goto	l3547
	xorlw	19^18	; case 19
	skipnz
	goto	l3549
	xorlw	20^19	; case 20
	skipnz
	goto	l3551
	xorlw	21^20	; case 21
	skipnz
	goto	l3553
	xorlw	22^21	; case 22
	skipnz
	goto	l3555
	xorlw	23^22	; case 23
	skipnz
	goto	l3557
	xorlw	24^23	; case 24
	skipnz
	goto	l3559
	xorlw	25^24	; case 25
	skipnz
	goto	l3561
	xorlw	26^25	; case 26
	skipnz
	goto	l3563
	xorlw	27^26	; case 27
	skipnz
	goto	l3565
	xorlw	28^27	; case 28
	skipnz
	goto	l3567
	goto	l3573
	opt asmopt_on

	
l86:	
	line	104
	
l3573:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(setupSoftDAC@ui8Counter)
	goto	l3583
	line	105
	
l116:	
	line	106
	
l3575:	
	movlw	(03h)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(setupSoftDAC@ui8Counter),w
	fcall	___bmul
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(setupSoftDAC@eSDACModule),w
	skipz
	goto	u1751
	goto	u1750
u1751:
	goto	l3581
u1750:
	line	109
	
l3577:	
	movf	(setupSoftDAC@ui8Pin),w
	movwf	(??_setupSoftDAC+0)+0
	movlw	(03h)
	movwf	(??_setupSoftDAC+1)+0
	movf	(??_setupSoftDAC+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(setupSoftDAC@ui8Counter),w
	fcall	___bmul
	addlw	01h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_setupSoftDAC+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	110
	movf	(setupSoftDAC@ui8Value),w
	movwf	(??_setupSoftDAC+0)+0
	movlw	(03h)
	movwf	(??_setupSoftDAC+1)+0
	movf	(??_setupSoftDAC+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(setupSoftDAC@ui8Counter),w
	fcall	___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_setupSoftDAC+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	112
	
l3579:	
	clrf	(setupSoftDAC@blScheduled)
	incf	(setupSoftDAC@blScheduled),f
	goto	l3581
	line	113
	
l117:	
	line	104
	
l3581:	
	movlw	(01h)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	addwf	(setupSoftDAC@ui8Counter),f
	goto	l3583
	
l115:	
	
l3583:	
	movf	(_ui8DACScheduleTail),w
	subwf	(setupSoftDAC@ui8Counter),w
	skipc
	goto	u1761
	goto	u1760
u1761:
	goto	l3575
u1760:
	goto	l3585
	
l118:	
	line	117
	
l3585:	
	movf	(setupSoftDAC@blScheduled),f
	skipz
	goto	u1771
	goto	u1770
u1771:
	goto	l3591
u1770:
	line	119
	
l3587:	
	movf	(setupSoftDAC@eSDACModule),w
	movwf	(??_setupSoftDAC+0)+0
	movlw	(03h)
	movwf	(??_setupSoftDAC+1)+0
	movf	(??_setupSoftDAC+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(_ui8DACScheduleTail),w
	fcall	___bmul
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_setupSoftDAC+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	120
	movf	(setupSoftDAC@ui8Pin),w
	movwf	(??_setupSoftDAC+0)+0
	movlw	(03h)
	movwf	(??_setupSoftDAC+1)+0
	movf	(??_setupSoftDAC+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(_ui8DACScheduleTail),w
	fcall	___bmul
	addlw	01h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_setupSoftDAC+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	121
	movf	(setupSoftDAC@ui8Value),w
	movwf	(??_setupSoftDAC+0)+0
	movlw	(03h)
	movwf	(??_setupSoftDAC+1)+0
	movf	(??_setupSoftDAC+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(_ui8DACScheduleTail),w
	fcall	___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_setupSoftDAC+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	122
	
l3589:	
	movlw	(01h)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	addwf	(_ui8DACScheduleTail),f
	goto	l3591
	line	123
	
l119:	
	line	126
	
l3591:	
	movf	(setupSoftDAC@blKickstarted),f
	skipz
	goto	u1781
	goto	u1780
u1781:
	goto	l3687
u1780:
	line	128
	
l3593:	
	clrf	(setupSoftDAC@blKickstarted)
	incf	(setupSoftDAC@blKickstarted),f
	line	131
	
l3595:	
	movf	0+(_astDACModuleSchedule)+02h,w
	skipz
	goto	u1790
	goto	l3663
u1790:
	goto	l3601
	line	133
	
l3597:	
	goto	l3601
	
l123:	
	bsf	(7)+(0/8),(0)&7	;volatile
	goto	l3665
	
l125:	
	bsf	(7)+(1/8),(1)&7	;volatile
	goto	l3665
	
l126:	
	bsf	(7)+(2/8),(2)&7	;volatile
	goto	l3665
	
l127:	
	bsf	(7)+(3/8),(3)&7	;volatile
	goto	l3665
	
l128:	
	bsf	(7)+(4/8),(4)&7	;volatile
	goto	l3665
	
l129:	
	bsf	(7)+(5/8),(5)&7	;volatile
	goto	l3665
	
l130:	
	bsf	(7)+(6/8),(6)&7	;volatile
	goto	l3665
	
l131:	
	bsf	(7)+(7/8),(7)&7	;volatile
	goto	l3665
	
l132:	
	bsf	(6)+(0/8),(0)&7	;volatile
	goto	l3665
	
l133:	
	bsf	(6)+(1/8),(1)&7	;volatile
	goto	l3665
	
l134:	
	bsf	(6)+(2/8),(2)&7	;volatile
	goto	l3665
	
l135:	
	bsf	(6)+(3/8),(3)&7	;volatile
	goto	l3665
	
l136:	
	bsf	(6)+(4/8),(4)&7	;volatile
	goto	l3665
	
l137:	
	bsf	(6)+(5/8),(5)&7	;volatile
	goto	l3665
	
l138:	
	bsf	(5)+(0/8),(0)&7	;volatile
	goto	l3665
	
l139:	
	bsf	(5)+(1/8),(1)&7	;volatile
	goto	l3665
	
l140:	
	bsf	(5)+(2/8),(2)&7	;volatile
	goto	l3665
	
l141:	
	bsf	(5)+(5/8),(5)&7	;volatile
	goto	l3665
	
l142:	
	bsf	(9)+(0/8),(0)&7	;volatile
	goto	l3665
	
l143:	
	bsf	(9)+(1/8),(1)&7	;volatile
	goto	l3665
	
l144:	
	bsf	(9)+(2/8),(2)&7	;volatile
	goto	l3665
	
l145:	
	bsf	(8)+(0/8),(0)&7	;volatile
	goto	l3665
	
l146:	
	bsf	(8)+(1/8),(1)&7	;volatile
	goto	l3665
	
l147:	
	bsf	(8)+(2/8),(2)&7	;volatile
	goto	l3665
	
l148:	
	bsf	(8)+(3/8),(3)&7	;volatile
	goto	l3665
	
l149:	
	bsf	(8)+(4/8),(4)&7	;volatile
	goto	l3665
	
l150:	
	bsf	(8)+(5/8),(5)&7	;volatile
	goto	l3665
	
l151:	
	bsf	(8)+(6/8),(6)&7	;volatile
	goto	l3665
	
l152:	
	bsf	(8)+(7/8),(7)&7	;volatile
	goto	l3665
	
l3599:	
	goto	l3665
	
l122:	
	
l3601:	
	movf	0+(_astDACModuleSchedule)+01h,w
	; Switch size 1, requested type "space"
; Number of cases is 29, Range of values is 0 to 28
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           88    45 (average)
; direct_byte           95     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l123
	xorlw	1^0	; case 1
	skipnz
	goto	l125
	xorlw	2^1	; case 2
	skipnz
	goto	l126
	xorlw	3^2	; case 3
	skipnz
	goto	l127
	xorlw	4^3	; case 4
	skipnz
	goto	l128
	xorlw	5^4	; case 5
	skipnz
	goto	l129
	xorlw	6^5	; case 6
	skipnz
	goto	l130
	xorlw	7^6	; case 7
	skipnz
	goto	l131
	xorlw	8^7	; case 8
	skipnz
	goto	l132
	xorlw	9^8	; case 9
	skipnz
	goto	l133
	xorlw	10^9	; case 10
	skipnz
	goto	l134
	xorlw	11^10	; case 11
	skipnz
	goto	l135
	xorlw	12^11	; case 12
	skipnz
	goto	l136
	xorlw	13^12	; case 13
	skipnz
	goto	l137
	xorlw	14^13	; case 14
	skipnz
	goto	l138
	xorlw	15^14	; case 15
	skipnz
	goto	l139
	xorlw	16^15	; case 16
	skipnz
	goto	l140
	xorlw	17^16	; case 17
	skipnz
	goto	l141
	xorlw	18^17	; case 18
	skipnz
	goto	l142
	xorlw	19^18	; case 19
	skipnz
	goto	l143
	xorlw	20^19	; case 20
	skipnz
	goto	l144
	xorlw	21^20	; case 21
	skipnz
	goto	l145
	xorlw	22^21	; case 22
	skipnz
	goto	l146
	xorlw	23^22	; case 23
	skipnz
	goto	l147
	xorlw	24^23	; case 24
	skipnz
	goto	l148
	xorlw	25^24	; case 25
	skipnz
	goto	l149
	xorlw	26^25	; case 26
	skipnz
	goto	l150
	xorlw	27^26	; case 27
	skipnz
	goto	l151
	xorlw	28^27	; case 28
	skipnz
	goto	l152
	goto	l3665
	opt asmopt_on

	
l124:	
	line	134
	goto	l3665
	line	135
	
l121:	
	line	137
	goto	l3663
	
l155:	
	
l3603:	
	movlw	(0FEh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3665
	
l157:	
	
l3605:	
	movlw	(0FDh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3665
	
l158:	
	
l3607:	
	movlw	(0FBh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3665
	
l159:	
	
l3609:	
	movlw	(0F7h)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3665
	
l160:	
	
l3611:	
	movlw	(0EFh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3665
	
l161:	
	
l3613:	
	movlw	(0DFh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3665
	
l162:	
	
l3615:	
	movlw	(0BFh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3665
	
l163:	
	
l3617:	
	movlw	(07Fh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3665
	
l164:	
	
l3619:	
	movlw	(0FEh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(6),f	;volatile
	goto	l3665
	
l165:	
	
l3621:	
	movlw	(0FDh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(6),f	;volatile
	goto	l3665
	
l166:	
	
l3623:	
	movlw	(0FBh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(6),f	;volatile
	goto	l3665
	
l167:	
	
l3625:	
	movlw	(0F7h)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(6),f	;volatile
	goto	l3665
	
l168:	
	
l3627:	
	movlw	(0EFh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(6),f	;volatile
	goto	l3665
	
l169:	
	
l3629:	
	movlw	(0DFh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(6),f	;volatile
	goto	l3665
	
l170:	
	
l3631:	
	movlw	(0FEh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(5),f	;volatile
	goto	l3665
	
l171:	
	
l3633:	
	movlw	(0FDh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(5),f	;volatile
	goto	l3665
	
l172:	
	
l3635:	
	movlw	(0FBh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(5),f	;volatile
	goto	l3665
	
l173:	
	
l3637:	
	movlw	(0DFh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(5),f	;volatile
	goto	l3665
	
l174:	
	
l3639:	
	movlw	(0FEh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(9),f	;volatile
	goto	l3665
	
l175:	
	
l3641:	
	movlw	(0FDh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(9),f	;volatile
	goto	l3665
	
l176:	
	
l3643:	
	movlw	(0FBh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(9),f	;volatile
	goto	l3665
	
l177:	
	
l3645:	
	movlw	(0FEh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3665
	
l178:	
	
l3647:	
	movlw	(0FDh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3665
	
l179:	
	
l3649:	
	movlw	(0FBh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3665
	
l180:	
	
l3651:	
	movlw	(0F7h)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3665
	
l181:	
	
l3653:	
	movlw	(0EFh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3665
	
l182:	
	
l3655:	
	movlw	(0DFh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3665
	
l183:	
	
l3657:	
	movlw	(0BFh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3665
	
l184:	
	
l3659:	
	movlw	(07Fh)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3665
	
l3661:	
	goto	l3665
	
l154:	
	
l3663:	
	movf	0+(_astDACModuleSchedule)+01h,w
	; Switch size 1, requested type "space"
; Number of cases is 29, Range of values is 0 to 28
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           88    45 (average)
; direct_byte           95     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3603
	xorlw	1^0	; case 1
	skipnz
	goto	l3605
	xorlw	2^1	; case 2
	skipnz
	goto	l3607
	xorlw	3^2	; case 3
	skipnz
	goto	l3609
	xorlw	4^3	; case 4
	skipnz
	goto	l3611
	xorlw	5^4	; case 5
	skipnz
	goto	l3613
	xorlw	6^5	; case 6
	skipnz
	goto	l3615
	xorlw	7^6	; case 7
	skipnz
	goto	l3617
	xorlw	8^7	; case 8
	skipnz
	goto	l3619
	xorlw	9^8	; case 9
	skipnz
	goto	l3621
	xorlw	10^9	; case 10
	skipnz
	goto	l3623
	xorlw	11^10	; case 11
	skipnz
	goto	l3625
	xorlw	12^11	; case 12
	skipnz
	goto	l3627
	xorlw	13^12	; case 13
	skipnz
	goto	l3629
	xorlw	14^13	; case 14
	skipnz
	goto	l3631
	xorlw	15^14	; case 15
	skipnz
	goto	l3633
	xorlw	16^15	; case 16
	skipnz
	goto	l3635
	xorlw	17^16	; case 17
	skipnz
	goto	l3637
	xorlw	18^17	; case 18
	skipnz
	goto	l3639
	xorlw	19^18	; case 19
	skipnz
	goto	l3641
	xorlw	20^19	; case 20
	skipnz
	goto	l3643
	xorlw	21^20	; case 21
	skipnz
	goto	l3645
	xorlw	22^21	; case 22
	skipnz
	goto	l3647
	xorlw	23^22	; case 23
	skipnz
	goto	l3649
	xorlw	24^23	; case 24
	skipnz
	goto	l3651
	xorlw	25^24	; case 25
	skipnz
	goto	l3653
	xorlw	26^25	; case 26
	skipnz
	goto	l3655
	xorlw	27^26	; case 27
	skipnz
	goto	l3657
	xorlw	28^27	; case 28
	skipnz
	goto	l3659
	goto	l3665
	opt asmopt_on

	
l156:	
	goto	l3665
	line	138
	
l153:	
	line	140
	
l3665:	
	clrf	(_ui8DACEngineStates)
	line	143
	
l3667:	
	movf	0+(_astDACModuleSchedule)+02h,w
	xorlw	0FFh
	skipnz
	goto	u1801
	goto	u1800
u1801:
	goto	l3679
u1800:
	line	145
	
l3669:	
	movf	0+(_astDACModuleSchedule)+02h,w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	
l3671:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	
l3673:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	
l3675:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	line	146
	
l3677:	
	movf	0+(_astDACModuleSchedule)+02h,w
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	movwf	(_ui8PrevValue)
	line	147
	goto	l188
	line	148
	
l185:	
	line	150
	
l3679:	
	movlw	(0FEh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	
l3681:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	
l3683:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	
l3685:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	line	151
	movlw	(04h)
	movwf	(??_setupSoftDAC+0)+0
	movf	(??_setupSoftDAC+0)+0,w
	movwf	(_ui8DACEngineStates)
	goto	l188
	line	152
	
l186:	
	line	153
	goto	l188
	line	154
	
l120:	
	line	157
	
l3687:	
	movf	(_ui8DACScheduleTail),w
	fcall	_bubbleSortDAC
	goto	l188
	line	158
	
l187:	
	line	159
	
l188:	
	return
	opt stack 0
GLOBAL	__end_of_setupSoftDAC
	__end_of_setupSoftDAC:
	signat	_setupSoftDAC,12408
	global	_cycle

;; *************** function _cycle *****************
;; Defined at:
;;		line 17 in file "C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.c"
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_getElapsedMs
;;		_getMs
;;		_setSoftDAC
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.c"
	line	17
global __ptext7
__ptext7:	;psect for function _cycle
psect	text7
	file	"C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.c"
	line	17
	global	__size_of_cycle
	__size_of_cycle	equ	__end_of_cycle-_cycle
	
_cycle:	
;incstack = 0
	opt	stack 0
; Regs used in _cycle: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	19
	
l4311:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LoopTimer+1),w
	clrf	(getElapsedMs@ui16TimeMs+1)
	addwf	(getElapsedMs@ui16TimeMs+1)
	movf	(_LoopTimer),w
	clrf	(getElapsedMs@ui16TimeMs)
	addwf	(getElapsedMs@ui16TimeMs)

	fcall	_getElapsedMs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_getElapsedMs)),w
	clrf	(_TimerDelta+1)
	addwf	(_TimerDelta+1)
	movf	(0+(?_getElapsedMs)),w
	clrf	(_TimerDelta)
	addwf	(_TimerDelta)

	line	21
	
l4313:	
	movlw	high(064h)
	subwf	(_TimerDelta+1),w
	movlw	low(064h)
	skipnz
	subwf	(_TimerDelta),w
	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l35
u2200:
	line	23
	
l4315:	
	fcall	_getMs
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_getMs)),w
	clrf	(_LoopTimer+1)
	addwf	(_LoopTimer+1)
	movf	(0+(?_getMs)),w
	clrf	(_LoopTimer)
	addwf	(_LoopTimer)

	line	25
	
l4317:	
	movlw	(018h)
	subwf	(_LEDCounter),w
	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l4323
u2210:
	line	27
	
l4319:	
	movlw	(018h)
	movwf	(??_cycle+0)+0
	movf	(??_cycle+0)+0,w
	movwf	(_LEDCounter)
	line	28
	
l4321:	
	clrf	(_LEDDirection)
	line	29
	goto	l4327
	line	30
	
l29:	
	
l4323:	
	movlw	(02h)
	subwf	(_LEDCounter),w
	skipnc
	goto	u2221
	goto	u2220
u2221:
	goto	l4327
u2220:
	line	32
	
l4325:	
	clrf	(_LEDDirection)
	incf	(_LEDDirection),f
	line	33
	clrf	(_LEDCounter)
	incf	(_LEDCounter),f
	line	34
	goto	l4327
	line	35
	
l31:	
	goto	l4327
	line	38
	
l32:	
	goto	l4327
	
l30:	
	line	40
	
l4327:	
	movf	(_LEDDirection),w
	skipz
	goto	u2230
	goto	l4331
u2230:
	line	42
	
l4329:	
	movlw	(01h)
	movwf	(??_cycle+0)+0
	movf	(??_cycle+0)+0,w
	addwf	(_LEDCounter),f
	line	43
	goto	l4333
	line	44
	
l33:	
	line	46
	
l4331:	
	movlw	low(01h)
	subwf	(_LEDCounter),f
	goto	l4333
	line	47
	
l34:	
	line	49
	
l4333:	
	movf	(_LEDCounter),w
	addlw	_LogLookup&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_cycle+0)+0
	movf	(??_cycle+0)+0,w
	movwf	(_ADCOutValue)
	line	50
	
l4335:	
	movf	(_ADCOutValue),w
	movwf	(??_cycle+0)+0
	movf	(??_cycle+0)+0,w
	movwf	(setSoftDAC@ui8Value)
	movlw	(0)
	fcall	_setSoftDAC
	goto	l35
	line	51
	
l28:	
	line	52
	
l35:	
	return
	opt stack 0
GLOBAL	__end_of_cycle
	__end_of_cycle:
	signat	_cycle,88
	global	_setSoftDAC

;; *************** function _setSoftDAC *****************
;; Defined at:
;;		line 179 in file "libraries/soft_dac\soft_dac.c"
;; Parameters:    Size  Location     Type
;;  eSDACModule     1    wreg     enum E1473
;;  ui8Value        1   13[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  eSDACModule     1   16[BANK0 ] enum E1473
;;  ui8Counter      1   17[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___bmul
;;		_bubbleSortDAC
;; This function is called by:
;;		_cycle
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"libraries/soft_dac\soft_dac.c"
	line	179
global __ptext8
__ptext8:	;psect for function _setSoftDAC
psect	text8
	file	"libraries/soft_dac\soft_dac.c"
	line	179
	global	__size_of_setSoftDAC
	__size_of_setSoftDAC	equ	__end_of_setSoftDAC-_setSoftDAC
	
_setSoftDAC:	
;incstack = 0
	opt	stack 0
; Regs used in _setSoftDAC: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setSoftDAC@eSDACModule)
	line	184
	
l3717:	
	clrf	(setSoftDAC@ui8Counter)
	goto	l3799
	line	185
	
l192:	
	line	186
	
l3719:	
	movlw	(03h)
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(setSoftDAC@ui8Counter),w
	fcall	___bmul
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(setSoftDAC@eSDACModule),w
	skipz
	goto	u1831
	goto	u1830
u1831:
	goto	l3797
u1830:
	line	188
	
l3721:	
	movf	(setSoftDAC@ui8Value),w
	movwf	(??_setSoftDAC+0)+0
	movlw	(03h)
	movwf	(??_setSoftDAC+1)+0
	movf	(??_setSoftDAC+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(setSoftDAC@ui8Counter),w
	fcall	___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_setSoftDAC+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	190
	
l3723:	
	movf	(setSoftDAC@ui8Value),f
	skipz
	goto	u1841
	goto	u1840
u1841:
	goto	l3789
u1840:
	goto	l3787
	line	192
	
l3725:	
	goto	l3787
	
l196:	
	
l3727:	
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3797
	
l198:	
	
l3729:	
	movlw	(0FDh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3797
	
l199:	
	
l3731:	
	movlw	(0FBh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3797
	
l200:	
	
l3733:	
	movlw	(0F7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3797
	
l201:	
	
l3735:	
	movlw	(0EFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3797
	
l202:	
	
l3737:	
	movlw	(0DFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3797
	
l203:	
	
l3739:	
	movlw	(0BFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3797
	
l204:	
	
l3741:	
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(7),f	;volatile
	goto	l3797
	
l205:	
	
l3743:	
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(6),f	;volatile
	goto	l3797
	
l206:	
	
l3745:	
	movlw	(0FDh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(6),f	;volatile
	goto	l3797
	
l207:	
	
l3747:	
	movlw	(0FBh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(6),f	;volatile
	goto	l3797
	
l208:	
	
l3749:	
	movlw	(0F7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(6),f	;volatile
	goto	l3797
	
l209:	
	
l3751:	
	movlw	(0EFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(6),f	;volatile
	goto	l3797
	
l210:	
	
l3753:	
	movlw	(0DFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(6),f	;volatile
	goto	l3797
	
l211:	
	
l3755:	
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(5),f	;volatile
	goto	l3797
	
l212:	
	
l3757:	
	movlw	(0FDh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(5),f	;volatile
	goto	l3797
	
l213:	
	
l3759:	
	movlw	(0FBh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(5),f	;volatile
	goto	l3797
	
l214:	
	
l3761:	
	movlw	(0DFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(5),f	;volatile
	goto	l3797
	
l215:	
	
l3763:	
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(9),f	;volatile
	goto	l3797
	
l216:	
	
l3765:	
	movlw	(0FDh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(9),f	;volatile
	goto	l3797
	
l217:	
	
l3767:	
	movlw	(0FBh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(9),f	;volatile
	goto	l3797
	
l218:	
	
l3769:	
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3797
	
l219:	
	
l3771:	
	movlw	(0FDh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3797
	
l220:	
	
l3773:	
	movlw	(0FBh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3797
	
l221:	
	
l3775:	
	movlw	(0F7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3797
	
l222:	
	
l3777:	
	movlw	(0EFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3797
	
l223:	
	
l3779:	
	movlw	(0DFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3797
	
l224:	
	
l3781:	
	movlw	(0BFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3797
	
l225:	
	
l3783:	
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	andwf	(8),f	;volatile
	goto	l3797
	
l3785:	
	goto	l3797
	
l195:	
	
l3787:	
	movlw	(03h)
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(setSoftDAC@ui8Counter),w
	fcall	___bmul
	addlw	01h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	; Switch size 1, requested type "space"
; Number of cases is 29, Range of values is 0 to 28
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           88    45 (average)
; direct_byte           95     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3727
	xorlw	1^0	; case 1
	skipnz
	goto	l3729
	xorlw	2^1	; case 2
	skipnz
	goto	l3731
	xorlw	3^2	; case 3
	skipnz
	goto	l3733
	xorlw	4^3	; case 4
	skipnz
	goto	l3735
	xorlw	5^4	; case 5
	skipnz
	goto	l3737
	xorlw	6^5	; case 6
	skipnz
	goto	l3739
	xorlw	7^6	; case 7
	skipnz
	goto	l3741
	xorlw	8^7	; case 8
	skipnz
	goto	l3743
	xorlw	9^8	; case 9
	skipnz
	goto	l3745
	xorlw	10^9	; case 10
	skipnz
	goto	l3747
	xorlw	11^10	; case 11
	skipnz
	goto	l3749
	xorlw	12^11	; case 12
	skipnz
	goto	l3751
	xorlw	13^12	; case 13
	skipnz
	goto	l3753
	xorlw	14^13	; case 14
	skipnz
	goto	l3755
	xorlw	15^14	; case 15
	skipnz
	goto	l3757
	xorlw	16^15	; case 16
	skipnz
	goto	l3759
	xorlw	17^16	; case 17
	skipnz
	goto	l3761
	xorlw	18^17	; case 18
	skipnz
	goto	l3763
	xorlw	19^18	; case 19
	skipnz
	goto	l3765
	xorlw	20^19	; case 20
	skipnz
	goto	l3767
	xorlw	21^20	; case 21
	skipnz
	goto	l3769
	xorlw	22^21	; case 22
	skipnz
	goto	l3771
	xorlw	23^22	; case 23
	skipnz
	goto	l3773
	xorlw	24^23	; case 24
	skipnz
	goto	l3775
	xorlw	25^24	; case 25
	skipnz
	goto	l3777
	xorlw	26^25	; case 26
	skipnz
	goto	l3779
	xorlw	27^26	; case 27
	skipnz
	goto	l3781
	xorlw	28^27	; case 28
	skipnz
	goto	l3783
	goto	l3797
	opt asmopt_on

	
l197:	
	line	193
	goto	l3797
	line	194
	
l194:	
	
l3789:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setSoftDAC@ui8Value),w
	xorlw	0FFh
	skipz
	goto	u1851
	goto	u1850
u1851:
	goto	l3797
u1850:
	goto	l3795
	line	196
	
l3791:	
	goto	l3795
	
l229:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(0/8),(0)&7	;volatile
	goto	l3797
	
l231:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(1/8),(1)&7	;volatile
	goto	l3797
	
l232:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(2/8),(2)&7	;volatile
	goto	l3797
	
l233:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(3/8),(3)&7	;volatile
	goto	l3797
	
l234:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(4/8),(4)&7	;volatile
	goto	l3797
	
l235:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(5/8),(5)&7	;volatile
	goto	l3797
	
l236:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(6/8),(6)&7	;volatile
	goto	l3797
	
l237:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(7/8),(7)&7	;volatile
	goto	l3797
	
l238:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6)+(0/8),(0)&7	;volatile
	goto	l3797
	
l239:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6)+(1/8),(1)&7	;volatile
	goto	l3797
	
l240:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6)+(2/8),(2)&7	;volatile
	goto	l3797
	
l241:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6)+(3/8),(3)&7	;volatile
	goto	l3797
	
l242:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6)+(4/8),(4)&7	;volatile
	goto	l3797
	
l243:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6)+(5/8),(5)&7	;volatile
	goto	l3797
	
l244:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(0/8),(0)&7	;volatile
	goto	l3797
	
l245:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(1/8),(1)&7	;volatile
	goto	l3797
	
l246:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(2/8),(2)&7	;volatile
	goto	l3797
	
l247:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(5/8),(5)&7	;volatile
	goto	l3797
	
l248:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9)+(0/8),(0)&7	;volatile
	goto	l3797
	
l249:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9)+(1/8),(1)&7	;volatile
	goto	l3797
	
l250:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9)+(2/8),(2)&7	;volatile
	goto	l3797
	
l251:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(0/8),(0)&7	;volatile
	goto	l3797
	
l252:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(1/8),(1)&7	;volatile
	goto	l3797
	
l253:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(2/8),(2)&7	;volatile
	goto	l3797
	
l254:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(3/8),(3)&7	;volatile
	goto	l3797
	
l255:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(4/8),(4)&7	;volatile
	goto	l3797
	
l256:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(5/8),(5)&7	;volatile
	goto	l3797
	
l257:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(6/8),(6)&7	;volatile
	goto	l3797
	
l258:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(7/8),(7)&7	;volatile
	goto	l3797
	
l3793:	
	goto	l3797
	
l228:	
	
l3795:	
	movlw	(03h)
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(setSoftDAC@ui8Counter),w
	fcall	___bmul
	addlw	01h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	; Switch size 1, requested type "space"
; Number of cases is 29, Range of values is 0 to 28
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           88    45 (average)
; direct_byte           95     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l229
	xorlw	1^0	; case 1
	skipnz
	goto	l231
	xorlw	2^1	; case 2
	skipnz
	goto	l232
	xorlw	3^2	; case 3
	skipnz
	goto	l233
	xorlw	4^3	; case 4
	skipnz
	goto	l234
	xorlw	5^4	; case 5
	skipnz
	goto	l235
	xorlw	6^5	; case 6
	skipnz
	goto	l236
	xorlw	7^6	; case 7
	skipnz
	goto	l237
	xorlw	8^7	; case 8
	skipnz
	goto	l238
	xorlw	9^8	; case 9
	skipnz
	goto	l239
	xorlw	10^9	; case 10
	skipnz
	goto	l240
	xorlw	11^10	; case 11
	skipnz
	goto	l241
	xorlw	12^11	; case 12
	skipnz
	goto	l242
	xorlw	13^12	; case 13
	skipnz
	goto	l243
	xorlw	14^13	; case 14
	skipnz
	goto	l244
	xorlw	15^14	; case 15
	skipnz
	goto	l245
	xorlw	16^15	; case 16
	skipnz
	goto	l246
	xorlw	17^16	; case 17
	skipnz
	goto	l247
	xorlw	18^17	; case 18
	skipnz
	goto	l248
	xorlw	19^18	; case 19
	skipnz
	goto	l249
	xorlw	20^19	; case 20
	skipnz
	goto	l250
	xorlw	21^20	; case 21
	skipnz
	goto	l251
	xorlw	22^21	; case 22
	skipnz
	goto	l252
	xorlw	23^22	; case 23
	skipnz
	goto	l253
	xorlw	24^23	; case 24
	skipnz
	goto	l254
	xorlw	25^24	; case 25
	skipnz
	goto	l255
	xorlw	26^25	; case 26
	skipnz
	goto	l256
	xorlw	27^26	; case 27
	skipnz
	goto	l257
	xorlw	28^27	; case 28
	skipnz
	goto	l258
	goto	l3797
	opt asmopt_on

	
l230:	
	line	197
	goto	l3797
	line	198
	
l227:	
	goto	l3797
	line	201
	
l259:	
	goto	l3797
	
l226:	
	goto	l3797
	line	202
	
l193:	
	line	184
	
l3797:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setSoftDAC+0)+0
	movf	(??_setSoftDAC+0)+0,w
	addwf	(setSoftDAC@ui8Counter),f
	goto	l3799
	
l191:	
	
l3799:	
	movf	(_ui8DACScheduleTail),w
	subwf	(setSoftDAC@ui8Counter),w
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l3719
u1860:
	goto	l3801
	
l260:	
	line	206
	
l3801:	
	movf	(_ui8DACScheduleTail),w
	fcall	_bubbleSortDAC
	line	207
	
l261:	
	return
	opt stack 0
GLOBAL	__end_of_setSoftDAC
	__end_of_setSoftDAC:
	signat	_setSoftDAC,8312
	global	_bubbleSortDAC

;; *************** function _bubbleSortDAC *****************
;; Defined at:
;;		line 268 in file "libraries/soft_dac\soft_dac.c"
;; Parameters:    Size  Location     Type
;;  ui8MaxCount     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8MaxCount     1    8[BANK0 ] unsigned char 
;;  ui8Counter      1   12[BANK0 ] unsigned char 
;;  ui8TempBuff     1   11[BANK0 ] unsigned char 
;;  blOnGoing       1   10[BANK0 ] unsigned char 
;;  ui8Counter1     1    9[BANK0 ] unsigned char 
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
;;      Locals:         0       5       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___bmul
;; This function is called by:
;;		_setupSoftDAC
;;		_setSoftDAC
;;		_removeSoftDAC
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	268
global __ptext9
__ptext9:	;psect for function _bubbleSortDAC
psect	text9
	file	"libraries/soft_dac\soft_dac.c"
	line	268
	global	__size_of_bubbleSortDAC
	__size_of_bubbleSortDAC	equ	__end_of_bubbleSortDAC-_bubbleSortDAC
	
_bubbleSortDAC:	
;incstack = 0
	opt	stack 0
; Regs used in _bubbleSortDAC: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(bubbleSortDAC@ui8MaxCount)
	line	273
	
l3453:	
	clrf	(bubbleSortDAC@blOnGoing)
	incf	(bubbleSortDAC@blOnGoing),f
	line	274
	
l3455:	
	clrf	(bubbleSortDAC@ui8Counter1)
	line	276
	goto	l3473
	
l303:	
	line	278
	
l3457:	
	clrf	(bubbleSortDAC@blOnGoing)
	line	279
	
l3459:	
	movlw	(01h)
	movwf	(??_bubbleSortDAC+0)+0
	movf	(??_bubbleSortDAC+0)+0,w
	addwf	(bubbleSortDAC@ui8Counter1),f
	line	281
	
l3461:	
	clrf	(bubbleSortDAC@ui8Counter)
	goto	l3471
	line	282
	
l305:	
	line	283
	
l3463:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_bubbleSortDAC+0)+0
	movf	(??_bubbleSortDAC+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(bubbleSortDAC@ui8Counter),w
	addlw	01h
	fcall	___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_bubbleSortDAC+1)+0
	movf	(??_bubbleSortDAC+1)+0,w
	movwf	(bubbleSortDAC@ui8TempBuff)
	line	284
	movlw	(03h)
	movwf	(??_bubbleSortDAC+0)+0
	movf	(??_bubbleSortDAC+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(bubbleSortDAC@ui8Counter),w
	fcall	___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(bubbleSortDAC@ui8TempBuff),w
	skipnc
	goto	u1701
	goto	u1700
u1701:
	goto	l3469
u1700:
	line	287
	
l3465:	
	movlw	(03h)
	movwf	(??_bubbleSortDAC+0)+0
	movf	(??_bubbleSortDAC+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(bubbleSortDAC@ui8Counter),w
	fcall	___bmul
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_bubbleSortDAC+1)+0
	movf	(??_bubbleSortDAC+1)+0,w
	movwf	(bubbleSortDAC@ui8TempBuff)
	line	288
	movlw	(03h)
	movwf	(??_bubbleSortDAC+0)+0
	movf	(??_bubbleSortDAC+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(bubbleSortDAC@ui8Counter),w
	addlw	01h
	fcall	___bmul
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_bubbleSortDAC+1)+0
	movlw	(03h)
	movwf	(??_bubbleSortDAC+2)+0
	movf	(??_bubbleSortDAC+2)+0,w
	movwf	(___bmul@multiplicand)
	movf	(bubbleSortDAC@ui8Counter),w
	fcall	___bmul
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_bubbleSortDAC+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	289
	movf	(bubbleSortDAC@ui8TempBuff),w
	movwf	(??_bubbleSortDAC+0)+0
	movlw	(03h)
	movwf	(??_bubbleSortDAC+1)+0
	movf	(??_bubbleSortDAC+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(bubbleSortDAC@ui8Counter),w
	addlw	01h
	fcall	___bmul
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_bubbleSortDAC+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	292
	movlw	(03h)
	movwf	(??_bubbleSortDAC+0)+0
	movf	(??_bubbleSortDAC+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(bubbleSortDAC@ui8Counter),w
	fcall	___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_bubbleSortDAC+1)+0
	movf	(??_bubbleSortDAC+1)+0,w
	movwf	(bubbleSortDAC@ui8TempBuff)
	line	293
	movlw	(03h)
	movwf	(??_bubbleSortDAC+0)+0
	movf	(??_bubbleSortDAC+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(bubbleSortDAC@ui8Counter),w
	addlw	01h
	fcall	___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_bubbleSortDAC+1)+0
	movlw	(03h)
	movwf	(??_bubbleSortDAC+2)+0
	movf	(??_bubbleSortDAC+2)+0,w
	movwf	(___bmul@multiplicand)
	movf	(bubbleSortDAC@ui8Counter),w
	fcall	___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_bubbleSortDAC+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	294
	movf	(bubbleSortDAC@ui8TempBuff),w
	movwf	(??_bubbleSortDAC+0)+0
	movlw	(03h)
	movwf	(??_bubbleSortDAC+1)+0
	movf	(??_bubbleSortDAC+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(bubbleSortDAC@ui8Counter),w
	addlw	01h
	fcall	___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_bubbleSortDAC+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	297
	movlw	(03h)
	movwf	(??_bubbleSortDAC+0)+0
	movf	(??_bubbleSortDAC+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(bubbleSortDAC@ui8Counter),w
	fcall	___bmul
	addlw	01h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_bubbleSortDAC+1)+0
	movf	(??_bubbleSortDAC+1)+0,w
	movwf	(bubbleSortDAC@ui8TempBuff)
	line	298
	movlw	(03h)
	movwf	(??_bubbleSortDAC+0)+0
	movf	(??_bubbleSortDAC+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(bubbleSortDAC@ui8Counter),w
	addlw	01h
	fcall	___bmul
	addlw	01h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_bubbleSortDAC+1)+0
	movlw	(03h)
	movwf	(??_bubbleSortDAC+2)+0
	movf	(??_bubbleSortDAC+2)+0,w
	movwf	(___bmul@multiplicand)
	movf	(bubbleSortDAC@ui8Counter),w
	fcall	___bmul
	addlw	01h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_bubbleSortDAC+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	299
	movf	(bubbleSortDAC@ui8TempBuff),w
	movwf	(??_bubbleSortDAC+0)+0
	movlw	(03h)
	movwf	(??_bubbleSortDAC+1)+0
	movf	(??_bubbleSortDAC+1)+0,w
	movwf	(___bmul@multiplicand)
	movf	(bubbleSortDAC@ui8Counter),w
	addlw	01h
	fcall	___bmul
	addlw	01h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_bubbleSortDAC+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	301
	
l3467:	
	clrf	(bubbleSortDAC@blOnGoing)
	incf	(bubbleSortDAC@blOnGoing),f
	goto	l3469
	line	302
	
l306:	
	line	281
	
l3469:	
	movlw	(01h)
	movwf	(??_bubbleSortDAC+0)+0
	movf	(??_bubbleSortDAC+0)+0,w
	addwf	(bubbleSortDAC@ui8Counter),f
	goto	l3471
	
l304:	
	
l3471:	
	movf	(bubbleSortDAC@ui8Counter1),w
	movwf	(??_bubbleSortDAC+0)+0
	clrf	(??_bubbleSortDAC+0)+0+1
	comf	(??_bubbleSortDAC+0)+0,f
	comf	(??_bubbleSortDAC+0)+1,f
	incf	(??_bubbleSortDAC+0)+0,f
	skipnz
	incf	(??_bubbleSortDAC+0)+1,f
	movf	(bubbleSortDAC@ui8MaxCount),w
	addwf	0+(??_bubbleSortDAC+0)+0,w
	movwf	(??_bubbleSortDAC+2)+0
	movf	1+(??_bubbleSortDAC+0)+0,w
	skipnc
	incf	1+(??_bubbleSortDAC+0)+0,w
	movwf	((??_bubbleSortDAC+2)+0)+1
	movf	1+(??_bubbleSortDAC+2)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u1715
	movf	0+(??_bubbleSortDAC+2)+0,w
	subwf	(bubbleSortDAC@ui8Counter),w
u1715:

	skipc
	goto	u1711
	goto	u1710
u1711:
	goto	l3463
u1710:
	goto	l3473
	
l307:	
	goto	l3473
	line	304
	
l302:	
	line	276
	
l3473:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(bubbleSortDAC@blOnGoing),f
	skipz
	goto	u1721
	goto	u1720
u1721:
	goto	l3457
u1720:
	goto	l309
	
l308:	
	line	305
	
l309:	
	return
	opt stack 0
GLOBAL	__end_of_bubbleSortDAC
	__end_of_bubbleSortDAC:
	signat	_bubbleSortDAC,4216
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[BANK0 ] unsigned char 
;;  product         1    2[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupSoftDAC
;;		_setSoftDAC
;;		_bubbleSortDAC
;;		_softDACController
;;		_removeSoftDAC
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\sources\common\Umul8.c"
	line	4
global __ptext10
__ptext10:	;psect for function ___bmul
psect	text10
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
	
l3437:	
	clrf	(___bmul@product)
	goto	l3439
	line	42
	
l1361:	
	line	43
	
l3439:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1681
	goto	u1680
u1681:
	goto	l3443
u1680:
	line	44
	
l3441:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l3443
	
l1362:	
	line	45
	
l3443:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l3445:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l3447:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u1691
	goto	u1690
u1691:
	goto	l3439
u1690:
	goto	l3449
	
l1363:	
	line	50
	
l3449:	
	movf	(___bmul@product),w
	goto	l1364
	
l3451:	
	line	51
	
l1364:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_getMs

;; *************** function _getMs *****************
;; Defined at:
;;		line 130 in file "hardware/cores/lib\corelib_basetimer.c"
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
;;		_init
;;		_cycle
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	130
global __ptext11
__ptext11:	;psect for function _getMs
psect	text11
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	130
	global	__size_of_getMs
	__size_of_getMs	equ	__end_of_getMs-_getMs
	
_getMs:	
;incstack = 0
	opt	stack 1
; Regs used in _getMs: [wreg+status,2+status,0+pclath+cstack]
	line	134
	
l3689:	
	goto	l3691
	
l771:	
	goto	l3691
	
l770:	
	
l3691:	
	fcall	_get_gblISRLocked_FlagValue
	xorlw	01h
	skipnz
	goto	u1811
	goto	u1810
u1811:
	goto	l3691
u1810:
	
l772:	
	line	136
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	137
	
l3693:	
	fcall	_get_gui16TimerMs_Value
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_get_gui16TimerMs_Value)),w
	clrf	(getMs@ui16TempBuff+1)
	addwf	(getMs@ui16TempBuff+1)
	movf	(0+(?_get_gui16TimerMs_Value)),w
	clrf	(getMs@ui16TempBuff)
	addwf	(getMs@ui16TempBuff)

	line	138
	
l3695:	
	bsf	(95/8),(95)&7	;volatile
	
l3697:	
	bsf	(94/8),(94)&7	;volatile
	line	139
	
l3699:	
	movf	(getMs@ui16TempBuff+1),w
	clrf	(?_getMs+1)
	addwf	(?_getMs+1)
	movf	(getMs@ui16TempBuff),w
	clrf	(?_getMs)
	addwf	(?_getMs)

	goto	l773
	
l3701:	
	line	140
	
l773:	
	return
	opt stack 0
GLOBAL	__end_of_getMs
	__end_of_getMs:
	signat	_getMs,90
	global	_getElapsedMs

;; *************** function _getElapsedMs *****************
;; Defined at:
;;		line 159 in file "hardware/cores/lib\corelib_basetimer.c"
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
;;		_cycle
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	159
global __ptext12
__ptext12:	;psect for function _getElapsedMs
psect	text12
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	159
	global	__size_of_getElapsedMs
	__size_of_getElapsedMs	equ	__end_of_getElapsedMs-_getElapsedMs
	
_getElapsedMs:	
;incstack = 0
	opt	stack 1
; Regs used in _getElapsedMs: [wreg+status,2+status,0+pclath+cstack]
	line	163
	
l3703:	
	goto	l3705
	
l777:	
	goto	l3705
	
l776:	
	
l3705:	
	fcall	_get_gblISRLocked_FlagValue
	xorlw	01h
	skipnz
	goto	u1821
	goto	u1820
u1821:
	goto	l3705
u1820:
	
l778:	
	line	165
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	166
	
l3707:	
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
	line	167
	
l3709:	
	bsf	(95/8),(95)&7	;volatile
	
l3711:	
	bsf	(94/8),(94)&7	;volatile
	line	168
	
l3713:	
	movf	(getElapsedMs@ui16TempBuff+1),w
	clrf	(?_getElapsedMs+1)
	addwf	(?_getElapsedMs+1)
	movf	(getElapsedMs@ui16TempBuff),w
	clrf	(?_getElapsedMs)
	addwf	(?_getElapsedMs)

	goto	l779
	
l3715:	
	line	169
	
l779:	
	return
	opt stack 0
GLOBAL	__end_of_getElapsedMs
	__end_of_getElapsedMs:
	signat	_getElapsedMs,4218
	global	_get_gui16TimerMs_Value

;; *************** function _get_gui16TimerMs_Value *****************
;; Defined at:
;;		line 170 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
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
psect	text13,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	170
global __ptext13
__ptext13:	;psect for function _get_gui16TimerMs_Value
psect	text13
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	170
	global	__size_of_get_gui16TimerMs_Value
	__size_of_get_gui16TimerMs_Value	equ	__end_of_get_gui16TimerMs_Value-_get_gui16TimerMs_Value
	
_get_gui16TimerMs_Value:	
;incstack = 0
	opt	stack 1
; Regs used in _get_gui16TimerMs_Value: [wreg+status,2+status,0]
	line	173
	
l3479:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gui16TimerMs+1),w	;volatile
	clrf	(get_gui16TimerMs_Value@ui16Temp+1)
	addwf	(get_gui16TimerMs_Value@ui16Temp+1)
	movf	(_gui16TimerMs),w	;volatile
	clrf	(get_gui16TimerMs_Value@ui16Temp)
	addwf	(get_gui16TimerMs_Value@ui16Temp)

	line	174
	movf	(get_gui16TimerMs_Value@ui16Temp+1),w
	clrf	(?_get_gui16TimerMs_Value+1)
	addwf	(?_get_gui16TimerMs_Value+1)
	movf	(get_gui16TimerMs_Value@ui16Temp),w
	clrf	(?_get_gui16TimerMs_Value)
	addwf	(?_get_gui16TimerMs_Value)

	goto	l558
	
l3481:	
	line	175
	
l558:	
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
;;		_getSec
;;		_getElapsedSec
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	82
global __ptext14
__ptext14:	;psect for function _get_gblISRLocked_FlagValue
psect	text14
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	82
	global	__size_of_get_gblISRLocked_FlagValue
	__size_of_get_gblISRLocked_FlagValue	equ	__end_of_get_gblISRLocked_FlagValue-_get_gblISRLocked_FlagValue
	
_get_gblISRLocked_FlagValue:	
;incstack = 0
	opt	stack 1
; Regs used in _get_gblISRLocked_FlagValue: [wreg]
	line	85
	
l3475:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gblISRLocked),w	;volatile
	movwf	(??_get_gblISRLocked_FlagValue+0)+0
	movf	(??_get_gblISRLocked_FlagValue+0)+0,w
	movwf	(get_gblISRLocked_FlagValue@blTemp)
	line	86
	movf	(get_gblISRLocked_FlagValue@blTemp),w
	goto	l551
	
l3477:	
	line	87
	
l551:	
	return
	opt stack 0
GLOBAL	__end_of_get_gblISRLocked_FlagValue
	__end_of_get_gblISRLocked_FlagValue:
	signat	_get_gblISRLocked_FlagValue,89
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 191 in file "hardware/cores\PhilRoboKit_CoreLib_Macro.c"
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
psect	text15,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	191
global __ptext15
__ptext15:	;psect for function _isr
psect	text15
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	191
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
psect	text15
	line	196
	
i1l4589:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	197
	
i1l4591:	
	fcall	_set_gblISRLocked_FlagValue
	line	198
	fcall	_timerISR
	line	201
	
i1l4593:	
	fcall	_timer8BitISR
	line	205
	
i1l4595:	
	fcall	_timer16BitISR
	line	209
	fcall	_serialRxISR
	line	213
	
i1l4597:	
	fcall	_userIntISR
	line	217
	
i1l4599:	
	fcall	_serialTxISR
	line	221
	
i1l4601:	
	fcall	_adcISR
	line	224
	
i1l4603:	
	fcall	_clr_gblISRLocked_FlagValue
	line	225
	
i1l4605:	
	bsf	(95/8),(95)&7	;volatile
	
i1l4607:	
	bsf	(94/8),(94)&7	;volatile
	line	226
	
i1l618:	
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
;;		line 96 in file "hardware/cores/lib\corelib_user_interrupt.c"
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
psect	text16,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	96
global __ptext16
__ptext16:	;psect for function _userIntISR
psect	text16
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	96
	global	__size_of_userIntISR
	__size_of_userIntISR	equ	__end_of_userIntISR-_userIntISR
	
_userIntISR:	
;incstack = 0
	opt	stack 0
; Regs used in _userIntISR: [wreg+status,2+status,0+pclath+cstack]
	line	99
	
i1l4447:	
	btfss	(92/8),(92)&7	;volatile
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l4459
u239_20:
	
i1l4449:	
	btfss	(89/8),(89)&7	;volatile
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l4459
u240_20:
	line	101
	
i1l4451:	
	bcf	(92/8),(92)&7	;volatile
	line	103
	
i1l4453:	
	fcall	_extIntISR
	line	105
	
i1l4455:	
	bcf	(89/8),(89)&7	;volatile
	line	106
	
i1l4457:	
	bsf	(92/8),(92)&7	;volatile
	goto	i1l4459
	line	107
	
i1l1042:	
	line	135
	
i1l4459:	
	btfss	(91/8),(91)&7	;volatile
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l1044
u241_20:
	
i1l4461:	
	btfss	(88/8),(88)&7	;volatile
	goto	u242_21
	goto	u242_20
u242_21:
	goto	i1l1044
u242_20:
	line	137
	
i1l4463:	
	bcf	(91/8),(91)&7	;volatile
	line	139
	
i1l4465:	
	fcall	_rbIntISR
	line	141
	
i1l4467:	
	bcf	(88/8),(88)&7	;volatile
	line	142
	
i1l4469:	
	bsf	(91/8),(91)&7	;volatile
	goto	i1l1044
	line	143
	
i1l1043:	
	line	144
	
i1l1044:	
	return
	opt stack 0
GLOBAL	__end_of_userIntISR
	__end_of_userIntISR:
	signat	_userIntISR,88
	global	_rbIntISR

;; *************** function _rbIntISR *****************
;; Defined at:
;;		line 230 in file "hardware/cores/lib\hal_user_interrupt.c"
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
psect	text17,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	230
global __ptext17
__ptext17:	;psect for function _rbIntISR
psect	text17
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	230
	global	__size_of_rbIntISR
	__size_of_rbIntISR	equ	__end_of_rbIntISR-_rbIntISR
	
_rbIntISR:	
;incstack = 0
	opt	stack 0
; Regs used in _rbIntISR: [wreg+status,2+status,0+pclath+cstack]
	line	234
	
i1l4223:	
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
	line	236
	
i1l4225:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(4)&7
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l4245
u200_20:
	line	238
	
i1l4227:	
	movf	(_eMod4_Mode),w
	xorlw	02h
	skipz
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l4233
u201_20:
	
i1l4229:	
	btfsc	(6),(4)&7	;volatile
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l4233
u202_20:
	goto	i1l4241
	line	241
	
i1l4231:	
	goto	i1l4241
	line	242
	
i1l1241:	
	
i1l4233:	
	movf	(_eMod4_Mode),w
	xorlw	03h
	skipz
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l4239
u203_20:
	
i1l4235:	
	btfss	(6),(4)&7	;volatile
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l4239
u204_20:
	goto	i1l4241
	line	245
	
i1l4237:	
	goto	i1l4241
	line	246
	
i1l1243:	
	line	249
	
i1l4239:	
	movf	(_pt2INT4),w
	fcall	i1fptable
	goto	i1l4241
	line	250
	
i1l1244:	
	goto	i1l4241
	
i1l1242:	
	line	252
	
i1l4241:	
	movlw	(0EFh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	253
	
i1l4243:	
	movf	(6),w	;volatile
	andlw	010h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l4245
	line	254
	
i1l1240:	
	line	256
	
i1l4245:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(5)&7
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l4265
u205_20:
	line	258
	
i1l4247:	
	movf	(_eMod5_Mode),w
	xorlw	02h
	skipz
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l4253
u206_20:
	
i1l4249:	
	btfsc	(6),(5)&7	;volatile
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l4253
u207_20:
	goto	i1l4261
	line	261
	
i1l4251:	
	goto	i1l4261
	line	262
	
i1l1246:	
	
i1l4253:	
	movf	(_eMod5_Mode),w
	xorlw	03h
	skipz
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l4259
u208_20:
	
i1l4255:	
	btfss	(6),(5)&7	;volatile
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l4259
u209_20:
	goto	i1l4261
	line	265
	
i1l4257:	
	goto	i1l4261
	line	266
	
i1l1248:	
	line	269
	
i1l4259:	
	movf	(_pt2INT5),w
	fcall	i1fptable
	goto	i1l4261
	line	270
	
i1l1249:	
	goto	i1l4261
	
i1l1247:	
	line	272
	
i1l4261:	
	movlw	(0DFh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	273
	
i1l4263:	
	movf	(6),w	;volatile
	andlw	020h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l4265
	line	274
	
i1l1245:	
	line	276
	
i1l4265:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(6)&7
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l4285
u210_20:
	line	278
	
i1l4267:	
	movf	(_eMod6_Mode),w
	xorlw	02h
	skipz
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l4273
u211_20:
	
i1l4269:	
	btfsc	(6),(6)&7	;volatile
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l4273
u212_20:
	goto	i1l4281
	line	281
	
i1l4271:	
	goto	i1l4281
	line	282
	
i1l1251:	
	
i1l4273:	
	movf	(_eMod6_Mode),w
	xorlw	03h
	skipz
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l4279
u213_20:
	
i1l4275:	
	btfss	(6),(6)&7	;volatile
	goto	u214_21
	goto	u214_20
u214_21:
	goto	i1l4279
u214_20:
	goto	i1l4281
	line	285
	
i1l4277:	
	goto	i1l4281
	line	286
	
i1l1253:	
	line	289
	
i1l4279:	
	movf	(_pt2INT6),w
	fcall	i1fptable
	goto	i1l4281
	line	290
	
i1l1254:	
	goto	i1l4281
	
i1l1252:	
	line	292
	
i1l4281:	
	movlw	(0BFh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	293
	
i1l4283:	
	movf	(6),w	;volatile
	andlw	040h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l4285
	line	294
	
i1l1250:	
	line	296
	
i1l4285:	
	btfss	(rbIntISR@PORTCHANGE_BUFFER),(7)&7
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l4305
u215_20:
	line	298
	
i1l4287:	
	movf	(_eMod7_Mode),w
	xorlw	02h
	skipz
	goto	u216_21
	goto	u216_20
u216_21:
	goto	i1l4293
u216_20:
	
i1l4289:	
	btfsc	(6),(7)&7	;volatile
	goto	u217_21
	goto	u217_20
u217_21:
	goto	i1l4293
u217_20:
	goto	i1l4301
	line	301
	
i1l4291:	
	goto	i1l4301
	line	302
	
i1l1256:	
	
i1l4293:	
	movf	(_eMod7_Mode),w
	xorlw	03h
	skipz
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l4299
u218_20:
	
i1l4295:	
	btfss	(6),(7)&7	;volatile
	goto	u219_21
	goto	u219_20
u219_21:
	goto	i1l4299
u219_20:
	goto	i1l4301
	line	305
	
i1l4297:	
	goto	i1l4301
	line	306
	
i1l1258:	
	line	309
	
i1l4299:	
	movf	(_pt2INT7),w
	fcall	i1fptable
	goto	i1l4301
	line	310
	
i1l1259:	
	goto	i1l4301
	
i1l1257:	
	line	312
	
i1l4301:	
	movlw	(07Fh)
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	313
	
i1l4303:	
	movf	(6),w	;volatile
	andlw	080h
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	iorwf	(_PORTB_BUFFER),f	;volatile
	goto	i1l4305
	line	314
	
i1l1255:	
	line	316
	
i1l4305:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(134)^080h,w	;volatile
	movwf	(??_rbIntISR+0)+0
	movf	(??_rbIntISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_PORTB_BUFFER),f	;volatile
	line	317
	
i1l1260:	
	return
	opt stack 0
GLOBAL	__end_of_rbIntISR
	__end_of_rbIntISR:
	signat	_rbIntISR,88
	global	_extIntISR

;; *************** function _extIntISR *****************
;; Defined at:
;;		line 112 in file "hardware/cores/lib\hal_user_interrupt.c"
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
psect	text18,local,class=CODE,delta=2,merge=1
	line	112
global __ptext18
__ptext18:	;psect for function _extIntISR
psect	text18
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	112
	global	__size_of_extIntISR
	__size_of_extIntISR	equ	__end_of_extIntISR-_extIntISR
	
_extIntISR:	
;incstack = 0
	opt	stack 0
; Regs used in _extIntISR: [wreg+status,2+status,0+pclath+cstack]
	line	115
	
i1l4215:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_eMod0_Mode),w
	xorlw	01h
	skipz
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l4221
u198_20:
	line	117
	
i1l4217:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1038/8)^080h,(1038)&7	;volatile
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l1233
u199_20:
	line	119
	
i1l4219:	
	bsf	(1038/8)^080h,(1038)&7	;volatile
	line	120
	goto	i1l4221
	line	121
	
i1l1233:	
	line	123
	bcf	(1038/8)^080h,(1038)&7	;volatile
	goto	i1l4221
	line	124
	
i1l1234:	
	goto	i1l4221
	line	127
	
i1l1232:	
	line	130
	
i1l4221:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_pt2INT0),w
	fcall	i1fptable
	line	131
	
i1l1235:	
	return
	opt stack 0
GLOBAL	__end_of_extIntISR
	__end_of_extIntISR:
	signat	_extIntISR,88
	global	_nullIntFunction

;; *************** function _nullIntFunction *****************
;; Defined at:
;;		line 90 in file "hardware/cores/lib\hal_user_interrupt.c"
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
psect	text19,local,class=CODE,delta=2,merge=1
	line	90
global __ptext19
__ptext19:	;psect for function _nullIntFunction
psect	text19
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	90
	global	__size_of_nullIntFunction
	__size_of_nullIntFunction	equ	__end_of_nullIntFunction-_nullIntFunction
	
_nullIntFunction:	
;incstack = 0
	opt	stack 0
; Regs used in _nullIntFunction: []
	line	93
	
i1l1229:	
	return
	opt stack 0
GLOBAL	__end_of_nullIntFunction
	__end_of_nullIntFunction:
	signat	_nullIntFunction,88
	global	_timerISR

;; *************** function _timerISR *****************
;; Defined at:
;;		line 109 in file "hardware/cores/lib\hal_timer.c"
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
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_timer.c"
	line	109
global __ptext20
__ptext20:	;psect for function _timerISR
psect	text20
	file	"hardware/cores/lib\hal_timer.c"
	line	109
	global	__size_of_timerISR
	__size_of_timerISR	equ	__end_of_timerISR-_timerISR
	
_timerISR:	
;incstack = 0
	opt	stack 1
; Regs used in _timerISR: [wreg+status,2+status,0+pclath+cstack]
	line	113
	
i1l4395:	
	btfss	(90/8),(90)&7	;volatile
	goto	u228_21
	goto	u228_20
u228_21:
	goto	i1l1180
u228_20:
	
i1l4397:	
	btfss	(93/8),(93)&7	;volatile
	goto	u229_21
	goto	u229_20
u229_21:
	goto	i1l1180
u229_20:
	line	115
	
i1l4399:	
	movlw	(0D9h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	116
	
i1l4401:	
	bcf	(90/8),(90)&7	;volatile
	line	117
	
i1l4403:	
	fcall	_inc_gui16TimerMs_Value
	line	119
	
i1l4405:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(timerISR@ui16MsCounter),f
	skipnc
	incf	(timerISR@ui16MsCounter+1),f
	movlw	high(01h)
	addwf	(timerISR@ui16MsCounter+1),f
	line	120
	
i1l4407:	
	movlw	high(03E8h)
	subwf	(timerISR@ui16MsCounter+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(timerISR@ui16MsCounter),w
	skipc
	goto	u230_21
	goto	u230_20
u230_21:
	goto	i1l4413
u230_20:
	line	122
	
i1l4409:	
	fcall	_inc_gui16TimerSec_Value
	line	123
	
i1l4411:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(timerISR@ui16MsCounter)
	clrf	(timerISR@ui16MsCounter+1)
	goto	i1l4413
	line	127
	
i1l1178:	
	line	131
	
i1l4413:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u231_21
	goto	u231_20
u231_21:
	goto	i1l1180
u231_20:
	line	134
	
i1l4415:	
	bsf	(250/8),(250)&7	;volatile
	goto	i1l1180
	line	138
	
i1l1179:	
	goto	i1l1180
	line	140
	
i1l1177:	
	line	141
	
i1l1180:	
	return
	opt stack 0
GLOBAL	__end_of_timerISR
	__end_of_timerISR:
	signat	_timerISR,88
	global	_inc_gui16TimerSec_Value

;; *************** function _inc_gui16TimerSec_Value *****************
;; Defined at:
;;		line 178 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
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
psect	text21,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	178
global __ptext21
__ptext21:	;psect for function _inc_gui16TimerSec_Value
psect	text21
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	178
	global	__size_of_inc_gui16TimerSec_Value
	__size_of_inc_gui16TimerSec_Value	equ	__end_of_inc_gui16TimerSec_Value-_inc_gui16TimerSec_Value
	
_inc_gui16TimerSec_Value:	
;incstack = 0
	opt	stack 1
; Regs used in _inc_gui16TimerSec_Value: [wreg+status,2+status,0]
	line	180
	
i1l4207:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	181
	
i1l4209:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_gui16TimerSec),f	;volatile
	skipnc
	incf	(_gui16TimerSec+1),f	;volatile
	movlw	high(01h)
	addwf	(_gui16TimerSec+1),f	;volatile
	line	183
	
i1l4211:	
	movf	(_gblISRLocked),f	;volatile
	skipz
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l562
u197_20:
	line	185
	
i1l4213:	
	bsf	(95/8),(95)&7	;volatile
	bsf	(94/8),(94)&7	;volatile
	goto	i1l562
	line	186
	
i1l561:	
	line	187
	
i1l562:	
	return
	opt stack 0
GLOBAL	__end_of_inc_gui16TimerSec_Value
	__end_of_inc_gui16TimerSec_Value:
	signat	_inc_gui16TimerSec_Value,88
	global	_inc_gui16TimerMs_Value

;; *************** function _inc_gui16TimerMs_Value *****************
;; Defined at:
;;		line 159 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
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
psect	text22,local,class=CODE,delta=2,merge=1
	line	159
global __ptext22
__ptext22:	;psect for function _inc_gui16TimerMs_Value
psect	text22
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	159
	global	__size_of_inc_gui16TimerMs_Value
	__size_of_inc_gui16TimerMs_Value	equ	__end_of_inc_gui16TimerMs_Value-_inc_gui16TimerMs_Value
	
_inc_gui16TimerMs_Value:	
;incstack = 0
	opt	stack 1
; Regs used in _inc_gui16TimerMs_Value: [wreg+status,2+status,0]
	line	161
	
i1l4199:	
	bcf	(95/8),(95)&7	;volatile
	bcf	(94/8),(94)&7	;volatile
	line	162
	
i1l4201:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_gui16TimerMs),f	;volatile
	skipnc
	incf	(_gui16TimerMs+1),f	;volatile
	movlw	high(01h)
	addwf	(_gui16TimerMs+1),f	;volatile
	line	164
	
i1l4203:	
	movf	(_gblISRLocked),f	;volatile
	skipz
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l555
u196_20:
	line	166
	
i1l4205:	
	bsf	(95/8),(95)&7	;volatile
	bsf	(94/8),(94)&7	;volatile
	goto	i1l555
	line	167
	
i1l554:	
	line	168
	
i1l555:	
	return
	opt stack 0
GLOBAL	__end_of_inc_gui16TimerMs_Value
	__end_of_inc_gui16TimerMs_Value:
	signat	_inc_gui16TimerMs_Value,88
	global	_timer8BitISR

;; *************** function _timer8BitISR *****************
;; Defined at:
;;		line 72 in file "hardware/cores/lib\corelib_8bit_timer.c"
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
;;		_softDACController
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	72
global __ptext23
__ptext23:	;psect for function _timer8BitISR
psect	text23
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	72
	global	__size_of_timer8BitISR
	__size_of_timer8BitISR	equ	__end_of_timer8BitISR-_timer8BitISR
	
_timer8BitISR:	
;incstack = 0
	opt	stack 0
; Regs used in _timer8BitISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	76
	
i1l4417:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l677
u232_20:
	
i1l4419:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1121/8)^080h,(1121)&7	;volatile
	goto	u233_21
	goto	u233_20
u233_21:
	goto	i1l677
u233_20:
	line	79
	
i1l4421:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	80
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1121/8)^080h,(1121)&7	;volatile
	line	81
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(146/8),(146)&7	;volatile
	line	83
	
i1l4423:	
	movf	(_pt2TMR2ISR),w
	fcall	i1fptable
	goto	i1l677
	line	84
	
i1l676:	
	line	113
	
i1l677:	
	return
	opt stack 0
GLOBAL	__end_of_timer8BitISR
	__end_of_timer8BitISR:
	signat	_timer8BitISR,88
	global	_softDACController
	global	_nullTMRFunction

;; *************** function _nullTMRFunction *****************
;; Defined at:
;;		line 68 in file "hardware/cores/lib\hal_8bit_timer.c"
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
psect	text24,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_8bit_timer.c"
	line	68
global __ptext24
__ptext24:	;psect for function _nullTMRFunction
psect	text24
	file	"hardware/cores/lib\hal_8bit_timer.c"
	line	68
	global	__size_of_nullTMRFunction
	__size_of_nullTMRFunction	equ	__end_of_nullTMRFunction-_nullTMRFunction
	
_nullTMRFunction:	
;incstack = 0
	opt	stack 1
; Regs used in _nullTMRFunction: []
	line	71
	
i1l1075:	
	return
	opt stack 0
GLOBAL	__end_of_nullTMRFunction
	__end_of_nullTMRFunction:
	signat	_nullTMRFunction,88

;; *************** function _softDACController *****************
;; Defined at:
;;		line 323 in file "libraries/soft_dac\soft_dac.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ui8Counter      1    7[COMMON] unsigned char 
;;  blScheduleCl    1    6[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___bmul
;; This function is called by:
;;		_setupSoftDAC
;;		_timer8BitISR
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"libraries/soft_dac\soft_dac.c"
	line	323
global __ptext25
__ptext25:	;psect for function _softDACController
psect	text25
	file	"libraries/soft_dac\soft_dac.c"
	line	323
	global	__size_of_softDACController
	__size_of_softDACController	equ	__end_of_softDACController-_softDACController
	
_softDACController:	
;incstack = 0
	opt	stack 0
; Regs used in _softDACController: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	328
	
i1l3803:	
	clrf	(softDACController@ui8Counter)
	line	329
	clrf	(softDACController@blScheduleCleared)
	line	331
	goto	i1l4191
	
i1l313:	
	line	333
	goto	i1l4131
	line	335
	
i1l315:	
	line	338
	
i1l3805:	
	clrf	(softDACController@ui8Counter)
	goto	i1l3879
	line	339
	
i1l317:	
	line	340
	
i1l3807:	
	movlw	(03h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(i1___bmul@multiplicand)
	movf	(softDACController@ui8Counter),w
	fcall	i1___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u187_21
	goto	u187_20
u187_21:
	goto	i1l3875
u187_20:
	goto	i1l3813
	line	342
	
i1l3809:	
	goto	i1l3813
	
i1l320:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(0/8),(0)&7	;volatile
	goto	i1l3877
	
i1l322:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(1/8),(1)&7	;volatile
	goto	i1l3877
	
i1l323:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(2/8),(2)&7	;volatile
	goto	i1l3877
	
i1l324:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(3/8),(3)&7	;volatile
	goto	i1l3877
	
i1l325:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(4/8),(4)&7	;volatile
	goto	i1l3877
	
i1l326:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(5/8),(5)&7	;volatile
	goto	i1l3877
	
i1l327:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(6/8),(6)&7	;volatile
	goto	i1l3877
	
i1l328:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(7/8),(7)&7	;volatile
	goto	i1l3877
	
i1l329:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6)+(0/8),(0)&7	;volatile
	goto	i1l3877
	
i1l330:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6)+(1/8),(1)&7	;volatile
	goto	i1l3877
	
i1l331:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6)+(2/8),(2)&7	;volatile
	goto	i1l3877
	
i1l332:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6)+(3/8),(3)&7	;volatile
	goto	i1l3877
	
i1l333:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6)+(4/8),(4)&7	;volatile
	goto	i1l3877
	
i1l334:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6)+(5/8),(5)&7	;volatile
	goto	i1l3877
	
i1l335:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(0/8),(0)&7	;volatile
	goto	i1l3877
	
i1l336:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(1/8),(1)&7	;volatile
	goto	i1l3877
	
i1l337:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(2/8),(2)&7	;volatile
	goto	i1l3877
	
i1l338:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(5/8),(5)&7	;volatile
	goto	i1l3877
	
i1l339:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9)+(0/8),(0)&7	;volatile
	goto	i1l3877
	
i1l340:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9)+(1/8),(1)&7	;volatile
	goto	i1l3877
	
i1l341:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9)+(2/8),(2)&7	;volatile
	goto	i1l3877
	
i1l342:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(0/8),(0)&7	;volatile
	goto	i1l3877
	
i1l343:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(1/8),(1)&7	;volatile
	goto	i1l3877
	
i1l344:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(2/8),(2)&7	;volatile
	goto	i1l3877
	
i1l345:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(3/8),(3)&7	;volatile
	goto	i1l3877
	
i1l346:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(4/8),(4)&7	;volatile
	goto	i1l3877
	
i1l347:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(5/8),(5)&7	;volatile
	goto	i1l3877
	
i1l348:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(6/8),(6)&7	;volatile
	goto	i1l3877
	
i1l349:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(7/8),(7)&7	;volatile
	goto	i1l3877
	
i1l3811:	
	goto	i1l3877
	
i1l319:	
	
i1l3813:	
	movlw	(03h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(i1___bmul@multiplicand)
	movf	(softDACController@ui8Counter),w
	fcall	i1___bmul
	addlw	01h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	; Switch size 1, requested type "space"
; Number of cases is 29, Range of values is 0 to 28
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           88    45 (average)
; direct_byte           95     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l320
	xorlw	1^0	; case 1
	skipnz
	goto	i1l322
	xorlw	2^1	; case 2
	skipnz
	goto	i1l323
	xorlw	3^2	; case 3
	skipnz
	goto	i1l324
	xorlw	4^3	; case 4
	skipnz
	goto	i1l325
	xorlw	5^4	; case 5
	skipnz
	goto	i1l326
	xorlw	6^5	; case 6
	skipnz
	goto	i1l327
	xorlw	7^6	; case 7
	skipnz
	goto	i1l328
	xorlw	8^7	; case 8
	skipnz
	goto	i1l329
	xorlw	9^8	; case 9
	skipnz
	goto	i1l330
	xorlw	10^9	; case 10
	skipnz
	goto	i1l331
	xorlw	11^10	; case 11
	skipnz
	goto	i1l332
	xorlw	12^11	; case 12
	skipnz
	goto	i1l333
	xorlw	13^12	; case 13
	skipnz
	goto	i1l334
	xorlw	14^13	; case 14
	skipnz
	goto	i1l335
	xorlw	15^14	; case 15
	skipnz
	goto	i1l336
	xorlw	16^15	; case 16
	skipnz
	goto	i1l337
	xorlw	17^16	; case 17
	skipnz
	goto	i1l338
	xorlw	18^17	; case 18
	skipnz
	goto	i1l339
	xorlw	19^18	; case 19
	skipnz
	goto	i1l340
	xorlw	20^19	; case 20
	skipnz
	goto	i1l341
	xorlw	21^20	; case 21
	skipnz
	goto	i1l342
	xorlw	22^21	; case 22
	skipnz
	goto	i1l343
	xorlw	23^22	; case 23
	skipnz
	goto	i1l344
	xorlw	24^23	; case 24
	skipnz
	goto	i1l345
	xorlw	25^24	; case 25
	skipnz
	goto	i1l346
	xorlw	26^25	; case 26
	skipnz
	goto	i1l347
	xorlw	27^26	; case 27
	skipnz
	goto	i1l348
	xorlw	28^27	; case 28
	skipnz
	goto	i1l349
	goto	i1l3877
	opt asmopt_on

	
i1l321:	
	line	343
	goto	i1l3877
	line	344
	
i1l318:	
	line	346
	goto	i1l3875
	
i1l352:	
	
i1l3815:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	goto	i1l3877
	
i1l354:	
	
i1l3817:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	goto	i1l3877
	
i1l355:	
	
i1l3819:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	goto	i1l3877
	
i1l356:	
	
i1l3821:	
	movlw	(0F7h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	goto	i1l3877
	
i1l357:	
	
i1l3823:	
	movlw	(0EFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	goto	i1l3877
	
i1l358:	
	
i1l3825:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	goto	i1l3877
	
i1l359:	
	
i1l3827:	
	movlw	(0BFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	goto	i1l3877
	
i1l360:	
	
i1l3829:	
	movlw	(07Fh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	goto	i1l3877
	
i1l361:	
	
i1l3831:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	goto	i1l3877
	
i1l362:	
	
i1l3833:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	goto	i1l3877
	
i1l363:	
	
i1l3835:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	goto	i1l3877
	
i1l364:	
	
i1l3837:	
	movlw	(0F7h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	goto	i1l3877
	
i1l365:	
	
i1l3839:	
	movlw	(0EFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	goto	i1l3877
	
i1l366:	
	
i1l3841:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	goto	i1l3877
	
i1l367:	
	
i1l3843:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(5),f	;volatile
	goto	i1l3877
	
i1l368:	
	
i1l3845:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(5),f	;volatile
	goto	i1l3877
	
i1l369:	
	
i1l3847:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(5),f	;volatile
	goto	i1l3877
	
i1l370:	
	
i1l3849:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(5),f	;volatile
	goto	i1l3877
	
i1l371:	
	
i1l3851:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(9),f	;volatile
	goto	i1l3877
	
i1l372:	
	
i1l3853:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(9),f	;volatile
	goto	i1l3877
	
i1l373:	
	
i1l3855:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(9),f	;volatile
	goto	i1l3877
	
i1l374:	
	
i1l3857:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	goto	i1l3877
	
i1l375:	
	
i1l3859:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	goto	i1l3877
	
i1l376:	
	
i1l3861:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	goto	i1l3877
	
i1l377:	
	
i1l3863:	
	movlw	(0F7h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	goto	i1l3877
	
i1l378:	
	
i1l3865:	
	movlw	(0EFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	goto	i1l3877
	
i1l379:	
	
i1l3867:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	goto	i1l3877
	
i1l380:	
	
i1l3869:	
	movlw	(0BFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	goto	i1l3877
	
i1l381:	
	
i1l3871:	
	movlw	(07Fh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	goto	i1l3877
	
i1l3873:	
	goto	i1l3877
	
i1l351:	
	
i1l3875:	
	movlw	(03h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(i1___bmul@multiplicand)
	movf	(softDACController@ui8Counter),w
	fcall	i1___bmul
	addlw	01h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	; Switch size 1, requested type "space"
; Number of cases is 29, Range of values is 0 to 28
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           88    45 (average)
; direct_byte           95     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l3815
	xorlw	1^0	; case 1
	skipnz
	goto	i1l3817
	xorlw	2^1	; case 2
	skipnz
	goto	i1l3819
	xorlw	3^2	; case 3
	skipnz
	goto	i1l3821
	xorlw	4^3	; case 4
	skipnz
	goto	i1l3823
	xorlw	5^4	; case 5
	skipnz
	goto	i1l3825
	xorlw	6^5	; case 6
	skipnz
	goto	i1l3827
	xorlw	7^6	; case 7
	skipnz
	goto	i1l3829
	xorlw	8^7	; case 8
	skipnz
	goto	i1l3831
	xorlw	9^8	; case 9
	skipnz
	goto	i1l3833
	xorlw	10^9	; case 10
	skipnz
	goto	i1l3835
	xorlw	11^10	; case 11
	skipnz
	goto	i1l3837
	xorlw	12^11	; case 12
	skipnz
	goto	i1l3839
	xorlw	13^12	; case 13
	skipnz
	goto	i1l3841
	xorlw	14^13	; case 14
	skipnz
	goto	i1l3843
	xorlw	15^14	; case 15
	skipnz
	goto	i1l3845
	xorlw	16^15	; case 16
	skipnz
	goto	i1l3847
	xorlw	17^16	; case 17
	skipnz
	goto	i1l3849
	xorlw	18^17	; case 18
	skipnz
	goto	i1l3851
	xorlw	19^18	; case 19
	skipnz
	goto	i1l3853
	xorlw	20^19	; case 20
	skipnz
	goto	i1l3855
	xorlw	21^20	; case 21
	skipnz
	goto	i1l3857
	xorlw	22^21	; case 22
	skipnz
	goto	i1l3859
	xorlw	23^22	; case 23
	skipnz
	goto	i1l3861
	xorlw	24^23	; case 24
	skipnz
	goto	i1l3863
	xorlw	25^24	; case 25
	skipnz
	goto	i1l3865
	xorlw	26^25	; case 26
	skipnz
	goto	i1l3867
	xorlw	27^26	; case 27
	skipnz
	goto	i1l3869
	xorlw	28^27	; case 28
	skipnz
	goto	i1l3871
	goto	i1l3877
	opt asmopt_on

	
i1l353:	
	goto	i1l3877
	line	347
	
i1l350:	
	line	338
	
i1l3877:	
	movlw	(01h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	addwf	(softDACController@ui8Counter),f
	goto	i1l3879
	
i1l316:	
	
i1l3879:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui8DACScheduleTail),w
	subwf	(softDACController@ui8Counter),w
	skipc
	goto	u188_21
	goto	u188_20
u188_21:
	goto	i1l3807
u188_20:
	goto	i1l383
	
i1l382:	
	line	349
	goto	i1l383
	line	351
	
i1l384:	
	line	354
	goto	i1l3941
	
i1l386:	
	
i1l3881:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l388:	
	
i1l3883:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l389:	
	
i1l3885:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l390:	
	
i1l3887:	
	movlw	(0F7h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l391:	
	
i1l3889:	
	movlw	(0EFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l392:	
	
i1l3891:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l393:	
	
i1l3893:	
	movlw	(0BFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l394:	
	
i1l3895:	
	movlw	(07Fh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l395:	
	
i1l3897:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l396:	
	
i1l3899:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l397:	
	
i1l3901:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l398:	
	
i1l3903:	
	movlw	(0F7h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l399:	
	
i1l3905:	
	movlw	(0EFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l400:	
	
i1l3907:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l401:	
	
i1l3909:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l402:	
	
i1l3911:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l403:	
	
i1l3913:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l404:	
	
i1l3915:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l405:	
	
i1l3917:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(9),f	;volatile
	goto	i1l383
	
i1l406:	
	
i1l3919:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(9),f	;volatile
	goto	i1l383
	
i1l407:	
	
i1l3921:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(9),f	;volatile
	goto	i1l383
	
i1l408:	
	
i1l3923:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l409:	
	
i1l3925:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l410:	
	
i1l3927:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l411:	
	
i1l3929:	
	movlw	(0F7h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l412:	
	
i1l3931:	
	movlw	(0EFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l413:	
	
i1l3933:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l414:	
	
i1l3935:	
	movlw	(0BFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l415:	
	
i1l3937:	
	movlw	(07Fh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l3939:	
	goto	i1l383
	
i1l385:	
	
i1l3941:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_astDACModuleSchedule)+01h,w
	; Switch size 1, requested type "space"
; Number of cases is 29, Range of values is 0 to 28
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           88    45 (average)
; direct_byte           95     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l3881
	xorlw	1^0	; case 1
	skipnz
	goto	i1l3883
	xorlw	2^1	; case 2
	skipnz
	goto	i1l3885
	xorlw	3^2	; case 3
	skipnz
	goto	i1l3887
	xorlw	4^3	; case 4
	skipnz
	goto	i1l3889
	xorlw	5^4	; case 5
	skipnz
	goto	i1l3891
	xorlw	6^5	; case 6
	skipnz
	goto	i1l3893
	xorlw	7^6	; case 7
	skipnz
	goto	i1l3895
	xorlw	8^7	; case 8
	skipnz
	goto	i1l3897
	xorlw	9^8	; case 9
	skipnz
	goto	i1l3899
	xorlw	10^9	; case 10
	skipnz
	goto	i1l3901
	xorlw	11^10	; case 11
	skipnz
	goto	i1l3903
	xorlw	12^11	; case 12
	skipnz
	goto	i1l3905
	xorlw	13^12	; case 13
	skipnz
	goto	i1l3907
	xorlw	14^13	; case 14
	skipnz
	goto	i1l3909
	xorlw	15^14	; case 15
	skipnz
	goto	i1l3911
	xorlw	16^15	; case 16
	skipnz
	goto	i1l3913
	xorlw	17^16	; case 17
	skipnz
	goto	i1l3915
	xorlw	18^17	; case 18
	skipnz
	goto	i1l3917
	xorlw	19^18	; case 19
	skipnz
	goto	i1l3919
	xorlw	20^19	; case 20
	skipnz
	goto	i1l3921
	xorlw	21^20	; case 21
	skipnz
	goto	i1l3923
	xorlw	22^21	; case 22
	skipnz
	goto	i1l3925
	xorlw	23^22	; case 23
	skipnz
	goto	i1l3927
	xorlw	24^23	; case 24
	skipnz
	goto	i1l3929
	xorlw	25^24	; case 25
	skipnz
	goto	i1l3931
	xorlw	26^25	; case 26
	skipnz
	goto	i1l3933
	xorlw	27^26	; case 27
	skipnz
	goto	i1l3935
	xorlw	28^27	; case 28
	skipnz
	goto	i1l3937
	goto	i1l383
	opt asmopt_on

	
i1l387:	
	line	355
	goto	i1l383
	line	357
	
i1l416:	
	line	360
	goto	i1l4003
	
i1l418:	
	
i1l3943:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l420:	
	
i1l3945:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l421:	
	
i1l3947:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l422:	
	
i1l3949:	
	movlw	(0F7h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l423:	
	
i1l3951:	
	movlw	(0EFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l424:	
	
i1l3953:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l425:	
	
i1l3955:	
	movlw	(0BFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l426:	
	
i1l3957:	
	movlw	(07Fh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l427:	
	
i1l3959:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l428:	
	
i1l3961:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l429:	
	
i1l3963:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l430:	
	
i1l3965:	
	movlw	(0F7h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l431:	
	
i1l3967:	
	movlw	(0EFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l432:	
	
i1l3969:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l433:	
	
i1l3971:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l434:	
	
i1l3973:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l435:	
	
i1l3975:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l436:	
	
i1l3977:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l437:	
	
i1l3979:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(9),f	;volatile
	goto	i1l383
	
i1l438:	
	
i1l3981:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(9),f	;volatile
	goto	i1l383
	
i1l439:	
	
i1l3983:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(9),f	;volatile
	goto	i1l383
	
i1l440:	
	
i1l3985:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l441:	
	
i1l3987:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l442:	
	
i1l3989:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l443:	
	
i1l3991:	
	movlw	(0F7h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l444:	
	
i1l3993:	
	movlw	(0EFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l445:	
	
i1l3995:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l446:	
	
i1l3997:	
	movlw	(0BFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l447:	
	
i1l3999:	
	movlw	(07Fh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l4001:	
	goto	i1l383
	
i1l417:	
	
i1l4003:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_astDACModuleSchedule)+04h,w
	; Switch size 1, requested type "space"
; Number of cases is 29, Range of values is 0 to 28
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           88    45 (average)
; direct_byte           95     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l3943
	xorlw	1^0	; case 1
	skipnz
	goto	i1l3945
	xorlw	2^1	; case 2
	skipnz
	goto	i1l3947
	xorlw	3^2	; case 3
	skipnz
	goto	i1l3949
	xorlw	4^3	; case 4
	skipnz
	goto	i1l3951
	xorlw	5^4	; case 5
	skipnz
	goto	i1l3953
	xorlw	6^5	; case 6
	skipnz
	goto	i1l3955
	xorlw	7^6	; case 7
	skipnz
	goto	i1l3957
	xorlw	8^7	; case 8
	skipnz
	goto	i1l3959
	xorlw	9^8	; case 9
	skipnz
	goto	i1l3961
	xorlw	10^9	; case 10
	skipnz
	goto	i1l3963
	xorlw	11^10	; case 11
	skipnz
	goto	i1l3965
	xorlw	12^11	; case 12
	skipnz
	goto	i1l3967
	xorlw	13^12	; case 13
	skipnz
	goto	i1l3969
	xorlw	14^13	; case 14
	skipnz
	goto	i1l3971
	xorlw	15^14	; case 15
	skipnz
	goto	i1l3973
	xorlw	16^15	; case 16
	skipnz
	goto	i1l3975
	xorlw	17^16	; case 17
	skipnz
	goto	i1l3977
	xorlw	18^17	; case 18
	skipnz
	goto	i1l3979
	xorlw	19^18	; case 19
	skipnz
	goto	i1l3981
	xorlw	20^19	; case 20
	skipnz
	goto	i1l3983
	xorlw	21^20	; case 21
	skipnz
	goto	i1l3985
	xorlw	22^21	; case 22
	skipnz
	goto	i1l3987
	xorlw	23^22	; case 23
	skipnz
	goto	i1l3989
	xorlw	24^23	; case 24
	skipnz
	goto	i1l3991
	xorlw	25^24	; case 25
	skipnz
	goto	i1l3993
	xorlw	26^25	; case 26
	skipnz
	goto	i1l3995
	xorlw	27^26	; case 27
	skipnz
	goto	i1l3997
	xorlw	28^27	; case 28
	skipnz
	goto	i1l3999
	goto	i1l383
	opt asmopt_on

	
i1l419:	
	line	361
	goto	i1l383
	line	363
	
i1l448:	
	line	366
	goto	i1l4065
	
i1l450:	
	
i1l4005:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l452:	
	
i1l4007:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l453:	
	
i1l4009:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l454:	
	
i1l4011:	
	movlw	(0F7h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l455:	
	
i1l4013:	
	movlw	(0EFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l456:	
	
i1l4015:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l457:	
	
i1l4017:	
	movlw	(0BFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l458:	
	
i1l4019:	
	movlw	(07Fh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l459:	
	
i1l4021:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l460:	
	
i1l4023:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l461:	
	
i1l4025:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l462:	
	
i1l4027:	
	movlw	(0F7h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l463:	
	
i1l4029:	
	movlw	(0EFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l464:	
	
i1l4031:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l465:	
	
i1l4033:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l466:	
	
i1l4035:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l467:	
	
i1l4037:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l468:	
	
i1l4039:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l469:	
	
i1l4041:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(9),f	;volatile
	goto	i1l383
	
i1l470:	
	
i1l4043:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(9),f	;volatile
	goto	i1l383
	
i1l471:	
	
i1l4045:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(9),f	;volatile
	goto	i1l383
	
i1l472:	
	
i1l4047:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l473:	
	
i1l4049:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l474:	
	
i1l4051:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l475:	
	
i1l4053:	
	movlw	(0F7h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l476:	
	
i1l4055:	
	movlw	(0EFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l477:	
	
i1l4057:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l478:	
	
i1l4059:	
	movlw	(0BFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l479:	
	
i1l4061:	
	movlw	(07Fh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l4063:	
	goto	i1l383
	
i1l449:	
	
i1l4065:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_astDACModuleSchedule)+07h,w
	; Switch size 1, requested type "space"
; Number of cases is 29, Range of values is 0 to 28
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           88    45 (average)
; direct_byte           95     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l4005
	xorlw	1^0	; case 1
	skipnz
	goto	i1l4007
	xorlw	2^1	; case 2
	skipnz
	goto	i1l4009
	xorlw	3^2	; case 3
	skipnz
	goto	i1l4011
	xorlw	4^3	; case 4
	skipnz
	goto	i1l4013
	xorlw	5^4	; case 5
	skipnz
	goto	i1l4015
	xorlw	6^5	; case 6
	skipnz
	goto	i1l4017
	xorlw	7^6	; case 7
	skipnz
	goto	i1l4019
	xorlw	8^7	; case 8
	skipnz
	goto	i1l4021
	xorlw	9^8	; case 9
	skipnz
	goto	i1l4023
	xorlw	10^9	; case 10
	skipnz
	goto	i1l4025
	xorlw	11^10	; case 11
	skipnz
	goto	i1l4027
	xorlw	12^11	; case 12
	skipnz
	goto	i1l4029
	xorlw	13^12	; case 13
	skipnz
	goto	i1l4031
	xorlw	14^13	; case 14
	skipnz
	goto	i1l4033
	xorlw	15^14	; case 15
	skipnz
	goto	i1l4035
	xorlw	16^15	; case 16
	skipnz
	goto	i1l4037
	xorlw	17^16	; case 17
	skipnz
	goto	i1l4039
	xorlw	18^17	; case 18
	skipnz
	goto	i1l4041
	xorlw	19^18	; case 19
	skipnz
	goto	i1l4043
	xorlw	20^19	; case 20
	skipnz
	goto	i1l4045
	xorlw	21^20	; case 21
	skipnz
	goto	i1l4047
	xorlw	22^21	; case 22
	skipnz
	goto	i1l4049
	xorlw	23^22	; case 23
	skipnz
	goto	i1l4051
	xorlw	24^23	; case 24
	skipnz
	goto	i1l4053
	xorlw	25^24	; case 25
	skipnz
	goto	i1l4055
	xorlw	26^25	; case 26
	skipnz
	goto	i1l4057
	xorlw	27^26	; case 27
	skipnz
	goto	i1l4059
	xorlw	28^27	; case 28
	skipnz
	goto	i1l4061
	goto	i1l383
	opt asmopt_on

	
i1l451:	
	line	367
	goto	i1l383
	line	369
	
i1l480:	
	line	372
	goto	i1l4127
	
i1l482:	
	
i1l4067:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l484:	
	
i1l4069:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l485:	
	
i1l4071:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l486:	
	
i1l4073:	
	movlw	(0F7h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l487:	
	
i1l4075:	
	movlw	(0EFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l488:	
	
i1l4077:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l489:	
	
i1l4079:	
	movlw	(0BFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l490:	
	
i1l4081:	
	movlw	(07Fh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(7),f	;volatile
	goto	i1l383
	
i1l491:	
	
i1l4083:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l492:	
	
i1l4085:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l493:	
	
i1l4087:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l494:	
	
i1l4089:	
	movlw	(0F7h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l495:	
	
i1l4091:	
	movlw	(0EFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l496:	
	
i1l4093:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(6),f	;volatile
	goto	i1l383
	
i1l497:	
	
i1l4095:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l498:	
	
i1l4097:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l499:	
	
i1l4099:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l500:	
	
i1l4101:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(5),f	;volatile
	goto	i1l383
	
i1l501:	
	
i1l4103:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(9),f	;volatile
	goto	i1l383
	
i1l502:	
	
i1l4105:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(9),f	;volatile
	goto	i1l383
	
i1l503:	
	
i1l4107:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(9),f	;volatile
	goto	i1l383
	
i1l504:	
	
i1l4109:	
	movlw	(0FEh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l505:	
	
i1l4111:	
	movlw	(0FDh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l506:	
	
i1l4113:	
	movlw	(0FBh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l507:	
	
i1l4115:	
	movlw	(0F7h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l508:	
	
i1l4117:	
	movlw	(0EFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l509:	
	
i1l4119:	
	movlw	(0DFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l510:	
	
i1l4121:	
	movlw	(0BFh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l511:	
	
i1l4123:	
	movlw	(07Fh)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	andwf	(8),f	;volatile
	goto	i1l383
	
i1l4125:	
	goto	i1l383
	
i1l481:	
	
i1l4127:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_astDACModuleSchedule)+0Ah,w
	; Switch size 1, requested type "space"
; Number of cases is 29, Range of values is 0 to 28
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           88    45 (average)
; direct_byte           95     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l4067
	xorlw	1^0	; case 1
	skipnz
	goto	i1l4069
	xorlw	2^1	; case 2
	skipnz
	goto	i1l4071
	xorlw	3^2	; case 3
	skipnz
	goto	i1l4073
	xorlw	4^3	; case 4
	skipnz
	goto	i1l4075
	xorlw	5^4	; case 5
	skipnz
	goto	i1l4077
	xorlw	6^5	; case 6
	skipnz
	goto	i1l4079
	xorlw	7^6	; case 7
	skipnz
	goto	i1l4081
	xorlw	8^7	; case 8
	skipnz
	goto	i1l4083
	xorlw	9^8	; case 9
	skipnz
	goto	i1l4085
	xorlw	10^9	; case 10
	skipnz
	goto	i1l4087
	xorlw	11^10	; case 11
	skipnz
	goto	i1l4089
	xorlw	12^11	; case 12
	skipnz
	goto	i1l4091
	xorlw	13^12	; case 13
	skipnz
	goto	i1l4093
	xorlw	14^13	; case 14
	skipnz
	goto	i1l4095
	xorlw	15^14	; case 15
	skipnz
	goto	i1l4097
	xorlw	16^15	; case 16
	skipnz
	goto	i1l4099
	xorlw	17^16	; case 17
	skipnz
	goto	i1l4101
	xorlw	18^17	; case 18
	skipnz
	goto	i1l4103
	xorlw	19^18	; case 19
	skipnz
	goto	i1l4105
	xorlw	20^19	; case 20
	skipnz
	goto	i1l4107
	xorlw	21^20	; case 21
	skipnz
	goto	i1l4109
	xorlw	22^21	; case 22
	skipnz
	goto	i1l4111
	xorlw	23^22	; case 23
	skipnz
	goto	i1l4113
	xorlw	24^23	; case 24
	skipnz
	goto	i1l4115
	xorlw	25^24	; case 25
	skipnz
	goto	i1l4117
	xorlw	26^25	; case 26
	skipnz
	goto	i1l4119
	xorlw	27^26	; case 27
	skipnz
	goto	i1l4121
	xorlw	28^27	; case 28
	skipnz
	goto	i1l4123
	goto	i1l383
	opt asmopt_on

	
i1l483:	
	line	373
	goto	i1l383
	line	375
	
i1l512:	
	line	378
	goto	i1l383
	line	380
	
i1l4129:	
	goto	i1l383
	line	333
	
i1l314:	
	
i1l4131:	
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
	goto	i1l3941
	xorlw	1^0	; case 1
	skipnz
	goto	i1l4003
	xorlw	2^1	; case 2
	skipnz
	goto	i1l4065
	xorlw	3^2	; case 3
	skipnz
	goto	i1l4127
	xorlw	4^3	; case 4
	skipnz
	goto	i1l3805
	goto	i1l383
	opt asmopt_on

	line	380
	
i1l383:	
	line	383
	clrf	(softDACController@blScheduleCleared)
	incf	(softDACController@blScheduleCleared),f
	line	385
	
i1l4133:	
	movf	(_ui8DACEngineStates),w
	xorlw	04h
	skipz
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l4161
u189_20:
	line	387
	
i1l4135:	
	clrf	(_ui8DACEngineStates)
	line	390
	
i1l4137:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_astDACModuleSchedule)+02h,w
	xorlw	0FFh
	skipnz
	goto	u190_21
	goto	u190_20
u190_21:
	goto	i1l4149
u190_20:
	line	392
	
i1l4139:	
	movf	0+(_astDACModuleSchedule)+02h,w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	
i1l4141:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	
i1l4143:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	
i1l4145:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	line	393
	
i1l4147:	
	movf	0+(_astDACModuleSchedule)+02h,w
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(_ui8PrevValue)
	line	394
	goto	i1l4191
	line	395
	
i1l514:	
	line	397
	
i1l4149:	
	movf	(_ui8PrevValue),w
	addlw	01h
	xorlw	0ffh
	addlw	1
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	
i1l4151:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	
i1l4153:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	
i1l4155:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	line	398
	
i1l4157:	
	clrf	(_ui8PrevValue)
	line	399
	
i1l4159:	
	movlw	(04h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(_ui8DACEngineStates)
	goto	i1l4191
	line	400
	
i1l515:	
	line	401
	goto	i1l4191
	line	402
	
i1l513:	
	line	405
	
i1l4161:	
	movlw	(01h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	addwf	(_ui8DACEngineStates),f
	line	409
	
i1l4163:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui8DACScheduleTail),w
	subwf	(_ui8DACEngineStates),w
	skipnc
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l4179
u191_20:
	
i1l4165:	
	movlw	(03h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(i1___bmul@multiplicand)
	movf	(_ui8DACEngineStates),w
	fcall	i1___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	0FFh
	skipnz
	goto	u192_21
	goto	u192_20
u192_21:
	goto	i1l4179
u192_20:
	line	412
	
i1l4167:	
	movlw	(03h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(i1___bmul@multiplicand)
	movf	(_ui8DACEngineStates),w
	fcall	i1___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorwf	(_ui8PrevValue),w
	skipnz
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l4177
u193_20:
	line	414
	
i1l4169:	
	movlw	(03h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(i1___bmul@multiplicand)
	movf	(_ui8DACEngineStates),w
	fcall	i1___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	decf	(_ui8PrevValue),w
	xorlw	0ffh
	bcf	status, 7	;select IRP bank0
	addwf	indf,w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	
i1l4171:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	
i1l4173:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	
i1l4175:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	line	415
	movlw	(03h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(i1___bmul@multiplicand)
	movf	(_ui8DACEngineStates),w
	fcall	i1___bmul
	addlw	02h
	addlw	_astDACModuleSchedule&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_softDACController+1)+0
	movf	(??_softDACController+1)+0,w
	movwf	(_ui8PrevValue)
	line	416
	goto	i1l4191
	line	417
	
i1l518:	
	line	420
	
i1l4177:	
	clrf	(softDACController@blScheduleCleared)
	goto	i1l4191
	line	421
	
i1l519:	
	line	422
	goto	i1l4191
	line	423
	
i1l517:	
	line	425
	
i1l4179:	
	movf	(_ui8PrevValue),w
	addlw	01h
	xorlw	0ffh
	addlw	1
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	
i1l4181:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	
i1l4183:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	
i1l4185:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	line	426
	
i1l4187:	
	clrf	(_ui8PrevValue)
	line	427
	
i1l4189:	
	movlw	(04h)
	movwf	(??_softDACController+0)+0
	movf	(??_softDACController+0)+0,w
	movwf	(_ui8DACEngineStates)
	goto	i1l4191
	line	428
	
i1l520:	
	goto	i1l4191
	line	429
	
i1l516:	
	goto	i1l4191
	line	430
	
i1l312:	
	line	331
	
i1l4191:	
	movf	(softDACController@blScheduleCleared),f
	skipz
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l524
u194_20:
	
i1l4193:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ui8DACScheduleTail),f
	skipz
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l4131
u195_20:
	goto	i1l524
	
i1l522:	
	goto	i1l524
	
i1l523:	
	line	431
	
i1l524:	
	return
	opt stack 0
GLOBAL	__end_of_softDACController
	__end_of_softDACController:
	signat	_softDACController,88
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
;;		_softDACController
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\sources\common\Umul8.c"
	line	4
global __ptext26
__ptext26:	;psect for function i1___bmul
psect	text26
	file	"C:\Users\glutnix\Desktop\philrobokit_xc8\tools\xc8_win32\sources\common\Umul8.c"
	line	4
	global	__size_ofi1___bmul
	__size_ofi1___bmul	equ	__end_ofi1___bmul-i1___bmul
	
i1___bmul:	
;incstack = 0
	opt	stack 0
; Regs used in i1___bmul: [wreg+status,2+status,0]
	movwf	(i1___bmul@multiplier)
	line	6
	
i1l3483:	
	clrf	(i1___bmul@product)
	goto	i1l3485
	line	42
	
i1l1361:	
	line	43
	
i1l3485:	
	btfss	(i1___bmul@multiplier),(0)&7
	goto	u173_21
	goto	u173_20
u173_21:
	goto	i1l3489
u173_20:
	line	44
	
i1l3487:	
	movf	(i1___bmul@multiplicand),w
	movwf	(??i1___bmul+0)+0
	movf	(??i1___bmul+0)+0,w
	addwf	(i1___bmul@product),f
	goto	i1l3489
	
i1l1362:	
	line	45
	
i1l3489:	
	clrc
	rlf	(i1___bmul@multiplicand),f

	line	46
	
i1l3491:	
	clrc
	rrf	(i1___bmul@multiplier),f

	line	47
	
i1l3493:	
	movf	(i1___bmul@multiplier),f
	skipz
	goto	u174_21
	goto	u174_20
u174_21:
	goto	i1l3485
u174_20:
	goto	i1l3495
	
i1l1363:	
	line	50
	
i1l3495:	
	movf	(i1___bmul@product),w
	goto	i1l1364
	
i1l3497:	
	line	51
	
i1l1364:	
	return
	opt stack 0
GLOBAL	__end_ofi1___bmul
	__end_ofi1___bmul:
	signat	i1___bmul,89
	global	_timer16BitISR

;; *************** function _timer16BitISR *****************
;; Defined at:
;;		line 69 in file "hardware/cores/lib\corelib_16bit_timer.c"
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
psect	text27,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	69
global __ptext27
__ptext27:	;psect for function _timer16BitISR
psect	text27
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	69
	global	__size_of_timer16BitISR
	__size_of_timer16BitISR	equ	__end_of_timer16BitISR-_timer16BitISR
	
_timer16BitISR:	
;incstack = 0
	opt	stack 1
; Regs used in _timer16BitISR: [wreg+status,2+status,0+pclath+cstack]
	line	73
	
i1l4425:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7	;volatile
	goto	u234_21
	goto	u234_20
u234_21:
	goto	i1l644
u234_20:
	
i1l4427:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1120/8)^080h,(1120)&7	;volatile
	goto	u235_21
	goto	u235_20
u235_21:
	goto	i1l644
u235_20:
	line	76
	
i1l4429:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(128/8),(128)&7	;volatile
	line	77
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1120/8)^080h,(1120)&7	;volatile
	line	78
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7	;volatile
	line	80
	
i1l4431:	
	movf	(_pt2TMR1ISR),w
	fcall	i1fptable
	goto	i1l644
	line	81
	
i1l643:	
	line	84
	
i1l644:	
	return
	opt stack 0
GLOBAL	__end_of_timer16BitISR
	__end_of_timer16BitISR:
	signat	_timer16BitISR,88
	global	_null16BitTMRFunction

;; *************** function _null16BitTMRFunction *****************
;; Defined at:
;;		line 67 in file "hardware/cores/lib\hal_16bit_timer.c"
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
psect	text28,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\hal_16bit_timer.c"
	line	67
global __ptext28
__ptext28:	;psect for function _null16BitTMRFunction
psect	text28
	file	"hardware/cores/lib\hal_16bit_timer.c"
	line	67
	global	__size_of_null16BitTMRFunction
	__size_of_null16BitTMRFunction	equ	__end_of_null16BitTMRFunction-_null16BitTMRFunction
	
_null16BitTMRFunction:	
;incstack = 0
	opt	stack 1
; Regs used in _null16BitTMRFunction: []
	line	70
	
i1l1072:	
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
psect	text29,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	72
global __ptext29
__ptext29:	;psect for function _set_gblISRLocked_FlagValue
psect	text29
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	72
	global	__size_of_set_gblISRLocked_FlagValue
	__size_of_set_gblISRLocked_FlagValue	equ	__end_of_set_gblISRLocked_FlagValue-_set_gblISRLocked_FlagValue
	
_set_gblISRLocked_FlagValue:	
;incstack = 0
	opt	stack 2
; Regs used in _set_gblISRLocked_FlagValue: [wreg]
	line	74
	
i1l4339:	
	movlw	(01h)
	movwf	(??_set_gblISRLocked_FlagValue+0)+0
	movf	(??_set_gblISRLocked_FlagValue+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_gblISRLocked)	;volatile
	line	75
	
i1l545:	
	return
	opt stack 0
GLOBAL	__end_of_set_gblISRLocked_FlagValue
	__end_of_set_gblISRLocked_FlagValue:
	signat	_set_gblISRLocked_FlagValue,88
	global	_serialTxISR

;; *************** function _serialTxISR *****************
;; Defined at:
;;		line 353 in file "hardware/cores/lib\corelib_uart.c"
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
psect	text30,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_uart.c"
	line	353
global __ptext30
__ptext30:	;psect for function _serialTxISR
psect	text30
	file	"hardware/cores/lib\corelib_uart.c"
	line	353
	global	__size_of_serialTxISR
	__size_of_serialTxISR	equ	__end_of_serialTxISR-_serialTxISR
	
_serialTxISR:	
;incstack = 0
	opt	stack 2
; Regs used in _serialTxISR: [wreg-fsr0h+status,2+status,0]
	line	355
	
i1l4471:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u243_21
	goto	u243_20
u243_21:
	goto	i1l978
u243_20:
	
i1l4473:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1124/8)^080h,(1124)&7	;volatile
	goto	u244_21
	goto	u244_20
u244_21:
	goto	i1l978
u244_20:
	line	357
	
i1l4475:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(100/8),(100)&7	;volatile
	line	360
	
i1l4477:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_stUARTTXFiFo)^080h+021h,w
	xorwf	0+(_stUARTTXFiFo)^080h+020h,w
	skipz
	goto	u245_21
	goto	u245_20
u245_21:
	goto	i1l4481
u245_20:
	line	362
	
i1l4479:	
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	366
	goto	i1l978
	line	367
	
i1l975:	
	line	369
	
i1l4481:	
	movf	0+(_stUARTTXFiFo)^080h+021h,w
	addlw	_stUARTTXFiFo&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	
i1l4483:	
	movlw	(01h)
	movwf	(??_serialTxISR+0)+0
	movf	(??_serialTxISR+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	0+(_stUARTTXFiFo)^080h+021h,f
	line	370
	
i1l4485:	
	movlw	(01Fh)
	movwf	(??_serialTxISR+0)+0
	movf	(??_serialTxISR+0)+0,w
	andwf	0+(_stUARTTXFiFo)^080h+021h,f
	line	375
	
i1l4487:	
	movf	0+(_stUARTTXFiFo)^080h+021h,w
	xorwf	0+(_stUARTTXFiFo)^080h+020h,w
	skipz
	goto	u246_21
	goto	u246_20
u246_21:
	goto	i1l978
u246_20:
	line	377
	
i1l4489:	
	bcf	(1124/8)^080h,(1124)&7	;volatile
	goto	i1l978
	line	381
	
i1l977:	
	goto	i1l978
	line	382
	
i1l976:	
	goto	i1l978
	line	383
	
i1l974:	
	line	384
	
i1l978:	
	return
	opt stack 0
GLOBAL	__end_of_serialTxISR
	__end_of_serialTxISR:
	signat	_serialTxISR,88
	global	_serialRxISR

;; *************** function _serialRxISR *****************
;; Defined at:
;;		line 306 in file "hardware/cores/lib\corelib_uart.c"
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
psect	text31,local,class=CODE,delta=2,merge=1
	line	306
global __ptext31
__ptext31:	;psect for function _serialRxISR
psect	text31
	file	"hardware/cores/lib\corelib_uart.c"
	line	306
	global	__size_of_serialRxISR
	__size_of_serialRxISR	equ	__end_of_serialRxISR-_serialRxISR
	
_serialRxISR:	
;incstack = 0
	opt	stack 2
; Regs used in _serialRxISR: [wreg-fsr0h+status,2+status,0]
	line	310
	
i1l4433:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u236_21
	goto	u236_20
u236_21:
	goto	i1l971
u236_20:
	
i1l4435:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7	;volatile
	goto	u237_21
	goto	u237_20
u237_21:
	goto	i1l971
u237_20:
	line	312
	
i1l4437:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7	;volatile
	line	313
	
i1l4439:	
	movf	(26),w	;volatile
	movwf	(??_serialRxISR+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_stUARTRXFiFo)^080h+020h,w
	addlw	_stUARTRXFiFo&0ffh
	movwf	fsr0
	movf	(??_serialRxISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	314
	
i1l4441:	
	movf	0+(_stUARTRXFiFo)^080h+020h,w
	addlw	01h
	andlw	01Fh
	movwf	(??_serialRxISR+0)+0
	movf	(??_serialRxISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialRxISR@ui8TempIn)
	line	316
	
i1l4443:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_stUARTRXFiFo)^080h+021h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(serialRxISR@ui8TempIn),w
	skipnz
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l971
u238_20:
	line	318
	
i1l4445:	
	movf	(serialRxISR@ui8TempIn),w
	movwf	(??_serialRxISR+0)+0
	movf	(??_serialRxISR+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_stUARTRXFiFo)^080h+020h
	line	322
	goto	i1l971
	line	323
	
i1l969:	
	goto	i1l971
	line	329
	
i1l970:	
	goto	i1l971
	line	334
	
i1l968:	
	line	335
	
i1l971:	
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
psect	text32,local,class=CODE,delta=2,merge=1
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	77
global __ptext32
__ptext32:	;psect for function _clr_gblISRLocked_FlagValue
psect	text32
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	77
	global	__size_of_clr_gblISRLocked_FlagValue
	__size_of_clr_gblISRLocked_FlagValue	equ	__end_of_clr_gblISRLocked_FlagValue-_clr_gblISRLocked_FlagValue
	
_clr_gblISRLocked_FlagValue:	
;incstack = 0
	opt	stack 2
; Regs used in _clr_gblISRLocked_FlagValue: [status,2]
	line	79
	
i1l4341:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_gblISRLocked)	;volatile
	line	80
	
i1l548:	
	return
	opt stack 0
GLOBAL	__end_of_clr_gblISRLocked_FlagValue
	__end_of_clr_gblISRLocked_FlagValue:
	signat	_clr_gblISRLocked_FlagValue,88
	global	_adcISR

;; *************** function _adcISR *****************
;; Defined at:
;;		line 87 in file "hardware/cores/lib\corelib_adc.c"
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
psect	text33,local,class=CODE,delta=2,merge=1
	file	"hardware/cores/lib\corelib_adc.c"
	line	87
global __ptext33
__ptext33:	;psect for function _adcISR
psect	text33
	file	"hardware/cores/lib\corelib_adc.c"
	line	87
	global	__size_of_adcISR
	__size_of_adcISR	equ	__end_of_adcISR-_adcISR
	
_adcISR:	
;incstack = 0
	opt	stack 2
; Regs used in _adcISR: [wreg-fsr0h+status,2+status,0]
	line	91
	
i1l4491:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(102/8),(102)&7	;volatile
	goto	u247_21
	goto	u247_20
u247_21:
	goto	i1l741
u247_20:
	
i1l4493:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1126/8)^080h,(1126)&7	;volatile
	goto	u248_21
	goto	u248_20
u248_21:
	goto	i1l741
u248_20:
	line	93
	
i1l4495:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7	;volatile
	line	96
	
i1l4497:	
	movf	(_eCurrentChannel),w
	xorlw	03h
	skipz
	goto	u249_21
	goto	u249_20
u249_21:
	goto	i1l4501
u249_20:
	goto	i1l4507
	line	102
	
i1l4499:	
	goto	i1l4507
	line	103
	
i1l734:	
	
i1l4501:	
	movlw	(04h)
	subwf	(_eCurrentChannel),w
	skipc
	goto	u250_21
	goto	u250_20
u250_21:
	goto	i1l4505
u250_20:
	line	105
	
i1l4503:	
	movf	(_eCurrentChannel),w
	addlw	0FFh
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	movwf	(adcISR@eEffectiveChannel)
	line	109
	goto	i1l4507
	line	110
	
i1l736:	
	line	112
	
i1l4505:	
	movf	(_eCurrentChannel),w
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	movwf	(adcISR@eEffectiveChannel)
	goto	i1l4507
	line	116
	
i1l737:	
	goto	i1l4507
	
i1l735:	
	line	119
	
i1l4507:	
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
	bsf	status, 7	;select IRP bank3
	movwf	indf
	incf	fsr0,f
	movf	(??_adcISR+0)+1,w
	movwf	indf
	line	122
	
i1l4509:	
	movlw	(07h)
	subwf	(_eCurrentChannel),w
	skipnc
	goto	u251_21
	goto	u251_20
u251_21:
	goto	i1l4517
u251_20:
	line	124
	
i1l4511:	
	movlw	(01h)
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	addwf	(_eCurrentChannel),f
	line	127
	
i1l4513:	
	movf	(_eCurrentChannel),w
	xorlw	03h
	skipz
	goto	u252_21
	goto	u252_20
u252_21:
	goto	i1l4519
u252_20:
	line	129
	
i1l4515:	
	movlw	(01h)
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	addwf	(_eCurrentChannel),f
	goto	i1l4519
	line	133
	
i1l739:	
	line	138
	goto	i1l4519
	line	139
	
i1l738:	
	line	141
	
i1l4517:	
	clrf	(_eCurrentChannel)
	goto	i1l4519
	line	145
	
i1l740:	
	line	148
	
i1l4519:	
	movlw	(0C7h)
	movwf	(??_adcISR+0)+0
	movf	(??_adcISR+0)+0,w
	andwf	(31),f	;volatile
	
i1l4521:	
	movf	(_eCurrentChannel),w
	movwf	(??_adcISR+0)+0
	movlw	(03h)-1
u253_25:
	clrc
	rlf	(??_adcISR+0)+0,f
	addlw	-1
	skipz
	goto	u253_25
	clrc
	rlf	(??_adcISR+0)+0,w
	andlw	038h
	movwf	(??_adcISR+1)+0
	movf	(??_adcISR+1)+0,w
	iorwf	(31),f	;volatile
	goto	i1l741
	line	149
	
i1l733:	
	line	150
	
i1l741:	
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
