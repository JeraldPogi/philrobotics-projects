/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_uart.c"                                |
* |:----          |:----                                        |
* |Description:   | This is a library for using the serial/uart functions |
* |Revision:      | v01.01.02                                   |
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
* |v01.01.00    |20130514   |ESCII              |Code Formatted                     |
* |v01.01.01    |20130520   |ESCII              |Modified implementation for PIC18F2550 compatibility, added unit test tracepoints|
* |v01.01.02    |20130521   |ESCII              |Added 18F4520 Configuration of Baudrates|
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
void hal_setSerialBAUD(uint24_t ui16Baudrate)
{
    switch(ui16Baudrate)
    {
        case STD_BAUD_9600:
        {
            BIT_TXSTA_BRGH = HIGH_BAUDRATE;
            REGISTER_SPBRG = BAUD_9600_BRGVAL;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(0);
#endif
            break;
        }

        case STD_BAUD_57600:
        {
            BIT_TXSTA_BRGH = HIGH_BAUDRATE;
            REGISTER_SPBRG = BAUD_57600_BRGVAL;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(1);
#endif
            break;
        }

#if (_XTAL_FREQ != 8000000)

        case STD_BAUD_115200:
        {
            BIT_TXSTA_BRGH = HIGH_BAUDRATE;
            REGISTER_SPBRG = BAUD_115200_BRGVAL;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(2);
#endif
            break;
        }

#endif

        case STD_BAUD_19200:
        {
            BIT_TXSTA_BRGH = HIGH_BAUDRATE;
            REGISTER_SPBRG = BAUD_19200_BRGVAL;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(3);
#endif
            break;
        }

        case STD_BAUD_4800:
        {
            BIT_TXSTA_BRGH = LOW_BAUDRATE;
            REGISTER_SPBRG = BAUD_4800_BRGVAL;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(4);
#endif
            break;
        }

        case STD_BAUD_38400:
        {
            BIT_TXSTA_BRGH = HIGH_BAUDRATE;
            REGISTER_SPBRG = BAUD_38400_BRGVAL;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(5);
#endif
            break;
        }

        case STD_BAUD_2400:
        {
            BIT_TXSTA_BRGH = LOW_BAUDRATE;
            REGISTER_SPBRG = BAUD_2400_BRGVAL;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(6);
#endif
            break;
        }

#if(_XTAL_FREQ != 32000000)

        case STD_BAUD_1200:
        {
            BIT_TXSTA_BRGH = LOW_BAUDRATE;
            REGISTER_SPBRG = BAUD_1200_BRGVAL;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(7);
#endif
            break;
        }

#endif

        default:    // default is 9600 Baudrate
        {
            BIT_TXSTA_BRGH = HIGH_BAUDRATE;
            REGISTER_SPBRG = BAUD_9600_BRGVAL;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(8);
#endif
            break;
        }
    }
}

/* Private Functions */
/* none */

/* end of hal_uart.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
