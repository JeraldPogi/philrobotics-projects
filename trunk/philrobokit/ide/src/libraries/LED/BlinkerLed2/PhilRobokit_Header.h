//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
// PhilRobokit Header File
// Copyright ©2011
//***********************************************************************************

#define	CONST_DEFAULT_CONFIG_PORTA	0b11111
#define	CONST_DEFAULT_CONFIG_PORTB	0b11111111
#define	CONST_DEFAULT_CONFIG_PORTC	0b10110000
#define	CONST_DEFAULT_CONFIG_PORTD	0b11111100
#define	CONST_DEFAULT_CONFIG_PORTE	0b111

#define	LED_MASK_PORTC	0xF3
#define LED_MASK_PORTD	0xFC
	#define LED1	RC2
	#define LED2	RC3
	#define LED3	RD0
	#define LED4	RD1


#define	SWITCH_MASK_PORTC	0x30
#define	SWITCH_MASK_PORTD	0xC0
	#define SWITCH1	RC5
	#define SWITCH2	RC4
	#define SWITCH3	RD3
	#define SWITCH4	RD2
	
#define	SERVO	RC1
#define	BUZZER	RC0

#define RXPIN	RC7
#define TXPIN	RC6

#define PIN0	RXPIN
#define PIN1	TXPIN
#define PIN2	RD4
#define PIN3	RD5
#define PIN4	RD6
#define PIN5	RD7
#define PIN6	RB0	
#define PIN7	RB1

#define PIN8	RB2
#define PIN9	RB3
#define PIN10	RB4
#define PIN11	RB5
#define PIN12	RB6
#define PIN13	RB7

#define	AN0		RA0	
#define	AN1		RA1
#define	AN2		RA2
#define	AN3		RA5
#define	AN4		RE0
#define	AN5		RE1	