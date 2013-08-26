/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "hal_gpio.c"                                |
* |:----          |:----                                        |
* |Description:   | General Purpose Input/Output Hardware Abstraction Layer Header File for PIC |
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
* |FW Version   |Date       |Author             |Description                        			|
* |:----        |:----      |:----              |:----                              			|
* |v01.00.00    |201209xx   |Giancarlo A.       |Leverage Library to Standard Architecture		|
* |v01.00.01    |20130405   |ESCII              |Separated module to HAL and Corelib			|
* |v01.01.00    |20130514   |ESCII              |Code Formatted, added tracepoint for unit testing|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "hal_gpio.h"

/* Local Constants */
/* none */

/* Local Variables */
/* none */

/* Private Function Prototypes */
/* none */

/* Public Functions */
/*******************************************************************************//**
* \brief Set a pin either as INPUT or OUTPUT
*
* > This function is called to set pin either as INPUT or OUTPUT
*
* > <BR>
* > **Syntax:**<BR>
* >     configPin(pin, direction)
* > <BR><BR>
* > **Parameters:**<BR>
* >     pin - pin number or ID                                  <BR>
* >     direction - data direction of the pin, INPUT, OUTPUT
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void configPin(uint8_t ui8Pin, uint8_t ui8Direction)
{
    uint8_t* pui8PortDirReg = NULL;

    /* Port C */
    if(ui8Pin <= 7)
    {
        pui8PortDirReg = (uint8_t*)&PORTC_DIR;
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(0);
#endif
    }
    /* Port B */
    else if(ui8Pin <= 13)
    {
        ui8Pin -= 8;
        pui8PortDirReg = (uint8_t*)&PORTB_DIR;
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(1);
#endif
    }
    /* Port A and E */
    else if(ui8Pin <= 20)
    {
        ui8Pin -= 14;

        /* RA0 to RA2 */
        if(ui8Pin <= 2)
        {
            pui8PortDirReg = (uint8_t*)&PORTA_DIR;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(2);
#endif
        }
        /* RA5 */
        else if(ui8Pin == 3)
        {
            ui8Pin += 2;
            pui8PortDirReg = (uint8_t*)&PORTA_DIR;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(3);
#endif
        }
        /* RE0 to RE2 */
        else if(ui8Pin <= 6)
        {
            ui8Pin -= 4;
            pui8PortDirReg = (uint8_t*)&PORTE_DIR;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(4);
#endif
        }
        else
        {
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(5);                           // must not be reached
#endif
            /* assert(); */                                 // must not be reached
        }
    }
    /* Port D */
    else if(ui8Pin <= 28)
    {
        ui8Pin -= 21;
        pui8PortDirReg = (uint8_t*)&PORTD_DIR;
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(6);
#endif
    }
    else
    {
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(7);
#endif
        /* assert(); */                                     // must not be reached
    }

    /* Set Pin Direction */
    if(NULL != pui8PortDirReg)
    {
        if(INPUT == ui8Direction)
        {
            *pui8PortDirReg |= (1<<ui8Pin);                 // set as input
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(8);
#endif
        }
        else
        {
            *pui8PortDirReg &= ~(1<<ui8Pin);                // set as output
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(9);
#endif
        }
    }
    else
    {
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(10);                              // must not be reached
#endif
        /* assert(); */                                     // null pointer
    }
}

