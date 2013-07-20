/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "soft_dac.c"                                |
* |:----          |:----                                        |
* |Description:   | This is a library for Software Implemented Digital to Analog Converter function. |
* |Revision:      | v00.00.02                                   |
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
* |v00.00.02    |20130402   |ESCII              |softDACController local variables made static because it is accessed from interrupt|
*********************************************************************************************/
#define __SHOW_SCHED_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_SCHED_HEADER__

#include "soft_dac.h"

/* Local Constants */
static enum DACStates_e
{
    SCHED0
    ,SCHED1
    ,SCHED2
    ,SCHED3
    ,PERIOD_START
};

/* Local Variables */
#ifdef S_SPLINT_S // Suppress SPLint Parse Errors 
    #define bool_t  bool
#endif  
    
static struct DAC_Module_s
{
    uint8_t ui8Module;
    uint8_t ui8Pin;
    uint8_t ui8Value;
};

static struct DAC_Module_s    astDACModuleSchedule[MAX_NUM_OF_SDAC];

static uint8_t      ui8DACEngineStates = PERIOD_START;
static uint8_t      ui8DACScheduleTail = 0;
static uint8_t      ui8PrevValue = 0;

/* Private Function Prototypes */
static void softDACController();
static void bubbleSortDAC(uint8_t ui8MaxCount);
    
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
void setupSoftDAC(enum SoftDACModules_e eSDACModule, uint8_t ui8Pin, uint8_t ui8Value) 
{
    static bool_t   blKickstarted = false;
           bool_t   blScheduled = false;
           uint8_t  ui8Counter;
    
    /* can accurately set only between 7 and 250 */
    /* a problem possibly caused by mcu speed limitation(or bug on 8bit timer) that when set to low value the ton and the period are extended */
    if(ui8Value < 7)
    {
        ui8Value = 7;
    }
    else if(ui8Value > 250)
    {
        ui8Value = 255;
    }
    else
    {
        /* do nothing */
    }
    
    /* Use 8Bit Timer Peripheral */
    setup8BitTimer(K_DAC_TIMER,softDACController);

    /* Setup Output Pin */
    makeOutput(ui8Pin);                                     // make pin output
    clrPin(ui8Pin);                                         // set pin low until the next period starts
    
    /* Run through the schedule table to check if already scheduled */
    for(ui8Counter = 0; ui8Counter < ui8DACScheduleTail; ui8Counter++)
    {
        if(astDACModuleSchedule[ui8Counter].ui8Module == eSDACModule)
        {
            /* Just update the values if already scheduled */
            astDACModuleSchedule[ui8Counter].ui8Pin      = ui8Pin;
            astDACModuleSchedule[ui8Counter].ui8Value    = ui8Value;
            
            blScheduled = true;
        }
    }

    /* Store at the tail if not yet scheduled */
    if(false == blScheduled)
    {
        astDACModuleSchedule[ui8DACScheduleTail].ui8Module   = eSDACModule;
        astDACModuleSchedule[ui8DACScheduleTail].ui8Pin      = ui8Pin;
        astDACModuleSchedule[ui8DACScheduleTail].ui8Value    = ui8Value;
        ui8DACScheduleTail++;
    }

    /* Kickstart */
    if(false == blKickstarted)
    {   
        blKickstarted = true;
        
        /* Set sched 0 pin to high except if 0 value */
        if(0 != astDACModuleSchedule[SCHED0].ui8Value)
        {
            setPin(astDACModuleSchedule[SCHED0].ui8Pin);
        }
        else
        {
            clrPin(astDACModuleSchedule[SCHED0].ui8Pin);
        }
        
        ui8DACEngineStates = SCHED0;

        /* Set next timeout */
        if(astDACModuleSchedule[SCHED0].ui8Value < K_SOFT_DAC_PERIOD)
        {
            set8BitTimer(K_DAC_TIMER, astDACModuleSchedule[SCHED0].ui8Value);
            ui8PrevValue = astDACModuleSchedule[SCHED0].ui8Value;            
        }
        else
        {
            set8BitTimer(K_DAC_TIMER, K_SOFT_DAC_PERIOD);
            ui8DACEngineStates = PERIOD_START;            
        }
    }
    else
    {
        /* Sort schedule from shortest to longest pulse width */
        bubbleSortDAC(ui8DACScheduleTail);
    }
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
void setSoftDAC(enum SoftDACModules_e eSDACModule, uint8_t ui8Value) 
{
    uint8_t ui8Counter;
    
    /* Run through the scheduler and update the module value */
    for(ui8Counter = 0; ui8Counter < ui8DACScheduleTail; ui8Counter++)
    {
        if(astDACModuleSchedule[ui8Counter].ui8Module == eSDACModule)
        {
            astDACModuleSchedule[ui8Counter].ui8Value = ui8Value;
            
            if(0 == ui8Value)
            {
                clrPin(astDACModuleSchedule[ui8Counter].ui8Pin);         // set pin low until the next period starts
            }
            else if(255 == ui8Value)
            {
                setPin(astDACModuleSchedule[ui8Counter].ui8Pin);         // set pin low until the next period starts
            }
            else
            {
                /* Do Nothing */
            }
        }
    }
    
    /* Sort schedule from shortest to longest pulse width */
    bubbleSortDAC(ui8DACScheduleTail);
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
void removeSoftDAC(enum SoftDACModules_e eSDACModule)
{
    uint8_t ui8Counter;
    
    /* Run through the scheduler and update the module value */
    for(ui8Counter = 0; ui8Counter < ui8DACScheduleTail; ui8Counter++)
    {
        if(astDACModuleSchedule[ui8Counter].ui8Module == eSDACModule)
        {
            /* Make Pin Input */
            makeInput(astDACModuleSchedule[ui8Counter].ui8Pin);  

            /* Swap the tail to current module */
            astDACModuleSchedule[ui8Counter].ui8Module   = astDACModuleSchedule[ui8DACScheduleTail].ui8Module;
            astDACModuleSchedule[ui8Counter].ui8Pin      = astDACModuleSchedule[ui8DACScheduleTail].ui8Pin;
            astDACModuleSchedule[ui8Counter].ui8Value    = astDACModuleSchedule[ui8DACScheduleTail].ui8Value;
            
            /* Decrease the tail */
            ui8DACScheduleTail--;            
        }
    }

    /* Sort schedule from shortest to longest pulse width */
    bubbleSortDAC(ui8DACScheduleTail);
}

/* Private Functions */
/*******************************************************************************//**
* \brief Sort the Software DAC schedule
*
* > This function sorts the Software DAC schedule from shortest to longest pulse width
*
* > <BR>
* > **Syntax:**<BR>
* >      bubbleSortDAC(num_of_elements)
* > <BR><BR>
* > **Parameters:**<BR>
* >     num_of_elements - maximum number of elements of the table to be sorted
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
static void bubbleSortDAC(uint8_t ui8MaxCount)
{
    static bool_t  blOnGoing = true;
    static uint8_t ui8Counter, ui8TempBuff, ui8Counter1 = 0;
    
    blOnGoing = true;
    ui8Counter1 = 0;
    
    while(blOnGoing) 
    {
        blOnGoing = false;
        ui8Counter1++;

        for (ui8Counter = 0; ui8Counter < (ui8MaxCount - ui8Counter1); ui8Counter++) 
        {
            ui8TempBuff = astDACModuleSchedule[ui8Counter+1].ui8Value;                  // XC8 BUG, cannot generate code if directly plugged onto if expression
            if (astDACModuleSchedule[ui8Counter].ui8Value > ui8TempBuff) 
            {
                /* Swap Module Assignment */
                ui8TempBuff = astDACModuleSchedule[ui8Counter].ui8Module;
                astDACModuleSchedule[ui8Counter].ui8Module = astDACModuleSchedule[ui8Counter+1].ui8Module;
                astDACModuleSchedule[ui8Counter+1].ui8Module = ui8TempBuff;
                
                /* Swap Value */
                ui8TempBuff = astDACModuleSchedule[ui8Counter].ui8Value;
                astDACModuleSchedule[ui8Counter].ui8Value = astDACModuleSchedule[ui8Counter+1].ui8Value;
                astDACModuleSchedule[ui8Counter+1].ui8Value = ui8TempBuff;

                /* Swap Pin */
                ui8TempBuff = astDACModuleSchedule[ui8Counter].ui8Pin;
                astDACModuleSchedule[ui8Counter].ui8Pin = astDACModuleSchedule[ui8Counter+1].ui8Pin;
                astDACModuleSchedule[ui8Counter+1].ui8Pin = ui8TempBuff;
                               
                blOnGoing = true;
            }
        }
    }    
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
static void softDACController()
{   
    static uint8_t ui8Counter = 0;
    static bool_t  blScheduleCleared = false;
    
    blScheduleCleared = false;                  // always false at entry point
    
    while((false == blScheduleCleared) && (ui8DACScheduleTail > 0))
    {
        switch(ui8DACEngineStates)
        {
            case PERIOD_START:
            {
                /* Set all pins to high except those with 0 value */
                for(ui8Counter=0; ui8Counter < ui8DACScheduleTail; ui8Counter++)
                {
                    if(0 != astDACModuleSchedule[ui8Counter].ui8Value)
                    {
                        setPin(astDACModuleSchedule[ui8Counter].ui8Pin);
                    }
                    else
                    {
                        clrPin(astDACModuleSchedule[ui8Counter].ui8Pin);
                    }
                }
                break;
            }
            case SCHED0:
            {
                /* Schedule 0 Pin set to Low */
                clrPin(astDACModuleSchedule[SCHED0].ui8Pin);
                break;
            }
            case SCHED1:
            {
                /* Schedule 1 Pin set to Low */
                clrPin(astDACModuleSchedule[SCHED1].ui8Pin);
                break;
            }
            case SCHED2:
            {
                /* Schedule 2 Pin set to Low */
                clrPin(astDACModuleSchedule[SCHED2].ui8Pin);
                break;
            }
            case SCHED3:
            {
                /* Schedule 3 Pin set to Low */
                clrPin(astDACModuleSchedule[SCHED3].ui8Pin);
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
            if(astDACModuleSchedule[SCHED0].ui8Value < K_SOFT_DAC_PERIOD)
            {
                set8BitTimer(K_DAC_TIMER, astDACModuleSchedule[SCHED0].ui8Value);
                ui8PrevValue = astDACModuleSchedule[SCHED0].ui8Value;            
            }
            else
            {
                set8BitTimer(K_DAC_TIMER, (K_SOFT_DAC_PERIOD - ui8PrevValue));
                ui8PrevValue = 0;
                ui8DACEngineStates = PERIOD_START;            
            }
        }
        else
        {
            /* Set next timeout */
            ui8DACEngineStates++;
            
            if((ui8DACEngineStates < ui8DACScheduleTail)
                && (astDACModuleSchedule[ui8DACEngineStates].ui8Value < K_SOFT_DAC_PERIOD)
            )
            {
                /* check if previous and current have same values */
                if(ui8PrevValue != astDACModuleSchedule[ui8DACEngineStates].ui8Value)
                {
                    set8BitTimer(K_DAC_TIMER, (astDACModuleSchedule[ui8DACEngineStates].ui8Value - ui8PrevValue));
                    ui8PrevValue = astDACModuleSchedule[ui8DACEngineStates].ui8Value; 
                }
                else
                {
                    /* If previous and current have same values, don't set interrupt and loop back */
                    blScheduleCleared = false;
                }
            }
            else
            {
                set8BitTimer(K_DAC_TIMER, (K_SOFT_DAC_PERIOD - ui8PrevValue));
                ui8PrevValue = 0;
                ui8DACEngineStates = PERIOD_START;
            }
        }
    }
}
    
/* end of soft_dac.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------