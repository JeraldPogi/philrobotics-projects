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

#include "corelib_8bit_timer.h"

/* Local Constants */
    /* none */

/* Local Variables */
    /* none */

/* Private Function Prototypes */
    /* none */
    
/* Public Functions */
/*******************************************************************************//**
* \brief Setup the 8Bit Timer Peripheral to count every 10uS
*
* > This function is called to initialize the 8Bit timer peripheral  
* > prescaler and poscaler values to count every 10uS. 
* >
* > The time to interrupt is set by the "setTimer" function.
*
* > <BR>
* > **Syntax:**<BR>
* >      setup8BitTimer(module, &callback)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - timer module assignment, TIMER2, TIMER4, TIMER6
* >     callback - function address of the timer ISR callback
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setup8BitTimer(/*enum eTmrModules*/uint8_t tmrModule, void(*callback)())
{
    setup8BitTimerFull(tmrModule, callback, K_10US_PRESCALE, K_10US_PRESCALE);
}

/*******************************************************************************//**
* \brief Set the 8bit count value
*
* > This function is called to set the timer count value. Once the count expires
* > the interrupt service routine will be called.
*
* > <BR>
* > **Syntax:**<BR>
* >     setTimer(module, value)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - timer module assignment, TIMER2, TIMER4, TIMER6
* >     value - (value x resolution) is the time it takes before timer interrupt occur
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setTimer(/*enum eTmrModules*/uint8_t tmrModule, uint8_t ui8Value)
{
/* Default */
	if(TIMER2 == tmrModule)
	{
		hal_setTMR2Value(ui8Value);
		
		/* turn-on timer module */
		hal_enableTMR2();
		/* enable TMR2 interrupt */
		hal_enableTMR2Int();
	}
	#if(TIMER4_ENABLED == TRUE)	
	else if(TIMER4 == tmrModule)
	{
		hal_setTMR4Value(ui8Value);

        /* turn-on timer module */
		hal_enableTMR4();
		/* enable TMR2 interrupt */
		hal_enableTMR4Int();
	}
	#endif
	#if(TIMER6_ENABLED == TRUE)	
	else if(TIMER6 == tmrModule)
	{
		hal_setTMR6Value(ui8Value);

        /* turn-on timer module */
		hal_enableTMR6();
		/* enable TMR2 interrupt */
		hal_enableTMR6Int();
	}
	#endif
	else
	{
		/* do nothing */
	}
}

/*******************************************************************************//**
* \brief 8 bit timer interrupt service routine
*
* > This is an interrupt handler called when the 8 bit timer value expires
*
* > <BR>
* > **Syntax:**<BR>
* >     timer8BitISR() , ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void timer8BitISR(void)
{
#if(TIMER_8BIT_ENABLED == TRUE)
	if(hal_getTMR2IntFlag() && hal_getTMR2IntEnableStatus())
	{
		/* disable TMR2 Module */
		hal_clrTMR2IntFlag();
		hal_disableTMR2Int();					
		hal_disableTMR2();
        
		/* call user ISR */
		pt2TMR2ISR();
	}
    
	#if(TIMER4_ENABLED == TRUE)	
	if(hal_getTMR4IntFlag() && hal_getTMR4IntEnableStatus())
	{
		/* disable TMR2 Module */
		hal_clrTMR4IntFlag();
		hal_disableTMR4Int();					
		hal_disableTMR4();
        
		/* call user ISR */
		pt2TMR4ISR();
	}
	#endif
	
	#if(TIMER6_ENABLED == TRUE)	
	if(hal_getTMR6IntFlag() && hal_getTMR6IntEnableStatus())
	{
		/* disable TMR2 Module */
		hal_clrTMR6IntFlag();
		hal_disableTMR6Int();					
		hal_disableTMR6();
        
		/* call user ISR */
		pt2TMR6ISR();
	}
	#endif
#endif
}

/* Private Functions */
    /* none */
    
/* end of corelib_8bit_timer.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------