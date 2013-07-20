/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_8bit_timer.c"                      |
* |:----          |:----                                        |
* |Description:   | This is a library for using the 8 bit timer functions |
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
* |v00.01.01    |20130323   |ESCII              |Clear IF when setting timer value  |
* |v00.02.00    |20130514   |ESCII              |Code Formatted                     |
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

#if(TIMER_8BIT_ENABLED == TRUE)
/*******************************************************************************//**
* \brief Setup the 8bit timer peripheral count resolution
*
* > This function is called to setup the 8bit timer peripheral count resolution
*
* > <BR>
* > **Syntax:**<BR>
* >      setup8BitTimerFull(module, &callback, prescaler, postscaler)
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
void setup8BitTimerFull(enum tmrModules_et eTmrModule, void(*callback)(), uint8_t ui8Prescaler, uint8_t ui8Postscaler)
{
    /* Default */
    if(TIMER2 == eTmrModule)
    {
        hal_setTMR2Prescaler(ui8Prescaler);
        hal_setTMR2Postscaler(ui8Postscaler);
        pt2TMR2ISR = callback;
    }

#if(TIMER4_ENABLED == TRUE)
    else if(TIMER4 == eTmrModule)
    {
        mc_setTMR4Prescaler(ui8Prescaler);
        mc_setTMR4Postscaler(ui8Postscaler);
        pt2TMR4ISR = callback;
    }

#endif
#if(TIMER6_ENABLED == TRUE)
    else if(TIMER6 == eTmrModule)
    {
        mc_setTMR6Prescaler(ui8Prescaler);
        mc_setTMR6Postscaler(ui8Postscaler);
        pt2TMR6ISR = callback;
    }

#endif
    else
    {
        /* do nothing */
    }
}
#endif

/*******************************************************************************//**
* \brief Setup the 8Bit timer peripheral to count every 10uS
*
* > This function is called to initialize the 8Bit timer peripheral,
* > prescaler and poscaler values were predefined to count every 10uS.
* >
* > The time to interrupt is set by the "set8BitTimer" function.
*
* > <BR>
* > **Syntax:**<BR>
* >      setup8BitTimer(module, &callback)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - timer module assignment, TIMER2, TIMER4, TIMER6            <BR>
* >     callback - function address of the timer ISR callback
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setup8BitTimer(enum tmrModules_et eTmrModule, void(*callback)())
{
    //setup8BitTimerFull(eTmrModule, callback, K_10US_PRESCALE, K_10US_POSTSCALE);          // disabled to save stack
    /* Default */
    if(TIMER2 == eTmrModule)
    {
        hal_setTMR2Prescaler(K_10US_PRESCALE);
        hal_setTMR2Postscaler(K_10US_POSTSCALE);
        pt2TMR2ISR = callback;
    }

#if(TIMER4_ENABLED == TRUE)
    else if(TIMER4 == eTmrModule)
    {
        mc_setTMR4Prescaler(K_10US_PRESCALE);
        mc_setTMR4Postscaler(K_10US_POSTSCALE);
        pt2TMR4ISR = callback;
    }

#endif
#if(TIMER6_ENABLED == TRUE)
    else if(TIMER6 == eTmrModule)
    {
        mc_setTMR6Prescaler(K_10US_PRESCALE);
        mc_setTMR6Postscaler(K_10US_POSTSCALE);
        pt2TMR6ISR = callback;
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
* > This function is called to set the timer count value. Once the count expires
* > the interrupt service routine will be called.
*
* > <BR>
* > **Syntax:**<BR>
* >     set8BitTimer(module, value)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - timer module assignment, TIMER2, TIMER4, TIMER6            <BR>
* >     value - (value x resolution) is the time it takes before timer interrupt occur
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void set8BitTimer(enum tmrModules_et eTmrModule, uint8_t ui8Value)
{
    /* Default */
    if(TIMER2 == eTmrModule)
    {
        hal_setTMR2Value(ui8Value);
        /* enable TMR2 interrupt */
        hal_clrTMR2IntFlag();                       // important at first run after initialization
        hal_enableTMR2Int();
        /* turn-on timer module */
        hal_enableTMR2();
    }

#if(TIMER4_ENABLED == TRUE)
    else if(TIMER4 == eTmrModule)
    {
        hal_setTMR4Value(ui8Value);
        /* enable TMR4 interrupt */
        hal_clrTMR4IntFlag();                       // important at first run after initialization
        hal_enableTMR4Int();
        /* turn-on timer module */
        hal_enableTMR4();
    }

#endif
#if(TIMER6_ENABLED == TRUE)
    else if(TIMER6 == eTmrModule)
    {
        hal_setTMR6Value(ui8Value);
        /* enable TMR6 interrupt */
        hal_clrTMR6IntFlag();                       // important at first run after initialization
        hal_enableTMR6Int();
        /* turn-on timer module */
        hal_enableTMR6();
    }

#endif
    else
    {
        /* do nothing */
    }
}

/* Private Functions */
/* none */

/* end of corelib_8bit_timer.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
