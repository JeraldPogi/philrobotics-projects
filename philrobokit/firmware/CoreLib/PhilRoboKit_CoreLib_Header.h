//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	PhilRoboKit_CoreLib_Header.h - PhilRobokit Header File
// Description:	
// Revision:    v00.01.00
// Author:      Giancarlo Acelajado
//             	
// Vendor:      Microchip Technology
// Family:      PIC16F8X7A
// Processor:   PIC16F877A
// Compiler:    Hitech C 9.82
//
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//***********************************************************************************
// FW Version      Date        Author         Description
// v00.00.01       201112xxx    Giancarlo A.   Library Initial Release
//***********************************************************************************

#ifndef __PHILROBOKIT_HEADER_H__
#define __PHILROBOKIT_HEADER_H__

// =====================================================================
// Compiler Specifics
// =====================================================================
//unsigned int uiFreqOSC;

#if defined(HI_TECH_C)	
	#include "lib\htc_common.h"
	
	#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  	
		#include "lib\htc_16f87xa.h"
	#endif

	#define _XTAL_FREQ 20000000	
	//uiFreqOSC = _XTAL_FREQ;

	//#define _LEGACY_HEADERS
	//__CONFIG(WDTDIS & HS & LVPDIS & PWRTEN);

	//__CONFIG(WDTE_OFF & FOSC_HS & LVP_OFF & PWRTE_ON & BOREN_OFF);
	
	#define delayUs(x)	__delay_us(x);
	#define delayMs(x)	__delay_ms(x);
#endif

/*
#ifdef SET_FOSC_FREQ
	#if defined(HI_TECH_C)
		#undef _XTAL_FREQ
		#define	_XTAL_FREQ	SET_FOSC_FREQ
		
		//uiFreqOSC = _XTAL_FREQ
	#endif
#endif
*/
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/* Pin Definitions */
enum PhilRobokitPins{
	D0=0,	D1,	D2,	D3,	D4,	D5,	D6,	D7,	D8,	D9,	D10, D11, D12, D13,
			D14, D15, D16, D17, D18, D19, D20,
			SRV, BUZZ, S2, S1, L4, L3, L2, L1,
	A0=0,	A1,	A2,	A3,	A4,	A5,	A6,	A7,
};	

#define PIN0	D0		//RC0	//(1<<0)
#define PIN1	D1		//RC1	//(1<<1)
#define PIN2	D2		//RC2	//(1<<2)
#define PIN3	D3		//RC3	//(1<<3)
#define PIN4	D4		//RC4	//(1<<4)
#define PIN5	D5		//RC5	//(1<<5)
#define PIN6	D6		//RC6	//(1<<6)	
#define PIN7	D7		//RC7	//(1<<7)

#define PIN8	D8		//RB0	//(1<<0)
#define PIN9	D9		//RB1	//(1<<1)
#define PIN10	D10		//RB2	//(1<<2)
#define PIN11	D11		//RB3	//(1<<3)
#define PIN12	D12		//RB4	//(1<<4)
#define PIN13	D13		//RB5	//(1<<5)

//if Analog Pins configured as Digital IO
#define	PIN14	D14		//RA0	//(1<<0)	
#define	PIN15	D15		//RA1	//(1<<1)
#define	PIN16	D16		//RA2	//(1<<2)
#define	PIN17	D17		//RA5	//(1<<5)
#define	PIN18	D18		//RE0	//(1<<0)
#define	PIN19	D19		//RE1	//(1<<1)	
#define	PIN20	D20		//RE2	//(1<<2)

#define	AN0		A0		//RA0	//(1<<0)	
#define	AN1		A1		//RA1	//(1<<1)
#define	AN2		A2		//RA2	//(1<<2)
#define	AN3		A3		//RA5	//(1<<5)
#define	AN4		A4		//RE0	//(1<<0)
#define	AN5		A5		//RE1	//(1<<1)	
#define	AN6		A6		//RE2	//(1<<2)
//#define	AN7		A7	  //7	//(1<<x)

#define	LED1	L1
#define	LED2	L2
#define	LED3	L3
#define	LED4	L4

#define	SW1		S1
#define	SW2		S2

#define	SERVO	SRV
#define	BUZZER	BUZZ

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
//All Unused Digital Pins are Output
//All Unused Analog Pins are Input
#define	CONST_DEFAULT_CONFIG_PORTA	0b11111
#define	CONST_DEFAULT_CONFIG_PORTB	0b00000000
#define	CONST_DEFAULT_CONFIG_PORTC	0b10000000
#define	CONST_DEFAULT_CONFIG_PORTD	0b00001100
#define	CONST_DEFAULT_CONFIG_PORTE	0b111
/*
#define	LED_REGISTER	REGISTER_TRISD
#define LED_MASK	(0x0F<<4)

	#define LED1	REGISTER_PORTD_7	//(1<<7)
	#define LED2	REGISTER_PORTD_6	//(1<<6)
	#define LED3	REGISTER_PORTD_5	//(1<<5)
	#define LED4	REGISTER_PORTD_4	//(1<<4)

#define	SWITCH_REGISTER	REGISTER_TRISD
#define	SWITCH_MASK	(0x03<<2)

	#define SW1	REGISTER_PORTD_3		//(1<<3)
	#define SW2	REGISTER_PORTD_2		//(1<<2)

#define	BUZZER_REGISTER	REGISTER_TRISD
#define BUZZER_MASK		(1<<1)

	#define	BUZZER	REGISTER_PORTD_1	//(1<<1)

#define	SERVO_REGISTER	REGISTER_TRISD
#define	SERVO_MASK	(1<<0)

	#define	SERVO	REGISTER_PORTD_0	//(1<<0)

#define UART_REGISTER	REGISTER_TRISC
#define UART_RX_MASK	0x80
#define UART_TX_MASK	0x40
	#define RXPIN	D7	//(1<<7)
	#define TXPIN	D6	//(1<<6)
*/	
/* End of PhilRoboKit_CoreLib_Header.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
#endif
