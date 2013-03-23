/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_16bit_timer.c"                     |
* |:----          |:----                                        |
* |Description:   | This is a library for using the 16bit timer functions |
* |Revision:      | v00.00.01                                   |
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
* |v00.00.01    |20130323   |ESCII              |Library Initial Release            |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "corelib_16bit_timer.h"

/* Local Constants */
    /* none */

/* Local Variables */
    /* none */

/* Private Function Prototypes */
    /* none */
    
/* Public Functions */
#if(TIMER_16BIT_ENABLED == TRUE)
/*******************************************************************************//**
* \brief Setup the 16bit timer peripheral count resolution
*
* > This function is called to setup the 16bit timer peripheral count resolution
*
* > <BR>
* > **Syntax:**<BR>
* >      setup16BitTimerFull(module, &callback, prescaler, postscaler)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - timer module assignment, TIMER1				            <BR>
* >     callback - function address of the timer ISR                        <BR>
* >     prescaler - prescaler value(MCU chip dependent)                     <BR>
* >     postcaler - postscaler value(MCU chip dependent)
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setup16BitTimerFull(enum tmr16BitModules_e eTmrModule, void(*callback)(), uint8_t ui8Prescaler, uint8_t ui8Postscaler)
{
    /* Default */
	if(TIMER1 == eTmrModule)
	{
        hal_initTMR1();
    
	    hal_setTMR1Prescaler(ui8Prescaler);
    	//hal_setTMR1Postscaler(ui8Postscaler); 			// not nedded on TMR1
		
		pt2TMR1ISR = callback;
	}
	else
	{
		/* do nothing */
	}
}

/*******************************************************************************//**
* \brief Setup the 16Bit timer peripheral to count every 0.2uS @ 20Mhz Xtal
*
* > This function is called to initialize the 16Bit timer peripheral,  
* > prescaler and poscaler values were predefined to count every 0.2uS @ 20Mhz Xtal. 
* >
* > The time to interrupt is set by the "set16BitTimer" function.
*
* > <BR>
* > **Syntax:**<BR>
* >      setup16BitTimer(module, &callback)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - timer module assignment, TIMER1            	<BR>
* >     callback - function address of the timer ISR callback
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setup16BitTimer(enum tmr16BitModules_e eTmrModule, void(*callback)())
{
    //setup16BitTimerFull(eTmrModule, callback, TMR1_PRESCALE, 0);			// disabled to save stack				
	if(TIMER1 == eTmrModule)
	{
		hal_initTMR1();
		hal_setTMR1Prescaler(TMR1_PRESCALE);

		pt2TMR1ISR = callback;
	}
	else
	{
		/* do nothing */
	}
}

/*******************************************************************************//**
* \brief Set the 16bit count value
*
* > This function is called to set the timer count value. Once the count expires
* > the interrupt service routine will be called.
*
* > <BR>
* > **Syntax:**<BR>
* >     set16BitTimer(module, value)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - timer module assignment, TIMER1            					<BR>
* >     value - (value x resolution) is the time it takes before timer interrupt occur
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void set16BitTimer(enum tmr16BitModules_e eTmrModule, uint16_t ui16Value)
{
    /* Default */
	if(TIMER1 == eTmrModule)
	{
		hal_setTMR1Value(ui16Value);
		
		/* enable TMR1 interrupt */
		hal_clrTMR1IntFlag();						// important at first run after initialization
		hal_enableTMR1Int();
		/* turn-on timer module */
		//hal_enableTMR1();							// esc.test TMR1 still buggy, cannot enable because experiencing intermittent behavior of a reset
	}
	else
	{
		/* do nothing */
	}
}
#endif

/*******************************************************************************//**
* \brief 16bit timer interrupt service routine
*
* > This is an interrupt handler called when the 16bit timer value expires
*
* > <BR>
* > **Syntax:**<BR>
* >     timer16BitISR() , ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void timer16BitISR(void)
{
	static uint16_t Counter=0;//esc.test
#if(TIMER_16BIT_ENABLED == TRUE)
	if(hal_getTMR1IntFlag() && hal_getTMR1IntEnableStatus())
	{
		/* disable TMR1 Module */
		hal_clrTMR1IntFlag();
		hal_disableTMR1Int();
		hal_disableTMR1();

		/* call user ISR */
		//pt2TMR1ISR();											esc.test disabled
		
		/* Critical Task */
		set16BitTimer(TIMER1, K16_CRITICALTASK_PERIOD); 		// cyclic
		
		//adcCycle();											// moved here to save stack
		// esc.test: supposedly to toggle LED every half a second
		Counter++;
		if(Counter>=500)
		{
			Counter = 0;
			togglePin(LED4);
		}
	}
#endif 
}

/* Private Functions */
    /* none */
    
/* end of corelib_16bit_timer.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------