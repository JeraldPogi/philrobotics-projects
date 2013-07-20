opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 49521"

opt pagewidth 120

	opt lm

	processor	18F4520
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
skipnz macro
	btfsc	status,2
	endm
	global	__ramtop
	global	__accesstop
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTA equ 0F80h ;# 
# 266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTB equ 0F81h ;# 
# 444 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTC equ 0F82h ;# 
# 628 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTD equ 0F83h ;# 
# 769 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PORTE equ 0F84h ;# 
# 1097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATA equ 0F89h ;# 
# 1229 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATB equ 0F8Ah ;# 
# 1361 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATC equ 0F8Bh ;# 
# 1493 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATD equ 0F8Ch ;# 
# 1625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LATE equ 0F8Dh ;# 
# 1727 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISA equ 0F92h ;# 
# 1732 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRA equ 0F92h ;# 
# 1948 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISB equ 0F93h ;# 
# 1953 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRB equ 0F93h ;# 
# 2169 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISC equ 0F94h ;# 
# 2174 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRC equ 0F94h ;# 
# 2390 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISD equ 0F95h ;# 
# 2395 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRD equ 0F95h ;# 
# 2611 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TRISE equ 0F96h ;# 
# 2616 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
DDRE equ 0F96h ;# 
# 2774 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCTUNE equ 0F9Bh ;# 
# 2838 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE1 equ 0F9Dh ;# 
# 2917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR1 equ 0F9Eh ;# 
# 2996 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR1 equ 0F9Fh ;# 
# 3075 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIE2 equ 0FA0h ;# 
# 3140 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PIR2 equ 0FA1h ;# 
# 3205 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
IPR2 equ 0FA2h ;# 
# 3270 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON1 equ 0FA6h ;# 
# 3335 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EECON2 equ 0FA7h ;# 
# 3341 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEDATA equ 0FA8h ;# 
# 3347 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
EEADR equ 0FA9h ;# 
# 3353 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA equ 0FABh ;# 
# 3358 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCSTA1 equ 0FABh ;# 
# 3510 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA equ 0FACh ;# 
# 3515 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1AS equ 0FB6h ;# 
# 4121 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCPAS equ 0FB6h ;# 
# 4277 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PWM1CON equ 0FB7h ;# 
# 4282 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ECCP1DEL equ 0FB7h ;# 
# 4414 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCON equ 0FB8h ;# 
# 4419 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BAUDCTL equ 0FB8h ;# 
# 4593 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP2CON equ 0FBAh ;# 
# 4671 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2 equ 0FBBh ;# 
# 4677 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2L equ 0FBBh ;# 
# 4683 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR2H equ 0FBCh ;# 
# 4689 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCP1CON equ 0FBDh ;# 
# 4785 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1 equ 0FBEh ;# 
# 4791 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1L equ 0FBEh ;# 
# 4797 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
CCPR1H equ 0FBFh ;# 
# 4803 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON2 equ 0FC0h ;# 
# 4873 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON1 equ 0FC1h ;# 
# 4963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADCON0 equ 0FC2h ;# 
# 5085 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRES equ 0FC3h ;# 
# 5091 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESL equ 0FC3h ;# 
# 5097 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
ADRESH equ 0FC4h ;# 
# 5103 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON2 equ 0FC5h ;# 
# 5197 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPCON1 equ 0FC6h ;# 
# 5266 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPSTAT equ 0FC7h ;# 
# 5505 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPADD equ 0FC8h ;# 
# 5511 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
SSPBUF equ 0FC9h ;# 
# 5517 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T2CON equ 0FCAh ;# 
# 5614 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PR2 equ 0FCBh ;# 
# 5619 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
MEMCON equ 0FCBh ;# 
# 5625 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR2 equ 0FCCh ;# 
# 5631 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T1CON equ 0FCDh ;# 
# 5735 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1 equ 0FCEh ;# 
# 5741 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1L equ 0FCEh ;# 
# 5747 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR1H equ 0FCFh ;# 
# 5753 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
RCON equ 0FD0h ;# 
# 5885 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WDTCON equ 0FD1h ;# 
# 5912 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
HLVDCON equ 0FD2h ;# 
# 5917 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
LVDCON equ 0FD2h ;# 
# 6181 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
OSCCON equ 0FD3h ;# 
# 6263 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
T0CON equ 0FD5h ;# 
# 6345 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0 equ 0FD6h ;# 
# 6351 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0L equ 0FD6h ;# 
# 6357 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TMR0H equ 0FD7h ;# 
# 6363 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STATUS equ 0FD8h ;# 
# 6441 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2 equ 0FD9h ;# 
# 6447 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2L equ 0FD9h ;# 
# 6453 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR2H equ 0FDAh ;# 
# 6459 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW2 equ 0FDBh ;# 
# 6465 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC2 equ 0FDCh ;# 
# 6471 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC2 equ 0FDDh ;# 
# 6477 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC2 equ 0FDEh ;# 
# 6483 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF2 equ 0FDFh ;# 
# 6489 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
BSR equ 0FE0h ;# 
# 6495 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1 equ 0FE1h ;# 
# 6501 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1L equ 0FE1h ;# 
# 6507 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR1H equ 0FE2h ;# 
# 6513 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW1 equ 0FE3h ;# 
# 6519 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC1 equ 0FE4h ;# 
# 6525 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC1 equ 0FE5h ;# 
# 6531 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC1 equ 0FE6h ;# 
# 6537 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF1 equ 0FE7h ;# 
# 6543 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
WREG equ 0FE8h ;# 
# 6554 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0 equ 0FE9h ;# 
# 6560 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0L equ 0FE9h ;# 
# 6566 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
FSR0H equ 0FEAh ;# 
# 6572 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PLUSW0 equ 0FEBh ;# 
# 6578 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PREINC0 equ 0FECh ;# 
# 6584 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTDEC0 equ 0FEDh ;# 
# 6590 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
POSTINC0 equ 0FEEh ;# 
# 6596 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INDF0 equ 0FEFh ;# 
# 6602 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON3 equ 0FF0h ;# 
# 6693 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON2 equ 0FF1h ;# 
# 6762 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
INTCON equ 0FF2h ;# 
# 6898 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PROD equ 0FF3h ;# 
# 6904 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODL equ 0FF3h ;# 
# 6910 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PRODH equ 0FF4h ;# 
# 6916 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TABLAT equ 0FF5h ;# 
# 6924 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTR equ 0FF6h ;# 
# 6930 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRL equ 0FF6h ;# 
# 6936 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRH equ 0FF7h ;# 
# 6942 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TBLPTRU equ 0FF8h ;# 
# 6950 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLAT equ 0FF9h ;# 
# 6957 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PC equ 0FF9h ;# 
# 6963 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCL equ 0FF9h ;# 
# 6969 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATH equ 0FFAh ;# 
# 6975 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
PCLATU equ 0FFBh ;# 
# 6981 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
STKPTR equ 0FFCh ;# 
# 7054 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOS equ 0FFDh ;# 
# 7060 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSL equ 0FFDh ;# 
# 7066 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSH equ 0FFEh ;# 
# 7072 "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\include\pic18f4520.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_setupGpio
	FNCALL	_main,_setupTimer
	FNCALL	_main,_setupADC
	FNCALL	_main,_setup16BitTimer
	FNCALL	_main,_set16BitTimer
	FNCALL	_main,_set_gblInitialized_FlagValue
	FNCALL	_main,_init
	FNCALL	_main,_cycle
	FNCALL	_init,_setupSoftDAC
	FNCALL	_init,_getMs
	FNCALL	_setupSoftDAC,_setup8BitTimer
	FNCALL	_setupSoftDAC,_configPin
	FNCALL	_setupSoftDAC,_changePinState
	FNCALL	_setupSoftDAC,_set8BitTimer
	FNCALL	_setupSoftDAC,_bubbleSortDAC
	FNCALL	_cycle,_getElapsedMs
	FNCALL	_cycle,_getMs
	FNCALL	_cycle,_setSoftDAC
	FNCALL	_getMs,_get_gui16TimerMs_Value
	FNCALL	_getElapsedMs,_get_gui16TimerMs_Value
	FNCALL	_setSoftDAC,_changePinState
	FNCALL	_setSoftDAC,_bubbleSortDAC
	FNCALL	_bubbleSortDAC,___wmul
	FNCALL	_setupADC,_configLowLvlADC
	FNCALL	_setupADC,_get_gblInitialized_FlagValue
	FNROOT	_main
	FNCALL	_isr,_timerISR
	FNCALL	_isr,_timer16BitISR
	FNCALL	_isr,_timer8BitISR
	FNCALL	_isr,_serialRxISR
	FNCALL	_isr,_userIntISR
	FNCALL	_isr,_serialTxISR
	FNCALL	_isr,_adcISR
	FNCALL	_timerISR,_inc_gui16TimerUsMSB_Value
	FNCALL	_timerISR,_inc_gui16TimerMs_Value
	FNCALL	_timer16BitISR,_criticalTaskISR
	FNCALL	_timer16BitISR,_null16BitTMRFunction
	FNCALL	_timer8BitISR,_softDACController
	FNCALL	_timer8BitISR,_nullTMRFunction
	FNCALL	_softDACController,i2_changePinState
	FNCALL	_softDACController,i2_set8BitTimer
	FNCALL	_userIntISR,_extIntISR
	FNCALL	_userIntISR,_rbIntISR
	FNCALL	_criticalTaskISR,i2_set16BitTimer
	FNCALL	_criticalTaskISR,_adcCycle
	FNCALL	_extIntISR,_nullIntFunction
	FNCALL	_rbIntISR,_nullIntFunction
	FNCALL	intlevel2,_isr
	global	intlevel2
	FNROOT	intlevel2
	global	_pt2INT0
	global	_pt2INT1
	global	_pt2INT2
	global	_pt2INT3
	global	_pt2INT4
	global	_pt2TMR1ISR
	global	_pt2TMR2ISR
	global	_ui8DACEngineStates
	global	_ui8PreScalerVal
	global	bubbleSortDAC@blOnGoing
	global	_ui8PreScaler
	global	_LogLookup
psect	idataCOMRAM,class=CODE,space=0,delta=1
global __pidataCOMRAM
__pidataCOMRAM:
	file	"hardware/cores/lib\hal_user_interrupt.h"
	line	98

;initializer for _pt2INT0
	dw	(_nullIntFunction)&0ffffh
	line	103

;initializer for _pt2INT1
	dw	(_nullIntFunction)&0ffffh
	line	104

;initializer for _pt2INT2
	dw	(_nullIntFunction)&0ffffh
	line	105

;initializer for _pt2INT3
	dw	(_nullIntFunction)&0ffffh
	line	106

;initializer for _pt2INT4
	dw	(_nullIntFunction)&0ffffh
	file	"C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8/hardware/cores/lib\hal_16bit_timer.h"
	line	130

;initializer for _pt2TMR1ISR
	dw	(_null16BitTMRFunction)&0ffffh
	file	"C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8/hardware/cores/lib\hal_8bit_timer.h"
	line	122

;initializer for _pt2TMR2ISR
	dw	(_nullTMRFunction)&0ffffh
	file	"libraries/soft_dac\soft_dac.c"
	line	62

;initializer for _ui8DACEngineStates
	db	low(04h)
	file	"hardware/cores/lib\corelib_pwm.c"
	line	43

;initializer for _ui8PreScalerVal
	db	low(01h)
	file	"libraries/soft_dac\soft_dac.c"
	line	285

;initializer for bubbleSortDAC@blOnGoing
	db	low(01h)
	file	"hardware/cores/lib\corelib_pwm.c"
	line	43

;initializer for _ui8PreScaler
	db	low(01h)
psect	idataBANK0,class=CODE,space=0,delta=1
global __pidataBANK0
__pidataBANK0:
	file	"C:/Users/glutnix/Documents/Dropbox/__RapidProto/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.c"
	line	7

;initializer for _LogLookup
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(02h)
	db	low(03h)
	db	low(05h)
	db	low(08h)
	db	low(0Bh)
	db	low(010h)
	db	low(017h)
	db	low(020h)
	db	low(02Dh)
	db	low(040h)
	db	low(05Ah)
	db	low(07Fh)
	db	low(0B4h)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	db	low(0FFh)
	global	_astDACModuleSchedule
	global	_LoopTimer
	global	_gui16TimerMs
	global	_gui16TimerSec
	global	_gui16TimerUsMSB
	global	adcCycle@ui16Counter
	global	timerISR@ui16UsCounter
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
	global	_gblInitialized
	global	_ui8DACScheduleTail
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
	global	_ui16ADCBuff
	global	_stUARTRXFiFo
	global	_stUARTTXFiFo
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADCON2
_ADCON2	set	0xFC0
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_CCP1CON
_CCP1CON	set	0xFBD
	global	_CCP2CON
_CCP2CON	set	0xFBA
	global	_CCPR1L
_CCPR1L	set	0xFBE
	global	_CCPR2L
_CCPR2L	set	0xFBB
	global	_PR2
_PR2	set	0xFCB
	global	_RCREG
_RCREG	set	0xFAE
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_T0CON
_T0CON	set	0xFD5
	global	_T1CON
_T1CON	set	0xFCD
	global	_T2CON
_T2CON	set	0xFCA
	global	_TMR0L
_TMR0L	set	0xFD6
	global	_TMR1H
_TMR1H	set	0xFCF
	global	_TMR1L
_TMR1L	set	0xFCE
	global	_TXREG
_TXREG	set	0xFAD
	global	_ADFM
_ADFM	set	0x7E07
	global	_ADIE
_ADIE	set	0x7CEE
	global	_ADIF
_ADIF	set	0x7CF6
	global	_ADON
_ADON	set	0x7E10
	global	_BRGH
_BRGH	set	0x7D62
	global	_CREN
_CREN	set	0x7D5C
	global	_GIE
_GIE	set	0x7F97
	global	_GO_DONE
_GO_DONE	set	0x7E11
	global	_INT0IE
_INT0IE	set	0x7F94
	global	_INT0IF
_INT0IF	set	0x7F91
	global	_INTEDG0
_INTEDG0	set	0x7F8E
	global	_OERR
_OERR	set	0x7D59
	global	_PEIE
_PEIE	set	0x7F96
	global	_PSA
_PSA	set	0x7EAB
	global	_RBIE
_RBIE	set	0x7F93
	global	_RBIF
_RBIF	set	0x7F90
	global	_RCIE
_RCIE	set	0x7CED
	global	_RCIF
_RCIF	set	0x7CF5
	global	_RX9
_RX9	set	0x7D5E
	global	_SPEN
_SPEN	set	0x7D5F
	global	_SYNC
_SYNC	set	0x7D64
	global	_T08BIT
_T08BIT	set	0x7EAE
	global	_T0CS
_T0CS	set	0x7EAD
	global	_T1OSCEN
_T1OSCEN	set	0x7E6B
	global	_T1RD16
_T1RD16	set	0x7E6F
	global	_T1SYNC
_T1SYNC	set	0x7E6A
	global	_TMR0IE
_TMR0IE	set	0x7F95
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_TMR0ON
_TMR0ON	set	0x7EAF
	global	_TMR1CS
_TMR1CS	set	0x7E69
	global	_TMR1IE
_TMR1IE	set	0x7CE8
	global	_TMR1IF
_TMR1IF	set	0x7CF0
	global	_TMR1ON
_TMR1ON	set	0x7E68
	global	_TMR2IE
_TMR2IE	set	0x7CE9
	global	_TMR2IF
_TMR2IF	set	0x7CF1
	global	_TMR2ON
_TMR2ON	set	0x7E52
	global	_TX9
_TX9	set	0x7D66
	global	_TXEN
_TXEN	set	0x7D65
	global	_TXIE
_TXIE	set	0x7CEC
	global	_TXIF
_TXIF	set	0x7CF4
	global	_LATA
_LATA	set	0xF89
	global	_LATB
_LATB	set	0xF8A
	global	_LATC
_LATC	set	0xF8B
	global	_LATD
_LATD	set	0xF8C
	global	_LATE
_LATE	set	0xF8D
	global	_PORTA
_PORTA	set	0xF80
	global	_PORTB
_PORTB	set	0xF81
	global	_PORTC
_PORTC	set	0xF82
	global	_PORTD
_PORTD	set	0xF83
	global	_PORTE
_PORTE	set	0xF84
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_TRISE
_TRISE	set	0xF96
; #config settings
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_OSC$HSPLL
__CFG_OSC$HSPLL equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_PWRT$ON
__CFG_PWRT$ON equ 0x0
global __CFG_WDTPS$1
__CFG_WDTPS$1 equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_PBADEN$OFF
__CFG_PBADEN$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
	file	"C:/Users/glutnix/Documents/Dropbox/__RapidProto/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1
global __pbssCOMRAM
__pbssCOMRAM:
_astDACModuleSchedule:
       ds      12
_BlinkTimer:
       ds      2
_LoopTimer:
       ds      2
_gui16TimerMs:
       ds      2
_gui16TimerSec:
       ds      2
_gui16TimerUsMSB:
       ds      2
adcCycle@ui16Counter:
       ds      2
timerISR@ui16UsCounter:
       ds      2
_ADCOutValue:
       ds      1
_LEDCounter:
       ds      1
_LEDDirection:
       ds      1
	global	_PORTB_BUFFER
_PORTB_BUFFER:
       ds      1
	global	_PORTB_DIRECTION
_PORTB_DIRECTION:
       ds      1
_eCurrentChannel:
       ds      1
	global	_eMod0_Mode
_eMod0_Mode:
       ds      1
	global	_eMod1_Mode
_eMod1_Mode:
       ds      1
	global	_eMod2_Mode
_eMod2_Mode:
       ds      1
	global	_eMod3_Mode
_eMod3_Mode:
       ds      1
	global	_eMod4_Mode
_eMod4_Mode:
       ds      1
_gblInitialized:
       ds      1
_ui8DACScheduleTail:
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
psect	dataCOMRAM,class=COMRAM,space=1
global __pdataCOMRAM
__pdataCOMRAM:
	file	"hardware/cores/lib\hal_user_interrupt.h"
	line	98
	global	_pt2INT0
_pt2INT0:
       ds      2
psect	dataCOMRAM
	file	"hardware/cores/lib\hal_user_interrupt.h"
	line	103
	global	_pt2INT1
_pt2INT1:
       ds      2
psect	dataCOMRAM
	file	"hardware/cores/lib\hal_user_interrupt.h"
	line	104
	global	_pt2INT2
_pt2INT2:
       ds      2
psect	dataCOMRAM
	file	"hardware/cores/lib\hal_user_interrupt.h"
	line	105
	global	_pt2INT3
_pt2INT3:
       ds      2
psect	dataCOMRAM
	file	"hardware/cores/lib\hal_user_interrupt.h"
	line	106
	global	_pt2INT4
_pt2INT4:
       ds      2
psect	dataCOMRAM
	file	"C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8/hardware/cores/lib\hal_16bit_timer.h"
	line	130
	global	_pt2TMR1ISR
_pt2TMR1ISR:
       ds      2
psect	dataCOMRAM
	file	"C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8/hardware/cores/lib\hal_8bit_timer.h"
	line	122
	global	_pt2TMR2ISR
_pt2TMR2ISR:
       ds      2
psect	dataCOMRAM
	file	"libraries/soft_dac\soft_dac.c"
	line	62
_ui8DACEngineStates:
       ds      1
psect	dataCOMRAM
	file	"hardware/cores/lib\corelib_pwm.c"
	line	43
_ui8PreScalerVal:
       ds      1
psect	dataCOMRAM
	file	"libraries/soft_dac\soft_dac.c"
	line	285
bubbleSortDAC@blOnGoing:
       ds      1
psect	dataCOMRAM
	file	"hardware/cores/lib\corelib_pwm.c"
	line	43
_ui8PreScaler:
       ds      1
psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_ui16ADCBuff:
       ds      14
_stUARTRXFiFo:
       ds      34
_stUARTTXFiFo:
       ds      34
psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:/Users/glutnix/Documents/Dropbox/__RapidProto/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.c"
	line	7
_LogLookup:
       ds      25
