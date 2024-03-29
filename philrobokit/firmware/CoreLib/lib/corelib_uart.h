/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_uart.h"                            |
* |:----          |:----                                        |
* |Description:   | This is a header file of the serial/uart library |
* |Revision:      | v01.01.00                                   |
* |Author:        | Giancarlo Acelajado                         |
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
* |v00.01.00    |201112xx   |Giancarlo A.       |Library Initial Release            |
* |v00.01.01    |201201xx   |Giancarlo A.       |Add serialFlush Routine            |
* |v01.00.00    |201210xx   |Giancarlo A.       |Leverage Library to Standard Architecture|
* |v01.00.01    |20130228   |ESCII              |Separated module to HAL and Corelib|
* |v01.00.02    |20130405   |ESCII              |Changed block lenght datatype from u16 to ui8|
* |v01.01.00    |20130514   |ESCII              |Code Formatted, Fixed SPLINT warning, included unit test stub|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __PH_UART_H__
#define __PH_UART_H__

/* Include .h Library Files */
#ifdef UNIT_TEST                                    // autodefined at unit testing script
#include "corelib_uart_test_stub.h"
#else
#include <string.h>
#include "hal_uart.h"
#endif

/* User Configuration Definitions */
#define K8_UART_BUFFER_SIZE                         (32)

/* Global Constants */
struct UARTBuff_s
{
    uint8_t     aui8Buffer[K8_UART_BUFFER_SIZE];
    uint8_t     ui8Head;
    uint8_t     ui8Tail;
};

#ifdef UNIT_TEST
extern struct UARTBuff_s   stUARTTXFiFo;
extern struct UARTBuff_s   stUARTRXFiFo;
#endif

/* Macro and Configuration Definitions */
/* none */

/* Public Function Prototypes */
void setupSerial(uint16_t ui16Baudrate);

void serialWrite(uint8_t ui8TxData);
void serialWriteString(const uchar_t* pucStrTxData);
void serialWriteBlock(uint8_t* pui8StrTxData, uint8_t ui8Size);

uint8_t serialDataCount(void);
uint8_t serialRead(void);

void serialFlush(void);

void serialRxISR(void);
void serialTxISR(void);

#endif /* end of corelib_uart.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
