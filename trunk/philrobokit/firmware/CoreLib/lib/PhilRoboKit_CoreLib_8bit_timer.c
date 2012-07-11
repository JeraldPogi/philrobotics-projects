//***********************************************************************************
// PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club
// http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
// phirobotics.core@philrobotics.com
//
//----------------------------------------------------------------------------------
// Filename:	PhilRobokit_CoreLib_8bit_timer.c - 8 Bit Timer
// Description:	
// Revision:    v00.00.02
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
// FW Version      Date        Author         Description
// v00.00.01		20120620	ESCII			- Library Initial Release
// v00.00.02		20120711	ESCII			- Code Cleanup
//										- Removed void type on function pointers
//										- Enumerated timer modules
//***********************************************************************************
#include "lib\PhilRobokit_CoreLib_8bit_timer.h"

/* Local Variables */

/* Private Function Prototypes */
static	void nullTMRFunction();

#if(TIMER_8BIT_ENABLED == TRUE)
	void (*pt2TMR2)() = &nullTMRFunction;		// interrupt function pointer
	//void (*pt2TMR4)(void) = &nullTMRFunction;		// interrupt function pointer
	//void (*pt2TMR6)(void) = &nullTMRFunction;		// interrupt function pointer
#endif

/* Public Functions */
#if(TIMER_8BIT_ENABLED == TRUE)
//***********************************************************************************
// TMR Prescaler Value
//	0  - 1
//    	1  - 4
//    	2  - 16
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
void setup8BitTimerDef(enum eTmrModules tmrModule, void(*function)())
{
/* Default */
	if(TIMER2 == tmrModule)
	{
	    mc_setTMR2Prescaler(2);
    	mc_setTMR2Postscaler(2); 
		pt2TMR2 = function;
	}
	#if(TIMER4_ENABLED == TRUE)	
	else if(TIMER4 == tmrModule)
	{
		mc_setTMR4Prescaler(2);
    	mc_setTMR4Postscaler(2); 
		pt2TMR4 = function;
	}
	#endif
	#if(TIMER6_ENABLED == TRUE)	
	else if(TIMER6 == tmrModule)
	{
		mc_setTMR6Prescaler(2);
    	mc_setTMR6Postscaler(2); 
		pt2TMR6 = function;
	}
	#endif
	else
	{
		/* do nothing */
	}
}

void setup8BitTimer(enum eTmrModules tmrModule, uint8_t ui8Prescaler, uint8_t ui8Postscaler)
{
/* Default */
	if(TIMER2 == tmrModule)
	{
	    mc_setTMR2Prescaler(ui8Prescaler);
    	mc_setTMR2Postscaler(ui8Postscaler); 
	}
	#if(TIMER4_ENABLED == TRUE)	
	else if(TIMER4 == tmrModule)
	{
		mc_setTMR4Prescaler(ui8Prescaler);
    	mc_setTMR4Postscaler(ui8Postscaler); 
	}
	#endif
	#if(TIMER6_ENABLED == TRUE)	
	else if(TIMER6 == tmrModule)
	{
		mc_setTMR6Prescaler(ui8Prescaler);
    	mc_setTMR6Postscaler(ui8Postscaler); 
	}
	#endif
	else
	{
		/* do nothing */
	}
}

void setTimerValue(enum eTmrModules tmrModule, uint8_t ui8Value)
{
/* Default */
	if(TIMER2 == tmrModule)
	{
		REGISTER_PR2 = ui8Value - 1;
		
		/* turn-on timer module */
		mc_enableTMR2();
		/* enable TMR2 interrupt */
		BIT_PIE1_TMR2IE = 1;

	}
	#if(TIMER4_ENABLED == TRUE)	
	else if(TIMER4 == tmrModule)
	{
		REGISTER_PR4 = ui8Value - 1;
		/* turn-on timer module */
		/* enable TMR4 interrupt */
	}
	#endif
	#if(TIMER6_ENABLED == TRUE)	
	else if(TIMER6 == tmrModule)
	{
		REGISTER_PR6 = ui8Value - 1;
		/* turn-on timer module */
		/* enable TMR6 interrupt */
	}
	#endif
	else
	{
		/* do nothing */
	}
}
#endif

void timer8bitInterruptHandler(void)
{
#if(TIMER_8BIT_ENABLED == TRUE)
	if(BIT_PIR1_TMR2IF&&BIT_PIE1_TMR2IE)
	{
		/* disable TMR2 Module */
		BIT_PIR1_TMR2IF = 0;
		BIT_PIE1_TMR2IE = 0;					
		mc_disableTMR2();
		/* call user ISR */
		pt2TMR2();
	}
	#if(TIMER4_ENABLED == TRUE)	
	if()
	{
		/* disable TMR4 Module */
		mc_disableTMR4();
		/* call user ISR */
		pt2TMR4();	
	}
	#endif
	
	#if(TIMER6_ENABLED == TRUE)	
	if()
	{
		/* disable TMR6 Module */
		mc_disableTMR6();
		/* call user ISR */
		pt2TMR6();	
	}
	#endif
#endif
}

/* Private Functions */
static void nullTMRFunction()
{
	;/* NULL */
}

/* end of PhilRobokit_CoreLib_8bit_timer.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	