psect	cinit
; Clear objects allocated to BANK0 (82 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	82
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (50 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	50
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Initialize objects allocated to BANK0 (25 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,25
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to COMRAM (18 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,18
	copy_data1:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data1
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
??_bubbleSortDAC:	; 0 bytes @ 0x0
	ds   7
	global	setupSoftDAC@blScheduled
setupSoftDAC@blScheduled:	; 1 bytes @ 0x7
	ds   1
	global	setupSoftDAC@ui8Counter
setupSoftDAC@ui8Counter:	; 1 bytes @ 0x8
	ds   1
??_init:	; 0 bytes @ 0x9
	ds   2
psect	cstackCOMRAM,class=COMRAM,space=1
global __pcstackCOMRAM
__pcstackCOMRAM:
?_nullIntFunction:	; 0 bytes @ 0x0
??_nullIntFunction:	; 0 bytes @ 0x0
?_nullTMRFunction:	; 0 bytes @ 0x0
??_nullTMRFunction:	; 0 bytes @ 0x0
?_null16BitTMRFunction:	; 0 bytes @ 0x0
??_null16BitTMRFunction:	; 0 bytes @ 0x0
?_softDACController:	; 0 bytes @ 0x0
?_setupGpio:	; 0 bytes @ 0x0
?_setupTimer:	; 0 bytes @ 0x0
?_criticalTaskISR:	; 0 bytes @ 0x0
?_timerISR:	; 0 bytes @ 0x0
?_timer16BitISR:	; 0 bytes @ 0x0
?_timer8BitISR:	; 0 bytes @ 0x0
?_serialRxISR:	; 0 bytes @ 0x0
??_serialRxISR:	; 0 bytes @ 0x0
?_userIntISR:	; 0 bytes @ 0x0
??_userIntISR:	; 0 bytes @ 0x0
?_serialTxISR:	; 0 bytes @ 0x0
??_serialTxISR:	; 0 bytes @ 0x0
?_adcISR:	; 0 bytes @ 0x0
??_adcISR:	; 0 bytes @ 0x0
?_adcCycle:	; 0 bytes @ 0x0
??_adcCycle:	; 0 bytes @ 0x0
?_configLowLvlADC:	; 0 bytes @ 0x0
?_extIntISR:	; 0 bytes @ 0x0
??_extIntISR:	; 0 bytes @ 0x0
?_rbIntISR:	; 0 bytes @ 0x0
??_rbIntISR:	; 0 bytes @ 0x0
?_init:	; 0 bytes @ 0x0
?_cycle:	; 0 bytes @ 0x0
?_set_gblInitialized_FlagValue:	; 0 bytes @ 0x0
	global	?_inc_gui16TimerUsMSB_Value
?_inc_gui16TimerUsMSB_Value:	; 0 bytes @ 0x0
?_inc_gui16TimerMs_Value:	; 0 bytes @ 0x0
??_inc_gui16TimerMs_Value:	; 0 bytes @ 0x0
?_isr:	; 0 bytes @ 0x0
	global	?i2_set16BitTimer
?i2_set16BitTimer:	; 0 bytes @ 0x0
	global	?i2_set8BitTimer
?i2_set8BitTimer:	; 0 bytes @ 0x0
	global	?i2_changePinState
?i2_changePinState:	; 0 bytes @ 0x0
?_get_gblInitialized_FlagValue:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	i2set16BitTimer@eTmrModule
i2set16BitTimer@eTmrModule:	; 1 bytes @ 0x0
	global	i2set8BitTimer@eTmrModule
i2set8BitTimer@eTmrModule:	; 1 bytes @ 0x0
	global	i2changePinState@ui8Pin
i2changePinState@ui8Pin:	; 1 bytes @ 0x0
	global	inc_gui16TimerUsMSB_Value@ui16Value
inc_gui16TimerUsMSB_Value@ui16Value:	; 2 bytes @ 0x0
	ds   1
	global	i2set8BitTimer@ui8Value
i2set8BitTimer@ui8Value:	; 1 bytes @ 0x1
	global	i2changePinState@eOperation
i2changePinState@eOperation:	; 1 bytes @ 0x1
	global	i2set16BitTimer@ui16Value
i2set16BitTimer@ui16Value:	; 2 bytes @ 0x1
	ds   1
??_timerISR:	; 0 bytes @ 0x2
??_inc_gui16TimerUsMSB_Value:	; 0 bytes @ 0x2
??i2_set8BitTimer:	; 0 bytes @ 0x2
??i2_changePinState:	; 0 bytes @ 0x2
	ds   1
??i2_set16BitTimer:	; 0 bytes @ 0x3
	ds   2
??_criticalTaskISR:	; 0 bytes @ 0x5
	global	i2changePinState@pui8PortReg
i2changePinState@pui8PortReg:	; 2 bytes @ 0x5
	ds   1
??_timer16BitISR:	; 0 bytes @ 0x6
	ds   1
??_softDACController:	; 0 bytes @ 0x7
	ds   2
??_timer8BitISR:	; 0 bytes @ 0x9
??_isr:	; 0 bytes @ 0x9
	ds   14
	global	?_setup8BitTimer
?_setup8BitTimer:	; 0 bytes @ 0x17
	global	?_configPin
?_configPin:	; 0 bytes @ 0x17
	global	?_changePinState
?_changePinState:	; 0 bytes @ 0x17
	global	?_set8BitTimer
?_set8BitTimer:	; 0 bytes @ 0x17
??_setupGpio:	; 0 bytes @ 0x17
??_setupTimer:	; 0 bytes @ 0x17
	global	?_setup16BitTimer
?_setup16BitTimer:	; 0 bytes @ 0x17
	global	?_set16BitTimer
?_set16BitTimer:	; 0 bytes @ 0x17
??_configLowLvlADC:	; 0 bytes @ 0x17
??_set_gblInitialized_FlagValue:	; 0 bytes @ 0x17
??_get_gblInitialized_FlagValue:	; 0 bytes @ 0x17
	global	?_get_gui16TimerMs_Value
?_get_gui16TimerMs_Value:	; 2 bytes @ 0x17
	global	?___wmul
?___wmul:	; 2 bytes @ 0x17
	global	get_gblInitialized_FlagValue@blTemp
get_gblInitialized_FlagValue@blTemp:	; 1 bytes @ 0x17
	global	setup16BitTimer@eTmrModule
setup16BitTimer@eTmrModule:	; 1 bytes @ 0x17
	global	set16BitTimer@eTmrModule
set16BitTimer@eTmrModule:	; 1 bytes @ 0x17
	global	setup8BitTimer@eTmrModule
setup8BitTimer@eTmrModule:	; 1 bytes @ 0x17
	global	set8BitTimer@eTmrModule
set8BitTimer@eTmrModule:	; 1 bytes @ 0x17
	global	configPin@ui8Pin
configPin@ui8Pin:	; 1 bytes @ 0x17
	global	changePinState@ui8Pin
changePinState@ui8Pin:	; 1 bytes @ 0x17
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x17
	ds   1
	global	?_setupADC
?_setupADC:	; 0 bytes @ 0x18
	global	set8BitTimer@ui8Value
set8BitTimer@ui8Value:	; 1 bytes @ 0x18
	global	setupADC@eVrefSource
setupADC@eVrefSource:	; 1 bytes @ 0x18
	global	configPin@ui8Direction
configPin@ui8Direction:	; 1 bytes @ 0x18
	global	changePinState@eOperation
changePinState@eOperation:	; 1 bytes @ 0x18
	global	setup16BitTimer@callback
setup16BitTimer@callback:	; 2 bytes @ 0x18
	global	set16BitTimer@ui16Value
set16BitTimer@ui16Value:	; 2 bytes @ 0x18
	global	setup8BitTimer@callback
setup8BitTimer@callback:	; 2 bytes @ 0x18
	ds   1
??_configPin:	; 0 bytes @ 0x19
??_changePinState:	; 0 bytes @ 0x19
??_set8BitTimer:	; 0 bytes @ 0x19
??_setupADC:	; 0 bytes @ 0x19
??_get_gui16TimerMs_Value:	; 0 bytes @ 0x19
	global	get_gui16TimerMs_Value@ui16Temp
get_gui16TimerMs_Value@ui16Temp:	; 2 bytes @ 0x19
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x19
	ds   1
??_setup8BitTimer:	; 0 bytes @ 0x1A
??_setup16BitTimer:	; 0 bytes @ 0x1A
??_set16BitTimer:	; 0 bytes @ 0x1A
	ds   1
??___wmul:	; 0 bytes @ 0x1B
	global	?_getMs
?_getMs:	; 2 bytes @ 0x1B
	global	?_getElapsedMs
?_getElapsedMs:	; 2 bytes @ 0x1B
	global	getElapsedMs@ui16TimeMs
getElapsedMs@ui16TimeMs:	; 2 bytes @ 0x1B
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x1B
	ds   1
	global	configPin@pui8PortDirReg
configPin@pui8PortDirReg:	; 2 bytes @ 0x1C
	global	changePinState@pui8PortReg
changePinState@pui8PortReg:	; 2 bytes @ 0x1C
	ds   1
??_getMs:	; 0 bytes @ 0x1D
??_getElapsedMs:	; 0 bytes @ 0x1D
	global	?_bubbleSortDAC
?_bubbleSortDAC:	; 0 bytes @ 0x1D
	global	bubbleSortDAC@ui8MaxCount
bubbleSortDAC@ui8MaxCount:	; 1 bytes @ 0x1D
	global	getMs@ui16TempBuff
getMs@ui16TempBuff:	; 2 bytes @ 0x1D
	global	getElapsedMs@ui16TempBuff
getElapsedMs@ui16TempBuff:	; 2 bytes @ 0x1D
	ds   1
	global	?_setupSoftDAC
?_setupSoftDAC:	; 0 bytes @ 0x1E
	global	?_setSoftDAC
?_setSoftDAC:	; 0 bytes @ 0x1E
	global	setupSoftDAC@eSDACModule
setupSoftDAC@eSDACModule:	; 1 bytes @ 0x1E
	global	setSoftDAC@eSDACModule
setSoftDAC@eSDACModule:	; 1 bytes @ 0x1E
	ds   1
	global	setupSoftDAC@ui8Pin
setupSoftDAC@ui8Pin:	; 1 bytes @ 0x1F
	global	setSoftDAC@ui8Value
setSoftDAC@ui8Value:	; 1 bytes @ 0x1F
	ds   1
??_setSoftDAC:	; 0 bytes @ 0x20
	global	setupSoftDAC@ui8Value
setupSoftDAC@ui8Value:	; 1 bytes @ 0x20
	ds   1
??_setupSoftDAC:	; 0 bytes @ 0x21
	global	setSoftDAC@ui8Counter
setSoftDAC@ui8Counter:	; 1 bytes @ 0x21
	ds   1
??_cycle:	; 0 bytes @ 0x22
	ds   1
??_main:	; 0 bytes @ 0x23
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        43
;!    BSS         132
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     36     104
;!    BANK0           128     11     118
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    ?_getMs	unsigned int  size(2) Largest target is 0
;!
;!    ?_get_gui16TimerMs_Value	unsigned int  size(2) Largest target is 0
;!
;!    ?___wmul	unsigned int  size(2) Largest target is 0
;!
;!    ?_getElapsedMs	unsigned int  size(2) Largest target is 0
;!
;!    changePinState@pui8PortReg	PTR unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), LATE(DATA[1]), LATD(DATA[1]), LATC(DATA[1]), 
;!		 -> LATB(DATA[1]), LATA(DATA[1]), 
;!
;!    configPin@pui8PortDirReg	PTR unsigned char  size(2) Largest target is 1
;!		 -> NULL(NULL[0]), TRISD(DATA[1]), TRISC(DATA[1]), TRISB(DATA[1]), 
;!		 -> TRISE(DATA[1]), TRISA(DATA[1]), 
;!
;!    sp__memset	PTR void  size(2) Largest target is 34
;!		 -> stUARTRXFiFo(BANK0[34]), stUARTTXFiFo(BANK0[34]), 
;!
;!    setup8BitTimer@callback	PTR FTN()void  size(2) Largest target is 0
;!		 -> softDACController(), 
;!
;!    setup16BitTimer@callback	PTR FTN()void  size(2) Largest target is 0
;!		 -> criticalTaskISR(), 
;!
;!    pt2TMR1ISR	PTR FTN()void  size(2) Largest target is 0
;!		 -> criticalTaskISR(), null16BitTMRFunction(), 
;!
;!    pt2TMR2ISR	PTR FTN()void  size(2) Largest target is 0
;!		 -> softDACController(), nullTMRFunction(), 
;!
;!    pt2INT4	PTR FTN()void  size(2) Largest target is 0
;!		 -> nullIntFunction(), 
;!
;!    pt2INT3	PTR FTN()void  size(2) Largest target is 0
;!		 -> nullIntFunction(), 
;!
;!    pt2INT2	PTR FTN()void  size(2) Largest target is 0
;!		 -> nullIntFunction(), 
;!
;!    pt2INT1	PTR FTN()void  size(2) Largest target is 0
;!		 -> nullIntFunction(), 
;!
;!    pt2INT0	PTR FTN()void  size(2) Largest target is 0
;!		 -> nullIntFunction(), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_cycle
;!    _init->_setupSoftDAC
;!    _setupSoftDAC->_configPin
;!    _setupSoftDAC->_changePinState
;!    _setupSoftDAC->_bubbleSortDAC
;!    _cycle->_setSoftDAC
;!    _getMs->_get_gui16TimerMs_Value
;!    _getElapsedMs->_get_gui16TimerMs_Value
;!    _setSoftDAC->_changePinState
;!    _setSoftDAC->_bubbleSortDAC
;!    _bubbleSortDAC->___wmul
;!    _setupADC->_get_gblInitialized_FlagValue
;!
;!Critical Paths under _isr in COMRAM
;!
;!    _timerISR->_inc_gui16TimerUsMSB_Value
;!    _timer16BitISR->_criticalTaskISR
;!    _timer8BitISR->_softDACController
;!    _softDACController->i2_changePinState
;!    _criticalTaskISR->i2_set16BitTimer
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_init
;!    _init->_setupSoftDAC
;!    _setupSoftDAC->_bubbleSortDAC
;!    _setSoftDAC->_bubbleSortDAC
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
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
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
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
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
;! (0) _main                                                 1     1      0    2833
;!                                             35 COMRAM     1     1      0
;!                          _setupGpio
;!                         _setupTimer
;!                           _setupADC
;!                    _setup16BitTimer
;!                      _set16BitTimer
;!       _set_gblInitialized_FlagValue
;!                               _init
;!                              _cycle
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 2     2      0    1614
;!                                              9 BANK0      2     2      0
;!                       _setupSoftDAC
;!                              _getMs
;! ---------------------------------------------------------------------------------
;! (2) _setupSoftDAC                                         7     4      3    1568
;!                                             30 COMRAM     5     2      3
;!                                              7 BANK0      2     2      0
;!                     _setup8BitTimer
;!                          _configPin
;!                     _changePinState
;!                       _set8BitTimer
;!                      _bubbleSortDAC
;! ---------------------------------------------------------------------------------
;! (1) _cycle                                                1     1      0    1099
;!                                             34 COMRAM     1     1      0
;!                       _getElapsedMs
;!                              _getMs
;!                         _setSoftDAC
;! ---------------------------------------------------------------------------------
;! (2) _getMs                                                4     2      2      46
;!                                             27 COMRAM     4     2      2
;!             _get_gui16TimerMs_Value
;! ---------------------------------------------------------------------------------
;! (2) _getElapsedMs                                         4     2      2      69
;!                                             27 COMRAM     4     2      2
;!             _get_gui16TimerMs_Value
;! ---------------------------------------------------------------------------------
;! (2) _setSoftDAC                                           4     2      2     984
;!                                             30 COMRAM     4     2      2
;!                     _changePinState
;!                      _bubbleSortDAC
;! ---------------------------------------------------------------------------------
;! (3) _setup8BitTimer                                       3     0      3      44
;!                                             23 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (3) _configPin                                            7     5      2     298
;!                                             23 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (3) _changePinState                                       7     5      2     532
;!                                             23 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (3) _set8BitTimer                                         2     0      2      44
;!                                             23 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (3) _bubbleSortDAC                                        8     7      1     167
;!                                             29 COMRAM     1     0      1
;!                                              0 BANK0      7     7      0
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (1) _set_gblInitialized_FlagValue                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _get_gui16TimerMs_Value                               4     2      2      23
;!                                             23 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _setupGpio                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _setupTimer                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _setupADC                                             2     1      1      30
;!                                             24 COMRAM     2     1      1
;!                    _configLowLvlADC
;!       _get_gblInitialized_FlagValue
;! ---------------------------------------------------------------------------------
;! (2) _get_gblInitialized_FlagValue                         1     1      0      15
;!                                             23 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _setup16BitTimer                                      3     0      3      30
;!                                             23 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (1) _set16BitTimer                                        5     2      3      60
;!                                             23 COMRAM     5     2      3
;! ---------------------------------------------------------------------------------
;! (2) _configLowLvlADC                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) ___wmul                                               6     2      4     136
;!                                             23 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _isr                                                 14    14      0    1335
;!                                              9 COMRAM    14    14      0
;!                           _timerISR
;!                      _timer16BitISR
;!                       _timer8BitISR
;!                        _serialRxISR
;!                         _userIntISR
;!                        _serialTxISR
;!                             _adcISR
;! ---------------------------------------------------------------------------------
;! (6) _timerISR                                             0     0      0      15
;!          _inc_gui16TimerUsMSB_Value
;!             _inc_gui16TimerMs_Value
;! ---------------------------------------------------------------------------------
;! (7) _inc_gui16TimerUsMSB_Value                            2     0      2      15
;!                                              0 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (7) _inc_gui16TimerMs_Value                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _timer16BitISR                                        0     0      0     240
;!                    _criticalTaskISR
;!               _null16BitTMRFunction
;! ---------------------------------------------------------------------------------
;! (6) _timer8BitISR                                         0     0      0    1080
;!                  _softDACController
;!                    _nullTMRFunction
;! ---------------------------------------------------------------------------------
;! (7) _softDACController                                    2     2      0    1080
;!                                              7 COMRAM     2     2      0
;!                   i2_changePinState
;!                     i2_set8BitTimer
;! ---------------------------------------------------------------------------------
;! (6) _serialRxISR                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _userIntISR                                           0     0      0       0
;!                          _extIntISR
;!                           _rbIntISR
;! ---------------------------------------------------------------------------------
;! (6) _serialTxISR                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _adcISR                                               4     4      0       0
;!                                              0 COMRAM     4     4      0
;! ---------------------------------------------------------------------------------
;! (7) _criticalTaskISR                                      1     1      0     240
;!                                              5 COMRAM     1     1      0
;!                    i2_set16BitTimer
;!                           _adcCycle
;! ---------------------------------------------------------------------------------
;! (8) _adcCycle                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _extIntISR                                            0     0      0       0
;!                    _nullIntFunction
;! ---------------------------------------------------------------------------------
;! (7) _rbIntISR                                             0     0      0       0
;!                    _nullIntFunction
;! ---------------------------------------------------------------------------------
;! (7) _null16BitTMRFunction                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _nullTMRFunction                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _nullIntFunction                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) i2_set16BitTimer                                      5     2      3     240
;!                                              0 COMRAM     5     2      3
;! ---------------------------------------------------------------------------------
;! (8) i2_set8BitTimer                                       2     0      2     120
;!                                              0 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (8) i2_changePinState                                     7     5      2     960
;!                                              0 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
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
;!   _setup16BitTimer
;!   _set16BitTimer
;!   _set_gblInitialized_FlagValue
;!   _init
;!     _setupSoftDAC
;!       _setup8BitTimer
;!       _configPin
;!       _changePinState
;!       _set8BitTimer
;!       _bubbleSortDAC
;!         ___wmul
;!     _getMs
;!       _get_gui16TimerMs_Value
;!   _cycle
;!     _getElapsedMs
;!       _get_gui16TimerMs_Value
;!     _getMs
;!       _get_gui16TimerMs_Value
;!     _setSoftDAC
;!       _changePinState
;!       _bubbleSortDAC
;!         ___wmul
;!
;! _isr (ROOT)
;!   _timerISR
;!     _inc_gui16TimerUsMSB_Value
;!     _inc_gui16TimerMs_Value
;!   _timer16BitISR
;!     _criticalTaskISR
;!       i2_set16BitTimer
;!       _adcCycle
;!     _null16BitTMRFunction
;!   _timer8BitISR
;!     _softDACController
;!       i2_changePinState
;!       i2_set8BitTimer
;!     _nullTMRFunction
;!   _serialRxISR
;!   _userIntISR
;!     _extIntISR
;!       _nullIntFunction
;!     _rbIntISR
;!       _nullIntFunction
;!   _serialTxISR
;!   _adcISR
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      17        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      16        0.0%
;!BANK5              100      0       0      14        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80      B      76       5       92.2%
;!BITCOMRAM           7F      0       0       0        0.0%
;!COMRAM              7F     24      68       1       81.9%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       C       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      DE      15        0.0%
;!DATA                 0      0      EA       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 127 in file "hardware/cores\PhilRoboKit_CoreLib_Macro.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  334[COMRAM] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_setupGpio
;;		_setupTimer
;;		_setupADC
;;		_setup16BitTimer
;;		_set16BitTimer
;;		_set_gblInitialized_FlagValue
;;		_init
;;		_cycle
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
global __ptext0
__ptext0:
psect	text0
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	127
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
	opt	stack 23
	line	129
	
l4354:
	call	_setupGpio	;wreg free
	line	131
	
l4356:
	call	_setupTimer	;wreg free
	line	133
	
l4358:
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:?_setupADC)),c
	movf	(??_main+0+0)&0ffh,c,w
	call	_setupADC	;wreg free
	line	136
	
