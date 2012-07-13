//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	corelib_8bit_timer.h - 8 Bit Timer Header File
// Description:	This is the header file the driver for micrcochip 8bit timer (TMR2, TMR4, TMR6)
// Revision:    v00.00.03
// Author:      Efren S. Cruzat II
//
// Dependencies:
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
// FW Version      	Date        	Author         	Description
// v00.00.01		20120620		ESCII		- Library Initial Release
// v00.00.02		20120711		ESCII		- Code Cleanup
//												- Removed void type on function pointers
//												- Enumerated timer modules
// v00.00.03		20120713		ESCII		- removed include of stdint.h
//***********************************************************************************
#ifndef __PH_8BIT_TIMER_H__
#define __PH_8BIT_TIMER_H__

#if defined(HI_TECH_C)
	#ifndef S_SPLINT_S 	// Suppress SPLint Unrecognized ID Errors
		#include "htc_common.h"
	#else
		#include "htc_common_SPLint.h"
	#endif
	
	#if defined( _16F873A ) || defined( _16F874A )  || defined( _16F876A ) || defined( _16F877A )  	
		#ifndef S_SPLINT_S 	// Suppress SPLint Unrecognized ID Errors
			#include "htc_16f87xa.h"
		#else
			#include "htc_16f87xa_SPLint.h"
		#endif
	#endif
#endif

#include <PhilRoboKit_CoreLib_Macro.h>

/* User Configuration Definitions */
#define TIMER_8BIT_ENABLED	TRUE
	#define TIMER2_ENABLED	TRUE
	//#define TIMER4_ENABLED	TRUE
	//#define TIMER6_ENABLED	TRUE

#if(TIMER_8BIT_ENABLED == TRUE)
    /* TMR2 */
	/*@notfunction@*/
	#define mc_timer2IntEn()           				(BIT_PIE1_TMR2IE = 1)
	/*@notfunction@*/
	#define mc_timer2IntDis()          				(BIT_PIE1_TMR2IE = 0)
	/*@notfunction@*/
	#define mc_timer2IFClr()            			(BIT_PIR1_TMR2IF = 0)

	/*@notfunction@*/
	#define mc_enableTMR2()                 		(BIT_T2CON_TMR2ON = 1)
	/*@notfunction@*/
	#define mc_disableTMR2()                		(BIT_T2CON_TMR2ON = 0)
	/*@notfunction@*/
	#define mc_clearTMR2IF()

	/*@notfunction@*/
	#define mc_setTMR2Prescaler(a)          		\
	REGISTER_T2CON &=~TMR_PRESCALE_MASK;         	\
	REGISTER_T2CON |= a&TMR_PRESCALE_MASK        	// semi-collon intentionally omitted 

	/*@notfunction@*/
	#define mc_setTMR2Postscaler(a)         		\
	REGISTER_T2CON &=~TMR_POSTSCALE_MASK;        	\
	REGISTER_T2CON |= (a<<3)&TMR_POSTSCALE_MASK  	// semi-collon intentionally omitted 
#endif
	
/* Timers */
enum eTmrModules
{
	TIMER2		= 2
	,TIMER4		= 4
	,TIMER6		= 6
};

/* Public Function Prototypes */	
	void timer8bitInterruptHandler(void);
	
#if(TIMER_8BIT_ENABLED == TRUE)
	void setup8BitTimerDef(enum eTmrModules tmrModule, void(*function)());
	void setup8BitTimer(enum eTmrModules tmrModule, uint8_t ui8Prescaler, uint8_t ui8Postscaler);
	void setTimerValue(enum eTmrModules tmrModule, uint8_t ui8Value);
#endif

#endif/* end of corelib_8bit_timer.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	