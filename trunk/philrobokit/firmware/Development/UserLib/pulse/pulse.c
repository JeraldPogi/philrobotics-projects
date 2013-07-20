/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "pulse.c"                                   |
* |:----          |:----                                        |
* |Description:   | This is a library for Software Implemented Digital to Analog Converter function. |
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
* |FW Version   |Date       |Author             |Description                |
* |:----        |:----      |:----              |:----                      |
* |v00.00.01    |20130225   |ESCII              |Library Initial Release    |
*********************************************************************************************/
#define __SHOW_SCHED_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_SCHED_HEADER__

#include "pulse.h"

/* Local Constants */
static enum PulseMode_e
{
    PULSE_WIDTH
    ,PULSE_COUNTER
};

/* Local Variables */
#ifdef S_SPLINT_S // Suppress SPLint Parse Errors 
    #define bool_t  bool
#endif  
    
static struct Pulse_Module_s
{
    uint8_t ui8Module;
    uint8_t ui8Pin;
    uint16_t ui16Value;
    uint16_t ui16Timeout;
    
    /* Bit Mapping */
    bool_t  blMode;                 // 0 : Pulse Width, 1 : Pulse Counter
    bool_t  blEdgeOrLogic;          // 0 : Active Low or Negative Edge, 1 : Active High or Positive Edge
    bool_t  blPrevState;
    bool_t  blPulseAvailable;
};

static struct   Pulse_Module_s  astPulseModuleSchedule[MAX_NUM_OF_PULSE];
static          uint8_t         ui8PulseScheduleTail = 0;
static volatile uint16_t        ui16PulseCycleCtr = 0;

/* Private Function Prototypes */
static void pulseCycle();
static void setupPulse(enum PulseMode_e ePulseMode, enum PulseModules_e ePulseModule, uint8_t ui8Pin, bool_t blActivelogic, uint16_t ui16Timeout);
    
/* Public Functions */
/*******************************************************************************//**
* \brief Setup the Software DAC module
*
* > This function is called for setting up the Software DAC Module 
* > pin and default value.
*
* > <BR>
* > **Syntax:**<BR>
* >      setupSoftDAC(module, pin, value) 
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - DAC module assignment, SDAC0, SDAC1, SDAC2, SDAC3          <BR>
* >     pin - pin number assignment                                         <BR>
* >     value - a value between 0 to 255
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupPulseMeasurement(enum PulseModules_e ePulseModule, uint8_t ui8Pin, bool_t blActiveLogic, uint16_t ui16Timeout)
{
    setupPulse(PULSE_WIDTH, ePulseModule, ui8Pin, blActivelogic, ui16Timeout)
}

/*******************************************************************************//**
* \brief Setup the Software DAC module
*
* > This function is called for setting up the Software DAC Module 
* > pin and default value.
*
* > <BR>
* > **Syntax:**<BR>
* >      setupSoftDAC(module, pin, value) 
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - DAC module assignment, SDAC0, SDAC1, SDAC2, SDAC3          <BR>
* >     pin - pin number assignment                                         <BR>
* >     value - a value between 0 to 255
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupPulseCounter(enum PulseModules_e ePulseModule, uint8_t ui8Pin, bool_t blActiveLogic, uint16_t ui16Timeout)
{
    setupPulse(PULSE_COUNTER, ePulseModule, ui8Pin, blActivelogic, ui16Timeout)
}

/*******************************************************************************//**
* \brief Main Software DAC engine
*
* > This function is called on every timer interrupt. 
*
* > <BR>
* > **Syntax:**<BR>
* >      softDACController(), ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/ 
bool_t pulseAvailable(enum PulseModules_e ePulseModule)
{
    uint8_t ui8Counter;
    
    for(ui8Counter = 0; ui8Counter < ui8PulseScheduleTail; ui8Counter++)
    {
        if(ePulseModule == astPulseModuleSchedule[ui8Counter].ui8Module)
        {
            return astPulseModuleSchedule[ui8Counter].blPulseAvailable;
        }
    }
    return 0;
}

/*******************************************************************************//**
* \brief Set Software DAC module value
*
* > This function is called for setting the Software DAC value.
* > The Software DAC value can be set between 0 to 255.
*
* > <BR>
* > **Syntax:**<BR>
* >      setSoftDAC(module, value) 
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - DAC module assignment, SDAC0, SDAC1, SDAC2, SDAC3          <BR>
* >     value - a value between 0 to 255
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
uint16_t getPulseWidth(enum PulseModules_e ePulseModule)
{
    uint8_t ui8Counter;
    
    for(ui8Counter = 0; ui8Counter < ui8PulseScheduleTail; ui8Counter++)
    {
        if(ePulseModule == astPulseModuleSchedule[ui8Counter].ui8Module)
        {
            astPulseModuleSchedule[ui8Counter].blPulseAvailable = false;
            return astPulseModuleSchedule[ui8Counter].ui16Value;
        }
    }
    return 0;
}

/*******************************************************************************//**
* \brief Remove a DAC module
*
* > This function is called for disabling the a DAC module
*
* > <BR>
* > **Syntax:**<BR>
* >      removeSoftDAC(module)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - DAC module assignment, SDAC0, SDAC1, SDAC2, SDAC3
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void removePulse(enum PulseModules_e ePulseModule)
{
    uint8_t ui8Counter;
    
    /* Run through the scheduler and update the module value */
    for(ui8Counter = 0; ui8Counter < ui8PulseScheduleTail; ui8Counter++)
    {
        if(ePulseModule == astPulseModuleSchedule[ui8Counter].ui8Module)
        {
            /* Make Pin Input */
            //makeInput(astPulseModuleSchedule[ui8Counter].ui8Pin);             // not needed, already an input

            /* Swap the tail to current module */
            astPulseModuleSchedule[ui8Counter].ui8Module   = astPulseModuleSchedule[ui8PulseScheduleTail].ui8Module;
            astPulseModuleSchedule[ui8Counter].ui8Pin      = astPulseModuleSchedule[ui8PulseScheduleTail].ui8Pin;
            astPulseModuleSchedule[ui8Counter].ui8Value    = astPulseModuleSchedule[ui8PulseScheduleTail].ui8Value;
            
            /* Decrease the tail */
            ui8PulseScheduleTail--;            
        }
    }
}