l4360:
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:?_setup16BitTimer)),c
	movf	(??_main+0+0)&0ffh,c,w
	movlw	high(_criticalTaskISR)
	movwf	(1+((c:?_setup16BitTimer)+01h)),c
	movlw	low(_criticalTaskISR)
	movwf	(0+((c:?_setup16BitTimer)+01h)),c
	call	_setup16BitTimer	;wreg free
	line	137
	
l4362:
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:?_set16BitTimer)),c
	movf	(??_main+0+0)&0ffh,c,w
	movlw	high(07D0h)
	movwf	(1+((c:?_set16BitTimer)+01h)),c
	movlw	low(07D0h)
	movwf	(0+((c:?_set16BitTimer)+01h)),c
	call	_set16BitTimer	;wreg free
	line	140
	
l4364:
	bsf	c:(32663/8),(32663)&7	;volatile
	
l4366:
	bsf	c:(32662/8),(32662)&7	;volatile
	line	141
	
l4368:
	call	_set_gblInitialized_FlagValue	;wreg free
	line	143
	
l4370:
	call	_init	;wreg free
	goto	l4372
	line	145
	
l335:
	line	150
	
l4372:
	call	_cycle	;wreg free
	goto	l4372
	line	151
	
l336:
	line	145
	goto	l4372
	
l337:
	line	154
;	Return value of _main is never used
	
l338:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 12 in file "C:/Users/glutnix/Documents/Dropbox/__RapidProto/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_setupSoftDAC
;;		_getMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
global __ptext1
__ptext1:
psect	text1
	file	"C:/Users/glutnix/Documents/Dropbox/__RapidProto/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.c"
	line	12
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:
	opt	stack 23
	line	13
	
l4082:
	movlb	0	; () banked
	movwf	(??_init+0+0)&0ffh
	movlw	low(0)
	movwf	((c:?_setupSoftDAC)),c
	movlb	0	; () banked
	movf	(??_init+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	(??_init+1+0)&0ffh
	movlw	low(01Ch)
	movwf	(0+((c:?_setupSoftDAC)+01h)),c
	movlb	0	; () banked
	movf	(??_init+1+0)&0ffh,w
	movff	(c:_ADCOutValue),0+((c:?_setupSoftDAC)+02h)
	call	_setupSoftDAC	;wreg free
	line	14
	
l4084:
	call	_getMs	;wreg free
	movff	0+?_getMs,(c:_LoopTimer)
	movff	1+?_getMs,(c:_LoopTimer+1)
	line	16
	
l53:
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
;;  eSDACModule     1   30[COMRAM] enum E4410
;;  ui8Pin          1   31[COMRAM] unsigned char 
;;  ui8Value        1   32[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Counter      1    8[BANK0 ] unsigned char 
;;  blScheduled     1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         5       2       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_setup8BitTimer
;;		_configPin
;;		_changePinState
;;		_set8BitTimer
;;		_bubbleSortDAC
;; This function is called by:
;;		_init
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
global __ptext2
__ptext2:
psect	text2
	file	"libraries/soft_dac\soft_dac.c"
	line	91
	global	__size_of_setupSoftDAC
	__size_of_setupSoftDAC	equ	__end_of_setupSoftDAC-_setupSoftDAC
	
_setupSoftDAC:
	opt	stack 23
	line	93
	
l4086:
	movwf	(??_setupSoftDAC+0+0)&0ffh,c
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((setupSoftDAC@blScheduled))&0ffh
	movf	(??_setupSoftDAC+0+0)&0ffh,c,w
	line	98
	
l4088:; BSR set to: 0

	movlw	(07h)&0ffh
	cpfslt	((c:setupSoftDAC@ui8Value)),c
	goto	u2471
	goto	u2470
u2471:
	goto	l4092
u2470:
	line	100
	
l4090:; BSR set to: 0

	movwf	(??_setupSoftDAC+0+0)&0ffh,c
	movlw	low(07h)
	movwf	((c:setupSoftDAC@ui8Value)),c
	movf	(??_setupSoftDAC+0+0)&0ffh,c,w
	line	101
	goto	l4096
	line	102
	
l118:; BSR set to: 0

	
l4092:; BSR set to: 0

	movlw	(0FBh-1)
	cpfsgt	((c:setupSoftDAC@ui8Value)),c
	goto	u2481
	goto	u2480
u2481:
	goto	l4096
u2480:
	line	104
	
l4094:; BSR set to: 0

	setf	((c:setupSoftDAC@ui8Value)),c
	line	105
	goto	l4096
	line	106
	
l120:; BSR set to: 0

	goto	l4096
	line	109
	
l121:; BSR set to: 0

	goto	l4096
	
l119:; BSR set to: 0

	line	112
	
l4096:; BSR set to: 0

	movwf	(??_setupSoftDAC+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:?_setup8BitTimer)),c
	movf	(??_setupSoftDAC+0+0)&0ffh,c,w
	movlw	high(_softDACController)
	movwf	(1+((c:?_setup8BitTimer)+01h)),c
	movlw	low(_softDACController)
	movwf	(0+((c:?_setup8BitTimer)+01h)),c
	call	_setup8BitTimer	;wreg free
	line	115
	
l4098:
	movff	(c:setupSoftDAC@ui8Pin),(c:?_configPin)
	movwf	(??_setupSoftDAC+0+0)&0ffh,c
	movlw	low(0)
	movwf	(0+((c:?_configPin)+01h)),c
	movf	(??_setupSoftDAC+0+0)&0ffh,c,w
	call	_configPin	;wreg free
	line	116
	
l4100:
	movff	(c:setupSoftDAC@ui8Pin),(c:?_changePinState)
	movwf	(??_setupSoftDAC+0+0)&0ffh,c
	movlw	low(01h)
	movwf	(0+((c:?_changePinState)+01h)),c
	movf	(??_setupSoftDAC+0+0)&0ffh,c,w
	call	_changePinState	;wreg free
	line	119
	
l4102:
	movwf	(??_setupSoftDAC+0+0)&0ffh,c
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((setupSoftDAC@ui8Counter))&0ffh
	movf	(??_setupSoftDAC+0+0)&0ffh,c,w
	goto	l4112
	line	120
	
l123:; BSR set to: 0

	line	121
	
l4104:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((setupSoftDAC@ui8Counter))&0ffh,w
	mullw	03h
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:setupSoftDAC@eSDACModule)),c,w
	cpfseq	indf2
	goto	u2491
	goto	u2490
u2491:
	goto	l4110
u2490:
	line	124
	
l4106:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((setupSoftDAC@ui8Counter))&0ffh,w
	mullw	03h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	(c:setupSoftDAC@ui8Pin),indf2

	line	125
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((setupSoftDAC@ui8Counter))&0ffh,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	(c:setupSoftDAC@ui8Value),indf2

	line	127
	
l4108:; BSR set to: 0

	movwf	(??_setupSoftDAC+0+0)&0ffh,c
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((setupSoftDAC@blScheduled))&0ffh
	movf	(??_setupSoftDAC+0+0)&0ffh,c,w
	goto	l4110
	line	128
	
l124:; BSR set to: 0

	line	119
	
l4110:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((setupSoftDAC@ui8Counter))&0ffh
	goto	l4112
	
l122:; BSR set to: 0

	
l4112:; BSR set to: 0

	movf	((c:_ui8DACScheduleTail)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((setupSoftDAC@ui8Counter))&0ffh,w
	btfss	status,0
	goto	u2501
	goto	u2500
u2501:
	goto	l4104
u2500:
	
l125:; BSR set to: 0

	line	132
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((setupSoftDAC@blScheduled))&0ffh
	goto	u2511
	goto	u2510
u2511:
	goto	l4118
u2510:
	line	134
	
l4114:; BSR set to: 0

	movf	((c:_ui8DACScheduleTail)),c,w
	mullw	03h
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:setupSoftDAC@eSDACModule),indf2

	line	135
	movf	((c:_ui8DACScheduleTail)),c,w
	mullw	03h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	(c:setupSoftDAC@ui8Pin),indf2

	line	136
	movf	((c:_ui8DACScheduleTail)),c,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	(c:setupSoftDAC@ui8Value),indf2

	line	137
	
l4116:; BSR set to: 0

	incf	((c:_ui8DACScheduleTail)),c
	goto	l4118
	line	138
	
l126:; BSR set to: 0

	line	141
	
l4118:; BSR set to: 0

	tstfsz	((c:setupSoftDAC@blKickstarted)),c
	goto	u2521
	goto	u2520
u2521:
	goto	l4140
u2520:
	line	143
	
l4120:; BSR set to: 0

	movwf	(??_setupSoftDAC+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:setupSoftDAC@blKickstarted)),c
	movf	(??_setupSoftDAC+0+0)&0ffh,c,w
	line	146
	
l4122:; BSR set to: 0

	movf	(0+((c:_astDACModuleSchedule)+02h)),c,w
	btfsc	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l4126
u2530:
	line	148
	
l4124:; BSR set to: 0

	movff	0+((c:_astDACModuleSchedule)+01h),(c:?_changePinState)
	movwf	(??_setupSoftDAC+0+0)&0ffh,c
	movlw	low(0)
	movwf	(0+((c:?_changePinState)+01h)),c
	movf	(??_setupSoftDAC+0+0)&0ffh,c,w
	call	_changePinState	;wreg free
	line	149
	goto	l4128
	line	150
	
l128:
	line	152
	
l4126:
	movff	0+((c:_astDACModuleSchedule)+01h),(c:?_changePinState)
	movwf	(??_setupSoftDAC+0+0)&0ffh,c
	movlw	low(01h)
	movwf	(0+((c:?_changePinState)+01h)),c
	movf	(??_setupSoftDAC+0+0)&0ffh,c,w
	call	_changePinState	;wreg free
	goto	l4128
	line	153
	
l129:
	line	155
	
l4128:
	movwf	(??_setupSoftDAC+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_ui8DACEngineStates)),c
	movf	(??_setupSoftDAC+0+0)&0ffh,c,w
	line	158
	
l4130:
	incf	(0+((c:_astDACModuleSchedule)+02h)),c,w

	btfsc	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l4136
u2540:
	line	160
	
l4132:
	movwf	(??_setupSoftDAC+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:?_set8BitTimer)),c
	movf	(??_setupSoftDAC+0+0)&0ffh,c,w
	movff	0+((c:_astDACModuleSchedule)+02h),0+((c:?_set8BitTimer)+01h)
	call	_set8BitTimer	;wreg free
	line	161
	
l4134:
	movff	0+((c:_astDACModuleSchedule)+02h),(c:_ui8PrevValue)
	line	162
	goto	l133
	line	163
	
l130:
	line	165
	
l4136:
	movwf	(??_setupSoftDAC+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:?_set8BitTimer)),c
	movf	(??_setupSoftDAC+0+0)&0ffh,c,w
	movwf	(??_setupSoftDAC+1+0)&0ffh,c
	movlw	low(0FFh)
	movwf	(0+((c:?_set8BitTimer)+01h)),c
	movf	(??_setupSoftDAC+1+0)&0ffh,c,w
	call	_set8BitTimer	;wreg free
	line	166
	
l4138:
	movwf	(??_setupSoftDAC+0+0)&0ffh,c
	movlw	low(04h)
	movwf	((c:_ui8DACEngineStates)),c
	movf	(??_setupSoftDAC+0+0)&0ffh,c,w
	goto	l133
	line	167
	
l131:
	line	168
	goto	l133
	line	169
	
l127:
	line	172
	
l4140:
	movff	(c:_ui8DACScheduleTail),(c:?_bubbleSortDAC)
	call	_bubbleSortDAC	;wreg free
	goto	l133
	line	173
	
l132:
	line	174
	
l133:
	return
	opt stack 0
GLOBAL	__end_of_setupSoftDAC
	__end_of_setupSoftDAC:
	signat	_setupSoftDAC,12408
	global	_cycle

;; *************** function _cycle *****************
;; Defined at:
;;		line 19 in file "C:/Users/glutnix/Documents/Dropbox/__RapidProto/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
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
psect	text3,class=CODE,space=0,reloc=2
global __ptext3
__ptext3:
psect	text3
	file	"C:/Users/glutnix/Documents/Dropbox/__RapidProto/philrobokit_xc8/libraries/soft_dac/examples/.phr_out\HeartBeat.phr.c"
	line	19
	global	__size_of_cycle
	__size_of_cycle	equ	__end_of_cycle-_cycle
	
_cycle:
	opt	stack 23
	line	20
	
l4142:
	movff	(c:_LoopTimer),(c:?_getElapsedMs)
	movff	(c:_LoopTimer+1),(c:?_getElapsedMs+1)
	call	_getElapsedMs	;wreg free
	movlw	032h
	subwf	(0+?_getElapsedMs),c,w
	movlw	0
	subwfb	(1+?_getElapsedMs),c,w
	btfss	status,0
	goto	u2551
	goto	u2550
u2551:
	goto	l63
u2550:
	line	22
	
l4144:
	call	_getMs	;wreg free
	movff	0+?_getMs,(c:_LoopTimer)
	movff	1+?_getMs,(c:_LoopTimer+1)
	line	24
	
l4146:
	movlw	(018h-1)
	cpfsgt	((c:_LEDCounter)),c
	goto	u2561
	goto	u2560
u2561:
	goto	l4150
u2560:
	line	26
	
l4148:
	movwf	(??_cycle+0+0)&0ffh,c
	movlw	low(018h)
	movwf	((c:_LEDCounter)),c
	movf	(??_cycle+0+0)&0ffh,c,w
	line	27
	movwf	(??_cycle+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_LEDDirection)),c
	movf	(??_cycle+0+0)&0ffh,c,w
	line	28
	goto	l4154
	line	29
	
l57:
	
l4150:
	movlw	(02h)&0ffh
	cpfslt	((c:_LEDCounter)),c
	goto	u2571
	goto	u2570
u2571:
	goto	l4154
u2570:
	line	31
	
l4152:
	movwf	(??_cycle+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:_LEDDirection)),c
	movf	(??_cycle+0+0)&0ffh,c,w
	line	32
	movwf	(??_cycle+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:_LEDCounter)),c
	movf	(??_cycle+0+0)&0ffh,c,w
	line	33
	goto	l4154
	line	34
	
l59:
	goto	l4154
	line	37
	
l60:
	goto	l4154
	
l58:
	line	39
	
l4154:
	movf	((c:_LEDDirection)),c,w
	btfsc	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l4158
u2580:
	line	41
	
l4156:
	incf	((c:_LEDCounter)),c
	line	42
	goto	l4160
	line	43
	
l61:
	line	45
	
l4158:
	decf	((c:_LEDCounter)),c
	goto	l4160
	line	46
	
l62:
	line	48
	
l4160:
	movf	((c:_LEDCounter)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_LogLookup)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_LogLookup)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:_ADCOutValue)),c
	line	49
	
l4162:; BSR set to: 0

	movwf	(??_cycle+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:?_setSoftDAC)),c
	movf	(??_cycle+0+0)&0ffh,c,w
	movff	(c:_ADCOutValue),0+((c:?_setSoftDAC)+01h)
	call	_setSoftDAC	;wreg free
	goto	l63
	line	50
	
l56:
	line	57
	
l63:
	return
	opt stack 0
GLOBAL	__end_of_cycle
	__end_of_cycle:
	signat	_cycle,88
	global	_getMs

;; *************** function _getMs *****************
;; Defined at:
;;		line 124 in file "hardware/cores/lib\corelib_basetimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ui16TempBuff    2   29[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   27[COMRAM] unsigned int 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_get_gui16TimerMs_Value
;; This function is called by:
;;		_init
;;		_cycle
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
global __ptext4
__ptext4:
psect	text4
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	124
	global	__size_of_getMs
	__size_of_getMs	equ	__end_of_getMs-_getMs
	
_getMs:
	opt	stack 24
	line	126
	
l3628:
	bcf	c:(32663/8),(32663)&7	;volatile
	bcf	c:(32662/8),(32662)&7	;volatile
	line	127
	
l3630:
	call	_get_gui16TimerMs_Value	;wreg free
	movff	0+?_get_gui16TimerMs_Value,(c:getMs@ui16TempBuff)
	movff	1+?_get_gui16TimerMs_Value,(c:getMs@ui16TempBuff+1)
	line	128
	
l3632:
	bsf	c:(32663/8),(32663)&7	;volatile
	
l3634:
	bsf	c:(32662/8),(32662)&7	;volatile
	line	129
	
l3636:
	movff	(c:getMs@ui16TempBuff),(c:?_getMs)
	movff	(c:getMs@ui16TempBuff+1),(c:?_getMs+1)
	goto	l619
	
l3638:
	line	130
	
l619:
	return
	opt stack 0
GLOBAL	__end_of_getMs
	__end_of_getMs:
	signat	_getMs,90
	global	_getElapsedMs

;; *************** function _getElapsedMs *****************
;; Defined at:
;;		line 150 in file "hardware/cores/lib\corelib_basetimer.c"
;; Parameters:    Size  Location     Type
;;  ui16TimeMs      2   27[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  ui16TempBuff    2   29[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   27[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_get_gui16TimerMs_Value
;; This function is called by:
;;		_cycle
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
global __ptext5
__ptext5:
psect	text5
	file	"hardware/cores/lib\corelib_basetimer.c"
	line	150
	global	__size_of_getElapsedMs
	__size_of_getElapsedMs	equ	__end_of_getElapsedMs-_getElapsedMs
	
_getElapsedMs:
	opt	stack 24
	line	152
	
l3662:
	bcf	c:(32663/8),(32663)&7	;volatile
	bcf	c:(32662/8),(32662)&7	;volatile
	line	153
	
l3664:
	call	_get_gui16TimerMs_Value	;wreg free
	movff	0+?_get_gui16TimerMs_Value,(c:getElapsedMs@ui16TempBuff)
	movff	1+?_get_gui16TimerMs_Value,(c:getElapsedMs@ui16TempBuff+1)
	line	154
	
l3666:
	movf	((c:getElapsedMs@ui16TimeMs)),c,w
	subwf	((c:getElapsedMs@ui16TempBuff)),c
	movf	((c:getElapsedMs@ui16TimeMs+1)),c,w
	subwfb	((c:getElapsedMs@ui16TempBuff+1)),c

	line	158
	
l3668:
	bsf	c:(32663/8),(32663)&7	;volatile
	
l3670:
	bsf	c:(32662/8),(32662)&7	;volatile
	line	159
	
l3672:
	movff	(c:getElapsedMs@ui16TempBuff),(c:?_getElapsedMs)
	movff	(c:getElapsedMs@ui16TempBuff+1),(c:?_getElapsedMs+1)
	goto	l622
	
l3674:
	line	160
	
l622:
	return
	opt stack 0
GLOBAL	__end_of_getElapsedMs
	__end_of_getElapsedMs:
	signat	_getElapsedMs,4218
	global	_setSoftDAC

;; *************** function _setSoftDAC *****************
;; Defined at:
;;		line 195 in file "libraries/soft_dac\soft_dac.c"
;; Parameters:    Size  Location     Type
;;  eSDACModule     1   30[COMRAM] enum E4410
;;  ui8Value        1   31[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ui8Counter      1   33[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_changePinState
;;		_bubbleSortDAC
;; This function is called by:
;;		_cycle
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
global __ptext6
__ptext6:
psect	text6
	file	"libraries/soft_dac\soft_dac.c"
	line	195
	global	__size_of_setSoftDAC
	__size_of_setSoftDAC	equ	__end_of_setSoftDAC-_setSoftDAC
	
_setSoftDAC:
	opt	stack 23
	line	199
	
l4164:
	movwf	(??_setSoftDAC+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:setSoftDAC@ui8Counter)),c
	movf	(??_setSoftDAC+0+0)&0ffh,c,w
	goto	l4180
	line	200
	
l137:
	line	201
	
l4166:
	movf	((c:setSoftDAC@ui8Counter)),c,w
	mullw	03h
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	((c:setSoftDAC@eSDACModule)),c,w
	cpfseq	indf2
	goto	u2591
	goto	u2590
u2591:
	goto	l4178
u2590:
	line	203
	
l4168:
	movf	((c:setSoftDAC@ui8Counter)),c,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	(c:setSoftDAC@ui8Value),indf2

	line	205
	
l4170:
	tstfsz	((c:setSoftDAC@ui8Value)),c
	goto	u2601
	goto	u2600
u2601:
	goto	l4174
u2600:
	line	207
	
l4172:
	movf	((c:setSoftDAC@ui8Counter)),c,w
	mullw	03h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:?_changePinState)),c
	movwf	(??_setSoftDAC+0+0)&0ffh,c
	movlw	low(01h)
	movwf	(0+((c:?_changePinState)+01h)),c
	movf	(??_setSoftDAC+0+0)&0ffh,c,w
	call	_changePinState	;wreg free
	line	208
	goto	l4178
	line	209
	
l139:
	
l4174:
	incf	((c:setSoftDAC@ui8Value)),c,w

	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l4178
u2610:
	line	211
	
l4176:
	movf	((c:setSoftDAC@ui8Counter)),c,w
	mullw	03h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:?_changePinState)),c
	movwf	(??_setSoftDAC+0+0)&0ffh,c
	movlw	low(0)
	movwf	(0+((c:?_changePinState)+01h)),c
	movf	(??_setSoftDAC+0+0)&0ffh,c,w
	call	_changePinState	;wreg free
	line	212
	goto	l4178
	line	213
	
