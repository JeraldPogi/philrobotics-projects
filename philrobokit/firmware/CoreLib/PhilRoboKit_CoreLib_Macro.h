//***********************************************************************************
// PhilRobotics | Amateur Robotics Club of the Philippines
// http://philrobotics.com | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	PhilRoboKit_CoreLib_Macro.h - PhilRobokit Macro File
// Description:	
// Revision:    v00.01.02
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
// v00.01.01       201112xx    Giancarlo A.   Library Initial Release
// v00.01.02       201202xx    Giancarlo A.   Modify LowLevel Configuration of Pins		
//***********************************************************************************

#ifndef __PHILROBOKIT_MACRO_H__
#define __PHILROBOKIT_MACRO_H__

#include "PhilRoboKit_CoreLib_Header.h"

/* PhilRobokit Library */
#include "lib\PhilRoboKit_CoreLib_uart.h"
#include "lib\PhilRoboKit_CoreLib_adc.h"
#include "lib\PhilRoboKit_CoreLib_timer.h"

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/* PhilRobokit Specific Prototypes */

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/* Global PhilRobokit Definitions */

#define	IN						1
#define	OUT						0

#define	INPUT					IN
#define	OUTPUT					OUT
#define	ANALOG					1

#define	HIGH					1
#define	LOW						0

#define	TRUE					1
#define	FALSE					0

#define	setPin(x,y)				configPin(x,y)
#define	setPinInput(x)			configPin(x, IN)
#define	setPinOutput(x)			configPin(x, OUT)

#define	setPinHigh(x) 			{if(x<=7){REGISTER_PORTC |= (1<<x);}else if(x>=8 && x<=13){REGISTER_PORTB |= (1<<(x-8));}else if(x>=21 && x<=28){REGISTER_PORTD |= (1<<(x-21));}}
#define	setPinLow(x)			{if(x<=7){REGISTER_PORTC &= ~(1<<x);}else if(x>=8 && x<=13){REGISTER_PORTB &= ~(1<<(x-8));}else if(x>=21 && x<=28){REGISTER_PORTD &= ~(1<<(x-21));}}
#define	togglePin(x)			{if(x<=7){REGISTER_PORTC ^= (1<<x);}else if (x>=8 && x<=13){REGISTER_PORTB ^= (1<<(x-8));}else if(x>=21 && x<=28){REGISTER_PORTD ^= (1<<(x-21));}}

#define	isPinHigh(x)			checkPinState(x,HIGH)
#define	isPinLow(x)				checkPinState(x,LOW)

/* End of Global PhilRobokit Definitions */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------		

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
/* Global PhilRobokit Functions */
void configPin(unsigned char ucPinName, char bDirection);
unsigned char checkPinState(unsigned char ucPinName, char bCheckState);
/* End of Global PhilRobokit Functionss */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------		

// ==========================================================================================================================================
// Function Prototypes
// ==========================================================================================================================================

void timerInterruptHandler(void);

//void userInterruptHandler(void);
void init(void);
void program(void);

void philrobokit_init(void);

/* End of PhilRoboKit_CoreLib_Macro.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	

#endif