/*******************************************************************************//**
* \brief Change the state of the Pin
*
* > This function is called to change the state of the pin to either set to HIGH,
* > clear to LOW, or toggle the current state.
*
* > <BR>
* > **Syntax:**<BR>
* >      changePinState(pin, operation)
* > <BR><BR>
* > **Parameters:**<BR>
* >     pin - pin number or ID    <BR>
* >     operation - pin state change operation, SET_PIN, CLR_PIN, TOGGLE_PIN
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void changePinState(uint8_t ui8Pin, enum PinStateOperation_et eOperation)
{
    uint8_t* pui8PortReg = NULL;

    /* Port C */
    if(ui8Pin <= 7)
    {
        pui8PortReg = (uint8_t*)&PORTC_OUT;
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(0);
#endif
    }
    /* Port B */
    else if(ui8Pin <= 13)
    {
        ui8Pin -= 8;
        pui8PortReg = (uint8_t*)&PORTB_OUT;
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(1);
#endif
    }
    /* Port A and E */
    else if(ui8Pin <= 20)
    {
        ui8Pin -= 14;

        /* RA0 to RA2 */
        if(ui8Pin <= 2)
        {
            pui8PortReg = (uint8_t*)&PORTA_OUT;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(2);
#endif
        }
        /* RA5 */
        else if(ui8Pin == 3)
        {
            ui8Pin += 2;
            pui8PortReg = (uint8_t*)&PORTA_OUT;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(3);
#endif
        }
        /* RE0 to RE2 */
        else if(ui8Pin <= 6)
        {
            ui8Pin -= 4;
            pui8PortReg = (uint8_t*)&PORTE_OUT;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(4);
#endif
        }
        else
        {
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(5);                       // must not be reached
#endif
            /* assert(); */                             // must not be reached
        }
    }
    /* Port D */
    else if(ui8Pin <= 28)
    {
        ui8Pin -= 21;
        pui8PortReg = (uint8_t*)&PORTD_OUT;
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(6);
#endif
    }
    else
    {
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(7);                           // must not be reached
#endif
        /* assert(); */                                 // must not be reached
    }

    /* Set Pin Direction */
    if(NULL != pui8PortReg)
    {
        if(SET_PIN == eOperation)
        {
            *pui8PortReg |= (1<<ui8Pin);                // set pin
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(8);
#endif
        }
        else if(CLR_PIN == eOperation)
        {
            *pui8PortReg &= ~(1<<ui8Pin);               // clear pin
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(9);
#endif
        }
        else
        {
            *pui8PortReg ^= (1<<ui8Pin);                // toggle pin
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(10);
#endif
        }
    }
    else
    {
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(11);                          // must not be reached
#endif
        /* assert(); */                                 // null pointer
    }
}

/*******************************************************************************//**
* \brief Get the current state of the Pin
*
* > This function is called to get the current state of the Pin
*
* > <BR>
* > **Syntax:**<BR>
* >     checkPinState(pin)
* > <BR><BR>
* > **Parameters:**<BR>
* >     pin - pin number or ID
* > <BR><BR>
* > **Returns:**<BR>
* >     bool_t pin_state - the state of the read pin, HIGH or LOW
* > <BR><BR>
***********************************************************************************/
/*@null@*/
bool_t checkPinState(uint8_t ui8Pin)
{
    uint8_t ui8PinStatus, ui8PinMask;
    uint8_t* pui8PortReg = NULL;

    /* Port C */
    if(ui8Pin <= 7)
    {
        pui8PortReg = (uint8_t*)&PORTC_VAL;
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(0);
#endif
    }
    /* Port B */
    else if(ui8Pin <= 13)
    {
        ui8Pin -= 8;
        pui8PortReg = (uint8_t*)&PORTB_VAL;
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(1);
#endif
    }
    /* Port A and E */
    else if(ui8Pin <= 20)
    {
        ui8Pin -= 14;

        /* RA0 to RA2 */
        if(ui8Pin <= 2)
        {
            pui8PortReg = (uint8_t*)&PORTA_VAL;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(2);
#endif
        }
        /* RA5 */
        else if(ui8Pin == 3)
        {
            ui8Pin += 2;
            pui8PortReg = (uint8_t*)&PORTA_VAL;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(3);
#endif
        }
        /* RE0 to RE2 */
        else if(ui8Pin <= 6)
        {
            ui8Pin -= 4;
            pui8PortReg = (uint8_t*)&PORTE_VAL;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(4);
#endif
        }
        else
        {
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(5);                                   // must not be reached
#endif
            /* assert(); */                                 		// must not be reached
        }
    }
    /* Port D */
    else if(ui8Pin <= 28)
    {
        ui8Pin -= 21;
        pui8PortReg = (uint8_t*)&PORTD_VAL;
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(6);
#endif
    }
    else
    {
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(7);                                       // must not be reached
#endif
        /* assert(); */                                             // must not be reached
    }

    /* Get Pin State */
    if(NULL != pui8PortReg)
    {
        ui8PinMask = (1<<ui8Pin);
        ui8PinStatus = *pui8PortReg&ui8PinMask;

        if(ui8PinMask == ui8PinStatus)
        {
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(8);
#endif
            return HIGH;
        }
        else
        {
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(9);
#endif
            return LOW;
        }
    }
    else
    {
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(10);                                      // must not be reached
#endif
        /* assert(); */
        return LOW;                                                 // must not be reached
    }
}

/* Private Functions */
/* none */

/* end of hal_gpio.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