l141:
	goto	l4178
	line	216
	
l142:
	goto	l4178
	
l140:
	goto	l4178
	line	217
	
l138:
	line	199
	
l4178:
	incf	((c:setSoftDAC@ui8Counter)),c
	goto	l4180
	
l136:
	
l4180:
	movf	((c:_ui8DACScheduleTail)),c,w
	subwf	((c:setSoftDAC@ui8Counter)),c,w
	btfss	status,0
	goto	u2621
	goto	u2620
u2621:
	goto	l4166
u2620:
	goto	l4182
	
l143:
	line	221
	
l4182:
	movff	(c:_ui8DACScheduleTail),(c:?_bubbleSortDAC)
	call	_bubbleSortDAC	;wreg free
	line	222
	
l144:
	return
	opt stack 0
GLOBAL	__end_of_setSoftDAC
	__end_of_setSoftDAC:
	signat	_setSoftDAC,8312
	global	_setup8BitTimer

;; *************** function _setup8BitTimer *****************
;; Defined at:
;;		line 185 in file "hardware/cores/lib\corelib_8bit_timer.c"
;; Parameters:    Size  Location     Type
;;  eTmrModule      1   23[COMRAM] enum E4391
;;  callback        2   24[COMRAM] PTR FTN()void 
;;		 -> softDACController(0), 
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupSoftDAC
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
global __ptext7
__ptext7:
psect	text7
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	185
	global	__size_of_setup8BitTimer
	__size_of_setup8BitTimer	equ	__end_of_setup8BitTimer-_setup8BitTimer
	
_setup8BitTimer:
	opt	stack 24
	line	188
	
l4184:
	movf	((c:setup8BitTimer@eTmrModule)),c,w
	xorlw	2

	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l467
u2630:
	line	190
	
l4186:
	movlw	(0FCh)&0ffh
	andwf	((c:4042)),c	;volatile
	
l4188:
	bsf	(0+(1/8)+(c:4042)),c,(1)&7	;volatile
	line	191
	
l4190:
	movlw	(087h)&0ffh
	andwf	((c:4042)),c	;volatile
	bsf	(0+(5/8)+(c:4042)),c,(5)&7	;volatile
	line	192
	
l4192:
	movff	(c:setup8BitTimer@callback),(c:_pt2TMR2ISR)
	movff	(c:setup8BitTimer@callback+1),(c:_pt2TMR2ISR+1)
	line	193
	goto	l467
	line	213
	
l465:
	goto	l467
	line	216
	
l466:
	line	217
	
l467:
	return
	opt stack 0
GLOBAL	__end_of_setup8BitTimer
	__end_of_setup8BitTimer:
	signat	_setup8BitTimer,8312
	global	_configPin

;; *************** function _configPin *****************
;; Defined at:
;;		line 67 in file "hardware/cores/lib\hal_gpio.c"
;; Parameters:    Size  Location     Type
;;  ui8Pin          1   23[COMRAM] unsigned char 
;;  ui8Direction    1   24[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  pui8PortDirR    2   28[COMRAM] PTR unsigned char 
;;		 -> NULL(0), TRISD(1), TRISC(1), TRISB(1), 
;;		 -> TRISE(1), TRISA(1), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupSoftDAC
;;		_removeSoftDAC
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
global __ptext8
__ptext8:
psect	text8
	file	"hardware/cores/lib\hal_gpio.c"
	line	67
	global	__size_of_configPin
	__size_of_configPin	equ	__end_of_configPin-_configPin
	
_configPin:
	opt	stack 24
	line	68
	
l4194:
	movlw	high(0)
	movwf	((c:configPin@pui8PortDirReg+1)),c
	movlw	low(0)
	movwf	((c:configPin@pui8PortDirReg)),c
	line	71
	
l4196:
	movlw	(08h)&0ffh
	cpfslt	((c:configPin@ui8Pin)),c
	goto	u2641
	goto	u2640
u2641:
	goto	l4200
u2640:
	line	73
	
l4198:
	movlw	high((c:3988))	;volatile
	movwf	((c:configPin@pui8PortDirReg+1)),c
	movlw	low((c:3988))	;volatile
	movwf	((c:configPin@pui8PortDirReg)),c
	line	77
	goto	l4232
	line	79
	
l1206:
	
l4200:
	movlw	(0Eh)&0ffh
	cpfslt	((c:configPin@ui8Pin)),c
	goto	u2651
	goto	u2650
u2651:
	goto	l4206
u2650:
	line	81
	
l4202:
	movlw	(08h)&0ffh
	subwf	((c:configPin@ui8Pin)),c
	line	82
	
l4204:
	movlw	high((c:3987))	;volatile
	movwf	((c:configPin@pui8PortDirReg+1)),c
	movlw	low((c:3987))	;volatile
	movwf	((c:configPin@pui8PortDirReg)),c
	line	86
	goto	l4232
	line	88
	
l1208:
	
l4206:
	movlw	(015h)&0ffh
	cpfslt	((c:configPin@ui8Pin)),c
	goto	u2661
	goto	u2660
u2661:
	goto	l4226
u2660:
	line	90
	
l4208:
	movlw	(0Eh)&0ffh
	subwf	((c:configPin@ui8Pin)),c
	line	93
	
l4210:
	movlw	(03h)&0ffh
	cpfslt	((c:configPin@ui8Pin)),c
	goto	u2671
	goto	u2670
u2671:
	goto	l4214
u2670:
	line	95
	
l4212:
	movlw	high((c:3986))	;volatile
	movwf	((c:configPin@pui8PortDirReg+1)),c
	movlw	low((c:3986))	;volatile
	movwf	((c:configPin@pui8PortDirReg)),c
	line	99
	goto	l4232
	line	101
	
l1211:
	
l4214:
	movf	((c:configPin@ui8Pin)),c,w
	xorlw	3

	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l4220
u2680:
	line	103
	
l4216:
	movlw	(02h)&0ffh
	addwf	((c:configPin@ui8Pin)),c
	line	104
	
l4218:
	movlw	high((c:3986))	;volatile
	movwf	((c:configPin@pui8PortDirReg+1)),c
	movlw	low((c:3986))	;volatile
	movwf	((c:configPin@pui8PortDirReg)),c
	line	108
	goto	l4232
	line	110
	
l1213:
	
l4220:
	movlw	(07h)&0ffh
	cpfslt	((c:configPin@ui8Pin)),c
	goto	u2691
	goto	u2690
u2691:
	goto	l4232
u2690:
	line	112
	
l4222:
	movlw	(04h)&0ffh
	subwf	((c:configPin@ui8Pin)),c
	line	113
	
l4224:
	movlw	high((c:3990))	;volatile
	movwf	((c:configPin@pui8PortDirReg+1)),c
	movlw	low((c:3990))	;volatile
	movwf	((c:configPin@pui8PortDirReg)),c
	line	117
	goto	l4232
	line	118
	
l1215:
	goto	l4232
	line	124
	
l1216:
	goto	l4232
	
l1214:
	goto	l4232
	
l1212:
	line	125
	goto	l4232
	line	127
	
l1210:
	
l4226:
	movlw	(01Dh)&0ffh
	cpfslt	((c:configPin@ui8Pin)),c
	goto	u2701
	goto	u2700
u2701:
	goto	l4232
u2700:
	line	129
	
l4228:
	movlw	(015h)&0ffh
	subwf	((c:configPin@ui8Pin)),c
	line	130
	
l4230:
	movlw	high((c:3989))	;volatile
	movwf	((c:configPin@pui8PortDirReg+1)),c
	movlw	low((c:3989))	;volatile
	movwf	((c:configPin@pui8PortDirReg)),c
	line	134
	goto	l4232
	line	135
	
l1218:
	goto	l4232
	line	141
	
l1219:
	goto	l4232
	
l1217:
	goto	l4232
	
l1209:
	goto	l4232
	
l1207:
	line	144
	
l4232:
	movf	((c:configPin@pui8PortDirReg+1)),c,w
	iorwf ((c:configPin@pui8PortDirReg)),c,w

	btfsc	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l1224
u2710:
	line	146
	
l4234:
	decf	((c:configPin@ui8Direction)),c,w

	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l4238
u2720:
	line	148
	
l4236:
	movff	(c:configPin@ui8Pin),??_configPin+0+0
	movlw	(01h)&0ffh
	movwf	(??_configPin+1+0)&0ffh,c
	incf	(??_configPin+0+0),c
	goto	u2734
u2735:
	bcf	status,0
	rlcf	((??_configPin+1+0)),c
u2734:
	decfsz	(??_configPin+0+0),c
	goto	u2735
	movff	(c:configPin@pui8PortDirReg),fsr2l
	movff	(c:configPin@pui8PortDirReg+1),fsr2h
	movf	((??_configPin+1+0)),c,w
	iorwf	indf2
	line	152
	goto	l1224
	line	153
	
l1221:
	line	155
	
l4238:
	movff	(c:configPin@ui8Pin),??_configPin+0+0
	movlw	(01h)&0ffh
	movwf	(??_configPin+1+0)&0ffh,c
	incf	(??_configPin+0+0),c
	goto	u2744
u2745:
	bcf	status,0
	rlcf	((??_configPin+1+0)),c
u2744:
	decfsz	(??_configPin+0+0),c
	goto	u2745
	movf	((??_configPin+1+0)),c,w
	xorlw	0ffh
	movwf	(??_configPin+2+0)&0ffh,c
	movff	(c:configPin@pui8PortDirReg),fsr2l
	movff	(c:configPin@pui8PortDirReg+1),fsr2h
	movf	((??_configPin+2+0)),c,w
	andwf	indf2
	goto	l1224
	line	159
	
l1222:
	line	160
	goto	l1224
	line	161
	
l1220:
	goto	l1224
	line	167
	
l1223:
	line	168
	
l1224:
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
;;  ui8Pin          1   23[COMRAM] unsigned char 
;;  eOperation      1   24[COMRAM] enum E4360
;; Auto vars:     Size  Location     Type
;;  pui8PortReg     2   28[COMRAM] PTR unsigned char 
;;		 -> NULL(0), LATE(1), LATD(1), LATC(1), 
;;		 -> LATB(1), LATA(1), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupSoftDAC
;;		_setSoftDAC
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
global __ptext9
__ptext9:
psect	text9
	file	"hardware/cores/lib\hal_gpio.c"
	line	189
	global	__size_of_changePinState
	__size_of_changePinState	equ	__end_of_changePinState-_changePinState
	
_changePinState:
	opt	stack 24
	line	190
	
l4240:
	movlw	high(0)
	movwf	((c:changePinState@pui8PortReg+1)),c
	movlw	low(0)
	movwf	((c:changePinState@pui8PortReg)),c
	line	193
	
l4242:
	movlw	(08h)&0ffh
	cpfslt	((c:changePinState@ui8Pin)),c
	goto	u2751
	goto	u2750
u2751:
	goto	l4246
u2750:
	line	195
	
l4244:
	movlw	high((c:3979))	;volatile
	movwf	((c:changePinState@pui8PortReg+1)),c
	movlw	low((c:3979))	;volatile
	movwf	((c:changePinState@pui8PortReg)),c
	line	199
	goto	l4278
	line	201
	
l1227:
	
l4246:
	movlw	(0Eh)&0ffh
	cpfslt	((c:changePinState@ui8Pin)),c
	goto	u2761
	goto	u2760
u2761:
	goto	l4252
u2760:
	line	203
	
l4248:
	movlw	(08h)&0ffh
	subwf	((c:changePinState@ui8Pin)),c
	line	204
	
l4250:
	movlw	high((c:3978))	;volatile
	movwf	((c:changePinState@pui8PortReg+1)),c
	movlw	low((c:3978))	;volatile
	movwf	((c:changePinState@pui8PortReg)),c
	line	208
	goto	l4278
	line	210
	
l1229:
	
l4252:
	movlw	(015h)&0ffh
	cpfslt	((c:changePinState@ui8Pin)),c
	goto	u2771
	goto	u2770
u2771:
	goto	l4272
u2770:
	line	212
	
l4254:
	movlw	(0Eh)&0ffh
	subwf	((c:changePinState@ui8Pin)),c
	line	215
	
l4256:
	movlw	(03h)&0ffh
	cpfslt	((c:changePinState@ui8Pin)),c
	goto	u2781
	goto	u2780
u2781:
	goto	l4260
u2780:
	line	217
	
l4258:
	movlw	high((c:3977))	;volatile
	movwf	((c:changePinState@pui8PortReg+1)),c
	movlw	low((c:3977))	;volatile
	movwf	((c:changePinState@pui8PortReg)),c
	line	221
	goto	l4278
	line	223
	
l1232:
	
l4260:
	movf	((c:changePinState@ui8Pin)),c,w
	xorlw	3

	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l4266
u2790:
	line	225
	
l4262:
	movlw	(02h)&0ffh
	addwf	((c:changePinState@ui8Pin)),c
	line	226
	
l4264:
	movlw	high((c:3977))	;volatile
	movwf	((c:changePinState@pui8PortReg+1)),c
	movlw	low((c:3977))	;volatile
	movwf	((c:changePinState@pui8PortReg)),c
	line	230
	goto	l4278
	line	232
	
l1234:
	
l4266:
	movlw	(07h)&0ffh
	cpfslt	((c:changePinState@ui8Pin)),c
	goto	u2801
	goto	u2800
u2801:
	goto	l4278
u2800:
	line	234
	
l4268:
	movlw	(04h)&0ffh
	subwf	((c:changePinState@ui8Pin)),c
	line	235
	
l4270:
	movlw	high((c:3981))	;volatile
	movwf	((c:changePinState@pui8PortReg+1)),c
	movlw	low((c:3981))	;volatile
	movwf	((c:changePinState@pui8PortReg)),c
	line	239
	goto	l4278
	line	240
	
l1236:
	goto	l4278
	line	246
	
l1237:
	goto	l4278
	
l1235:
	goto	l4278
	
l1233:
	line	247
	goto	l4278
	line	249
	
l1231:
	
l4272:
	movlw	(01Dh)&0ffh
	cpfslt	((c:changePinState@ui8Pin)),c
	goto	u2811
	goto	u2810
u2811:
	goto	l4278
u2810:
	line	251
	
l4274:
	movlw	(015h)&0ffh
	subwf	((c:changePinState@ui8Pin)),c
	line	252
	
l4276:
	movlw	high((c:3980))	;volatile
	movwf	((c:changePinState@pui8PortReg+1)),c
	movlw	low((c:3980))	;volatile
	movwf	((c:changePinState@pui8PortReg)),c
	line	256
	goto	l4278
	line	257
	
l1239:
	goto	l4278
	line	263
	
l1240:
	goto	l4278
	
l1238:
	goto	l4278
	
l1230:
	goto	l4278
	
l1228:
	line	266
	
l4278:
	movf	((c:changePinState@pui8PortReg+1)),c,w
	iorwf ((c:changePinState@pui8PortReg)),c,w

	btfsc	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l1247
u2820:
	line	268
	
l4280:
	tstfsz	((c:changePinState@eOperation)),c
	goto	u2831
	goto	u2830
u2831:
	goto	l4284
u2830:
	line	270
	
l4282:
	movff	(c:changePinState@ui8Pin),??_changePinState+0+0
	movlw	(01h)&0ffh
	movwf	(??_changePinState+1+0)&0ffh,c
	incf	(??_changePinState+0+0),c
	goto	u2844
u2845:
	bcf	status,0
	rlcf	((??_changePinState+1+0)),c
u2844:
	decfsz	(??_changePinState+0+0),c
	goto	u2845
	movff	(c:changePinState@pui8PortReg),fsr2l
	movff	(c:changePinState@pui8PortReg+1),fsr2h
	movf	((??_changePinState+1+0)),c,w
	iorwf	indf2
	line	274
	goto	l1247
	line	275
	
l1242:
	
l4284:
	decf	((c:changePinState@eOperation)),c,w

	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l4288
u2850:
	line	277
	
l4286:
	movff	(c:changePinState@ui8Pin),??_changePinState+0+0
	movlw	(01h)&0ffh
	movwf	(??_changePinState+1+0)&0ffh,c
	incf	(??_changePinState+0+0),c
	goto	u2864
u2865:
	bcf	status,0
	rlcf	((??_changePinState+1+0)),c
u2864:
	decfsz	(??_changePinState+0+0),c
	goto	u2865
	movf	((??_changePinState+1+0)),c,w
	xorlw	0ffh
	movwf	(??_changePinState+2+0)&0ffh,c
	movff	(c:changePinState@pui8PortReg),fsr2l
	movff	(c:changePinState@pui8PortReg+1),fsr2h
	movf	((??_changePinState+2+0)),c,w
	andwf	indf2
	line	281
	goto	l1247
	line	282
	
l1244:
	line	284
	
l4288:
	movff	(c:changePinState@ui8Pin),??_changePinState+0+0
	movlw	(01h)&0ffh
	movwf	(??_changePinState+1+0)&0ffh,c
	incf	(??_changePinState+0+0),c
	goto	u2874
u2875:
	bcf	status,0
	rlcf	((??_changePinState+1+0)),c
u2874:
	decfsz	(??_changePinState+0+0),c
	goto	u2875
	movff	(c:changePinState@pui8PortReg),fsr2l
	movff	(c:changePinState@pui8PortReg+1),fsr2h
	movf	((??_changePinState+1+0)),c,w
	xorwf	indf2
	goto	l1247
	line	288
	
l1245:
	goto	l1247
	
l1243:
	line	289
	goto	l1247
	line	290
	
l1241:
	goto	l1247
	line	296
	
l1246:
	line	297
	
l1247:
	return
	opt stack 0
GLOBAL	__end_of_changePinState
	__end_of_changePinState:
	signat	_changePinState,8312
	global	_set8BitTimer

;; *************** function _set8BitTimer *****************
;; Defined at:
;;		line 238 in file "hardware/cores/lib\corelib_8bit_timer.c"
;; Parameters:    Size  Location     Type
;;  eTmrModule      1   23[COMRAM] enum E4391
;;  ui8Value        1   24[COMRAM] unsigned char 
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupSoftDAC
;;		_setPWMFrequency
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
global __ptext10
__ptext10:
psect	text10
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	238
	global	__size_of_set8BitTimer
	__size_of_set8BitTimer	equ	__end_of_set8BitTimer-_set8BitTimer
	
_set8BitTimer:
	opt	stack 24
	line	240
	
l4290:
	movf	((c:set8BitTimer@eTmrModule)),c,w
	xorlw	2

	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l472
u2880:
	line	242
	
l4292:
	decf	((c:set8BitTimer@ui8Value)),c,w
	movwf	((c:4043)),c	;volatile
	line	244
	
l4294:
	bcf	c:(31985/8),(31985)&7	;volatile
	line	245
	
l4296:
	bsf	c:(31977/8),(31977)&7	;volatile
	line	247
	
l4298:
	bsf	c:(32338/8),(32338)&7	;volatile
	line	248
	goto	l472
	line	274
	
l470:
	goto	l472
	line	277
	
l471:
	line	278
	
l472:
	return
	opt stack 0
GLOBAL	__end_of_set8BitTimer
	__end_of_set8BitTimer:
	signat	_set8BitTimer,8312
	global	_bubbleSortDAC

;; *************** function _bubbleSortDAC *****************
;; Defined at:
;;		line 284 in file "libraries/soft_dac\soft_dac.c"
;; Parameters:    Size  Location     Type
;;  ui8MaxCount     1   29[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       7       0       0       0       0       0
;;      Totals:         1       7       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_setupSoftDAC
;;		_setSoftDAC
;;		_removeSoftDAC
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
global __ptext11
__ptext11:
psect	text11
	file	"libraries/soft_dac\soft_dac.c"
	line	284
	global	__size_of_bubbleSortDAC
	__size_of_bubbleSortDAC	equ	__end_of_bubbleSortDAC-_bubbleSortDAC
	
_bubbleSortDAC:
	opt	stack 23
	line	288
	
l4300:
	movlb	0	; () banked
	movwf	(??_bubbleSortDAC+0+0)&0ffh
	movlw	low(01h)
	movwf	((c:bubbleSortDAC@blOnGoing)),c
	movlb	0	; () banked
	movf	(??_bubbleSortDAC+0+0)&0ffh,w
	line	289
	movlb	0	; () banked
	movwf	(??_bubbleSortDAC+0+0)&0ffh
	movlw	low(0)
	movwf	((c:bubbleSortDAC@ui8Counter1)),c
	movlb	0	; () banked
	movf	(??_bubbleSortDAC+0+0)&0ffh,w
	line	291
	goto	l162
	
l163:; BSR set to: 0

	line	293
	
l4302:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_bubbleSortDAC+0+0)&0ffh
	movlw	low(0)
	movwf	((c:bubbleSortDAC@blOnGoing)),c
	movlb	0	; () banked
	movf	(??_bubbleSortDAC+0+0)&0ffh,w
	line	294
	
l4304:; BSR set to: 0

	incf	((c:bubbleSortDAC@ui8Counter1)),c
	line	296
	
l4306:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_bubbleSortDAC+0+0)&0ffh
	movlw	low(0)
	movwf	((c:bubbleSortDAC@ui8Counter)),c
	movlb	0	; () banked
	movf	(??_bubbleSortDAC+0+0)&0ffh,w
	goto	l4332
	line	297
	
