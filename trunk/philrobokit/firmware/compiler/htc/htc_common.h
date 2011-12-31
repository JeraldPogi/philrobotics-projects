//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	htc_common.h - Hitech C Common Header File
// Description:	
// Revision:    v00.01.00
// Author:      Giancarlo Acelajado
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
// v00.00.01       201112xx    Giancarlo A.   Library Initial Release
// 
//***********************************************************************************

#ifndef __HTC_COMMON_H
#define __HTC_COMMON_H

	#include <htc.h>

	#define	REGISTER_TRISA		TRISA		
	#define	REGISTER_TRISB		TRISB
	#define	REGISTER_TRISC		TRISC
	#define	REGISTER_TRISD		TRISD
	#define	REGISTER_TRISE		TRISE
	
	#define	REGISTER_PORTA		PORTA
		#define REGISTER_PORTA_0	RA0
		#define REGISTER_PORTA_1	RA1
		#define REGISTER_PORTA_2	RA2
		#define REGISTER_PORTA_3	RA3
		#define REGISTER_PORTA_4	RA4
		#define REGISTER_PORTA_5	RA5
		#define REGISTER_PORTA_6	RA6
		#define REGISTER_PORTA_7	RA7		
				
	#define	REGISTER_PORTB		PORTB
		#define REGISTER_PORTB_0	RB0
		#define REGISTER_PORTB_1	RB1
		#define REGISTER_PORTB_2	RB2
		#define REGISTER_PORTB_3	RB3
		#define REGISTER_PORTB_4	RB4
		#define REGISTER_PORTB_5	RB5
		#define REGISTER_PORTB_6	RB6
		#define REGISTER_PORTB_7	RB7
	
	#define	REGISTER_PORTC		PORTC
		#define REGISTER_PORTC_0	RC0
		#define REGISTER_PORTC_1	RC1
		#define REGISTER_PORTC_2	RC2
		#define REGISTER_PORTC_3	RC3
		#define REGISTER_PORTC_4	RC4
		#define REGISTER_PORTC_5	RC5
		#define REGISTER_PORTC_6	RC6
		#define REGISTER_PORTC_7	RC7

	#define	REGISTER_PORTD		PORTD
		#define REGISTER_PORTD_0	RD0
		#define REGISTER_PORTD_1	RD1
		#define REGISTER_PORTD_2	RD2
		#define REGISTER_PORTD_3	RD3
		#define REGISTER_PORTD_4	RD4
		#define REGISTER_PORTD_5	RD5
		#define REGISTER_PORTD_6	RD6
		#define REGISTER_PORTD_7	RD7
	
	#define	REGISTER_PORTE		PORTE
		#define REGISTER_PORTE_0	RE0
		#define REGISTER_PORTE_1	RE1
		#define REGISTER_PORTE_2	RE2
		#define REGISTER_PORTE_3	RE3
		#define REGISTER_PORTE_4	RE4
		#define REGISTER_PORTE_5	RE5
		#define REGISTER_PORTE_6	RE6
		#define REGISTER_PORTE_7	RE7
	
	#define	REGISTER_TXREG		TXREG
	#define	REGISTER_RCREG		RCREG
	#define	REGISTER_SPBRG		SPBRG
	
	#define	REGISTER_TMR0H		TMR0H	
	#define	REGISTER_TMR0L		TMR0L
	
	#define	REGISTER_TMR1H		TMR1H	
	#define	REGISTER_TMR1L		TMR1L
	
	#define	REGISTER_TMR2H		TMR2H	
	#define	REGISTER_TMR2L		TMR2L
	
	#define	REGISTER_ADRESH		ADRESH
	#define	REGISTER_ADRESL		ADRESL
	
#endif