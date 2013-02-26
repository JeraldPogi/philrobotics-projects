//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	hal_Anito_gpio
// Description:	General Purpose Input/Output Hardware Abstraction Layer Header File for PIC
// Revision:    v01.00.00
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
// v01.00.00       201209xx    Giancarlo A.   Leverage Library for PhilRotics Standard 
//                                            FW Guidelines; 
//***********************************************************************************

#ifndef __PHILROBOKIT_HAL_PIC_GPIO_H__
#define __PHILROBOKIT_HAL_PIC_GPIO_H__

#include "PhilRoboKit_CoreLib_Header.h"
#include "PhilRoboKit_CoreLib_DataTypes.h"

#define __MACRO__   (1)
#define __FUNC__    (2)
#define __DEBUG__   __FUNC__    

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
#define	makeInput(x)			configPin(x, INPUT)
#define	makeOutput(x)			configPin(x, OUTPUT)
#define getPinState(x)			checkPinState(x)

#if (__DEBUG__==__FUNC__)
    #define setPin(x)           setPinState(x,HIGH)
    #define clrPin(x)           setPinState(x,LOW)
    
    #ifdef S_SPLINT_S                               // Suppress SPLint Parse Errors 
        #define bool_t  bool
    #endif    
    
    void togglePin(uint8_t ui8PinName);
    void setPinState(uint8_t ui8PinName, bool_t blPinState);
#endif

#if (__DEBUG__==__MACRO__)
#define	setPin(pinName) { \
	if(pinName<=D7) { \
		REGISTER_PORTC |= (1UL<<pinName); \
	}else if(pinName>=D8 && pinName<=D13) { \
		REGISTER_PORTB |= (1UL<<(pinName-D8)); \
	}else if(pinName>=SERVO && pinName<=LED1) { \
		REGISTER_PORTD |= (1UL<<(pinName-SERVO)); \
	} \
}

#define	clrPin(pinName) { \
	if(pinName<=D7) { \
		REGISTER_PORTC &= ~(1UL<<pinName); \
	}else if(pinName>=D8 && pinName<=D13) { \
		REGISTER_PORTB &= ~(1UL<<(pinName-D8)); \
	}else if(pinName>=SERVO && pinName<=LED1) { \
		REGISTER_PORTD &= ~(1UL<<(pinName-SERVO)); \
	} \
}
#define	togglePin(pinName) { \
	if(pinName<=D7) { \
		REGISTER_PORTC ^= (1UL<<pinName); \
	}else if(pinName>=D8 && pinName<=D13) { \
		REGISTER_PORTB ^= (1UL<<(pinName-D8)); \
	}else if(pinName>=SERVO && pinName<=LED1) { \
		REGISTER_PORTD ^= (1UL<<(pinName-SERVO)); \
	} \
}   
#endif

void setupGpio(void);
void configPin(uint8_t ui8PinName, bool_t blDirection);
bool_t checkPinState(uint8_t ui8PinName);

/* End of PhilRoboKit_HAL_PIC_GPIO.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
#endif