l165:; BSR set to: 0

	line	298
	
l4308:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:bubbleSortDAC@ui8Counter)),c,w
	
	movwf	((c:?___wmul)),c
	clrf	1+((c:?___wmul)),c
	movlw	high(01h)
	addwfc	1+((c:?___wmul)),c
	movlw	high(03h)
	movwf	(1+((c:?___wmul)+02h)),c
	movlw	low(03h)
	movwf	(0+((c:?___wmul)+02h)),c
	call	___wmul	;wreg free
	movlw	02h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:bubbleSortDAC@ui8TempBuff)),c
	line	299
	
l4310:
	movf	((c:bubbleSortDAC@ui8Counter)),c,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	cpfslt	((c:bubbleSortDAC@ui8TempBuff)),c
	goto	u2891
	goto	u2890
u2891:
	goto	l4330
u2890:
	line	302
	
l4312:
	movf	((c:bubbleSortDAC@ui8Counter)),c,w
	mullw	03h
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:bubbleSortDAC@ui8TempBuff)),c
	line	303
	
l4314:
	movlw	low(01h)
	addwf	((c:bubbleSortDAC@ui8Counter)),c,w
	
	movwf	((c:?___wmul)),c
	clrf	1+((c:?___wmul)),c
	movlw	high(01h)
	addwfc	1+((c:?___wmul)),c
	movlw	high(03h)
	movwf	(1+((c:?___wmul)+02h)),c
	movlw	low(03h)
	movwf	(0+((c:?___wmul)+02h)),c
	call	___wmul	;wreg free
	movlw	low((c:_astDACModuleSchedule))
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movf	((c:bubbleSortDAC@ui8Counter)),c,w
	mullw	03h
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	304
	
l4316:
	movlw	low(01h)
	addwf	((c:bubbleSortDAC@ui8Counter)),c,w
	
	movwf	((c:?___wmul)),c
	clrf	1+((c:?___wmul)),c
	movlw	high(01h)
	addwfc	1+((c:?___wmul)),c
	movlw	high(03h)
	movwf	(1+((c:?___wmul)+02h)),c
	movlw	low(03h)
	movwf	(0+((c:?___wmul)+02h)),c
	call	___wmul	;wreg free
	movlw	low((c:_astDACModuleSchedule))
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	(c:bubbleSortDAC@ui8TempBuff),indf2

	line	307
	
l4318:
	movf	((c:bubbleSortDAC@ui8Counter)),c,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:bubbleSortDAC@ui8TempBuff)),c
	line	308
	
l4320:
	movlw	low(01h)
	addwf	((c:bubbleSortDAC@ui8Counter)),c,w
	
	movwf	((c:?___wmul)),c
	clrf	1+((c:?___wmul)),c
	movlw	high(01h)
	addwfc	1+((c:?___wmul)),c
	movlw	high(03h)
	movwf	(1+((c:?___wmul)+02h)),c
	movlw	low(03h)
	movwf	(0+((c:?___wmul)+02h)),c
	call	___wmul	;wreg free
	movlw	02h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movf	((c:bubbleSortDAC@ui8Counter)),c,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	309
	movlw	low(01h)
	addwf	((c:bubbleSortDAC@ui8Counter)),c,w
	
	movwf	((c:?___wmul)),c
	clrf	1+((c:?___wmul)),c
	movlw	high(01h)
	addwfc	1+((c:?___wmul)),c
	movlw	high(03h)
	movwf	(1+((c:?___wmul)+02h)),c
	movlw	low(03h)
	movwf	(0+((c:?___wmul)+02h)),c
	call	___wmul	;wreg free
	movlw	02h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	(c:bubbleSortDAC@ui8TempBuff),indf2

	line	312
	
l4322:
	movf	((c:bubbleSortDAC@ui8Counter)),c,w
	mullw	03h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:bubbleSortDAC@ui8TempBuff)),c
	line	313
	
l4324:
	movlw	low(01h)
	addwf	((c:bubbleSortDAC@ui8Counter)),c,w
	
	movwf	((c:?___wmul)),c
	clrf	1+((c:?___wmul)),c
	movlw	high(01h)
	addwfc	1+((c:?___wmul)),c
	movlw	high(03h)
	movwf	(1+((c:?___wmul)+02h)),c
	movlw	low(03h)
	movwf	(0+((c:?___wmul)+02h)),c
	call	___wmul	;wreg free
	movlw	01h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movf	((c:bubbleSortDAC@ui8Counter)),c,w
	mullw	03h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	314
	
l4326:
	movlw	low(01h)
	addwf	((c:bubbleSortDAC@ui8Counter)),c,w
	
	movwf	((c:?___wmul)),c
	clrf	1+((c:?___wmul)),c
	movlw	high(01h)
	addwfc	1+((c:?___wmul)),c
	movlw	high(03h)
	movwf	(1+((c:?___wmul)+02h)),c
	movlw	low(03h)
	movwf	(0+((c:?___wmul)+02h)),c
	call	___wmul	;wreg free
	movlw	01h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	(c:bubbleSortDAC@ui8TempBuff),indf2

	line	316
	
l4328:
	movlb	0	; () banked
	movwf	(??_bubbleSortDAC+0+0)&0ffh
	movlw	low(01h)
	movwf	((c:bubbleSortDAC@blOnGoing)),c
	movlb	0	; () banked
	movf	(??_bubbleSortDAC+0+0)&0ffh,w
	goto	l4330
	line	317
	
l166:; BSR set to: 0

	line	296
	
l4330:
	incf	((c:bubbleSortDAC@ui8Counter)),c
	goto	l4332
	
l164:
	
