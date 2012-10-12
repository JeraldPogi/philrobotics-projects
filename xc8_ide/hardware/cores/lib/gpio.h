
#ifndef __GPIO_H__
#define __GPIO_H__

// push-buttons (RD3 and RD2)
#define pbs_init()		TRISD3 = TRISD2 = INPUT
#define pb1_read()		RD3
#define pb2_read()		RD2

// LEDs (RD7, RD6, RD5 and RD4)
#define leds_init()		PORTD &= 0x0F; TRISD &= 0x0F
#define LED1			RD7
#define LED2			RD6
#define LED3			RD5
#define LED4			RD4
#define led1_toggle()	LED1 ^= 1
#define led2_toggle()	LED2 ^= 1
#define led3_toggle()	LED3 ^= 1
#define led4_toggle()	LED4 ^= 1

// buzzer (RD1)
#define buzzer_init()	RD1 = LOW; TRISD1 = OUTPUT
#define buzzer_on()		RD1 = HIGH
#define buzzer_off()	RD1 = LOW

// digital I/O's
#define D0		RC0
#define D1		RC1
#define D2		RC2
#define D3		RC3
#define D4		RC4
#define D5		RC5
#define D6		RC6
#define D7		RC7
#define D8		RB0 // INT
#define D9		RB1
#define D10		RB2
#define D11		RB3
#define D12		RB4
#define D13		RB5

// read/write functions
#define digitalRead(pin)		pin
#define digitalWrite(pin, val)	pin = val
#define setPinHigh(pin)			pin = HIGH
#define setPinLow(pin)			pin = LOW

/* configure pin */
#define pinModeD0(mode)			TRISC0 = mode
#define pinModeD1(mode)			TRISC1 = mode
#define pinModeD2(mode)			TRISC2 = mode
#define pinModeD3(mode)			TRISC3 = mode
#define pinModeD4(mode)			TRISC4 = mode
#define pinModeD5(mode)			TRISC5 = mode
#define pinModeD6(mode)			TRISC6 = mode
#define pinModeD7(mode)			TRISC7 = mode
#define pinModeD8(mode)			TRISB0 = mode
#define pinModeD9(mode)			TRISB1 = mode
#define pinModeD10(mode)		TRISB2 = mode
#define pinModeD11(mode)		TRISB3 = mode
#define pinModeD12(mode)		TRISB4 = mode
#define pinModeD13(mode)		TRISB5 = mode

/* internal pull-up on port B*/
#define setD8D13PullUp(onoff)	NOT_RBPU = !onoff

#endif	// __GPIO_H__

