/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "pulse.h"                                   |
* |:----          |:----                                        |
* |Description:   | This is a header file for the Software Implemented DAC library   |
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
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PH_PULSE_H__
#define __PH_PULSE_H__

/* Include .h Library Files */
#include <PhilRoboKit_CoreLib_Macro.h>
#include "corelib_8bit_timer.h"

/* User Configuration Definitions */
#define K_PULSE_CYCLE_TIMER         TIMER2
    
/* Global Constants */
enum PulseModules_e
{
    PULSE0
    ,PULSE1
    ,PULSE2
    ,PULSE3
    ,MAX_NUM_OF_PULSE
};

/* Macro and Configuration Definitions */
    /* none */
    
/* Public Function Prototypes */
void setupPulseMeasurement(enum PulseModules_e ePulseModule, uint8_t ui8Pin, bool_t blActivelogic, uint16_t ui16Timeout);
void setupPulseCounter(enum PulseModules_e ePulseModule, uint8_t ui8Pin, bool_t blEdge, uint16_t ui16Timeout);
bool_t pulseAvailable(enum PulseModules_e ePulseModule);
uint16_t getPulseWidth(enum PulseModules_e ePulseModule);
uint16_t getPulseCount(enum PulseModules_e ePulseModule);

void removePulse(enum PulseModules_e ePulseModule);

#endif /* end of pulse.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------	