/* Private Functions */
/*******************************************************************************//**
* \brief Main Software DAC engine
*
* > This function is called on every timer interrupt. 
*
* > <BR>
* > **Syntax:**<BR>
* >      softDACController(), ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
static void pulseCycle()
{   
    setTimer(K_PULSE_CYCLE_TIMER, /*K_SOFT_DAC_PERIOD*/);
    
    ui16PulseCycleCtr++;

    /* Pulse Width */
    /* Check start of pulse and stamp it */
    /* Check end of pulse and update the value */
    
    /* Pulse Counter */
    /* Increment Counter */
    /* Check Timeout */
}
 
/*******************************************************************************//**
* \brief Setup the Software DAC module
*
* > This function is called for setting up the Software DAC Module 
* > pin and default value.
*
* > <BR>
* > **Syntax:**<BR>
* >      setupSoftDAC(module, pin, value) 
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - DAC module assignment, SDAC0, SDAC1, SDAC2, SDAC3          <BR>
* >     pin - pin number assignment                                         <BR>
* >     value - a value between 0 to 255
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
static void setupPulse(enum PulseMode_e ePulseMode, enum PulseModules_e ePulseModule, uint8_t ui8Pin, bool_t blActivelogic, uint16_t ui16Timeout)
{
    static bool_t   blKickstarted = false;
           bool_t   blScheduled = false;
           uint8_t  ui8Counter;
    
    /* Setup Output Pin */
    makeInput(ui8Pin);                                          // make pin input
    
    /* Run through the schedule table to check if already scheduled */
    for(ui8Counter = 0; ui8Counter < ui8PulseScheduleTail; ui8Counter++)
    {
        if(ePulseModule == astPulseModuleSchedule[ui8Counter].ui8Module)
        {
            /* Just update the values if already scheduled */
            astPulseModuleSchedule[ui8Counter].ui8Pin           = ui8Pin;
            astPulseModuleSchedule[ui8Counter].blMode           = ePulseMode;
            astPulseModuleSchedule[ui8Counter].ui16Timeout      = ui16Timeout;
            astPulseModuleSchedule[ui8Counter].blEdgeOrLogic    = blActiveLogic;
            
            astPulseModuleSchedule[ui8Counter].blPrevState      = getPinValue(ui8Pin);
            astPulseModuleSchedule[ui8Counter].ui16Value        = 0;
            
            blScheduled = true;
        }
    }

    /* Store at the tail if not yet scheduled */
    if(false == blScheduled)
    {
        astPulseModuleSchedule[ui8PulseScheduleTail].ui8Module      = ePulseModule;
        astPulseModuleSchedule[ui8PulseScheduleTail].ui8Pin         = ui8Pin;
        astPulseModuleSchedule[ui8PulseScheduleTail].blMode         = ePulseMode;
        astPulseModuleSchedule[ui8PulseScheduleTail].ui16Timeout    = ui16Timeout;
        astPulseModuleSchedule[ui8PulseScheduleTail].blEdgeOrLogic  = blActiveLogic;
        
        astPulseModuleSchedule[ui8PulseScheduleTail].blPrevState    = getPinValue(ui8Pin);
        astPulseModuleSchedule[ui8PulseScheduleTail].ui16Value      = 0;
            
        ui8PulseScheduleTail++;
    }

    /* Kickstart */
    if(false == blKickstarted)
    {   
        blKickstarted = true;
        
        /* Use 8Bit Timer Peripheral */
        setup8BitTimer(K_PULSE_CYCLE_TIMER,pulseCycle);
        setTimer(K_PULSE_CYCLE_TIMER, /*K_SOFT_DAC_PERIOD*/);
    }
}

/* end of pulse.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------