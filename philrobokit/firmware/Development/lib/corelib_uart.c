/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "corelib_uart.c"                            |
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
* |v01.01.00    |20130514   |ESCII              |Code Formatted                     |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#include "corelib_uart.h"

/* Local Constants */
#define K8_UART_BUFFER_MASK         (K8_UART_BUFFER_SIZE-1)

/* Local Variables */
static struct UARTBuff_s
{
    uint8_t     aui8Buffer[K8_UART_BUFFER_SIZE];
    uint8_t     ui8Head;
    uint8_t     ui8Tail;
};

static struct UARTBuff_s   stUARTTXFiFo, stUARTRXFiFo;

/* Private Function Prototypes */
static bool_t isSerialDataAvailable(void);
static bool_t isSerialBufferFull(void);

/* Public Functions */
/*******************************************************************************//**
* \brief Setup the Software DAC module
*
* > This function is called for setting up the Software DAC Module
* > pin and default value.
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
#if 0 //defined STACK_TEST
    gui8StackLevelCounter++;

    if(gui8StackLevelCounter>gui8MaxStackLevel)
    {
        gui8MaxStackLevel = gui8StackLevelCounter;
    }

#endif

    while (isSerialBufferFull())
    {
        continue;
    }

    hal_disableUARTTXInt();
    stUARTTXFiFo.aui8Buffer[stUARTTXFiFo.ui8Head++] = ui8TxData;
    stUARTTXFiFo.ui8Head &= K8_UART_BUFFER_MASK;
    hal_enableUARTTXInt();
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
void serialWriteString(uint8_t* pui8StrTxData)
{
    while(NULL != *pui8StrTxData)
    {
        serialWrite(*pui8StrTxData++);
    }
}

/*******************************************************************************//**
* \brief Setup the Software DAC module
*
* > This function is called for setting up the Software DAC Module
* > pin and default value.
*
* > <BR>
* > **Syntax:**<BR>
* >     serialWriteBlock(&data, length)
* > <BR><BR>
* > **Parameters:**<BR>
* >     &data - points to the location of the data block to be written         <BR>
* >     length - the size of the data block
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void serialWriteBlock(uint8_t* pui8StrTxData, uint8_t ui8Size)
{
    while(0 != ui8Size--) // esc.comment unsafe code, no arithmetic operation shall be performed on condition comparison
    {
        serialWrite(*pui8StrTxData++);
    }
}

/*******************************************************************************//**
* \brief Returns the number of recieved data bytes
*
* > This function is called for setting up the Software DAC Module
* > pin and default value.
*
* > <BR>
* > **Syntax:**<BR>
* >      num_of_bytes = serialDataCount()
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     uint8_t num_of_bytes - the number of available bytes recieved through UART
* > <BR><BR>
***********************************************************************************/
uint8_t serialDataCount(void)
{
    if(true == isSerialDataAvailable())
    {
        return (stUARTRXFiFo.ui8Head - stUARTRXFiFo.ui8Tail);
    }
    else
    {
        return 0;
    }
}

/*******************************************************************************//**
* \brief Reads the recieved data byte value
*
* > This function reads the recieved data byte value. The data count is decremented
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
* >     uint8_t data - the recieved data byte value
* > <BR><BR>
***********************************************************************************/
uint8_t serialRead(void)
{
    uint8_t ui8serialData;
    //int timeout = 7500; //1.5ms @20Mhz

    while(!isSerialDataAvailable()/* && (--timeout)*/)
    {
        continue;
    }

    if(isSerialDataAvailable())
    {
        hal_disableUARTRXInt();
        ui8serialData = stUARTRXFiFo.aui8Buffer[stUARTRXFiFo.ui8Tail++];    //Get Data from aui8Buffer
        stUARTRXFiFo.ui8Tail &= K8_UART_BUFFER_MASK;
        hal_enableUARTRXInt();
        return ui8serialData;
    }

    return NULL;
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
    memset(stUARTTXFiFo.aui8Buffer, NULL, sizeof(stUARTTXFiFo.aui8Buffer));
    memset(stUARTRXFiFo.aui8Buffer, NULL, sizeof(stUARTRXFiFo.aui8Buffer));
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

    if (hal_getUARTRXIntFlag() && hal_getUARTRXIntEnableStatus())
    {
        hal_clrUARTRXIntFlag();
        stUARTRXFiFo.aui8Buffer[stUARTRXFiFo.ui8Head] = K_RXREG_BUFF;
        ui8TempIn = ((stUARTRXFiFo.ui8Head+1) & K8_UART_BUFFER_MASK);

        if (ui8TempIn != stUARTRXFiFo.ui8Tail)
        {
            stUARTRXFiFo.ui8Head = ui8TempIn;
        }
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
#if 0 //defined STACK_TEST
    gui8StackLevelCounter++;

    if(gui8StackLevelCounter>gui8MaxStackLevel)
    {
        gui8MaxStackLevel = gui8StackLevelCounter;
    }

#endif

    if (hal_getUARTTXIntFlag() && hal_getUARTTXIntEnableStatus())
    {
        hal_clrUARTTXIntFlag();
        K_TXREG_BUFF = stUARTTXFiFo.aui8Buffer[stUARTTXFiFo.ui8Tail++];
        stUARTTXFiFo.ui8Tail &= K8_UART_BUFFER_MASK;

        if (stUARTTXFiFo.ui8Tail == stUARTTXFiFo.ui8Head)
        {
            hal_disableUARTTXInt();
        }
    }
}

/* Private Functions */
/*******************************************************************************//**
* \brief Returns the status of the buffer content
*
* > Returns the status of the buffer content
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
static bool_t isSerialBufferFull(void)
{
#if 0 //defined STACK_TEST
    gui8StackLevelCounter++;

    if(gui8StackLevelCounter>gui8MaxStackLevel)
    {
        gui8MaxStackLevel = gui8StackLevelCounter;
    }

#endif
    return (((stUARTTXFiFo.ui8Head+1) & K8_UART_BUFFER_MASK) == stUARTTXFiFo.ui8Tail);
}

/*******************************************************************************//**
* \brief Returns the status of the available data
*
* > Returns the status of the available data
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
static bool_t isSerialDataAvailable(void)
{
    /* esc.comment: move to HAL */
    if(BIT_RCSTA_OERR)          // Error in Reception
    {
        BIT_RCSTA_CREN = 0;     // Restart Continuous Reception
        BIT_RCSTA_CREN = 1;
        return 0;
    }

    return (stUARTRXFiFo.ui8Head != stUARTRXFiFo.ui8Tail);
}
/* end of corelib_uart.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
