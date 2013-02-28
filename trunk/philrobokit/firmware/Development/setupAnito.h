/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "setupAnito.h"                              |
* |:----          |:----                                        |
* |Description:   | Header for Anito setup routines             |
* |Revision:      | v00.00.01                                   |
* |Author:        | Giancarlo Acelajado                         |
* |               |                                             |
* |Dependencies:  |                                             |
*
* > This program is free software: you can redistribute it and/or modify
* > it under the terms of the GNU General Public License as published by
* > the Free Software Foundation, either version 3 of the License, or
* > (at your option) any later version.
* > This program is distributed in the hope that it will be useful,
* > but WITHOUT ANY WARRANTY; without even the implied warranty of
* > MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* > GNU General Public License for more details.
* > <BR><BR>
* > You should have received a copy of the GNU General Public License
* > along with this program. If not, see http://www.gnu.org/licenses/
* <BR>
*---------------------------------------------------------------------------------------------
* |FW Version   |Date       |Author             |Description                        |
* |:----        |:----      |:----              |:----                              |
* |v00.00.01    |201209xx   |Giancarlo A.       |Library Initial Release            |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __SETUP_ANITO__
#define __SETUP_ANITO__

/* Include .h Library Files */
/*
    #include <../../cores/lib/hal_timer.h>
    #include <../../cores/lib/corelib_basetimer.h>
    
    #include <../../cores/lib/hal_gpio.h>
    #include <../../cores/lib/hal_adc.h>   
    #include <../../cores/lib/hal_uart.h>
 
    #include <../../cores/lib/hal_user_interrupt.h>
    #include <../../cores/lib/corelib_user_interrupt.h>

    #include <../../cores/lib/hal_8bit_timer.h> 
    #include <../../cores/lib/corelib_8bit_timer.h>

    #include <../../cores/lib/hal_pwm.h>
    #include <../../cores/lib/corelib_pwm.h>
    #include <../../cores/lib/corelib_dac.h>
 */   

    #include "hal_timer.h"
    #include "corelib_basetimer.h"
    
    #include "hal_gpio.h"
    #include "hal_adc.h"
    
    #include "hal_uart.h"
    #include "corelib_uart.h"
 
    #include "hal_user_interrupt.h"
    #include "corelib_user_interrupt.h"

    #include "hal_8bit_timer.h"
    #include "corelib_8bit_timer.h"

    #include "hal_pwm.h"
    #include "corelib_pwm.h"
    #include "corelib_dac.h"
    
/* User Configuration Definitions */
    /* Pin Default Initialization */
    #define	K8_DEFAULT_CONFIG_PORTA	(0b00011111)
    #define	K8_DEFAULT_CONFIG_PORTB	(0b00000000)
    #define	K8_DEFAULT_CONFIG_PORTC	(0b10000000)
    #define	K8_DEFAULT_CONFIG_PORTE	(0b00000111)
    #define	K8_DEFAULT_CONFIG_PORTD	(0b00001100)

/* Global Constants */    
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

/* Macro and Configuration Definitions */
    /* none */

/* Public Function Prototypes */    
    void setupAnito(void);

#endif/* end of setupAnito.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
