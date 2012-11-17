//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	drv_Anito_Timer.c - Anito Timer Hardware Delay File
// Description:	
// Revision:    v01.00.00
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
// FW Version      	Date        	Author         	Description
// v00.00.01       	201202xx    	Giancarlo A.   	- Library Initial Release(internal)
// v00.00.02       	201203xx    	Giancarlo A.   	- XXXXXX
// v00.00.03		20130707	  	ESCII			- Fixed Interrupt Handler and Set
//													- Overflow to Every 100uS
// 
//***********************************************************************************
#include "hal_Anito_timer.h"

/* Timer Routine */
	void timerInterruptHandler(void)
	{
		static uint16_t ui16MsCounter = 0;
        
        #ifdef __TIMER_SEC__
            static uint16_t ui16SecCounter = 0;
        #endif

		if(BIT_PIR1_TMR1IF&&BIT_PIE1_TMR1IE)
		{
			BIT_PIR1_TMR1IF = 0; 	// Clear Timer1 Interrupt Flag
			
			/* Increment US Timer */
			ui16TimerUs += K16_TIMER_INCREMENT;

			/* Increment MS Timer */
			ui16MsCounter += K16_TIMER_INCREMENT;
			if(ui16MsCounter >= 1000)
			{
				ui16MsCounter = 0;
				ui16TimerMs++;		

                #ifdef __TIMER_SEC__
                    ui16SecCounter++; /* Increment Sec Timer */
                    
                    if(ui16SecCounter >= 1000)
                    {
                        ui16SecCounter = 0;
                        ui16TimerSec++;
                    }
                #endif
			}
			
			REGISTER_TMR1L = (K16_TIMER);
			REGISTER_TMR1H = (K16_TIMER >> 8);
		}
	}	

	void setupTimer(void)
	{
		BIT_T1CON_T1CKPS1 = 1; 		// Prescaler is 8
		BIT_T1CON_T1CKPS0 = 1; 
		BIT_T1CON_T1OSCEN = 0; 		// Timer1 Oscillator Enable Control
		BIT_T1CON_T1SYNC = 1; 		// Timer1 External Clock Input Synchronization Control
		BIT_T1CON_TMR1CS = 0; 		// Timer1 Clock Source Select, Internal Clock (FOSC/4)
			
		REGISTER_TMR1L = (K16_TIMER);
		REGISTER_TMR1H = (K16_TIMER >> 8);
	
		BIT_T1CON_TMR1ON = 1; 		// Timer1 is ON
	
		BIT_PIE1_TMR1IE = 1; 		// Enable Timer1 Interrupt
		BIT_PIR1_TMR1IF = 0; 		// Clear Timer1 Interrupt Flag
		
		BIT_INTCON_PEIE = 1; 		// Enable Peripheral Interrupt
		BIT_INTCON_GIE = 1;	 		// Enable Global Interrupt
	}	
    
/* end of drv_Anito_timer.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------		