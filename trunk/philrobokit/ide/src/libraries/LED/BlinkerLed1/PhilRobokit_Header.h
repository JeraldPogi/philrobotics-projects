//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	PhilRobokit_Header.h - PhilRobokit Header File
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
// v00.00.01       20110xxx    Giancarlo A.   Library Initial Release
//***********************************************************************************

#include <htc.h>

#define _XTAL_FREQ 20000000

#ifdef SET_FOSC_FREQ
	#undef _XTAL_FREQ
	#define	_XTAL_FREQ	SET_FOSC_FREQ
#endif

//#define _LEGACY_HEADERS
//__CONFIG(WDTDIS & HS & LVPDIS & PWRTEN);

__CONFIG(WDTE_OFF & FOSC_HS & LVP_OFF & PWRTE_ON);

#define	CONST_DEFAULT_CONFIG_PORTA	0b11111
#define	CONST_DEFAULT_CONFIG_PORTB	0b11111111
#define	CONST_DEFAULT_CONFIG_PORTC	0b10110000
#define	CONST_DEFAULT_CONFIG_PORTD	0b11111100
#define	CONST_DEFAULT_CONFIG_PORTE	0b111

#define	LED_REGISTER_A	TRISC
#define	LED_REGISTER_B	TRISD
#define	LED_MASK_PORTC	0x0C
#define LED_MASK_PORTD	0x0F
	#define LED1	RD1
	#define LED2	RD0
	#define LED3	RC3
	#define LED4	RC2

#define	SWITCH_REGISTER_A	TRISC
#define	SWITCH_REGISTER_B	TRISD	
#define	SWITCH_MASK_PORTC	0x30
#define	SWITCH_MASK_PORTD	0xC0
	#define SW1	RD2
	#define SW2	RD3
	#define SW3	RC4
	#define SW4	RC5

#define	SERVO_REGISTER	TRISC
#define	SERVO_MASK	0xFD
	#define	SERVO	RC1

#define	BUZZER_REGISTER	TRISC
#define BUZZER_MASK		0x01
#define	BUZZER	RC0

#define UART_REGISTER	TRISC
#define UART_RX_MASK	0x80
#define UART_TX_MASK	0x40
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

// =====================================================================
// Processor Specifics
// =====================================================================
#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  
	//Make this an include header file in the future
	// #include "htc/PhilRobokit_pic16f87xa"
	#define	REGISTER_TXSTA		TXSTA
		#define	BIT_TXSTA_CSRC		CSRC
		#define	BIT_TXSTA_TX9		TX9
		#define	BIT_TXSTA_TXEN		TXEN
		#define	BIT_TXSTA_SYNC		SYNC
		//#define	BIT_TXSTA_RESERVED		TXSTA.3
		#define	BIT_TXSTA_BRGH		BRGH
		#define	BIT_TXSTA_TRMT		TRMT
		#define	BIT_TXSTA_TX9D		TX9D
		
	#define REGISTER_RCSTA		RCSTA
		#define	BIT_RCSTA_SPEN		SPEN
		#define	BIT_RCSTA_RX9		RX9
		#define	BIT_RCSTA_SREN		SREN
		#define	BIT_RCSTA_CREN		CREN
		#define	BIT_RCSTA_ADDEN		ADDEN
		#define	BIT_RCSTA_FERR		FERR
		#define	BIT_RCSTA_OERR		OERR
		#define	BIT_RCSTA_RX9D		RX9D
		
	#define	REGISTER_TXREG		TXREG
	#define	REGISTER_RCREG		RCREG
	#define	REGISTER_SPBRG		SPBRG
	
	#define	REGISTER_INTCON		INTCON
		#define BIT_INTCON_GIE		GIE
		#define BIT_INTCON_PEIE		PEIE
		#define BIT_INTCON_TMR0IE	TMR0IE
		#define BIT_INTCON_INTE		INTE
		#define BIT_INTCON_RBIE		RBIE
		#define BIT_INTCON_TMR0IF	TMR0IF	
		#define BIT_INTCON_INTF		INTF
		#define BIT_INTCON_RBIF		RBIF
				
	#define	REGISTER_PIR1		PIR1
		#define BIT_PIR1_PSPIF		PSPIF
		#define BIT_PIR1_ADIF		ADIF
		#define BIT_PIR1_RCIF		RCIF
		#define BIT_PIR1_TXIF		TXIF
		#define BIT_PIR1_SSPIF		SPIF
		#define BIT_PIR1_CCP1IF		CCP1IF
		#define BIT_PIR1_TMR2IF		TMR2IF
		#define BIT_PIR1_TMR1IF		TMR1IF
		
	#define	REGISTER_PIE1		PIE1
		#define BIT_PIE1_PSPIE		PSPIE
		#define BIT_PIE1_ADIE		ADIE
		#define BIT_PIE1_RCIE		RCIE
		#define BIT_PIE1_TXIE		TXIE
		#define BIT_PIE1_SSPIE		SSPIE
		#define BIT_PIE1_CCP1IE		CCP1IE	
		#define BIT_PIE1_TMR2IE		MR2IE
		#define BIT_PIE1_TMR1IE		TMR1IE
	
#endif