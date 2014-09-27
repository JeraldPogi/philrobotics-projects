/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_uart.c"                            |
* |:----          |:----                                        |
* |Description:   | This is a library for using the serial/uart functions |
* |Revision:      | v01.01.03                                   |
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
* |v01.01.01    |20130515   |ESCII              |Fixed SPLINT errors                |
* |v01.01.02    |20130521   |ESCII              |Fixed unit test errors             |
* |v01.01.03    |20130521   |ESCII              |Send a NULL Character at the end of write string|
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "PhilRoboKit_CoreLib_Macro.h"
#if defined (USE_UART)
#include "corelib_uart.h"

/* Local Constants */
#define K8_UART_BUFFER_MASK         (K8_UART_BUFFER_SIZE-1)

/* Local Variables */
static struct UARTBuff_s            stUARTTXFiFo;
static struct UARTBuff_s            stUARTRXFiFo;

/* Private Function Prototypes */
static bool_t isSerialDataAvailable(void);
static bool_t isSerialBufferFull(void);

/* Public Functions */
/*******************************************************************************//**
* \brief Setup the UART module
*
* > This function is called for setting up the UART module peripheral
*
* > <BR>
* > **Syntax:**<BR>
* >     setupSerial(baudrate)
* > <BR><BR>
* > **Parameters:**<BR>
* >     baudrate - desired UART baudrate (supports only standard baudrates)
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupSerial(uint16_t ui16Baudrate)
{
    /* Clear TX and RX Buffers */
    stUARTTXFiFo.ui8Head = 0;
    stUARTTXFiFo.ui8Tail = 0;
    stUARTRXFiFo.ui8Head = 0;
    stUARTRXFiFo.ui8Tail = 0;
    /* Set Baudrate */
    hal_setSerialBAUD(ui16Baudrate);
    /* Enable Serial Peripheral */
    hal_enableSerialTX();
    hal_enableSerialRX();
    /* Disable TX Interrupt */
    hal_disableUARTTXInt();
    hal_clrUARTTXIntFlag();
    /* Enable RX Interrupt */
    hal_enableUARTRXInt();
    hal_clrUARTRXIntFlag();
}

/*******************************************************************************//**
* \brief Writes a byte to the UART transmit buffer
*
* > Writes a byte to the UART transmit buffer
*
* > <BR>
* > **Syntax:**<BR>
* >      serialWrite(data)
* > <BR><BR>
* > **Parameters:**<BR>
* >     data - the byte to be transmitted
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void serialWrite(uint8_t ui8TxData)
{
    while (isSerialBufferFull())
    {
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(0);
#endif
        continue;
    }

    hal_disableUARTTXInt();
    stUARTTXFiFo.aui8Buffer[stUARTTXFiFo.ui8Head++] = ui8TxData;
    stUARTTXFiFo.ui8Head &= K8_UART_BUFFER_MASK;
    hal_enableUARTTXInt();
#ifdef UNIT_TEST
    UCUNIT_Tracepoint(1);
#endif
}

/*******************************************************************************//**
* \brief Writes a string to the UART transmit buffer
*
* > Writes a string or multiple byte writes to the UART transmit buffer
*
* > <BR>
* > **Syntax:**<BR>
* >      serialWriteString(string)
* > <BR><BR>
* > **Parameters:**<BR>
* >     string - the string value to be transmitted, string is an array of characters which are null(\0) terminated
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void serialWriteString(const uchar_t* pucStrTxData)
{
    while(NULL != *pucStrTxData)
    {
        serialWrite(*pucStrTxData++);
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(0);
#endif
    }

    serialWrite((uint8_t)NULL);                 // Write the null terminator
}

/*******************************************************************************//**
* \brief Send the content of a buffer to the UART transmit buffer
*
* > This function is called for sending contents of a buffer over the UART.
* > It has the advantage of being able to send data having variable length
*
* > <BR>
* > **Syntax:**<BR>
* >     serialWriteBlock(&data, length)
* > <BR><BR>
* > **Parameters:**<BR>
* >     &data - points to the location of the data block to be written         <BR>
* >     length - the size of the data block in number of bytes
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void serialWriteBlock(uint8_t* pui8StrTxData, uint8_t ui8Size)
{
    while(0 != ui8Size)
    {
        serialWrite(*pui8StrTxData++);
        ui8Size--;
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(0);
#endif
    }
}

/*******************************************************************************//**
* \brief Returns the number of received data bytes
*
* > This function returns the number of data bytes currently on the receive
* > buffer.
*
* > <BR>
* > **Syntax:**<BR>
* >      num_of_bytes = serialDataCount()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     uint8_t num_of_bytes - the number of available bytes received through UART
* > <BR><BR>
***********************************************************************************/
uint8_t serialDataCount(void)
{
    if(TRUE == isSerialDataAvailable())
    {
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(0);
#endif
        return (stUARTRXFiFo.ui8Head - stUARTRXFiFo.ui8Tail);
    }
    else
    {
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(1);
#endif
        return 0;
    }
}

