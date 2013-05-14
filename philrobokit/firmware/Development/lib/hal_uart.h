/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_uart.h"                                |
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
* |v01.01.00    |20130514   |ESCII              |Code Formatted, Fixed SPLINT warning, included unit test stub|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#ifndef __HAL_UART_H__
#define __HAL_UART_H__

/* Include .h Library Files */
#ifdef UNIT_TEST                                    // autodefined at unit testing script
#include "hal_uart_test_stub.h"
#else
#include <PhilRoboKit_CoreLib_Macro.h>
#endif

/* User Configuration Definitions */
/* none */

/* Global Constants */
/* none */

/* Macro and Configuration Definitions */
/* TX Macro */
#define hal_enableUARTTXInt()                   (BIT_PIE1_TXIE = 1)
#define hal_disableUARTTXInt()                  (BIT_PIE1_TXIE = 0)
#define hal_getUARTTXIntEnableStatus()          ((BIT_PIE1_TXIE) ? true : false)

#define hal_clrUARTTXIntFlag()                  (BIT_PIR1_TXIF = 0)
#define hal_getUARTTXIntFlag()                  ((BIT_PIR1_TXIF) ? true : false)

#define K_TXREG_BUFF                            (REGISTER_TXREG)

/* RX Macro */
#define hal_enableUARTRXInt()                   (BIT_PIE1_RCIE = 1)
#define hal_disableUARTRXInt()                  (BIT_PIE1_RCIE = 0)
#define hal_getUARTRXIntEnableStatus()          ((BIT_PIE1_RCIE) ? true : false)

#define hal_clrUARTRXIntFlag()                  (BIT_PIR1_RCIF = 0)
#define hal_getUARTRXIntFlag()                  ((BIT_PIR1_RCIF) ? true : false)

#define K_RXREG_BUFF                            (REGISTER_RCREG)

/* Serial Config */
// 8-Bit
// Assynchronous Mode
#define hal_enableSerialTX()                    \
    BIT_TXSTA_TX9 = 0;                          \
    BIT_TXSTA_SYNC = 0;                         \
    BIT_TXSTA_TXEN = 1                          // semi-collon intentionally omitted

#define hal_disableSerialTX()                   \
    BIT_TXSTA_TXEN = 0                          // semi-collon intentionally omitted
// makePinInput();                                esc.comment: UART TX Pin to be set as input

// 8-Bit
// Continous Rx
#define hal_enableSerialRX()                    \
    BIT_RCSTA_RX9 = 0;                          \
    BIT_RCSTA_CREN = 1;                         \
    BIT_RCSTA_SPEN = 1                          // semi-collon intentionally omitted

#define hal_disableSerialRX()                   \
    BIT_RCSTA_SPEN = 0                          // semi-collon intentionally omitted
// makeInput();                                   esc.comment: UART RX Pin to be set as input

/* Public Function Prototypes */
void hal_setSerialBAUD(uint16_t ui16Baudrate);

#endif /* end of hal_uart.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
