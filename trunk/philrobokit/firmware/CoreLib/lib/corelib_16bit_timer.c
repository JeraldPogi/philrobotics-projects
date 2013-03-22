/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_8bit_timer.c"                      |
* |:----          |:----                                        |
* |Description:   | This is a library for using the 8 bit timer functions |
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
* \brief Setup the 8bit timer peripheral count resolution
*
* > This function is called to setup the 8bit timer peripheral count resolution
*
* > <BR>
* > **Syntax:**<BR>
* >      setup16BitTimerFull(module, &callback, prescaler, postscaler)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - timer module assignment, TIMER2, TIMER4, TIMER6            <BR>
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
    	//hal_setTMR1Postscaler(ui8Postscaler); 
	}
	else
	{
		/* do nothing */
	}
}

/*******************************************************************************//**
* \brief Setup the 8Bit timer peripheral to count every 10uS
*
* > This function is called to initialize the 8Bit timer peripheral,  
* > prescaler and poscaler values were predefined to count every 10uS. 
* >
* > The time to interrupt is set by the "set16BitTimer" function.
*
* > <BR>
* > **Syntax:**<BR>
* >      setup16BitTimer(module, &callback)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - timer module assignment, TIMER2, TIMER4, TIMER6            <BR>
* >     callback - function address of the timer ISR callback
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setup16BitTimer(enum tmr16BitModules_e eTmrModule, void(*callback)())
{
    setup16BitTimerFull(eTmrModule, callback, TMR1_PRESCALE, 0);
}

/*******************************************************************************//**
* \brief Set the 8bit count value
*
* > This function is called to set the timer count value. Once the count expires
* > the interrupt service routine will be called.
*
* > <BR>
* > **Syntax:**<BR>
* >     set16BitTimer(module, value)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - timer module assignment, TIMER2, TIMER4, TIMER6            <BR>
* >     value - (value x resolution) is the time it takes before timer interrupt occur
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void set16BitTimer(enum tmr16BitModules_e eTmrModule, uint8_t ui8Value)
{
    /* Default */
	if(TIMER1 == eTmrModule)
	{
		hal_setTMR1Value(ui8Value);
		
		/* turn-on timer module */
		hal_enableTMR1();
		/* enable TMR1 interrupt */
		hal_enableTMR1Int();
	}
	else
	{
		/* do nothing */
	}
}
#endif

/*******************************************************************************//**
* \brief 8 bit timer interrupt service routine
*
* > This is an interrupt handler called when the 8 bit timer value expires
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
#if(TIMER_16BIT_ENABLED == TRUE)
	if(hal_getTMR1IntFlag() && hal_getTMR1IntEnableStatus())
	{
		/* disable TMR1 Module */
		hal_clrTMR1IntFlag();
		hal_disableTMR1Int();					
		hal_disableTMR1();
        
		/* call user ISR */
		pt2TMR1ISR();
	}
#endif
}

/* Private Functions */
    /* none */
    
/* end of corelib_8bit_timer.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------