l4332:
	movf	((c:bubbleSortDAC@ui8Counter1)),c,w
	movlb	0	; () banked
	movwf	(??_bubbleSortDAC+0+0)&0ffh
	clrf	(??_bubbleSortDAC+0+0+1)&0ffh

	movlb	0	; () banked
	comf	(??_bubbleSortDAC+0+0)&0ffh
	comf	(??_bubbleSortDAC+0+1)&0ffh
	infsnz	(??_bubbleSortDAC+0+0)&0ffh
	incf	(??_bubbleSortDAC+0+1)&0ffh
	movf	((c:bubbleSortDAC@ui8MaxCount)),c,w
	movlb	0	; () banked
	addwf	(??_bubbleSortDAC+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	(??_bubbleSortDAC+2+0)&0ffh
	movlw	0
	movlb	0	; () banked
	addwfc	(??_bubbleSortDAC+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+(??_bubbleSortDAC+2+0)&0ffh
	movf	((c:bubbleSortDAC@ui8Counter)),c,w
	movlb	0	; () banked
	movwf	(??_bubbleSortDAC+4+0)&0ffh
	clrf	(??_bubbleSortDAC+4+0+1)&0ffh

	movlb	0	; () banked
	movf	(??_bubbleSortDAC+4+1)&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	movwf	(??_bubbleSortDAC+6+0)&0ffh
	movf	(??_bubbleSortDAC+2+0)&0ffh,w
	movlb	0	; () banked
	subwf	(??_bubbleSortDAC+4+0)&0ffh,w
	movlb	0	; () banked
	movf	(??_bubbleSortDAC+2+1)&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_bubbleSortDAC+6+0)&0ffh,w
	btfss	status,0
	goto	u2901
	goto	u2900
u2901:
	goto	l4308
u2900:
	goto	l162
	
l167:; BSR set to: 0

	line	319
	
l162:; BSR set to: 0

	line	291
	tstfsz	((c:bubbleSortDAC@blOnGoing)),c
	goto	u2911
	goto	u2910
u2911:
	goto	l4302
u2910:
	goto	l169
	
l168:; BSR set to: 0

	line	320
	
l169:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_bubbleSortDAC
	__end_of_bubbleSortDAC:
	signat	_bubbleSortDAC,4216
	global	_set_gblInitialized_FlagValue

;; *************** function _set_gblInitialized_FlagValue *****************
;; Defined at:
;;		line 68 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
global __ptext12
__ptext12:
psect	text12
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	68
	global	__size_of_set_gblInitialized_FlagValue
	__size_of_set_gblInitialized_FlagValue	equ	__end_of_set_gblInitialized_FlagValue-_set_gblInitialized_FlagValue
	
_set_gblInitialized_FlagValue:; BSR set to: 0

	opt	stack 26
	line	69
	
l2580:
	movlw	low(01h)
	movwf	((c:_gblInitialized)),c	;volatile
	line	70
	
l243:
	return
	opt stack 0
GLOBAL	__end_of_set_gblInitialized_FlagValue
	__end_of_set_gblInitialized_FlagValue:
	signat	_set_gblInitialized_FlagValue,88
	global	_get_gui16TimerMs_Value

;; *************** function _get_gui16TimerMs_Value *****************
;; Defined at:
;;		line 99 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ui16Temp        2   25[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   23[COMRAM] unsigned int 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
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
psect	text13,class=CODE,space=0,reloc=2
global __ptext13
__ptext13:
psect	text13
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	99
	global	__size_of_get_gui16TimerMs_Value
	__size_of_get_gui16TimerMs_Value	equ	__end_of_get_gui16TimerMs_Value-_get_gui16TimerMs_Value
	
_get_gui16TimerMs_Value:
	opt	stack 24
	line	103
	
l3800:
	movff	(c:_gui16TimerMs),(c:get_gui16TimerMs_Value@ui16Temp)	;volatile
	movff	(c:_gui16TimerMs+1),(c:get_gui16TimerMs_Value@ui16Temp+1)	;volatile
	line	105
	movff	(c:get_gui16TimerMs_Value@ui16Temp),(c:?_get_gui16TimerMs_Value)
	movff	(c:get_gui16TimerMs_Value@ui16Temp+1),(c:?_get_gui16TimerMs_Value+1)
	line	106
	
l258:
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
global __ptext14
__ptext14:
psect	text14
	file	"hardware/cores/lib\corelib_gpio.c"
	line	66
	global	__size_of_setupGpio
	__size_of_setupGpio	equ	__end_of_setupGpio-_setupGpio
	
_setupGpio:
	opt	stack 26
	line	69
	
l2616:
	movlw	low(03Fh)
	movwf	((c:3977)),c	;volatile
	line	70
	movlw	low(03Fh)
	movwf	((c:3986)),c	;volatile
	line	73
	movlw	low(0)
	movwf	((c:3978)),c	;volatile
	line	74
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	line	77
	movlw	low(0C0h)
	movwf	((c:3979)),c	;volatile
	line	78
	movlw	low(080h)
	movwf	((c:3988)),c	;volatile
	line	81
	movlw	low(0Ch)
	movwf	((c:3980)),c	;volatile
	line	82
	movlw	low(0Ch)
	movwf	((c:3989)),c	;volatile
	line	85
	movlw	low(07h)
	movwf	((c:3981)),c	;volatile
	line	86
	movlw	low(07h)
	movwf	((c:3990)),c	;volatile
	line	88
	
l715:
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
global __ptext15
__ptext15:
psect	text15
	file	"hardware/cores/lib\hal_timer.c"
	line	72
	global	__size_of_setupTimer
	__size_of_setupTimer	equ	__end_of_setupTimer-_setupTimer
	
_setupTimer:
	opt	stack 26
	line	74
	
l2618:
	movlw	(0F8h)&0ffh
	andwf	((c:4053)),c	;volatile
	
l2620:
	bsf	(0+(1/8)+(c:4053)),c,(1)&7	;volatile
	line	76
	
l2622:
	bcf	c:(32429/8),(32429)&7	;volatile
	
l2624:
	bcf	c:(32427/8),(32427)&7	;volatile
	
l2626:
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	79
	
l2628:
	bsf	c:(32430/8),(32430)&7	;volatile
	line	81
	
l2630:
	bsf	c:(32431/8),(32431)&7	;volatile
	line	84
	
l2632:
	bcf	c:(32658/8),(32658)&7	;volatile
	line	85
	
l2634:
	bsf	c:(32661/8),(32661)&7	;volatile
	line	86
	
l1357:
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
;;  eVrefSource     1   24[COMRAM] enum E4396
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_configLowLvlADC
;;		_get_gblInitialized_FlagValue
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
global __ptext16
__ptext16:
psect	text16
	file	"hardware/cores/lib\corelib_adc.c"
	line	208
	global	__size_of_setupADC
	__size_of_setupADC	equ	__end_of_setupADC-_setupADC
	
_setupADC:
	opt	stack 25
	line	210
	
l2636:
	bcf	c:(32272/8),(32272)&7	;volatile
	line	212
	
l2638:
	bsf	(0+(0/8)+(c:3986)),c,(0)&7	;volatile
	line	213
	bsf	(0+(1/8)+(c:3986)),c,(1)&7	;volatile
	line	214
	bsf	(0+(2/8)+(c:3986)),c,(2)&7	;volatile
	line	215
	bsf	(0+(5/8)+(c:3986)),c,(5)&7	;volatile
	line	216
	bsf	(0+(0/8)+(c:3990)),c,(0)&7	;volatile
	line	217
	bsf	(0+(1/8)+(c:3990)),c,(1)&7	;volatile
	line	218
	bsf	(0+(2/8)+(c:3990)),c,(2)&7	;volatile
	line	220
	
l2640:
	decf	((c:setupADC@eVrefSource)),c,w

	btfss	status,2
	goto	u481
	goto	u480
u481:
	goto	l2646
u480:
	line	223
	
l2642:
	movlw	(0C0h)&0ffh
	andwf	((c:4033)),c	;volatile
	
l2644:
	bsf	(0+(4/8)+(c:4033)),c,(4)&7	;volatile
	line	227
	goto	l2650
	line	228
	
l559:
	line	231
	
l2646:
	movlw	(0C0h)&0ffh
	andwf	((c:4033)),c	;volatile
	
l2648:
	movf	((c:4033)),c,w	;volatile
	goto	l2650
	line	235
	
l560:
	line	237
	
l2650:
	call	_configLowLvlADC	;wreg free
	line	239
	
l2652:
	movwf	(??_setupADC+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_eCurrentChannel)),c
	movf	(??_setupADC+0+0)&0ffh,c,w
	line	240
	
l2654:
	movlw	(0C3h)&0ffh
	andwf	((c:4034)),c	;volatile
	
l2656:
	rlncf	((c:_eCurrentChannel)),c,w
	rlncf	wreg
	andlw	(0ffh shl 2) & 0ffh
	andlw	low(03Ch)
	iorwf	((c:4034)),c	;volatile
	line	242
	
l2658:
	bcf	c:(31990/8),(31990)&7	;volatile
	line	243
	
l2660:
	bsf	c:(31982/8),(31982)&7	;volatile
	line	245
	
l2662:
	bsf	c:(32272/8),(32272)&7	;volatile
	line	246
	goto	l561
	
l562:
	
l561:
	btfsc	c:(32663/8),(32663)&7	;volatile
	goto	u491
	goto	u490
u491:
	goto	l565
u490:
	
l2664:
	call	_get_gblInitialized_FlagValue	;wreg free
	movwf	(??_setupADC+0+0)&0ffh,c
	decf	((??_setupADC+0+0)),c,w
	btfsc	status,2
	goto	u501
	goto	u500
u501:
	goto	l561
u500:
	goto	l565
	
l564:
	
l565:
	bcf	c:(32663/8),(32663)&7	;volatile
	bcf	c:(32662/8),(32662)&7	;volatile
	
l2666:
	movlw	26
u3057:
decfsz	wreg,f
	goto	u3057
	nop2	;nop

	
l2668:
	bsf	c:(32663/8),(32663)&7	;volatile
	
l2670:
	bsf	c:(32662/8),(32662)&7	;volatile
	line	248
	
l2672:
	bsf	c:(32273/8),(32273)&7	;volatile
	line	249
	
l566:
	return
	opt stack 0
GLOBAL	__end_of_setupADC
	__end_of_setupADC:
	signat	_setupADC,4216
	global	_get_gblInitialized_FlagValue

;; *************** function _get_gblInitialized_FlagValue *****************
;; Defined at:
;;		line 73 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  blTemp          1   23[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupADC
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
global __ptext17
__ptext17:
psect	text17
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	73
	global	__size_of_get_gblInitialized_FlagValue
	__size_of_get_gblInitialized_FlagValue	equ	__end_of_get_gblInitialized_FlagValue-_get_gblInitialized_FlagValue
	
_get_gblInitialized_FlagValue:
	opt	stack 25
	line	75
	
l2582:
	movff	(c:_gblInitialized),(c:get_gblInitialized_FlagValue@blTemp)	;volatile
	line	76
	
l2584:
	movf	((c:get_gblInitialized_FlagValue@blTemp)),c,w
	goto	l246
	
l2586:
	line	77
	
l246:
	return
	opt stack 0
GLOBAL	__end_of_get_gblInitialized_FlagValue
	__end_of_get_gblInitialized_FlagValue:
	signat	_get_gblInitialized_FlagValue,89
	global	_setup16BitTimer

;; *************** function _setup16BitTimer *****************
;; Defined at:
;;		line 139 in file "hardware/cores/lib\corelib_16bit_timer.c"
;; Parameters:    Size  Location     Type
;;  eTmrModule      1   23[COMRAM] enum E4393
;;  callback        2   24[COMRAM] PTR FTN()void 
;;		 -> criticalTaskISR(0), 
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
global __ptext18
__ptext18:
psect	text18
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	139
	global	__size_of_setup16BitTimer
	__size_of_setup16BitTimer	equ	__end_of_setup16BitTimer-_setup16BitTimer
	
_setup16BitTimer:
	opt	stack 26
	line	141
	
l2674:
	decf	((c:setup16BitTimer@eTmrModule)),c,w

	btfss	status,2
	goto	u511
	goto	u510
u511:
	goto	l408
u510:
	line	143
	
l2676:
	bcf	c:(32363/8),(32363)&7	;volatile
	bsf	c:(32362/8),(32362)&7	;volatile
	bcf	c:(32361/8),(32361)&7	;volatile
	bsf	c:(32367/8),(32367)&7	;volatile
	line	144
	
l2678:
	movlw	(0CFh)&0ffh
	andwf	((c:4045)),c	;volatile
	
l2680:
	bsf	(0+(5/8)+(c:4045)),c,(5)&7	;volatile
	line	145
	
l2682:
	movff	(c:setup16BitTimer@callback),(c:_pt2TMR1ISR)
	movff	(c:setup16BitTimer@callback+1),(c:_pt2TMR1ISR+1)
	line	146
	goto	l408
	line	147
	
l406:
	goto	l408
	line	150
	
l407:
	line	151
	
l408:
	return
	opt stack 0
GLOBAL	__end_of_setup16BitTimer
	__end_of_setup16BitTimer:
	signat	_setup16BitTimer,8312
	global	_set16BitTimer

;; *************** function _set16BitTimer *****************
;; Defined at:
;;		line 172 in file "hardware/cores/lib\corelib_16bit_timer.c"
;; Parameters:    Size  Location     Type
;;  eTmrModule      1   23[COMRAM] enum E4393
;;  ui16Value       2   24[COMRAM] unsigned int 
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
global __ptext19
__ptext19:
psect	text19
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	172
	global	__size_of_set16BitTimer
	__size_of_set16BitTimer	equ	__end_of_set16BitTimer-_set16BitTimer
	
_set16BitTimer:
	opt	stack 26
	line	174
	
l2684:
	decf	((c:set16BitTimer@eTmrModule)),c,w

	btfss	status,2
	goto	u521
	goto	u520
u521:
	goto	l413
u520:
	line	176
	
l2686:
	movff	(c:set16BitTimer@ui16Value),??_set16BitTimer+0+0
	movff	(c:set16BitTimer@ui16Value+1),??_set16BitTimer+0+0+1
	comf	(??_set16BitTimer+0+0),c
	comf	(??_set16BitTimer+0+1),c
	infsnz	(??_set16BitTimer+0+0),c
	incf	(??_set16BitTimer+0+1),c
	movlw	low(0FFFFh)
	addwf	(??_set16BitTimer+0+0),c,w
	
	movwf	((c:set16BitTimer@ui16Value)),c
	movlw	high(0FFFFh)
	addwfc	(??_set16BitTimer+0+1),c,w
	movwf	1+((c:set16BitTimer@ui16Value)),c
	
l2688:
	movf	((c:set16BitTimer@ui16Value+1)),c,w
	movwf	((c:4047)),c	;volatile
	
l2690:
	movff	(c:set16BitTimer@ui16Value),(c:4046)	;volatile
	line	178
	
l2692:
	bcf	c:(31984/8),(31984)&7	;volatile
	line	179
	
l2694:
	bsf	c:(31976/8),(31976)&7	;volatile
	line	181
	
l2696:
	bsf	c:(32360/8),(32360)&7	;volatile
	line	182
	goto	l413
	line	183
	
l411:
	goto	l413
	line	186
	
l412:
	line	187
	
l413:
	return
	opt stack 0
GLOBAL	__end_of_set16BitTimer
	__end_of_set16BitTimer:
	signat	_set16BitTimer,8312
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupADC
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
global __ptext20
__ptext20:
psect	text20
	file	"hardware/cores/lib\hal_adc.c"
	line	93
	global	__size_of_configLowLvlADC
	__size_of_configLowLvlADC	equ	__end_of_configLowLvlADC-_configLowLvlADC
	
_configLowLvlADC:
	opt	stack 25
	line	95
	
l2786:
	movlw	(0FCh)&0ffh
	andwf	((c:4032)),c	;volatile
	movlw	(03h)&0ffh
	iorwf	((c:4032)),c	;volatile
	line	97
	movlw	(0C7h)&0ffh
	andwf	((c:4032)),c	;volatile
	movlw	(028h)&0ffh
	iorwf	((c:4032)),c	;volatile
	line	100
	
l2788:
	bsf	c:(32263/8),(32263)&7	;volatile
	line	101
	
l1143:
	return
	opt stack 0
GLOBAL	__end_of_configLowLvlADC
	__end_of_configLowLvlADC:
	signat	_configLowLvlADC,88
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   23[COMRAM] unsigned int 
;;  multiplicand    2   25[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   27[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   23[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_bubbleSortDAC
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
global __ptext21
__ptext21:
psect	text21
	file	"C:\Users\glutnix\Documents\Dropbox\__RapidProto\philrobokit_xc8\tools\xc8_win32\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:
	opt	stack 23
	line	4
	
l4430:
	movlw	high(0)
	movwf	((c:___wmul@product+1)),c
	movlw	low(0)
	movwf	((c:___wmul@product)),c
	goto	l4432
	line	6
	
l1992:
	line	7
	
l4432:
	
	btfss	((c:___wmul@multiplier)),c,(0)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l4436
u3030:
	line	8
	
l4434:
	movf	((c:___wmul@multiplicand)),c,w
	addwf	((c:___wmul@product)),c
	movf	((c:___wmul@multiplicand+1)),c,w
	addwfc	((c:___wmul@product+1)),c

	goto	l4436
	
l1993:
	line	9
	
l4436:
	bcf	status,0
	rlcf	((c:___wmul@multiplicand)),c
	rlcf	((c:___wmul@multiplicand+1)),c
	line	10
	
l4438:
	bcf	status,0
	rrcf	((c:___wmul@multiplier+1)),c
	rrcf	((c:___wmul@multiplier)),c
	line	11
	movf	((c:___wmul@multiplier+1)),c,w
	iorwf ((c:___wmul@multiplier)),c,w

	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l4432
u3040:
	
l1994:
	line	12
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	line	13
	
l1995:
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
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
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclat, tosl, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_timerISR
;;		_timer16BitISR
;;		_timer8BitISR
;;		_serialRxISR
;;		_userIntISR
;;		_serialTxISR
;;		_adcISR
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	177
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:
	opt	stack 23
	movff	pclat+0,??_isr+0
	movff	pclat+1,??_isr+1
	movff	fsr0l+0,??_isr+2
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	fsr0h+0,??_isr+3
	movff	fsr1l+0,??_isr+4
	movff	fsr1h+0,??_isr+5
	movff	fsr2l+0,??_isr+6
	movff	fsr2h+0,??_isr+7
	movff	prodl+0,??_isr+8
	movff	prodh+0,??_isr+9
	movff	tblptrl+0,??_isr+10
	movff	tblptrh+0,??_isr+11
	movff	tblptru+0,??_isr+12
	movff	tablat+0,??_isr+13
	line	178
	
i2l4042:
	bcf	c:(32663/8),(32663)&7	;volatile
	bcf	c:(32662/8),(32662)&7	;volatile
	line	179
	
i2l4044:
	call	_timerISR	;wreg free
	line	180
	
i2l4046:
	call	_timer16BitISR	;wreg free
	line	181
	
i2l4048:
	call	_timer8BitISR	;wreg free
	line	182
	call	_serialRxISR	;wreg free
	line	183
	
i2l4050:
	call	_userIntISR	;wreg free
	line	184
	
i2l4052:
	call	_serialTxISR	;wreg free
	line	185
	
i2l4054:
	call	_adcISR	;wreg free
	line	186
	
i2l4056:
	bsf	c:(32663/8),(32663)&7	;volatile
	
i2l4058:
	bsf	c:(32662/8),(32662)&7	;volatile
	line	187
	
i2l341:
	movff	??_isr+13,tablat+0
	movff	??_isr+12,tblptru+0
	movff	??_isr+11,tblptrh+0
	movff	??_isr+10,tblptrl+0
	movff	??_isr+9,prodh+0
	movff	??_isr+8,prodl+0
	movff	??_isr+7,fsr2h+0
	movff	??_isr+6,fsr2l+0
	movff	??_isr+5,fsr1h+0
	movff	??_isr+4,fsr1l+0
	movff	??_isr+3,fsr0h+0
	movff	??_isr+2,fsr0l+0
	movff	??_isr+1,pclat+1
	movff	??_isr+0,pclat+0
	retfie f
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,88
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
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
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
psect	text23,class=CODE,space=0,reloc=2
global __ptext23
__ptext23:
psect	text23
	file	"hardware/cores/lib\hal_timer.c"
	line	105
	global	__size_of_timerISR
	__size_of_timerISR	equ	__end_of_timerISR-_timerISR
	
_timerISR:
	opt	stack 24
	line	111
	
i2l3390:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u151_41
	goto	i2u151_40
i2u151_41:
	goto	i2l1366
i2u151_40:
	
i2l3392:
	btfss	c:(32661/8),(32661)&7	;volatile
	goto	i2u152_41
	goto	i2u152_40
i2u152_41:
	goto	i2l1366
i2u152_40:
	line	113
	
i2l3394:
	bcf	c:(32658/8),(32658)&7	;volatile
	line	114
	
i2l3396:
	movlw	high(0100h)
	movwf	((c:?_inc_gui16TimerUsMSB_Value+1)),c
	movlw	low(0100h)
	movwf	((c:?_inc_gui16TimerUsMSB_Value)),c
	call	_inc_gui16TimerUsMSB_Value	;wreg free
	line	115
	
i2l3398:
	movlw	0FFh
	addwf	((c:timerISR@ui16UsCounter)),c
	movlw	0
	addwfc	((c:timerISR@ui16UsCounter+1)),c
	line	117
	goto	i2l3404
	
i2l1364:
	line	119
	
i2l3400:
	call	_inc_gui16TimerMs_Value	;wreg free
	line	120
	
i2l3402:
	movlw	low(03E8h)
	subwf	((c:timerISR@ui16UsCounter)),c
	movlw	high(03E8h)
	subwfb	((c:timerISR@ui16UsCounter+1)),c
	goto	i2l3404
	line	127
	
i2l1363:
	line	117
	
i2l3404:
	movlw	0E8h
	subwf	((c:timerISR@ui16UsCounter)),c,w
	movlw	03h
	subwfb	((c:timerISR@ui16UsCounter+1)),c,w
	btfsc	status,0
	goto	i2u153_41
	goto	i2u153_40
i2u153_41:
	goto	i2l3400
i2u153_40:
	goto	i2l1366
	
i2l1365:
	goto	i2l1366
	line	141
	
i2l1362:
	line	142
	
i2l1366:
	return
	opt stack 0
GLOBAL	__end_of_timerISR
	__end_of_timerISR:
	signat	_timerISR,88
	global	_inc_gui16TimerUsMSB_Value

;; *************** function _inc_gui16TimerUsMSB_Value *****************
;; Defined at:
;;		line 81 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;  ui16Value       2    0[COMRAM] unsigned int 
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_timerISR
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
global __ptext24
__ptext24:
psect	text24
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	81
	global	__size_of_inc_gui16TimerUsMSB_Value
	__size_of_inc_gui16TimerUsMSB_Value	equ	__end_of_inc_gui16TimerUsMSB_Value-_inc_gui16TimerUsMSB_Value
	
_inc_gui16TimerUsMSB_Value:
	opt	stack 24
	line	82
	
i2l2588:
	movf	((c:inc_gui16TimerUsMSB_Value@ui16Value)),c,w
	addwf	((c:_gui16TimerUsMSB)),c	;volatile
	movf	((c:inc_gui16TimerUsMSB_Value@ui16Value+1)),c,w
	addwfc	((c:_gui16TimerUsMSB+1)),c	;volatile

	line	83
	
i2l249:
	return
	opt stack 0
GLOBAL	__end_of_inc_gui16TimerUsMSB_Value
	__end_of_inc_gui16TimerUsMSB_Value:
	signat	_inc_gui16TimerUsMSB_Value,4216
	global	_inc_gui16TimerMs_Value

;; *************** function _inc_gui16TimerMs_Value *****************
;; Defined at:
;;		line 94 in file "hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_timerISR
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
global __ptext25
__ptext25:
psect	text25
	file	"hardware/cores\PhilRobokit_CoreLib_GlobalDefs.c"
	line	94
	global	__size_of_inc_gui16TimerMs_Value
	__size_of_inc_gui16TimerMs_Value	equ	__end_of_inc_gui16TimerMs_Value-_inc_gui16TimerMs_Value
	
_inc_gui16TimerMs_Value:
	opt	stack 24
	line	95
	
i2l2596:
	infsnz	((c:_gui16TimerMs)),c	;volatile
	incf	((c:_gui16TimerMs+1)),c	;volatile
	line	96
	
i2l255:
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
;;		wreg, status,2, status,0, pclat, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_criticalTaskISR
;;		_null16BitTMRFunction
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
global __ptext26
__ptext26:
psect	text26
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	66
	global	__size_of_timer16BitISR
	__size_of_timer16BitISR	equ	__end_of_timer16BitISR-_timer16BitISR
	
_timer16BitISR:
	opt	stack 23
	line	69
	
i2l3498:
	btfss	c:(31984/8),(31984)&7	;volatile
	goto	i2u180_41
	goto	i2u180_40
i2u180_41:
	goto	i2l398
i2u180_40:
	
i2l3500:
	btfss	c:(31976/8),(31976)&7	;volatile
	goto	i2u181_41
	goto	i2u181_40
i2u181_41:
	goto	i2l398
i2u181_40:
	line	72
	
i2l3502:
	bcf	c:(32360/8),(32360)&7	;volatile
	line	73
	bcf	c:(31976/8),(31976)&7	;volatile
	line	74
	bcf	c:(31984/8),(31984)&7	;volatile
	line	76
	
i2l3504:
	call	i2u182_48
	goto	i2u182_49
i2u182_48:
	push
	
	movwf	pclath
	movf	((c:_pt2TMR1ISR)),c,w
	movwf	tosl
	movf	((c:_pt2TMR1ISR+1)),c,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	return	;indir
	i2u182_49:
	goto	i2l398
	line	77
	
i2l397:
	line	80
	
i2l398:
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
;;		wreg, fsr2l, fsr2h, status,2, status,0, pclat, tosl, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_softDACController
;;		_nullTMRFunction
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
global __ptext27
__ptext27:
psect	text27
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	67
	global	__size_of_timer8BitISR
	__size_of_timer8BitISR	equ	__end_of_timer8BitISR-_timer8BitISR
	
_timer8BitISR:
	opt	stack 23
	line	70
	
i2l3506:
	btfss	c:(31985/8),(31985)&7	;volatile
	goto	i2u183_41
	goto	i2u183_40
i2u183_41:
	goto	i2l457
i2u183_40:
	
i2l3508:
	btfss	c:(31977/8),(31977)&7	;volatile
	goto	i2u184_41
	goto	i2u184_40
i2u184_41:
	goto	i2l457
i2u184_40:
	line	73
	
i2l3510:
	bcf	c:(31985/8),(31985)&7	;volatile
	line	74
	bcf	c:(31977/8),(31977)&7	;volatile
	line	75
	bcf	c:(32338/8),(32338)&7	;volatile
	line	77
	
i2l3512:
	call	i2u185_48
	goto	i2u185_49
i2u185_48:
	push
	
	movwf	pclath
	movf	((c:_pt2TMR2ISR)),c,w
	movwf	tosl
	movf	((c:_pt2TMR2ISR+1)),c,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	return	;indir
	i2u185_49:
	goto	i2l457
	line	78
	
i2l456:
	line	107
	
i2l457:
	return
	opt stack 0
GLOBAL	__end_of_timer8BitISR
	__end_of_timer8BitISR:
	signat	_timer8BitISR,88
	global	_softDACController
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupPWM
;;		_timer8BitISR
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
global __ptext28
__ptext28:
psect	text28
	file	"hardware/cores/lib\hal_8bit_timer.c"
	line	67
	global	__size_of_nullTMRFunction
	__size_of_nullTMRFunction	equ	__end_of_nullTMRFunction-_nullTMRFunction
	
_nullTMRFunction:
	opt	stack 24
	line	69
	
i2l1106:
	return
	opt stack 0
GLOBAL	__end_of_nullTMRFunction
	__end_of_nullTMRFunction:
	signat	_nullTMRFunction,88

;; *************** function _softDACController *****************
;; Defined at:
;;		line 339 in file "libraries/soft_dac\soft_dac.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i2_changePinState
;;		i2_set8BitTimer
;; This function is called by:
;;		_setupSoftDAC
;;		_timer8BitISR
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
global __ptext29
__ptext29:
psect	text29
	file	"libraries/soft_dac\soft_dac.c"
	line	339
	global	__size_of_softDACController
	__size_of_softDACController	equ	__end_of_softDACController-_softDACController
	
_softDACController:
	opt	stack 23
	line	343
	
i2l3322:
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:softDACController@blScheduleCleared)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	line	345
	goto	i2l3386
	
i2l177:
	line	347
	goto	i2l3346
	line	349
	
i2l179:
	line	352
	
i2l3324:
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:softDACController@ui8Counter)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	goto	i2l3334
	line	353
	
i2l181:
	line	354
	
i2l3326:
	movf	((c:softDACController@ui8Counter)),c,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	btfsc	status,2
	goto	i2u142_41
	goto	i2u142_40
i2u142_41:
	goto	i2l3330
i2u142_40:
	line	356
	
i2l3328:
	movf	((c:softDACController@ui8Counter)),c,w
	mullw	03h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:?i2_changePinState)),c
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(0)
	movwf	(0+((c:?i2_changePinState)+01h)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	call	i2_changePinState	;wreg free
	line	357
	goto	i2l3332
	line	358
	
i2l182:
	line	360
	
i2l3330:
	movf	((c:softDACController@ui8Counter)),c,w
	mullw	03h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:?i2_changePinState)),c
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(01h)
	movwf	(0+((c:?i2_changePinState)+01h)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	call	i2_changePinState	;wreg free
	goto	i2l3332
	line	361
	
i2l183:
	line	352
	
i2l3332:
	incf	((c:softDACController@ui8Counter)),c
	goto	i2l3334
	
i2l180:
	
i2l3334:
	movf	((c:_ui8DACScheduleTail)),c,w
	subwf	((c:softDACController@ui8Counter)),c,w
	btfss	status,0
	goto	i2u143_41
	goto	i2u143_40
i2u143_41:
	goto	i2l3326
i2u143_40:
	goto	i2l3348
	
i2l184:
	line	363
	goto	i2l3348
	line	365
	
i2l186:
	line	368
	
i2l3336:
	movff	0+((c:_astDACModuleSchedule)+01h),(c:?i2_changePinState)
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(01h)
	movwf	(0+((c:?i2_changePinState)+01h)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	call	i2_changePinState	;wreg free
	line	369
	goto	i2l3348
	line	371
	
i2l187:
	line	374
	
i2l3338:
	movff	0+((c:_astDACModuleSchedule)+04h),(c:?i2_changePinState)
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(01h)
	movwf	(0+((c:?i2_changePinState)+01h)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	call	i2_changePinState	;wreg free
	line	375
	goto	i2l3348
	line	377
	
i2l188:
	line	380
	
i2l3340:
	movff	0+((c:_astDACModuleSchedule)+07h),(c:?i2_changePinState)
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(01h)
	movwf	(0+((c:?i2_changePinState)+01h)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	call	i2_changePinState	;wreg free
	line	381
	goto	i2l3348
	line	383
	
i2l189:
	line	386
	
i2l3342:
	movff	0+((c:_astDACModuleSchedule)+0Ah),(c:?i2_changePinState)
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(01h)
	movwf	(0+((c:?i2_changePinState)+01h)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	call	i2_changePinState	;wreg free
	line	387
	goto	i2l3348
	line	389
	
i2l190:
	line	392
	goto	i2l3348
	line	394
	
i2l3344:
	goto	i2l3348
	line	347
	
i2l178:
	
i2l3346:
	movf	((c:_ui8DACEngineStates)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l3336
	xorlw	1^0	; case 1
	skipnz
	goto	i2l3338
	xorlw	2^1	; case 2
	skipnz
	goto	i2l3340
	xorlw	3^2	; case 3
	skipnz
	goto	i2l3342
	xorlw	4^3	; case 4
	skipnz
	goto	i2l3324
	goto	i2l3348

	line	394
	
i2l185:
	line	397
	
i2l3348:
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:softDACController@blScheduleCleared)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	line	399
	
i2l3350:
	movf	((c:_ui8DACEngineStates)),c,w
	xorlw	4

	btfss	status,2
	goto	i2u144_41
	goto	i2u144_40
i2u144_41:
	goto	i2l3366
i2u144_40:
	line	401
	
i2l3352:
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_ui8DACEngineStates)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	line	404
	
i2l3354:
	incf	(0+((c:_astDACModuleSchedule)+02h)),c,w

	btfsc	status,2
	goto	i2u145_41
	goto	i2u145_40
i2u145_41:
	goto	i2l3360
i2u145_40:
	line	406
	
i2l3356:
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:?i2_set8BitTimer)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	movff	0+((c:_astDACModuleSchedule)+02h),0+((c:?i2_set8BitTimer)+01h)
	call	i2_set8BitTimer	;wreg free
	line	407
	
i2l3358:
	movff	0+((c:_astDACModuleSchedule)+02h),(c:_ui8PrevValue)
	line	408
	goto	i2l3386
	line	409
	
i2l192:
	line	411
	
i2l3360:
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:?i2_set8BitTimer)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	movf	((c:_ui8PrevValue)),c,w
	sublw	0
	movwf	(??_softDACController+1+0)&0ffh,c
	decf	((??_softDACController+1+0)),c,w
	movwf	(0+((c:?i2_set8BitTimer)+01h)),c
	call	i2_set8BitTimer	;wreg free
	line	412
	
i2l3362:
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_ui8PrevValue)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	line	413
	
i2l3364:
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(04h)
	movwf	((c:_ui8DACEngineStates)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	goto	i2l3386
	line	414
	
i2l193:
	line	415
	goto	i2l3386
	line	416
	
i2l191:
	line	419
	
i2l3366:
	incf	((c:_ui8DACEngineStates)),c
	line	423
	
i2l3368:
	movf	((c:_ui8DACScheduleTail)),c,w
	cpfslt	((c:_ui8DACEngineStates)),c
	goto	i2u146_41
	goto	i2u146_40
i2u146_41:
	goto	i2l3380
i2u146_40:
	
i2l3370:
	movf	((c:_ui8DACEngineStates)),c,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	xorlw	0FFh

	btfsc	status,2
	goto	i2u147_41
	goto	i2u147_40
i2u147_41:
	goto	i2l3380
i2u147_40:
	line	426
	
i2l3372:
	movf	((c:_ui8DACEngineStates)),c,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	xorwf	((c:_ui8PrevValue)),c,w
	btfsc	status,2
	goto	i2u148_41
	goto	i2u148_40
i2u148_41:
	goto	i2l3378
i2u148_40:
	line	428
	
i2l3374:
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:?i2_set8BitTimer)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	movf	((c:_ui8DACEngineStates)),c,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_softDACController+1+0)&0ffh,c
	movf	((c:_ui8PrevValue)),c,w
	sublw	0
	addwf	((??_softDACController+1+0)),c,w
	movwf	(0+((c:?i2_set8BitTimer)+01h)),c
	call	i2_set8BitTimer	;wreg free
	line	429
	
i2l3376:
	movf	((c:_ui8DACEngineStates)),c,w
	mullw	03h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low((c:_astDACModuleSchedule))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_astDACModuleSchedule))
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:_ui8PrevValue)),c
	line	430
	goto	i2l3386
	line	431
	
i2l196:
	line	434
	
i2l3378:
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:softDACController@blScheduleCleared)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	goto	i2l3386
	line	435
	
