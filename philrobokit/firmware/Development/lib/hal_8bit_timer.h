/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_8bit_timer.h"                          |
* |:----          |:----                                        |
* |Description:   | This is a header file of the driver for micrcochip 8bit timer (TMR2, TMR4, TMR6) |
* |Revision:      | v00.01.00                                   |
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
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __HAL_8BIT_TIMER_H__
#define __HAL_8BIT_TIMER_H__

#if defined(HI_TECH_C)
	#ifndef S_SPLINT_S 	        // Suppress SPLint Unrecognized ID Errors
		#include "htc_common.h"
	#else
		#include "htc_common_SPLint.h"
	#endif
	
	#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  	
		#ifndef S_SPLINT_S 	    // Suppress SPLint Unrecognized ID Errors
			#include "htc_16f87xa.h"
		#else
			#include "htc_16f87xa_SPLint.h"
		#endif
	#endif
#endif

/* Include .h Library Files */
#include <PhilRoboKit_CoreLib_Macro.h>

/* User Configuration Definitions */
#define TIMER_8BIT_ENABLED	TRUE
	#define TIMER2_ENABLED	TRUE
	//#define TIMER4_ENABLED	TRUE
	//#define TIMER6_ENABLED	TRUE
    
/* Macro and Configuration Definitions */
#if(TIMER_8BIT_ENABLED == TRUE)
    /* TMR2 */
	/*@notfunction@*/
	#define hal_enableTMR2Int()           			(BIT_PIE1_TMR2IE = 1)
	/*@notfunction@*/
	#define hal_disableTMR2Int()          			(BIT_PIE1_TMR2IE = 0)
    /*@notfunction@*/
    #define hal_getTMR2IntEnableStatus()           	((BIT_PIE1_TMR2IE) ? true : false)
    
	/*@notfunction@*/
	#define hal_clrTMR2IntFlag()         			(BIT_PIR1_TMR2IF = 0)
    /*@notfunction@*/
    #define hal_getTMR2IntFlag()                    ((BIT_PIR1_TMR2IF) ? true : false)

	/*@notfunction@*/
	#define hal_enableTMR2()                 		(BIT_T2CON_TMR2ON = 1)
	/*@notfunction@*/
	#define hal_disableTMR2()                		(BIT_T2CON_TMR2ON = 0)

	/*@notfunction@*/
	#define hal_setTMR2Prescaler(a)          		\
	REGISTER_T2CON &=~TMR_PRESCALE_MASK;         	\
	REGISTER_T2CON |= a&TMR_PRESCALE_MASK        	// semi-collon intentionally omitted 

	/*@notfunction@*/
	#define hal_setTMR2Postscaler(a)         		\
	REGISTER_T2CON &=~TMR_POSTSCALE_MASK;        	\
	REGISTER_T2CON |= (a<<3)&TMR_POSTSCALE_MASK  	// semi-collon intentionally omitted 
    
    /*@notfunction@*/
    #define hal_setTMR2Value(a)                     (REGISTER_PR2 = a-1)
#endif

/* Global Constants */    
    /* Timers */
enum eTmrModules
{
	TIMER2		= 2
	,TIMER4		= 4
	,TIMER6		= 6
};

//***********************************************************************************
// TMR Prescaler Value
//      0  - 1
//      1  - 4
//      2  - 16
//*********************************************************************************** 
//***********************************************************************************
// TMR Postcaler Value
//    	0  - 1
//    	1  - 2
//    	2  - 3
//    	3  - 4
//    	4  - 5   
//    	x  - x+1
//    	    *
//    	15 - 16   
//*********************************************************************************** 
//  @ 20Mhz Xtal, XTalT = 50nS
//  prescaler = 16, postscaler = 3
//  K is the timer resolution and the offset when PR2 is 0
//  K = 4 x XtalT x pre-scaler x post-scaler
//  K ~10uS resolution
//*********************************************************************************** 
#define K_10US_PRESCALE             2
#define K_10US_POSTSCALE            2

/* Public Function Prototypes */	
#if(TIMER_8BIT_ENABLED == TRUE)
	void setup8BitTimer(enum eTmrModules tmrModule, void(*callback)(), uint8_t ui8Prescaler, uint8_t ui8Postscaler);
#endif

#endif /* end of hal_8bit_timer.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	