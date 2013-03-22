/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_timer.h"                               |
* |:----          |:----                                        |
* |Description:   | Anito Base Timer Low Level                  |
* |Revision:      | v01.00.01                                   |
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
* |FW Version   |Date       |Author             |Description                                |
* |:----        |:----      |:----              |:----                                      |
* |v00.00.01    |201202xx   |Giancarlo A.       |Library Initial Release                    |
* |v00.00.02    |201203xx   |Giancarlo A.       |Fix CONST8_TIMER values(for 20MHz)         |
* |v00.00.03    |20130707   |ESCII              |Fixed Interrupt Handler                    |
* |             |           |                   |Set to Overflow every 100uS                |
* |v01.00.00    |201211xx   |Giancarlo A.       |Leverage Library to Standard Architecture  |
* |v01.00.01    |20130320   |ESCII              |Moved Timebase to TMR0 freerunning timer   |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __ANITO_TIMER_H__
#define __ANITO_TIMER_H__

/* Include .h Library Files */
#include <PhilRoboKit_CoreLib_Macro.h>

/* Global Constants */	
enum baseTmrPreScale_e
{
    TMR0_PRE_DIV2
    ,TMR0_PRE_DIV4
    ,TMR0_PRE_DIV8
    ,TMR0_PRE_DIV16
    ,TMR0_PRE_DIV32
    ,TMR0_PRE_DIV64
    ,TMR0_PRE_DIV128
    ,TMR0_PRE_DIV256
};

/* User Configuration Definitions */
#if (_XTAL_FREQ == 20000000)
    #define TMR0_PRESCALE                           (TMR0_PRE_DIV4)
    #define TMR0_US_INCREMENT                       (205)               // 0.8uS per increment * 256 increments = 204.8uS
#elif (_XTAL_FREQ == 8000000)
    #define TMR0_PRESCALE                           (TMR0_PRE_DIV2)
    #define TMR0_US_INCREMENT                       (256)               // 1uS per increment
#else
    #warning Clock Frequency Not Defined
#endif

/* Macro and Configuration Definitions */
	/*@notfunction@*/
	#define hal_enableBaseTimerInt()           		(BIT_INTCON_TMR0IE = 1)
	/*@notfunction@*/
	#define hal_disableBaseTimerInt()          	    (BIT_INTCON_TMR0IE = 0)
    /*@notfunction@*/
    #define hal_getBaseTimerIntEnableStatus()       ((BIT_INTCON_TMR0IE) ? true : false)
    
	/*@notfunction@*/
	#define hal_clrBaseTimerIntFlag()         		(BIT_INTCON_TMR0IF = 0)
    /*@notfunction@*/
    #define hal_getBaseTimerIntFlag()               ((BIT_INTCON_TMR0IF) ? true : false)

#if defined( _18F2420 ) || defined( _18F2520 ) || defined( _18F4420 ) || defined( _18F4520 ) || defined( _18F4620 )
	/*@notfunction@*/
	#define hal_enableBaseTimer()                 	(BIT_T0CON_TMR0ON = 1)
	/*@notfunction@*/
	#define hal_disableBaseTimer()                	(BIT_T0CON_TMR0ON = 0)
    /*@notfunction@*/
    #define hal_use8BitTMR0()                       (BIT_T0CON_T08BIT = 1)
    /*@notfunction@*/
    #define hal_use16BitTMR0()                      (BIT_T0CON_T08BIT = 0)
#endif
    
    /* Timer0 Peripheral Init */
    /*@notfunction@*/
    #define hal_TMR0_Init()                         \
    BIT_T0CON_T0CS 	= 0; 					        \
    BIT_T0CON_PSA	= 0;				            \
    REGISTER_TMR0L  = 0                             // semi-collon intentionally omitted

    /* TMR0 Prescaler Value */
    /*@notfunction@*/
    #define hal_setTMR0Prescaler(a)                 \
    REGISTER_T0CON &=~TMR0_PRESCALE_MASK;           \
    REGISTER_T0CON |= (a&TMR0_PRESCALE_MASK)        // semi-collon intentionally omitted 

    #define hal_getBaseTimerValue()                 (((uint16_t)ui8TimerUsMSB<<8) + REGISTER_TMR0L)

/* Public Function Prototypes */
void setupTimer(void);
void timerISR(void);
    
#endif/* end of hal_timer.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	