i2l197:
	line	436
	goto	i2l3386
	line	437
	
i2l195:
	line	439
	
i2l3380:
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:?i2_set8BitTimer)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	movf	((c:_ui8PrevValue)),c,w
	sublw	0
	movwf	(??_softDACController+1+0)&0ffh,c
	decf	((??_softDACController+1+0)),c,w
	movwf	(0+((c:?i2_set8BitTimer)+01h)),c
	call	i2_set8BitTimer	;wreg free
	line	440
	
i2l3382:
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_ui8PrevValue)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	line	441
	
i2l3384:
	movwf	(??_softDACController+0+0)&0ffh,c
	movlw	low(04h)
	movwf	((c:_ui8DACEngineStates)),c
	movf	(??_softDACController+0+0)&0ffh,c,w
	goto	i2l3386
	line	442
	
i2l198:
	goto	i2l3386
	line	443
	
i2l194:
	goto	i2l3386
	line	444
	
i2l176:
	line	345
	
i2l3386:
	tstfsz	((c:softDACController@blScheduleCleared)),c
	goto	i2u149_41
	goto	i2u149_40
i2u149_41:
	goto	i2l202
i2u149_40:
	
i2l3388:
	tstfsz	((c:_ui8DACScheduleTail)),c
	goto	i2u150_41
	goto	i2u150_40
i2u150_41:
	goto	i2l3346
i2u150_40:
	goto	i2l202
	
i2l200:
	goto	i2l202
	
i2l201:
	line	445
	
i2l202:
	return
	opt stack 0
GLOBAL	__end_of_softDACController
	__end_of_softDACController:
	signat	_softDACController,88
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
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
global __ptext30
__ptext30:
psect	text30
	file	"hardware/cores/lib\corelib_uart.c"
	line	305
	global	__size_of_serialRxISR
	__size_of_serialRxISR	equ	__end_of_serialRxISR-_serialRxISR
	
_serialRxISR:
	opt	stack 25
	line	308
	
i2l3822:
	btfss	c:(31989/8),(31989)&7	;volatile
	goto	i2u224_41
	goto	i2u224_40
i2u224_41:
	goto	i2l948
i2u224_40:
	
i2l3824:
	btfss	c:(31981/8),(31981)&7	;volatile
	goto	i2u225_41
	goto	i2u225_40
i2u225_41:
	goto	i2l948
i2u225_40:
	line	310
	
i2l3826:
	bcf	c:(31989/8),(31989)&7	;volatile
	line	311
	
i2l3828:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_stUARTRXFiFo+020h))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_stUARTRXFiFo)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_stUARTRXFiFo)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:4014),indf2	;volatile

	line	312
	
i2l3830:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	(0+(_stUARTRXFiFo+020h))&0ffh,w
	andlw	low(01Fh)
	movwf	((c:serialRxISR@ui8TempIn)),c
	line	314
	
i2l3832:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_stUARTRXFiFo+021h))&0ffh,w
	xorwf	((c:serialRxISR@ui8TempIn)),c,w
	btfsc	status,2
	goto	i2u226_41
	goto	i2u226_40
i2u226_41:
	goto	i2l948
i2u226_40:
	line	316
	
i2l3834:; BSR set to: 0

	movff	(c:serialRxISR@ui8TempIn),0+(_stUARTRXFiFo+020h)
	line	320
	goto	i2l948
	line	321
	
i2l946:; BSR set to: 0

	goto	i2l948
	line	327
	
i2l947:; BSR set to: 0

	goto	i2l948
	line	332
	
i2l945:; BSR set to: 0

	line	333
	
i2l948:
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
;;		wreg, status,2, status,0, pclat, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
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
psect	text31,class=CODE,space=0,reloc=2
global __ptext31
__ptext31:
psect	text31
	file	"hardware/cores/lib\corelib_user_interrupt.c"
	line	73
	global	__size_of_userIntISR
	__size_of_userIntISR	equ	__end_of_userIntISR-_userIntISR
	
_userIntISR:
	opt	stack 23
	line	75
	
i2l3514:
	btfss	c:(32660/8),(32660)&7	;volatile
	goto	i2u186_41
	goto	i2u186_40
i2u186_41:
	goto	i2l3526
i2u186_40:
	
i2l3516:
	btfss	c:(32657/8),(32657)&7	;volatile
	goto	i2u187_41
	goto	i2u187_40
i2u187_41:
	goto	i2l3526
i2u187_40:
	line	77
	
i2l3518:
	bcf	c:(32660/8),(32660)&7	;volatile
	line	79
	
i2l3520:
	call	_extIntISR	;wreg free
	line	81
	
i2l3522:
	bcf	c:(32657/8),(32657)&7	;volatile
	line	82
	
i2l3524:
	bsf	c:(32660/8),(32660)&7	;volatile
	goto	i2l3526
	line	83
	
i2l1017:
	line	86
	
i2l3526:
	btfss	c:(32659/8),(32659)&7	;volatile
	goto	i2u188_41
	goto	i2u188_40
i2u188_41:
	goto	i2l1019
i2u188_40:
	
i2l3528:
	btfss	c:(32656/8),(32656)&7	;volatile
	goto	i2u189_41
	goto	i2u189_40
i2u189_41:
	goto	i2l1019
i2u189_40:
	line	88
	
i2l3530:
	bcf	c:(32659/8),(32659)&7	;volatile
	line	90
	
i2l3532:
	call	_rbIntISR	;wreg free
	line	92
	
i2l3534:
	bcf	c:(32656/8),(32656)&7	;volatile
	line	93
	
i2l3536:
	bsf	c:(32659/8),(32659)&7	;volatile
	goto	i2l1019
	line	94
	
i2l1018:
	line	95
	
i2l1019:
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
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
global __ptext32
__ptext32:
psect	text32
	file	"hardware/cores/lib\corelib_uart.c"
	line	352
	global	__size_of_serialTxISR
	__size_of_serialTxISR	equ	__end_of_serialTxISR-_serialTxISR
	
_serialTxISR:
	opt	stack 25
	line	353
	
i2l3836:
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	i2u227_41
	goto	i2u227_40
i2u227_41:
	goto	i2l955
i2u227_40:
	
i2l3838:
	btfss	c:(31980/8),(31980)&7	;volatile
	goto	i2u228_41
	goto	i2u228_40
i2u228_41:
	goto	i2l955
i2u228_40:
	line	355
	
i2l3840:
	bcf	c:(31988/8),(31988)&7	;volatile
	line	358
	
i2l3842:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_stUARTTXFiFo+020h))&0ffh,w
	movlb	0	; () banked
	lfsr	2,_stUARTTXFiFo+021h
	cpfseq	indf2
	goto	i2u229_41
	goto	i2u229_40
i2u229_41:
	goto	i2l3846
i2u229_40:
	line	360
	
i2l3844:; BSR set to: 0

	bcf	c:(31980/8),(31980)&7	;volatile
	line	364
	goto	i2l955
	line	365
	
i2l952:; BSR set to: 0

	line	367
	
i2l3846:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_stUARTTXFiFo+021h))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_stUARTTXFiFo)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_stUARTTXFiFo)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:4013)),c	;volatile
	
i2l3848:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	(0+(_stUARTTXFiFo+021h))&0ffh
	line	368
	
i2l3850:; BSR set to: 0

	movlw	(01Fh)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	(0+(_stUARTTXFiFo+021h))&0ffh
	line	373
	
i2l3852:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_stUARTTXFiFo+020h))&0ffh,w
	movlb	0	; () banked
	lfsr	2,_stUARTTXFiFo+021h
	cpfseq	indf2
	goto	i2u230_41
	goto	i2u230_40
i2u230_41:
	goto	i2l955
i2u230_40:
	line	375
	
i2l3854:; BSR set to: 0

	bcf	c:(31980/8),(31980)&7	;volatile
	goto	i2l955
	line	379
	
i2l954:; BSR set to: 0

	goto	i2l955
	line	380
	
i2l953:; BSR set to: 0

	goto	i2l955
	line	381
	
i2l951:; BSR set to: 0

	line	382
	
i2l955:
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
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
global __ptext33
__ptext33:
psect	text33
	file	"hardware/cores/lib\corelib_adc.c"
	line	83
	global	__size_of_adcISR
	__size_of_adcISR	equ	__end_of_adcISR-_adcISR
	
_adcISR:
	opt	stack 25
	line	86
	
i2l3856:
	btfss	c:(31990/8),(31990)&7	;volatile
	goto	i2u231_41
	goto	i2u231_40
i2u231_41:
	goto	i2l549
i2u231_40:
	
i2l3858:
	btfss	c:(31982/8),(31982)&7	;volatile
	goto	i2u232_41
	goto	i2u232_40
i2u232_41:
	goto	i2l549
i2u232_40:
	line	88
	
i2l3860:
	bcf	c:(31990/8),(31990)&7	;volatile
	line	91
	
i2l3862:
	movf	((c:_eCurrentChannel)),c,w
	xorlw	3

	btfss	status,2
	goto	i2u233_41
	goto	i2u233_40
i2u233_41:
	goto	i2l3866
i2u233_40:
	goto	i2l3870
	line	97
	
i2l3864:
	goto	i2l3870
	line	98
	
i2l542:
	
i2l3866:
	movlw	(04h-1)
	cpfsgt	((c:_eCurrentChannel)),c
	goto	i2u234_41
	goto	i2u234_40
i2u234_41:
	goto	i2l544
i2u234_40:
	line	100
	
i2l3868:
	decf	((c:_eCurrentChannel)),c,w
	movwf	((c:adcISR@eEffectiveChannel)),c
	line	104
	goto	i2l3870
	line	105
	
i2l544:
	line	107
	movff	(c:_eCurrentChannel),(c:adcISR@eEffectiveChannel)
	goto	i2l3870
	line	111
	
i2l545:
	goto	i2l3870
	
i2l543:
	line	114
	
i2l3870:
	movf	((c:4035)),c,w	;volatile
	movff	(c:4036),??_adcISR+0+0	;volatile
	clrf	(??_adcISR+0+0+1)&0ffh,c
	movff	??_adcISR+0+0,??_adcISR+0+1
	clrf	(??_adcISR+0+0),c
	addwf	(??_adcISR+0+0),c
	movlw	0
	addwfc	(??_adcISR+0+1),c
	movlw	0FFh
	andwf	(??_adcISR+0+0),c,w
	movwf	(??_adcISR+2+0)&0ffh,c
	movlw	03h
	andwf	(??_adcISR+0+1),c,w
	movwf	1+(??_adcISR+2+0)&0ffh,c
	movf	((c:adcISR@eEffectiveChannel)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_ui16ADCBuff)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ui16ADCBuff)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	??_adcISR+2+0,postinc2
	movff	??_adcISR+2+1,postdec2

	line	117
	
i2l3872:; BSR set to: 0

	movlw	(07h)&0ffh
	cpfslt	((c:_eCurrentChannel)),c
	goto	i2u235_41
	goto	i2u235_40
i2u235_41:
	goto	i2l3880
i2u235_40:
	line	119
	
i2l3874:; BSR set to: 0

	incf	((c:_eCurrentChannel)),c
	line	122
	
i2l3876:; BSR set to: 0

	movf	((c:_eCurrentChannel)),c,w
	xorlw	3

	btfss	status,2
	goto	i2u236_41
	goto	i2u236_40
i2u236_41:
	goto	i2l3882
i2u236_40:
	line	124
	
i2l3878:; BSR set to: 0

	incf	((c:_eCurrentChannel)),c
	goto	i2l3882
	line	128
	
i2l547:; BSR set to: 0

	line	133
	goto	i2l3882
	line	134
	
i2l546:; BSR set to: 0

	line	136
	
i2l3880:; BSR set to: 0

	movwf	(??_adcISR+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_eCurrentChannel)),c
	movf	(??_adcISR+0+0)&0ffh,c,w
	goto	i2l3882
	line	140
	
i2l548:; BSR set to: 0

	line	143
	
i2l3882:; BSR set to: 0

	movlw	(0C3h)&0ffh
	andwf	((c:4034)),c	;volatile
	
i2l3884:; BSR set to: 0

	rlncf	((c:_eCurrentChannel)),c,w
	rlncf	wreg
	andlw	(0ffh shl 2) & 0ffh
	andlw	low(03Ch)
	iorwf	((c:4034)),c	;volatile
	goto	i2l549
	line	144
	
i2l541:; BSR set to: 0

	line	145
	
i2l549:
	return
	opt stack 0
GLOBAL	__end_of_adcISR
	__end_of_adcISR:
	signat	_adcISR,88
	global	_criticalTaskISR
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_timer16BitISR
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
global __ptext34
__ptext34:
psect	text34
	file	"hardware/cores/lib\hal_16bit_timer.c"
	line	66
	global	__size_of_null16BitTMRFunction
	__size_of_null16BitTMRFunction	equ	__end_of_null16BitTMRFunction-_null16BitTMRFunction
	
_null16BitTMRFunction:
	opt	stack 24
	line	68
	
i2l1073:
	return
	opt stack 0
GLOBAL	__end_of_null16BitTMRFunction
	__end_of_null16BitTMRFunction:
	signat	_null16BitTMRFunction,88

;; *************** function _criticalTaskISR *****************
;; Defined at:
;;		line 209 in file "hardware/cores\PhilRoboKit_CoreLib_Macro.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i2_set16BitTimer
;;		_adcCycle
;; This function is called by:
;;		_main
;;		_timer16BitISR
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
global __ptext35
__ptext35:
psect	text35
	file	"hardware/cores\PhilRoboKit_CoreLib_Macro.c"
	line	209
	global	__size_of_criticalTaskISR
	__size_of_criticalTaskISR	equ	__end_of_criticalTaskISR-_criticalTaskISR
	
_criticalTaskISR:
	opt	stack 23
	line	210
	
i2l3406:
	movwf	(??_criticalTaskISR+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:?i2_set16BitTimer)),c
	movf	(??_criticalTaskISR+0+0)&0ffh,c,w
	movlw	high(07D0h)
	movwf	(1+((c:?i2_set16BitTimer)+01h)),c
	movlw	low(07D0h)
	movwf	(0+((c:?i2_set16BitTimer)+01h)),c
	call	i2_set16BitTimer	;wreg free
	line	211
	call	_adcCycle	;wreg free
	line	212
	
i2l344:
	return
	opt stack 0
GLOBAL	__end_of_criticalTaskISR
	__end_of_criticalTaskISR:
	signat	_criticalTaskISR,88
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
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_criticalTaskISR
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
global __ptext36
__ptext36:
psect	text36
	file	"hardware/cores/lib\corelib_adc.c"
	line	164
	global	__size_of_adcCycle
	__size_of_adcCycle	equ	__end_of_adcCycle-_adcCycle
	
_adcCycle:
	opt	stack 23
	line	166
	
i2l2762:
	infsnz	((c:adcCycle@ui16Counter)),c
	incf	((c:adcCycle@ui16Counter+1)),c
	line	169
	
i2l2764:
	movlw	05h
	subwf	((c:adcCycle@ui16Counter)),c,w
	movlw	0
	subwfb	((c:adcCycle@ui16Counter+1)),c,w
	btfss	status,0
	goto	i2u66_41
	goto	i2u66_40
i2u66_41:
	goto	i2l556
i2u66_40:
	line	172
	
i2l2766:
	movlw	high(0)
	movwf	((c:adcCycle@ui16Counter+1)),c
	movlw	low(0)
	movwf	((c:adcCycle@ui16Counter)),c
	line	178
	
i2l2768:
	btfsc	c:(32273/8),(32273)&7	;volatile
	goto	i2u67_41
	goto	i2u67_40
i2u67_41:
	goto	i2l556
i2u67_40:
	line	181
	
i2l2770:
	bsf	c:(32273/8),(32273)&7	;volatile
	goto	i2l556
	line	185
	
i2l555:
	goto	i2l556
	line	186
	
i2l554:
	line	187
	
i2l556:
	return
	opt stack 0
GLOBAL	__end_of_adcCycle
	__end_of_adcCycle:
	signat	_adcCycle,88
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
;;		wreg, status,2, status,0, pclat, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_nullIntFunction
;; This function is called by:
;;		_userIntISR
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
global __ptext37
__ptext37:
psect	text37
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	89
	global	__size_of_extIntISR
	__size_of_extIntISR	equ	__end_of_extIntISR-_extIntISR
	
_extIntISR:
	opt	stack 23
	line	90
	
i2l3408:
	decf	((c:_eMod0_Mode)),c,w

	btfss	status,2
	goto	i2u154_41
	goto	i2u154_40
i2u154_41:
	goto	i2l3412
i2u154_40:
	line	92
	
i2l3410:
	btg	c:(32654/8),(32654)&7	;volatile
	goto	i2l3412
	line	93
	
i2l1463:
	line	96
	
i2l3412:
	call	i2u155_48
	goto	i2u155_49
i2u155_48:
	push
	
	movwf	pclath
	movf	((c:_pt2INT0)),c,w
	movwf	tosl
	movf	((c:_pt2INT0+1)),c,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	return	;indir
	i2u155_49:
	line	97
	
i2l1464:
	return
	opt stack 0
GLOBAL	__end_of_extIntISR
	__end_of_extIntISR:
	signat	_extIntISR,88
	global	_rbIntISR

;; *************** function _rbIntISR *****************
;; Defined at:
;;		line 119 in file "hardware/cores/lib\hal_user_interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclat, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_nullIntFunction
;; This function is called by:
;;		_userIntISR
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
global __ptext38
__ptext38:
psect	text38
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	119
	global	__size_of_rbIntISR
	__size_of_rbIntISR	equ	__end_of_rbIntISR-_rbIntISR
	
_rbIntISR:
	opt	stack 23
	line	122
	
i2l3414:
	movf	((c:3969)),c,w	;volatile
	andwf	((c:3987)),c,w	;volatile
	xorwf	((c:_PORTB_BUFFER)),c,w	;volatile
	movwf	((c:rbIntISR@PORTCHANGE_BUFFER)),c
	line	124
	
i2l3416:
	
	btfss	((c:rbIntISR@PORTCHANGE_BUFFER)),c,(4)&7
	goto	i2u156_41
	goto	i2u156_40
i2u156_41:
	goto	i2l3436
i2u156_40:
	line	126
	
i2l3418:
	movf	((c:_eMod1_Mode)),c,w
	xorlw	2

	btfss	status,2
	goto	i2u157_41
	goto	i2u157_40
i2u157_41:
	goto	i2l3424
i2u157_40:
	
i2l3420:
	
	btfsc	((c:3969)),c,(4)&7	;volatile
	goto	i2u158_41
	goto	i2u158_40
i2u158_41:
	goto	i2l3424
i2u158_40:
	goto	i2l3432
	line	129
	
i2l3422:
	goto	i2l3432
	line	130
	
i2l1470:
	
i2l3424:
	movf	((c:_eMod1_Mode)),c,w
	xorlw	3

	btfss	status,2
	goto	i2u159_41
	goto	i2u159_40
i2u159_41:
	goto	i2l3430
i2u159_40:
	
i2l3426:
	
	btfss	((c:3969)),c,(4)&7	;volatile
	goto	i2u160_41
	goto	i2u160_40
i2u160_41:
	goto	i2l3430
i2u160_40:
	goto	i2l3432
	line	133
	
i2l3428:
	goto	i2l3432
	line	134
	
i2l1472:
	line	137
	
i2l3430:
	call	i2u161_48
	goto	i2u161_49
i2u161_48:
	push
	
	movwf	pclath
	movf	((c:_pt2INT1)),c,w
	movwf	tosl
	movf	((c:_pt2INT1+1)),c,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	return	;indir
	i2u161_49:
	goto	i2l3432
	line	138
	
i2l1473:
	goto	i2l3432
	
i2l1471:
	line	140
	
i2l3432:
	bcf	(0+(4/8)+(c:_PORTB_BUFFER)),c,(4)&7	;volatile
	line	141
	
i2l3434:
	movf	((c:3969)),c,w	;volatile
	andlw	low(010h)
	iorwf	((c:_PORTB_BUFFER)),c	;volatile
	goto	i2l3436
	line	142
	
i2l1469:
	line	144
	
i2l3436:
	
	btfss	((c:rbIntISR@PORTCHANGE_BUFFER)),c,(5)&7
	goto	i2u162_41
	goto	i2u162_40
i2u162_41:
	goto	i2l3456
i2u162_40:
	line	146
	
i2l3438:
	movf	((c:_eMod2_Mode)),c,w
	xorlw	2

	btfss	status,2
	goto	i2u163_41
	goto	i2u163_40
i2u163_41:
	goto	i2l3444
i2u163_40:
	
i2l3440:
	
	btfsc	((c:3969)),c,(5)&7	;volatile
	goto	i2u164_41
	goto	i2u164_40
i2u164_41:
	goto	i2l3444
i2u164_40:
	goto	i2l3452
	line	149
	
i2l3442:
	goto	i2l3452
	line	150
	
i2l1475:
	
