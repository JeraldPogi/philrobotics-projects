/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_uart.h"                                |
* |:----          |:----                                        |
* |Description:   | This is a header file of the serial/uart library |
* |Revision:      | v01.01.01                                   |
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
* |v01.01.01    |20130521   |ESCII              |Added 18F4520 Configuration of Baudrates|
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
enum stdBaudrate_et
{
    STD_BAUD_1200       = 1200UL,
    STD_BAUD_2400       = 2400UL,
    STD_BAUD_4800       = 4800UL,
    STD_BAUD_9600       = 9600UL,
    STD_BAUD_19200      = 19200UL,
    STD_BAUD_38400      = 38400UL,
    STD_BAUD_57600      = 57600UL,
    STD_BAUD_115200     = 115200UL
};

// @ BRGH 0: BRG = [Fosc / (Baud * 64)] - 1
// @ BRGH 1: BRG = [Fosc / (Baud * 16)] - 1
#define HIGH_BAUDRATE               1
#define LOW_BAUDRATE                0

#if (_XTAL_FREQ == 32000000)
///#define BAUD_1200_BRGVAL         417     // BRGH = 0, ?% error,      (Off the scale)
#define BAUD_2400_BRGVAL            208     // BRGH = 0, ?% error,
#define BAUD_4800_BRGVAL            104     // BRGH = 0, ?% error,
#define BAUD_9600_BRGVAL            208     // BRGH = 1, ?% error,
#define BAUD_19200_BRGVAL           104     // BRGH = 1, ?% error,
#define BAUD_38400_BRGVAL           52      // BRGH = 1, ?% error,
#define BAUD_57600_BRGVAL           35      // BRGH = 1, ?% error,
#define BAUD_115200_BRGVAL          17      // BRGH = 1, ?% error,

#elif (_XTAL_FREQ == 20000000)
#define BAUD_1200_BRGVAL            255     // BRGH = 0, 1.75% error,   1220.7
#define BAUD_2400_BRGVAL            129     // BRGH = 0, 0.17% error,   2403.8
#define BAUD_4800_BRGVAL            64      // BRGH = 0, 0.00% error,   4807.7
#define BAUD_9600_BRGVAL            129     // BRGH = 1, 0.16% error,   9615.4
#define BAUD_19200_BRGVAL           64      // BRGH = 1, 0.16% error,   19230.8
#define BAUD_38400_BRGVAL           32      // BRGH = 1, 0.00% error,   39062.5
#define BAUD_57600_BRGVAL           20      // BRGH = 1, 3.34% error,   56818.2
#define BAUD_115200_BRGVAL          10      // BRGH = 1, 0.00% error,   113636.4

#elif (_XTAL_FREQ == 8000000)
#define BAUD_1200_BRGVAL            103     // BRGH = 0, 0.16% error,   1201
#define BAUD_2400_BRGVAL            51      // BRGH = 0, 0.16% error,   2403
#define BAUD_4800_BRGVAL            25      // BRGH = 0, 0.16% error,   4808
#define BAUD_9600_BRGVAL            51      // BRGH = 1, 0.16% error,   9615
#define BAUD_19200_BRGVAL           25      // BRGH = 1, 0.16% error,   19230
#define BAUD_38400_BRGVAL           12      // BRGH = 1, 0.16% error,   38462
#define BAUD_57600_BRGVAL           8       // BRGH = 1, 0.16% error,   55555
//#define BAUD_115200_BRGVAL                // BRGH = 1, 0.00% error,   113636.4 unsupported at the moment

#else

#ifndef S_SPLINT_S // Suppress SPLint Unrecognized ID Errors
#error No Defined Clock Frequency!!!
#else
#define BAUD_1200_BRGVAL            0
#define BAUD_2400_BRGVAL            0
#define BAUD_4800_BRGVAL            0
#define BAUD_9600_BRGVAL            0
#define BAUD_19200_BRGVAL           0
#define BAUD_38400_BRGVAL           0
#define BAUD_57600_BRGVAL           0
#define BAUD_115200_BRGVAL          0
#endif

#endif

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

#define hal_checkUARTRxError()                  ((BIT_RCSTA_OERR) ? true : false)

#define hal_restartUARTRx()                     \
    BIT_RCSTA_CREN = 0;                         \
    BIT_RCSTA_CREN = 1                          // semi-collon intentionally omitted

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
#ifdef S_SPLINT_S /* Suppress SPLint Unrecognized ID Errors */
#define uint24_t  uint32_t                          // esc.comment: use with caution
#endif
void hal_setSerialBAUD(uint24_t ui24Baudrate);

#endif /* end of hal_uart.h */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
