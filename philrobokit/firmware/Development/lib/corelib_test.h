/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_test.h"                            |
* |:----          |:----                                        |
* |Description:   | PhilRobokit Test Library Header             |
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
* |v00.00.01    |20130408   |ESC II             |Library Initial Release            |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PHILROBOKIT_TEST_H__
#define __PHILROBOKIT_TEST_H__

/* Include .h Library Files */
    /* none */

/* User Configuration Definitions */
#define __TEST_OFF__                                    (0)
#define __STACK_TEST__                                  (1)             // Stack Level Analysis Testing
#define __WCET_TEST__                                   (2)             // Worst Case Execution Time Testing
#define __UNIT_TEST__                                   (3)             // ucunit Testing

    /* 
        Warning: stack test does not provide accurate count of the stack used. This will just give you an idea of 
        how deep function calls are. The stack depth provided by stack test will always be less than the actual usage.
    */
#define __TEST_MODE__                                   __TEST_OFF__

/* Global Constants */      
#if (__TEST_MODE__==__STACK_TEST__)
    #include "hal_uart.h"
    #include "corelib_uart.h"

    volatile uint8_t     gui8StackLevelCounter = 0;
    volatile uint8_t     gui8MaxStackLevel = 0;
#endif

/* Macro and Configuration Definitions */
#if (__TEST_MODE__==__STACK_TEST__)
    #define initStack(value)                            \
    {                                                   \
        setupSerial(9600);                              \
        (gui8StackLevelCounter = value);                \
    }
    
    #define incrementStack(function_id)                 \
        gui8StackLevelCounter++;                        \
        if(gui8StackLevelCounter>gui8MaxStackLevel)     \
        {                                               \
            gui8MaxStackLevel = gui8StackLevelCounter;  \
            serialWrite(0xFF);                          \
            serialWrite(function_id);                   \
            serialWrite(gui8MaxStackLevel);             \
        }
        
    #define decrementStack()                            \
        if(0 != gui8StackLevelCounter)                  \
            gui8StackLevelCounter--                     // semi-collon intentionally omitted 
        
    #define getMaxStackValue()                          (gui8MaxStackLevel)
#endif

/* Public Function Prototypes */ 
    /* none */
    
#endif/* end of corelib_test.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------