i2l3444:
	movf	((c:_eMod2_Mode)),c,w
	xorlw	3

	btfss	status,2
	goto	i2u165_41
	goto	i2u165_40
i2u165_41:
	goto	i2l3450
i2u165_40:
	
i2l3446:
	
	btfss	((c:3969)),c,(5)&7	;volatile
	goto	i2u166_41
	goto	i2u166_40
i2u166_41:
	goto	i2l3450
i2u166_40:
	goto	i2l3452
	line	153
	
i2l3448:
	goto	i2l3452
	line	154
	
i2l1477:
	line	157
	
i2l3450:
	call	i2u167_48
	goto	i2u167_49
i2u167_48:
	push
	
	movwf	pclath
	movf	((c:_pt2INT2)),c,w
	movwf	tosl
	movf	((c:_pt2INT2+1)),c,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	return	;indir
	i2u167_49:
	goto	i2l3452
	line	158
	
i2l1478:
	goto	i2l3452
	
i2l1476:
	line	160
	
i2l3452:
	bcf	(0+(5/8)+(c:_PORTB_BUFFER)),c,(5)&7	;volatile
	line	161
	
i2l3454:
	movf	((c:3969)),c,w	;volatile
	andlw	low(020h)
	iorwf	((c:_PORTB_BUFFER)),c	;volatile
	goto	i2l3456
	line	162
	
i2l1474:
	line	164
	
i2l3456:
	
	btfss	((c:rbIntISR@PORTCHANGE_BUFFER)),c,(6)&7
	goto	i2u168_41
	goto	i2u168_40
i2u168_41:
	goto	i2l3476
i2u168_40:
	line	166
	
i2l3458:
	movf	((c:_eMod3_Mode)),c,w
	xorlw	2

	btfss	status,2
	goto	i2u169_41
	goto	i2u169_40
i2u169_41:
	goto	i2l3464
i2u169_40:
	
i2l3460:
	
	btfsc	((c:3969)),c,(6)&7	;volatile
	goto	i2u170_41
	goto	i2u170_40
i2u170_41:
	goto	i2l3464
i2u170_40:
	goto	i2l3472
	line	169
	
i2l3462:
	goto	i2l3472
	line	170
	
i2l1480:
	
i2l3464:
	movf	((c:_eMod3_Mode)),c,w
	xorlw	3

	btfss	status,2
	goto	i2u171_41
	goto	i2u171_40
i2u171_41:
	goto	i2l3470
i2u171_40:
	
i2l3466:
	
	btfss	((c:3969)),c,(6)&7	;volatile
	goto	i2u172_41
	goto	i2u172_40
i2u172_41:
	goto	i2l3470
i2u172_40:
	goto	i2l3472
	line	173
	
i2l3468:
	goto	i2l3472
	line	174
	
i2l1482:
	line	177
	
i2l3470:
	call	i2u173_48
	goto	i2u173_49
i2u173_48:
	push
	
	movwf	pclath
	movf	((c:_pt2INT3)),c,w
	movwf	tosl
	movf	((c:_pt2INT3+1)),c,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	return	;indir
	i2u173_49:
	goto	i2l3472
	line	178
	
i2l1483:
	goto	i2l3472
	
i2l1481:
	line	180
	
i2l3472:
	bcf	(0+(6/8)+(c:_PORTB_BUFFER)),c,(6)&7	;volatile
	line	181
	
i2l3474:
	movf	((c:3969)),c,w	;volatile
	andlw	low(040h)
	iorwf	((c:_PORTB_BUFFER)),c	;volatile
	goto	i2l3476
	line	182
	
i2l1479:
	line	184
	
i2l3476:
	
	btfss	((c:rbIntISR@PORTCHANGE_BUFFER)),c,(7)&7
	goto	i2u174_41
	goto	i2u174_40
i2u174_41:
	goto	i2l3496
i2u174_40:
	line	186
	
i2l3478:
	movf	((c:_eMod4_Mode)),c,w
	xorlw	2

	btfss	status,2
	goto	i2u175_41
	goto	i2u175_40
i2u175_41:
	goto	i2l3484
i2u175_40:
	
i2l3480:
	
	btfsc	((c:3969)),c,(7)&7	;volatile
	goto	i2u176_41
	goto	i2u176_40
i2u176_41:
	goto	i2l3484
i2u176_40:
	goto	i2l3492
	line	189
	
i2l3482:
	goto	i2l3492
	line	190
	
i2l1485:
	
i2l3484:
	movf	((c:_eMod4_Mode)),c,w
	xorlw	3

	btfss	status,2
	goto	i2u177_41
	goto	i2u177_40
i2u177_41:
	goto	i2l3490
i2u177_40:
	
i2l3486:
	
	btfss	((c:3969)),c,(7)&7	;volatile
	goto	i2u178_41
	goto	i2u178_40
i2u178_41:
	goto	i2l3490
i2u178_40:
	goto	i2l3492
	line	193
	
i2l3488:
	goto	i2l3492
	line	194
	
i2l1487:
	line	197
	
i2l3490:
	call	i2u179_48
	goto	i2u179_49
i2u179_48:
	push
	
	movwf	pclath
	movf	((c:_pt2INT4)),c,w
	movwf	tosl
	movf	((c:_pt2INT4+1)),c,w
	movwf	tosl+1
	movf	tblptru,w
	movwf	tosl+2
	movf	pclath,w
	
	return	;indir
	i2u179_49:
	goto	i2l3492
	line	198
	
i2l1488:
	goto	i2l3492
	
i2l1486:
	line	200
	
i2l3492:
	bcf	(0+(7/8)+(c:_PORTB_BUFFER)),c,(7)&7	;volatile
	line	201
	
i2l3494:
	movf	((c:3969)),c,w	;volatile
	andlw	low(080h)
	iorwf	((c:_PORTB_BUFFER)),c	;volatile
	goto	i2l3496
	line	202
	
i2l1484:
	line	204
	
i2l3496:
	movf	((c:3987)),c,w	;volatile
	andwf	((c:_PORTB_BUFFER)),c	;volatile
	line	205
	
i2l1489:
	return
	opt stack 0
GLOBAL	__end_of_rbIntISR
	__end_of_rbIntISR:
	signat	_rbIntISR,88
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_extIntISR
;;		_rbIntISR
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
global __ptext39
__ptext39:
psect	text39
	file	"hardware/cores/lib\hal_user_interrupt.c"
	line	67
	global	__size_of_nullIntFunction
	__size_of_nullIntFunction	equ	__end_of_nullIntFunction-_nullIntFunction
	
_nullIntFunction:
	opt	stack 23
	line	69
	
i2l1460:
	return
	opt stack 0
GLOBAL	__end_of_nullIntFunction
	__end_of_nullIntFunction:
	signat	_nullIntFunction,88
	global	i2_set16BitTimer

;; *************** function i2_set16BitTimer *****************
;; Defined at:
;;		line 172 in file "hardware/cores/lib\corelib_16bit_timer.c"
;; Parameters:    Size  Location     Type
;;  set16BitTime    1    0[COMRAM] enum E4393
;;  set16BitTime    2    1[COMRAM] unsigned int 
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_criticalTaskISR
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2
global __ptext40
__ptext40:
psect	text40
	file	"hardware/cores/lib\corelib_16bit_timer.c"
	line	172
	global	__size_ofi2_set16BitTimer
	__size_ofi2_set16BitTimer	equ	__end_ofi2_set16BitTimer-i2_set16BitTimer
	
i2_set16BitTimer:
	opt	stack 23
	line	174
	
i2l3188:
	decf	((c:i2set16BitTimer@eTmrModule)),c,w

	btfss	status,2
	goto	i2u113_41
	goto	i2u113_40
i2u113_41:
	goto	i2l413
i2u113_40:
	line	176
	
i2l3190:
	movff	(c:i2set16BitTimer@ui16Value),??i2_set16BitTimer+0+0
	movff	(c:i2set16BitTimer@ui16Value+1),??i2_set16BitTimer+0+0+1
	comf	(??i2_set16BitTimer+0+0),c
	comf	(??i2_set16BitTimer+0+1),c
	infsnz	(??i2_set16BitTimer+0+0),c
	incf	(??i2_set16BitTimer+0+1),c
	movlw	low(0FFFFh)
	addwf	(??i2_set16BitTimer+0+0),c,w
	
	movwf	((c:i2set16BitTimer@ui16Value)),c
	movlw	high(0FFFFh)
	addwfc	(??i2_set16BitTimer+0+1),c,w
	movwf	1+((c:i2set16BitTimer@ui16Value)),c
	
i2l3192:
	movf	((c:i2set16BitTimer@ui16Value+1)),c,w
	movwf	((c:4047)),c	;volatile
	
i2l3194:
	movff	(c:i2set16BitTimer@ui16Value),(c:4046)	;volatile
	line	178
	
i2l3196:
	bcf	c:(31984/8),(31984)&7	;volatile
	line	179
	
i2l3198:
	bsf	c:(31976/8),(31976)&7	;volatile
	line	181
	
i2l3200:
	bsf	c:(32360/8),(32360)&7	;volatile
	line	182
	goto	i2l413
	line	183
	
i2l411:
	goto	i2l413
	line	186
	
i2l412:
	line	187
	
i2l413:
	return
	opt stack 0
GLOBAL	__end_ofi2_set16BitTimer
	__end_ofi2_set16BitTimer:
	signat	i2_set16BitTimer,88
	global	i2_set8BitTimer

;; *************** function i2_set8BitTimer *****************
;; Defined at:
;;		line 238 in file "hardware/cores/lib\corelib_8bit_timer.c"
;; Parameters:    Size  Location     Type
;;  set8BitTimer    1    0[COMRAM] enum E4391
;;  set8BitTimer    1    1[COMRAM] unsigned char 
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_softDACController
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2
global __ptext41
__ptext41:
psect	text41
	file	"hardware/cores/lib\corelib_8bit_timer.c"
	line	238
	global	__size_ofi2_set8BitTimer
	__size_ofi2_set8BitTimer	equ	__end_ofi2_set8BitTimer-i2_set8BitTimer
	
i2_set8BitTimer:
	opt	stack 23
	line	240
	
i2l3212:
	movf	((c:i2set8BitTimer@eTmrModule)),c,w
	xorlw	2

	btfss	status,2
	goto	i2u115_41
	goto	i2u115_40
i2u115_41:
	goto	i2l472
i2u115_40:
	line	242
	
i2l3214:
	decf	((c:i2set8BitTimer@ui8Value)),c,w
	movwf	((c:4043)),c	;volatile
	line	244
	
i2l3216:
	bcf	c:(31985/8),(31985)&7	;volatile
	line	245
	
i2l3218:
	bsf	c:(31977/8),(31977)&7	;volatile
	line	247
	
i2l3220:
	bsf	c:(32338/8),(32338)&7	;volatile
	line	248
	goto	i2l472
	line	274
	
i2l470:
	goto	i2l472
	line	277
	
i2l471:
	line	278
	
i2l472:
	return
	opt stack 0
GLOBAL	__end_ofi2_set8BitTimer
	__end_ofi2_set8BitTimer:
	signat	i2_set8BitTimer,88
	global	i2_changePinState

;; *************** function i2_changePinState *****************
;; Defined at:
;;		line 189 in file "hardware/cores/lib\hal_gpio.c"
;; Parameters:    Size  Location     Type
;;  changePinSta    1    0[COMRAM] unsigned char 
;;  changePinSta    1    1[COMRAM] enum E4360
;; Auto vars:     Size  Location     Type
;;  changePinSta    2    5[COMRAM] PTR unsigned char 
;;		 -> NULL(0), LATE(1), LATD(1), LATC(1), 
;;		 -> LATB(1), LATA(1), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_softDACController
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2
global __ptext42
__ptext42:
psect	text42
	file	"hardware/cores/lib\hal_gpio.c"
	line	189
	global	__size_ofi2_changePinState
	__size_ofi2_changePinState	equ	__end_ofi2_changePinState-i2_changePinState
	
i2_changePinState:
	opt	stack 23
	line	190
	
i2l3272:
	movlw	high(0)
	movwf	((c:i2changePinState@pui8PortReg+1)),c
	movlw	low(0)
	movwf	((c:i2changePinState@pui8PortReg)),c
	line	193
	
i2l3274:
	movlw	(08h)&0ffh
	cpfslt	((c:i2changePinState@ui8Pin)),c
	goto	i2u129_41
	goto	i2u129_40
i2u129_41:
	goto	i2l3278
i2u129_40:
	line	195
	
i2l3276:
	movlw	high((c:3979))	;volatile
	movwf	((c:i2changePinState@pui8PortReg+1)),c
	movlw	low((c:3979))	;volatile
	movwf	((c:i2changePinState@pui8PortReg)),c
	line	199
	goto	i2l3310
	line	201
	
i2l1227:
	
i2l3278:
	movlw	(0Eh)&0ffh
	cpfslt	((c:i2changePinState@ui8Pin)),c
	goto	i2u130_41
	goto	i2u130_40
i2u130_41:
	goto	i2l3284
i2u130_40:
	line	203
	
i2l3280:
	movlw	(08h)&0ffh
	subwf	((c:i2changePinState@ui8Pin)),c
	line	204
	
i2l3282:
	movlw	high((c:3978))	;volatile
	movwf	((c:i2changePinState@pui8PortReg+1)),c
	movlw	low((c:3978))	;volatile
	movwf	((c:i2changePinState@pui8PortReg)),c
	line	208
	goto	i2l3310
	line	210
	
i2l1229:
	
i2l3284:
	movlw	(015h)&0ffh
	cpfslt	((c:i2changePinState@ui8Pin)),c
	goto	i2u131_41
	goto	i2u131_40
i2u131_41:
	goto	i2l3304
i2u131_40:
	line	212
	
i2l3286:
	movlw	(0Eh)&0ffh
	subwf	((c:i2changePinState@ui8Pin)),c
	line	215
	
i2l3288:
	movlw	(03h)&0ffh
	cpfslt	((c:i2changePinState@ui8Pin)),c
	goto	i2u132_41
	goto	i2u132_40
i2u132_41:
	goto	i2l3292
i2u132_40:
	line	217
	
i2l3290:
	movlw	high((c:3977))	;volatile
	movwf	((c:i2changePinState@pui8PortReg+1)),c
	movlw	low((c:3977))	;volatile
	movwf	((c:i2changePinState@pui8PortReg)),c
	line	221
	goto	i2l3310
	line	223
	
i2l1232:
	
i2l3292:
	movf	((c:i2changePinState@ui8Pin)),c,w
	xorlw	3

	btfss	status,2
	goto	i2u133_41
	goto	i2u133_40
i2u133_41:
	goto	i2l3298
i2u133_40:
	line	225
	
i2l3294:
	movlw	(02h)&0ffh
	addwf	((c:i2changePinState@ui8Pin)),c
	line	226
	
i2l3296:
	movlw	high((c:3977))	;volatile
	movwf	((c:i2changePinState@pui8PortReg+1)),c
	movlw	low((c:3977))	;volatile
	movwf	((c:i2changePinState@pui8PortReg)),c
	line	230
	goto	i2l3310
	line	232
	
i2l1234:
	
i2l3298:
	movlw	(07h)&0ffh
	cpfslt	((c:i2changePinState@ui8Pin)),c
	goto	i2u134_41
	goto	i2u134_40
i2u134_41:
	goto	i2l3310
i2u134_40:
	line	234
	
i2l3300:
	movlw	(04h)&0ffh
	subwf	((c:i2changePinState@ui8Pin)),c
	line	235
	
i2l3302:
	movlw	high((c:3981))	;volatile
	movwf	((c:i2changePinState@pui8PortReg+1)),c
	movlw	low((c:3981))	;volatile
	movwf	((c:i2changePinState@pui8PortReg)),c
	line	239
	goto	i2l3310
	line	240
	
i2l1236:
	goto	i2l3310
	line	246
	
i2l1237:
	goto	i2l3310
	
i2l1235:
	goto	i2l3310
	
i2l1233:
	line	247
	goto	i2l3310
	line	249
	
i2l1231:
	
i2l3304:
	movlw	(01Dh)&0ffh
	cpfslt	((c:i2changePinState@ui8Pin)),c
	goto	i2u135_41
	goto	i2u135_40
i2u135_41:
	goto	i2l3310
i2u135_40:
	line	251
	
i2l3306:
	movlw	(015h)&0ffh
	subwf	((c:i2changePinState@ui8Pin)),c
	line	252
	
i2l3308:
	movlw	high((c:3980))	;volatile
	movwf	((c:i2changePinState@pui8PortReg+1)),c
	movlw	low((c:3980))	;volatile
	movwf	((c:i2changePinState@pui8PortReg)),c
	line	256
	goto	i2l3310
	line	257
	
i2l1239:
	goto	i2l3310
	line	263
	
i2l1240:
	goto	i2l3310
	
i2l1238:
	goto	i2l3310
	
i2l1230:
	goto	i2l3310
	
i2l1228:
	line	266
	
i2l3310:
	movf	((c:i2changePinState@pui8PortReg+1)),c,w
	iorwf ((c:i2changePinState@pui8PortReg)),c,w

	btfsc	status,2
	goto	i2u136_41
	goto	i2u136_40
i2u136_41:
	goto	i2l1247
i2u136_40:
	line	268
	
i2l3312:
	tstfsz	((c:i2changePinState@eOperation)),c
	goto	i2u137_41
	goto	i2u137_40
i2u137_41:
	goto	i2l3316
i2u137_40:
	line	270
	
i2l3314:
	movff	(c:i2changePinState@ui8Pin),??i2_changePinState+0+0
	movlw	(01h)&0ffh
	movwf	(??i2_changePinState+1+0)&0ffh,c
	incf	(??i2_changePinState+0+0),c
	goto	i2u138_44
i2u138_45:
	bcf	status,0
	rlcf	((??i2_changePinState+1+0)),c
i2u138_44:
	decfsz	(??i2_changePinState+0+0),c
	goto	i2u138_45
	movff	(c:i2changePinState@pui8PortReg),fsr2l
	movff	(c:i2changePinState@pui8PortReg+1),fsr2h
	movf	((??i2_changePinState+1+0)),c,w
	iorwf	indf2
	line	274
	goto	i2l1247
	line	275
	
i2l1242:
	
i2l3316:
	decf	((c:i2changePinState@eOperation)),c,w

	btfss	status,2
	goto	i2u139_41
	goto	i2u139_40
i2u139_41:
	goto	i2l3320
i2u139_40:
	line	277
	
i2l3318:
	movff	(c:i2changePinState@ui8Pin),??i2_changePinState+0+0
	movlw	(01h)&0ffh
	movwf	(??i2_changePinState+1+0)&0ffh,c
	incf	(??i2_changePinState+0+0),c
	goto	i2u140_44
i2u140_45:
	bcf	status,0
	rlcf	((??i2_changePinState+1+0)),c
i2u140_44:
	decfsz	(??i2_changePinState+0+0),c
	goto	i2u140_45
	movf	((??i2_changePinState+1+0)),c,w
	xorlw	0ffh
	movwf	(??i2_changePinState+2+0)&0ffh,c
	movff	(c:i2changePinState@pui8PortReg),fsr2l
	movff	(c:i2changePinState@pui8PortReg+1),fsr2h
	movf	((??i2_changePinState+2+0)),c,w
	andwf	indf2
	line	281
	goto	i2l1247
	line	282
	
i2l1244:
	line	284
	
i2l3320:
	movff	(c:i2changePinState@ui8Pin),??i2_changePinState+0+0
	movlw	(01h)&0ffh
	movwf	(??i2_changePinState+1+0)&0ffh,c
	incf	(??i2_changePinState+0+0),c
	goto	i2u141_44
i2u141_45:
	bcf	status,0
	rlcf	((??i2_changePinState+1+0)),c
i2u141_44:
	decfsz	(??i2_changePinState+0+0),c
	goto	i2u141_45
	movff	(c:i2changePinState@pui8PortReg),fsr2l
	movff	(c:i2changePinState@pui8PortReg+1),fsr2h
	movf	((??i2_changePinState+1+0)),c,w
	xorwf	indf2
	goto	i2l1247
	line	288
	
i2l1245:
	goto	i2l1247
	
i2l1243:
	line	289
	goto	i2l1247
	line	290
	
i2l1241:
	goto	i2l1247
	line	296
	
i2l1246:
	line	297
	
i2l1247:
	return
	opt stack 0
GLOBAL	__end_ofi2_changePinState
	__end_ofi2_changePinState:
	signat	i2_changePinState,88
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1
	file ""
	line	0
psect	text43,class=CODE,space=0,reloc=2
global __ptext43
__ptext43:
fp__nullTMRFunction:
	file ""
	line	0
psect	text43
fp__softDACController:
	file ""
	line	0
psect	text43
fp__null16BitTMRFunction:
	file ""
	line	0
psect	text43
fp__criticalTaskISR:
	file ""
	line	0
psect	text43
fp__nullIntFunction:
	PSECT	rparam,class=COMRAM,space=1
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
