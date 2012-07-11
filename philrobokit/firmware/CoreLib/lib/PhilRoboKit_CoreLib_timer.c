//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	PhilRoboKit_CoreLib_timer.c - Timer Hardware Delay File
// Description:	
// Revision:    v00.00.03
// Author:      Giancarlo Acelajado
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
// FW Version      Date        Author         Description
// v00.00.01       201202xx    Giancarlo A.   Library Initial Release(internal)
// v00.00.02       201203xx    Giancarlo A.   XXXXXX
// v00.00.03	   20130707	   ESCII		  Fixed Interrupt Handler and Set
//												Overflow to Every 40uS
// 
//***********************************************************************************
#include "PhilRoboKit_CoreLib_timer.h"

	static volatile unsigned int uiTimerUs = 0;
	static volatile unsigned int uiTimerMs = 0;

/* Timer Routine */
	void timerInterruptHandler(void)
	{
		static int iMsCounter = 0;

		if(BIT_PIR1_TMR1IF&&BIT_PIE1_TMR1IE)
		{
			BIT_PIR1_TMR1IF = 0; 	// Clear Timer1 Interrupt Flag
			
			/* Increment US Timer */
			uiTimerUs += CONST16_TIMER_INCREMENT;

			/* Increment MS Timer */
			iMsCounter += CONST16_TIMER_INCREMENT;
			if(iMsCounter >= 1000)
			{
				iMsCounter = 0;
				uiTimerMs++;			
			}
			
			REGISTER_TMR1L = (CONST16_TIMER);
			REGISTER_TMR1H = (CONST16_TIMER >> 8);
		}
	}	

	void timerInit(void)
	{
		BIT_T1CON_T1CKPS1 = 1; 		// Prescaler is 8
		BIT_T1CON_T1CKPS0 = 1; 
		BIT_T1CON_T1OSCEN = 0; 		// Timer1 Oscillator Enable Control
		BIT_T1CON_T1SYNC = 1; 		// Timer1 External Clock Input Synchronization Control
		BIT_T1CON_TMR1CS = 0; 		// Timer1 Clock Source Select, Internal Clock (FOSC/4)
			
		REGISTER_TMR1L = (CONST16_TIMER);
		REGISTER_TMR1H = (CONST16_TIMER >> 8);
	
		BIT_T1CON_TMR1ON = 1; 		// Timer1 is ON
	
		BIT_PIE1_TMR1IE = 1; 		// Enable Timer1 Interrupt
		BIT_PIR1_TMR1IF = 0; 		// Clear Timer1 Interrupt Flag
		
		BIT_INTCON_PEIE = 1; 		// Enable Peripheral Interrupt
		BIT_INTCON_GIE = 1;	 		// Enable Global Interrupt
	}	

	unsigned int getElapsedTimeMs(unsigned int uiTimeMs)
	{	
		return (uiTimerMs - uiTimeMs);
	}	

	unsigned int getTimeMs(void)
	{	
		return uiTimerMs;
	}

	unsigned int getElapsedTimeUs(unsigned int uiTimeUs)
	{	
		return (uiTimerUs - uiTimeUs);
	}	

	unsigned int getTimeUs(void)
	{	
		return uiTimerUs;
	}