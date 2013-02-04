/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_8bit_timer.c"                          |
* |:----          |:----                                        |
* |Description:   | This is a driver for micrcochip 8bit timer (TMR2, TMR4, TMR6) |
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
* |v00.01.00    |20121127   |ESCII              |Modified For Layered Architecture  |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "hal_8bit_timer.h"

/* Local Constants */
    /* none */

/* Local Variables */
    /* none */

/* Private Function Prototypes */
static	void nullTMRFunction();

#if(TIMER_8BIT_ENABLED == TRUE)
	void (*pt2TMR2)() = &nullTMRFunction;		// interrupt function pointer
	//void (*pt2TMR4)(void) = &nullTMRFunction;		// interrupt function pointer
	//void (*pt2TMR6)(void) = &nullTMRFunction;		// interrupt function pointer
#endif

/* Public Functions */
#if(TIMER_8BIT_ENABLED == TRUE)
/*******************************************************************************//**
* \brief Setup the 8bit timer count resolution
*
* > This function is called to setup the 8bit timer peripheral count resolution
*
* > <BR>
* > **Syntax:**<BR>
* >      setup8BitTimer(module, &callback, prescaler, postscaler)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - timer module assignment, TIMER2, TIMER4, TIMER6
* >     callback - function address of the timer ISR 
* >     prescaler - 
* >     postcaler - 
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setup8BitTimer(enum eTmrModules tmrModule, void(*callback)(), uint8_t ui8Prescaler, uint8_t ui8Postscaler)
{
/* Default */
	if(TIMER2 == tmrModule)
	{
	    mc_setTMR2Prescaler(ui8Prescaler);
    	mc_setTMR2Postscaler(ui8Postscaler); 
        pt2TMR2 = function;
	}
	#if(TIMER4_ENABLED == TRUE)	
	else if(TIMER4 == tmrModule)
	{
		mc_setTMR4Prescaler(ui8Prescaler);
    	mc_setTMR4Postscaler(ui8Postscaler); 
        pt2TMR4 = function;
	}
	#endif
	#if(TIMER6_ENABLED == TRUE)	
	else if(TIMER6 == tmrModule)
	{
		mc_setTMR6Prescaler(ui8Prescaler);
    	mc_setTMR6Postscaler(ui8Postscaler); 
        pt2TMR6 = function;
	}
	#endif
	else
	{
		/* do nothing */
	}
}

/*******************************************************************************//**
* \brief Set the 8bit count value
*
* > This function is called to set the timer count value
*
* > <BR>
* > **Syntax:**<BR>
* >     setTimerValue(module, value)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - timer module assignment, TIMER2, TIMER4, TIMER6
* >     value - (value x resolution) is the time it takes before timer interrupt occur
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
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

/*******************************************************************************//**
* \brief 8 bit timer interrupt service routine
*
* > This is an interrupt handler called when the 8 Bit timer value expires
*
* > <BR>
* > **Syntax:**<BR>
* >     timer8bitInterruptHandler() , ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
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
/*******************************************************************************//**
* \brief Initialize 8bit timer interrupt function pointer with null function
*
* > This function basically does nothing and is used to initialize 8bit timer 
* > interrupt function pointer.
*
* > <BR>
* > **Syntax:**<BR>
* >     nullTMRFunction()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
static void nullTMRFunction()
{
	;/* NULL */
}

/* end of hal_8bit_timer.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	