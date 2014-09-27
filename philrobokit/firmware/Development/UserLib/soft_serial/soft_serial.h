/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "soft_serial.h"                             |
* |:----          |:----                                        |
* |Description:   | This is a header file of the serial/uart library |
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
* |v00.01.00    |20130924   |ESCII              |Library Initial Release            |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PH_SUART_H__
#define __PH_SUART_H__

/* Include .h Library Files */
#ifdef UNIT_TEST                                            // autodefined at unit testing script
#include "corelib_uart_test_stub.h"
#else
#include <PhilRoboKit_CoreLib_Macro.h>
#include "corelib_8bit_timer.h"
#include "corelib_gpio.h"
#include <string.h>
#include "hal_uart.h"
#include "corelib_uart.h"
#endif

/* User Configuration Definitions */
#define K_SUART_TIMER                           TIMER2
#define K8_SUART_BUFFER_SIZE                    (16)

/* Global Constants */
//#define K_SOFT_SERIAL_POLLING_INTERVAL          3       // 9600bps (0.034mS)
//#define K_SOFT_SERIAL_POLLING_INTERVAL          7         // 4800bps (0.069mS)
#define K_SOFT_SERIAL_POLLING_INTERVAL          14        // 2400bps (0.139mS)

enum SoftUARTModules_e
{
    SUART0
    ,SUART1
    ,MAX_NUM_OF_SUART
};

#ifdef UNIT_TEST
extern struct SUART_TXBuff_s   stSUART_TXFiFo[];
extern struct SUART_RXBuff_s   stSUART_RXFiFo[];
#endif

/* Macro and Configuration Definitions */
/* none */

/* Public Function Prototypes */
void setupSoftSerial(enum SoftUARTModules_e eSUARTModule, uint8_t ui8TXPin, uint8_t ui8RXPin, uint16_t ui16Baudrate);

void serialSoftWrite(enum SoftUARTModules_e eSUARTModule, uint8_t ui8TxData);
void serialSoftWriteString(enum SoftUARTModules_e eSUARTModule, const uchar_t* pucStrTxData);
void serialSoftWriteBlock(enum SoftUARTModules_e eSUARTModule, uint8_t* pui8StrTxData, uint8_t ui8Size);

uint8_t serialSoftDataCount(enum SoftUARTModules_e eSUARTModule);
uint8_t serialSoftRead(enum SoftUARTModules_e eSUARTModule);

void serialSoftFlush(enum SoftUARTModules_e eSUARTModule);
void removeSoftUART(enum SoftUARTModules_e eSUARTModule);

#endif /* end of soft_serial.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