/*******************************************************************************//**
* \brief Reads the received data byte value
*
* > This function reads the received data byte value. The data count is decremented
* > on every read.
*
* > <BR>
* > **Syntax:**<BR>
* >      data = serialRead()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     uint8_t data - the received data byte value
* > <BR><BR>
***********************************************************************************/
uint8_t serialRead(void)
{
    uint8_t ui8serialData;

    if(FALSE == isSerialDataAvailable())
    {
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(0);
#endif
        return 0;
    }
    else
    {
        hal_disableUARTRXInt();
        ui8serialData = stUARTRXFiFo.aui8Buffer[stUARTRXFiFo.ui8Tail++];    // Get Data from aui8Buffer
        stUARTRXFiFo.ui8Tail &= K8_UART_BUFFER_MASK;
        hal_enableUARTRXInt();
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(1);
#endif
        return ui8serialData;
    }
}

/*******************************************************************************//**
* \brief Flush/Clears the RX and TX registers
*
* > This function is called when clearing the contents of the RX and TX regiter buffer
*
* > <BR>
* > **Syntax:**<BR>
* >      serialFlush(none)
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void serialFlush(void)
{
    stUARTRXFiFo.ui8Head = 0;
    stUARTTXFiFo.ui8Head = 0;
    stUARTRXFiFo.ui8Tail = 0;
    stUARTTXFiFo.ui8Tail = 0;
    //memset(stUARTTXFiFo.aui8Buffer, 0, sizeof(stUARTTXFiFo.aui8Buffer)); esc.disabled problem on SDCC
    //memset(stUARTRXFiFo.aui8Buffer, 0, sizeof(stUARTRXFiFo.aui8Buffer)); esc.disabled problem on SDCC
}

/*******************************************************************************//**
* \brief UART recieve interrupt service routine
*
* >  This is an interrupt handler called when a byte is recieved from the UART peripheral
*
* > <BR>
* > **Syntax:**<BR>
* >      serialRxISR(), ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void serialRxISR(void)
{
    static uint8_t ui8TempIn;                                               // variables inside ISR must be static

    if(hal_getUARTRXIntFlag() && hal_getUARTRXIntEnableStatus())
    {
        hal_clrUARTRXIntFlag();
        stUARTRXFiFo.aui8Buffer[stUARTRXFiFo.ui8Head] = K_RXREG_BUFF;
        ui8TempIn = ((stUARTRXFiFo.ui8Head+1) & K8_UART_BUFFER_MASK);

        if(ui8TempIn != stUARTRXFiFo.ui8Tail)
        {
            stUARTRXFiFo.ui8Head = ui8TempIn;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(0);
#endif
        }
        else
        {
            /* Buffer full, do nothing, do not increment the head anymore */
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(1);
#endif
        }

#ifdef UNIT_TEST
        UCUNIT_Tracepoint(2);
#endif
    }
}

/*******************************************************************************//**
* \brief UART transmit interrupt service routine
*
* >  This is an interrupt handler called when a byte is transmitted by the UART peripheral
*
* > <BR>
* > **Syntax:**<BR>
* >      serialTxISR(), ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void serialTxISR(void)
{
    if(hal_getUARTTXIntFlag() && hal_getUARTTXIntEnableStatus())
    {
        hal_clrUARTTXIntFlag();

        /* Check if no available data to send */
        if(stUARTTXFiFo.ui8Tail == stUARTTXFiFo.ui8Head)
        {
            hal_disableUARTTXInt();
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(2);
#endif
        }
        else
        {
            K_TXREG_BUFF = stUARTTXFiFo.aui8Buffer[stUARTTXFiFo.ui8Tail++];
            stUARTTXFiFo.ui8Tail &= K8_UART_BUFFER_MASK;
#ifdef UNIT_TEST
            UCUNIT_Tracepoint(0);
#endif

            if(stUARTTXFiFo.ui8Tail == stUARTTXFiFo.ui8Head)
            {
                hal_disableUARTTXInt();
#ifdef UNIT_TEST
                UCUNIT_Tracepoint(1);
#endif
            }
        }
    }
}

/* Private Functions */
/*******************************************************************************//**
* \brief Returns the status of the transmit buffer content
*
* > Returns the status of the transmit buffer content
*
* > <BR>
* > **Syntax:**<BR>
* >      status = isSerialBufferFull()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     bool_t status - returns the status of the buffer content
* > <BR><BR>
***********************************************************************************/
/*@unused@*/
static bool_t isSerialBufferFull(void)
{
    return (((stUARTTXFiFo.ui8Head+1) & K8_UART_BUFFER_MASK) == stUARTTXFiFo.ui8Tail);
}

/*******************************************************************************//**
* \brief Returns the status of the available data on the recieve buffer
*
* > Returns the status of the available data on the recieve buffer.
*
* > <BR>
* > **Syntax:**<BR>
* >     status = isSerialDataAvailable()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     bool_t status - returns the status of the available data
* > <BR><BR>
***********************************************************************************/
/*@unused@*/
static bool_t isSerialDataAvailable(void)
{
    if(hal_checkUARTRxError())      // Error in Reception
    {
        hal_restartUARTRx();        // Restart Continuous Reception
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(0);
#endif
        return FALSE;
    }

    return (stUARTRXFiFo.ui8Head != stUARTRXFiFo.ui8Tail);
}

#endif
/* end of corelib_uart.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
