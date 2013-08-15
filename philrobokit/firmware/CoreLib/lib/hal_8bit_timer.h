/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_8bit_timer.h"                          |
* |:----          |:----                                        |
* |Description:   | This is a header file of the driver for micrcochip 8bit timer (TMR2, TMR4, TMR6) |
* |Revision:      | v00.02.00                                   |
* |Author:        | Efren S. Cruzat II                          |
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
* |v00.00.01    |20120620   |ESCII              |Library Initial Release            |
* |v00.01.00    |20130205   |ESCII              |Modified For Layered Architecture  |
* |v00.02.00    |20130514   |ESCII              |Code Formatted, included unit test stub|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __HAL_8BIT_TIMER_H__
#define __HAL_8BIT_TIMER_H__

/* Include .h Library Files */
#ifdef UNIT_TEST                                    // autodefined at unit testing script
#include "hal_8bit_timer_test_stub.h"
#else
#include <PhilRoboKit_CoreLib_Macro.h>
#endif

/* User Configuration Definitions */
#define TIMER_8BIT_ENABLED  TRUE
#define TIMER2_ENABLED  TRUE
//#define TIMER4_ENABLED    TRUE
//#define TIMER6_ENABLED    TRUE

/* Global Constants */
//***********************************************************************************
// TMR Prescaler Value
//      0  - 1
//      1  - 4
//      2  - 16
//***********************************************************************************
//***********************************************************************************
// TMR Postcaler Value
//      0  - 1
//      1  - 2
//      2  - 3
//      3  - 4
//      4  - 5
//      x  - x+1
//          *
//      15 - 16
#if (__PHR_CONTROLLER__==__MCU_PIC18__)
//***********************************************************************************
//  @ 32Mhz Xtal, XTalT = 31.25nS
//  prescaler = 16, postscaler = 5
//  K is the timer resolution and the offset when PR2 is 0
//  K = 4 x XtalT x pre-scaler x post-scaler
//  K ~10uS resolution
//***********************************************************************************
#define K_10US_PRESCALE             2
#define K_10US_POSTSCALE            4

#elif  (__PHR_CONTROLLER__==__MCU_PIC16__)
//  @ 20Mhz Xtal, XTalT = 50nS
//  prescaler = 16, postscaler = 3
//  K is the timer resolution and the offset when PR2 is 0
//  K = 4 x XtalT x pre-scaler x post-scaler
//  K ~10uS resolution
//***********************************************************************************
#define K_10US_PRESCALE             2
#define K_10US_POSTSCALE            2

#else
#endif

/* Macro and Configuration Definitions */
#if(TIMER_8BIT_ENABLED == TRUE)
/* TMR2 */
#define hal_enableTMR2Int()                     (BIT_PIE1_TMR2IE = 1)
#define hal_disableTMR2Int()                    (BIT_PIE1_TMR2IE = 0)
#define hal_getTMR2IntEnableStatus()            ((BIT_PIE1_TMR2IE) ? true : false)

#define hal_clrTMR2IntFlag()                    (BIT_PIR1_TMR2IF = 0)
#define hal_getTMR2IntFlag()                    ((BIT_PIR1_TMR2IF) ? true : false)

#define hal_enableTMR2()                        (BIT_T2CON_TMR2ON = 1)
#define hal_disableTMR2()                       (BIT_T2CON_TMR2ON = 0)

#define hal_setTMR2Prescaler(a)                 \
    REGISTER_T2CON &=~TMR_PRESCALE_MASK;        \
    REGISTER_T2CON |= a&TMR_PRESCALE_MASK       // semi-collon intentionally omitted

#define hal_setTMR2Postscaler(a)                \
    REGISTER_T2CON &=~TMR_POSTSCALE_MASK;       \
    REGISTER_T2CON |= (a<<3)&TMR_POSTSCALE_MASK // semi-collon intentionally omitted

#define hal_setTMR2Value(a)                     (REGISTER_PR2 = (a-1))
#endif

/* Public Function Prototypes */
#if(TIMER_8BIT_ENABLED == TRUE)
void nullTMRFunction();

void (*pt2TMR2ISR)() = &nullTMRFunction;        // interrupt function pointer
//void (*pt2TMR4ISR)(void) = &nullTMRFunction;      // interrupt function pointer
//void (*pt2TMR6ISR)(void) = &nullTMRFunction;      // interrupt function pointer
#endif

#endif /* end of hal_8bit_timer.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
