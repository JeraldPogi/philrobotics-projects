//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum 
// http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	setupAnito.h - Anito setup File
// Description:	
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
// v01.00.0       201209xx    Giancarlo A.   Library Initial Release
//***********************************************************************************

#ifndef __SETUP_ANITO__
#define __SETUP_ANITO__

    #include "hal_Anito_gpio.h"
    #include "drv_Anito_timer.h"
    #include "drv_Anito_uart.h"
    #include "drv_Anito_adc.h"
    //include "hal_Anito_interrupts.h"

    /* Pin Default Initialization */
    #define	K8_DEFAULT_CONFIG_PORTA	(0b11111)
    #define	K8_DEFAULT_CONFIG_PORTB	(0b00000000)
    #define	K8_DEFAULT_CONFIG_PORTC	(0b10000000)
    #define	K8_DEFAULT_CONFIG_PORTE	(0b111)
    #define	K8_DEFAULT_CONFIG_PORTD	(0b00001100)
            
    /* Pin Definitions */
    extern enum etDigitalPins{
        D0,	D1,	D2,	D3,	D4,	D5,	D6,	                        /* PORTC */
        D7,	D8,	D9,	D10, D11, D12, D13,                     /* PORTB */
        D14, D15, D16, D17, D18, D19, D20,                  /* PORTA and PORTE (Analog Pins Configured as Digital Pins */
        SERVO, BUZZER, SW2, SW1, LED4, LED3, LED2, LED1	    /* PORTD, Builtin Components */
    };	

    extern enum etAnalogPins{
        AN0, AN1, AN2, AN3,	AN4, AN5, AN6
    };

    void setupAnito(void);
/* End of setupAnito.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
#endif
