/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "soft_dac.c"                                |
* |:----          |:----                                        |
* |Description:   | This is a library for using the Software Implemented DAC functions |
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
* |v00.00.01    |20130221   |ESCII              |Library Initial Release    |
*********************************************************************************************/
#define __SHOW_SCHED_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_SCHED_HEADER__

#include "soft_dac.h"

/* Local Constants */
enum eDACStates
{
    SCHED0
    ,SCHED1
    ,SCHED2
    ,SCHED3
    ,PERIOD_START
};

/* Local Variables */
struct st_DAC_Module
{
    uint8_t ui8Module;
    uint8_t ui8Pin;
    uint8_t ui8Value;
};

struct st_DAC_Module    stDACModuleSchedule[MAX_NUM_OF_SDAC];

static uint8_t          ui8DACEngineStates = PERIOD_START;
static uint8_t          ui8DACScheduleTail = 0;

/* Private Function Prototypes */
void softDACEngine();
void bubbleSortDAC(uint8_t ui8MaxCount);
    
/* Public Functions */
/*******************************************************************************//**
* \brief Set DAC value
*
* > This function is called for setting the DAC value.
* > The DAC value can be set between 0 to 1023.
*
* > <BR>
* > **Syntax:**<BR>
* >      setupSoftDAC(module, value) 
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - DAC module assignment, DAC0, DAC1
* >     value - a value between 0 to 256
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupSoftDAC(uint8_t ui8SDACModule, uint8_t ui8Pin, uint8_t ui8Value) 
{
    uint8_t ui8Counter;
    bool_t  blScheduled = false;
    
    /* Use 8Bit Timer Peripheral */
    setup8BitTimer(TIMER2,softDACEngine);                   // esc.comment, add TIMER2 with configuration

    /* Setup Output Pin */
    makeOutput(ui8Pin);                                     // make pin output
    clrPin(ui8Pin);                                         // set pin low until the next period starts
    
    /* Run Through the scheduler to check if already scheduled */
    for(ui8Counter = 0; ui8Counter < ui8DACScheduleTail; ui8Counter++)
    {
        if(stDACModuleSchedule[ui8Counter].ui8Module == ui8SDACModule)
        {
            /* Just update the values if already scheduled */
            stDACModuleSchedule[ui8Counter].ui8Pin      = ui8Pin;
            stDACModuleSchedule[ui8Counter].ui8Value    = ui8Value;
            
            blScheduled = true;
        }
    }

    /* Store at the tail if not yet scheduled */
    if(false == blScheduled)
    {
        stDACModuleSchedule[ui8DACScheduleTail].ui8Module   = ui8SDACModule;
        stDACModuleSchedule[ui8DACScheduleTail].ui8Pin      = ui8Pin;
        stDACModuleSchedule[ui8DACScheduleTail].ui8Value    = ui8Value;
        ui8DACScheduleTail++;
    }
    else
    {
        /* Must not be reached */
    }
    
    /* Sort schedule from shortest to greatest pulse width */
    bubbleSortDAC(ui8DACScheduleTail);
}

/*******************************************************************************//**
* \brief Set DAC value
*
* > This function is called for setting the DAC value.
* > The DAC value can be set between 0 to 1023.
*
* > <BR>
* > **Syntax:**<BR>
* >      setSoftDAC(module, value) 
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - DAC module assignment, DAC0, DAC1
* >     value - a value between 0 to 1023
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setSoftDAC(uint8_t ui8SDACModule, uint8_t ui8Value) 
{
    uint8_t ui8Counter;
    
    /* Run through the scheduler and update the module value */
    for(ui8Counter = 0; ui8Counter < ui8DACScheduleTail; ui8Counter++)
    {
        if(stDACModuleSchedule[ui8Counter].ui8Module == ui8SDACModule)
        {
            stDACModuleSchedule[ui8Counter].ui8Value = ui8Value;
            
            if(0 == ui8Value)
            {
                clrPin(stDACModuleSchedule[ui8Counter].ui8Pin);         // set pin low until the next period starts
            }
            else if(255 == ui8Value)
            {
                setPin(stDACModuleSchedule[ui8Counter].ui8Pin);         // set pin low until the next period starts
            }
            else
            {
                /* Do Nothing */
            }
        }
    }
    
    /* Sort schedule from shortest to greatest pulse width */
    bubbleSortDAC(ui8DACScheduleTail);
}

/*******************************************************************************//**
* \brief Remove the DAC module
*
* > This function is called for disabling the DAC module
*
* > <BR>
* > **Syntax:**<BR>
* >      removeSoftDAC(module)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - PWM module assignment, DAC0, DAC1
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void removeSoftDAC(uint8_t ui8SDACModule)
{
    uint8_t ui8Counter;
    
    /* Run through the scheduler and update the module value */
    for(ui8Counter = 0; ui8Counter < ui8DACScheduleTail; ui8Counter++)
    {
        if(stDACModuleSchedule[ui8Counter].ui8Module == ui8SDACModule)
        {
            /* Make Pin Input */
            makeInput(stDACModuleSchedule[ui8Counter].ui8Pin);  

            /* Swap the tail to current module */
            stDACModuleSchedule[ui8Counter].ui8Module   = stDACModuleSchedule[ui8DACScheduleTail].ui8Module;
            stDACModuleSchedule[ui8Counter].ui8Pin      = stDACModuleSchedule[ui8DACScheduleTail].ui8Pin;
            stDACModuleSchedule[ui8Counter].ui8Value    = stDACModuleSchedule[ui8DACScheduleTail].ui8Value;
            
            /* Decrease the tail */
            ui8DACScheduleTail--;            
        }
    }

    /* Sort schedule from shortest to greatest pulse width */
    bubbleSortDAC(ui8DACScheduleTail);
}

