/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_uart.c"                                |
* |:----          |:----                                        |
* |Description:   | This is a library for using the serial/uart functions |
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
* |v01.01.00    |20130514   |ESCII              |Code Formatted						|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "hal_uart.h"

/* Local Constants */
/* none */

/* Local Variables */
/* none */

/* Private Function Prototypes */
/* none */

/* Public Functions */
/*******************************************************************************//**
* \brief Set UART peripheral baudrate
*
* > This function is called for setting up the UART baudrate
*
* > <BR>
* > **Syntax:**<BR>
* >     hal_setSerialBAUD(baudrate)
* > <BR><BR>
* > **Parameters:**<BR>
* >     baudrate - desired UART baudrate (supports only standard baudrates)
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void hal_setSerialBAUD(uint16_t ui16Baudrate)
{
    BIT_TXSTA_BRGH = 1;                     // High Speed Asyncronous [SPBRG = FOSC/(16*baud) - 1]

    if(ui16Baudrate < 4883)                 // @20MHz clk
    {
        BIT_TXSTA_BRGH = 0;                 // Low Speed Asyncronous  [SPBRG = FOSC/(64*baud) - 1]
    }

    switch(ui16Baudrate)                    // FOSC = 20MHz
    {
        case 1200:
        {
            REGISTER_SPBRG = 255;           // 1220.7
            break;
        }

        case 4800:                          // intentional fallthrough
        case 19200:
        {
            REGISTER_SPBRG = 64;            // 4807.7 or 19230.8
            break;
        }

        case 38400:
        {
            REGISTER_SPBRG = 32;            // 39062.5
            break;
        }

        case 57600:
        {
            REGISTER_SPBRG = 21;            // 56818.2
            break;
        }

        case 115200:
        {
            REGISTER_SPBRG = 10;            // 113636.4
            break;
        }

        case 230400:
        {
            REGISTER_SPBRG = 4;             // 250000.0 (8.5% error!)
            break;
        }

        case 2400:                          // intentional fallthrough
        case 9600:                          // intentional fallthrough (default)
        default:
        {
            REGISTER_SPBRG = 129;           // 2403.8 or 9615.4
            break;
        }
    }
}

/* Private Functions */
/* none */

/* end of hal_uart.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
