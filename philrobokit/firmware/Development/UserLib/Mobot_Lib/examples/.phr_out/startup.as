
	; Microchip MPLAB XC8 C Compiler V1.32
	; Copyright (C) 1984-2014 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --CHIP=16F877A \
	; --OUTDIR=C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out \
	; --SUMMARY=mem -Q \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/CrazyMobot.phr.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/Config_Pinguino.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/DProtocol.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/LowLevelMobot.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/Mobot_Lib.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/PBotGlobals.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/Telemetry.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/soft_dac.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/servo.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/PhilRobokit_CoreLib_GlobalDefs.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/PhilRoboKit_CoreLib_Macro.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/corelib_16bit_timer.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/corelib_8bit_timer.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/corelib_adc.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/corelib_basetimer.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/corelib_dac.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/corelib_gpio.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/corelib_masterlib.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/corelib_pwm.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/corelib_uart.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/corelib_user_interrupt.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/hal_16bit_timer.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/hal_8bit_timer.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/hal_adc.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/hal_gpio.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/hal_pwm.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/hal_timer.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/hal_uart.p1 \
	; C:/Users/glutnix/Desktop/philrobokit_xc8/libraries/Mobot_Lib/examples/.phr_out/lib/hal_user_interrupt.p1
	;


	processor	16F877A

	global	_main,start,reset_vec
	fnroot	_main
	psect	config,class=CONFIG,delta=2,noexec
	psect	idloc,class=IDLOC,delta=2,noexec
	psect	code,class=CODE,delta=2
	psect	powerup,class=CODE,delta=2
	psect	reset_vec,class=CODE,delta=2
	psect	maintext,class=CODE,delta=2
	C	set	0
	Z	set	2
	PCL	set	2
	INDF	set	0

	STATUS	equ	3
	PCLATH	equ	0Ah

	psect	eeprom_data,class=EEDATA,delta=2,space=3,noexec
	psect	intentry,class=CODE,delta=2
	psect	functab,class=CODE,delta=2
	global	intlevel0,intlevel1,intlevel2, intlevel3, intlevel4, intlevel5
intlevel0:
intlevel1:
intlevel2:
intlevel3:
intlevel4:
intlevel5:
	psect	init,class=CODE,delta=2
	psect	cinit,class=CODE,delta=2
	psect	text,class=CODE,delta=2
	psect	end_init,class=CODE,delta=2
	psect	clrtext,class=CODE,delta=2
	FSR	set	4
	psect	strings,class=CODE,delta=2,reloc=256

	global stacklo, stackhi
	stacklo	equ	0
	stackhi	equ	0


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___int_sp
	___sp:
	___int_sp:
	psect	reset_vec
reset_vec:
	; No powerup routine
	global start

; jump to start
	goto	start & 0x7FF | (reset_vec & not 0x7FF)



	psect	init
start
	psect	end_init
	global start_initialization
	ljmp start_initialization	;jump to C runtime clear & initialization

; Config register CONFIG @ 0x2007
;	Watchdog Timer Enable bit
;	WDTE = OFF, WDT disabled
;	Power-up Timer Enable bit
;	PWRTE = ON, PWRT enabled
;	Flash Program Memory Code Protection bit
;	CP = 0x1, unprogrammed default
;	Brown-out Reset Enable bit
;	BOREN = OFF, BOR disabled
;	In-Circuit Debugger Mode bit
;	DEBUG = 0x1, unprogrammed default
;	Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit
;	LVP = OFF, RB3 is digital I/O, HV on MCLR must be used for programming
;	Data EEPROM Memory Code Protection bit
;	CPD = 0x1, unprogrammed default
;	Flash Program Memory Write Enable bits
;	WRT = 0x3, unprogrammed default
;	Oscillator Selection bits
;	FOSC = HS, HS oscillator

	psect	config
		org 0x0
		dw 0xFF32


psect common,class=COMMON,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect ram,class=RAM,space=1
psect abs1,class=ABS1,space=1
psect sfr0,class=SFR0,space=1
psect sfr1,class=SFR1,space=1
psect sfr2,class=SFR2,space=1
psect sfr3,class=SFR3,space=1


	end	start