/* Private Functions */
/*******************************************************************************//**
* \brief Set DAC value
*
* > This function is called for setting the DAC value.
* > The DAC value can be set between 0 to 1023.
*
* > <BR>
* > **Syntax:**<BR>
* >      setupSoftDAC(module, value) 
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - DAC module assignment, DAC0, DAC1
* >     value - a value between 0 to 256
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void bubbleSortDAC(uint8_t ui8MaxCount)
{
    bool_t blOnGoing = true;
    uint8_t ui8Counter1 = 0;
    uint8_t ui8Counter, ui8TempBuff;
    
    while(blOnGoing) 
    {
        blOnGoing = false;
        ui8Counter1++;

        for (ui8Counter = 0; ui8Counter < (ui8MaxCount - ui8Counter1); ui8Counter++) 
        {
            if (stDACModuleSchedule[ui8Counter].ui8Value > stDACModuleSchedule[ui8Counter+1].ui8Value) 
            {
                /* Swap Value */
                ui8TempBuff = stDACModuleSchedule[ui8Counter].ui8Value;
                stDACModuleSchedule[ui8Counter].ui8Value = stDACModuleSchedule[ui8Counter+1].ui8Value;
                stDACModuleSchedule[ui8Counter+1].ui8Value = ui8TempBuff;

                /* Swap Pin */
                ui8TempBuff = stDACModuleSchedule[ui8Counter].ui8Pin;
                stDACModuleSchedule[ui8Counter].ui8Pin = stDACModuleSchedule[ui8Counter+1].ui8Pin;
                stDACModuleSchedule[ui8Counter+1].ui8Pin = ui8TempBuff;
                
                /* Swap Module Assignment */
                ui8TempBuff = stDACModuleSchedule[ui8Counter].ui8Module;
                stDACModuleSchedule[ui8Counter].ui8Module = stDACModuleSchedule[ui8Counter+1].ui8Module;
                stDACModuleSchedule[ui8Counter+1].ui8Module = ui8TempBuff;
                
                blOnGoing = true;
            }
        }
    }    
}

/*******************************************************************************//**
* \brief Remove the DAC module
*
* > This function is called for disabling the DAC module
*
* > <BR>
* > **Syntax:**<BR>
* >      removeSoftDAC(module)
* > <BR><BR>
* > **Parameters:**<BR>
* >     module - PWM module assignment, DAC0, DAC1
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void softDACEngine()
{   
    static  uint8_t ui8PrevValue = 0;
            uint8_t ui8Counter;
            bool_t  blScheduleCleared;
    
    blScheduleCleared = false;                  // always false at entry point
    
    while(false == blScheduleCleared)
    {
        switch(ui8DACEngineStates)
        {
            case PERIOD_START:
            {
                /* Set all pins to high except those with 0 value */
                for(ui8Counter=0; ui8Counter < ui8DACScheduleTail; ui8Counter++)
                {
                    if(0 != stDACModuleSchedule[ui8Counter].ui8Value)
                    {
                        setPin(stDACModuleSchedule[ui8Counter].ui8Pin);
                    }
                    else
                    {
                        clrPin(stDACModuleSchedule[ui8Counter].ui8Pin);
                    }
                }
                break;
            }
            case SCHED0:
            {
                /* Schedule 0 Pin set to Low */
                clrPin(stDACModuleSchedule[SCHED0].ui8Pin);
                break;
            }
            case SCHED1:
            {
                /* Schedule 1 Pin set to Low */
                clrPin(stDACModuleSchedule[SCHED1].ui8Pin);
                break;
            }
            case SCHED2:
            {
                /* Schedule 2 Pin set to Low */
                clrPin(stDACModuleSchedule[SCHED2].ui8Pin);
                break;
            }
            case SCHED3:
            {
                /* Schedule 3 Pin set to Low */
                clrPin(stDACModuleSchedule[SCHED3].ui8Pin);
                break;
            }        
            default:
            {
                /* Must not be reached */
                break;
            }
        }
        
        /* Check Schedules */
        blScheduleCleared = true;
        
        if(PERIOD_START == ui8DACEngineStates)
        {
            ui8DACEngineStates = SCHED0;
            
            /* Set next timeout */
            setTimer(TIMER2, stDACModuleSchedule[SCHED0].ui8Value);
            ui8PrevValue = stDACModuleSchedule[SCHED0].ui8Value; 
        }
        else
        {
            /* Set next timeout */
            ui8DACEngineStates++;
            
            if((ui8DACEngineStates < ui8DACScheduleTail)
                && (stDACModuleSchedule[ui8DACEngineStates].ui8Value < K_SOFT_DAC_PERIOD)
            )
            {
                if(ui8PrevValue != stDACModuleSchedule[ui8DACEngineStates].ui8Value)
                {
                    setTimer(TIMER2, (stDACModuleSchedule[ui8DACEngineStates].ui8Value - ui8PrevValue));
                    ui8PrevValue = stDACModuleSchedule[ui8DACEngineStates].ui8Value; 
                }
                else
                {
                    /* If previous and current have same value, don't set interrupt and loop back */
                    blScheduleCleared = false;
                }
            }
            else
            {
                setTimer(TIMER2, (K_SOFT_DAC_PERIOD - ui8PrevValue));
                ui8PrevValue = 0;
                ui8DACEngineStates = PERIOD_START;
            }
        }
    }
}
    
/* end of soft_dac.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------