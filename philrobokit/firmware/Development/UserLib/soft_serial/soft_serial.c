/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "soft_serial.c"                             |
* |:----          |:----                                        |
* |Description:   | This is a library for using the serial/uart functions |
* |Revision:      | v01.01.03                                   |
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

#include "soft_serial.h"

/* Local Constants */
#define K8_SUART_BUFFER_MASK         (K8_SUART_BUFFER_SIZE-1)

enum SoftUARTRXStates_e
{
    RX_IDLE
    ,WAIT_4_START_EDGE
    ,WAIT_4_START_BIT
    ,WAIT_4_DATA_BIT
    ,WAIT_4_STOP_BIT
    ,RECEPTION_ERROR
};

enum SoftUARTTXStates_e
{
    TX_IDLE
    ,SEND_START_BIT
    ,SEND_DATA_BIT
    ,WAIT_3_CYCLES
    ,SEND_STOP_BIT
};

/* Local Variables */
struct SUART_TXBuff_s
{
    uint8_t     aui8Buffer[K8_SUART_BUFFER_SIZE];
    uint8_t     ui8Head;
    uint8_t     ui8Tail;
    uint8_t     ui8Pin;
    uint8_t     ui8TXState;
    uint8_t     ui8PollCounter;
    uint8_t     ui8BitCounter;
    bool_t      blSendingByte;
};

struct SUART_RXBuff_s
{
    uint8_t     aui8Buffer[K8_SUART_BUFFER_SIZE];
    uint8_t     ui8Head;
    uint8_t     ui8Tail;
    uint8_t     ui8Pin;
    uint8_t     ui8RXState;
    uint8_t     ui8PollCounter;
    uint8_t     ui8BitCounter;
    uint8_t     ui8LowCounter;
    uint8_t     ui8HighCounter;
    bool_t      blPinVal;
    bool_t      blPrevPinVal;
    bool_t      blStartBitDetected;
    bool_t      blErrorDetected;
};

static  uint16_t        ui16SUARTBitPeriod_div3;
struct  SUART_TXBuff_s  stSUART_TXFiFo[MAX_NUM_OF_SUART];
struct  SUART_RXBuff_s  stSUART_RXFiFo[MAX_NUM_OF_SUART];

/* Private Function Prototypes */
static void softUARTController();
static void serialSoftRxISR(void);
static void serialSoftTxISR(void);

static bool_t isSoftSerialDataAvailable(enum SoftUARTModules_e eSUARTModule);
static bool_t isSoftSerialBufferFull(enum SoftUARTModules_e eSUARTModule);

/* Public Functions */
/*******************************************************************************//**
* \brief Setup the UART module
*
* > This function is called for setting up the UART module peripheral
*
* > <BR>
* > **Syntax:**<BR>
* >     setupSoftSerial(module, tx_pin, rx_pin, baudrate)
* > <BR><BR>
* > **Parameters:**<BR>
* >     baudrate - desired UART baudrate (supports only standard baudrates)
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void setupSoftSerial(enum SoftUARTModules_e eSUARTModule, uint8_t ui8TXPin, uint8_t ui8RXPin, uint16_t ui16Baudrate)
{
    /* Clear TX Buffers */
    stSUART_TXFiFo[eSUARTModule].ui8Head = 0;
    stSUART_TXFiFo[eSUARTModule].ui8Tail = 0;
    stSUART_TXFiFo[eSUARTModule].ui8Pin = ui8TXPin;
    stSUART_TXFiFo[eSUARTModule].ui8TXState = TX_IDLE;
    makeOutput(ui8TXPin);
    setPin(ui8TXPin);
    
    /* Clear RX Buffers */
    stSUART_RXFiFo[eSUARTModule].ui8Head = 0;
    stSUART_RXFiFo[eSUARTModule].ui8Tail = 0;
    stSUART_RXFiFo[eSUARTModule].ui8Pin = ui8RXPin;
    stSUART_RXFiFo[eSUARTModule].blPinVal = HIGH; 
    stSUART_RXFiFo[eSUARTModule].blPrevPinVal = HIGH;
    stSUART_RXFiFo[eSUARTModule].ui8RXState = RX_IDLE;
    makeInput(ui8RXPin);
    
    /* Set Baudrate */
    ui16SUARTBitPeriod_div3 = K_SOFT_SERIAL_POLLING_INTERVAL;
    
    /* Use 16Bit Timer Peripheral */
    setup8BitTimer(K_SUART_TIMER, softUARTController);
    set8BitTimer(K_SUART_TIMER, ui16SUARTBitPeriod_div3);
}

/*******************************************************************************//**
* \brief Writes a byte to the UART transmit buffer
*
* > Writes a byte to the UART transmit buffer
*
* > <BR>
* > **Syntax:**<BR>
* >      serialSoftWrite(module, data)
* > <BR><BR>
* > **Parameters:**<BR>
* >     data - the byte to be transmitted
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void serialSoftWrite(enum SoftUARTModules_e eSUARTModule, uint8_t ui8TxData)
{
    while (isSoftSerialBufferFull(eSUARTModule))
    {
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(0);
#endif
        continue;
    }

//    hal_disableUARTTXInt();
    stSUART_TXFiFo[eSUARTModule].aui8Buffer[stSUART_TXFiFo[eSUARTModule].ui8Head++] = ui8TxData;
    stSUART_TXFiFo[eSUARTModule].ui8Head &= K8_SUART_BUFFER_MASK;
//    hal_enableUARTTXInt();
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
* >      serialSoftWriteString(module, string)
* > <BR><BR>
* > **Parameters:**<BR>
* >     string - the string value to be transmitted, string is an array of characters which are null(\0) terminated
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void serialSoftWriteString(enum SoftUARTModules_e eSUARTModule, const uchar_t* pucStrTxData)
{
    while(NULL != *pucStrTxData)
    {
        serialSoftWrite(eSUARTModule, *pucStrTxData++);
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(0);
#endif
    }

    serialSoftWrite(eSUARTModule, (uint8_t)NULL);                 // Write the null terminator
}

/*******************************************************************************//**
* \brief Send the content of a buffer to the UART transmit buffer
*
* > This function is called for sending contents of a buffer over the UART.
* > It has the advantage of being able to send data having variable length
*
* > <BR>
* > **Syntax:**<BR>
* >     serialSoftWriteBlock(module, &data, length)
* > <BR><BR>
* > **Parameters:**<BR>
* >     &data - points to the location of the data block to be written         <BR>
* >     length - the size of the data block in number of bytes
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void serialSoftWriteBlock(enum SoftUARTModules_e eSUARTModule, uint8_t* pui8StrTxData, uint8_t ui8Size)
{
    while(0 != ui8Size)
    {
        serialSoftWrite(eSUARTModule, *pui8StrTxData++);
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
* >      num_of_bytes = serialSoftDataCount(module)
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     uint8_t num_of_bytes - the number of available bytes received through UART
* > <BR><BR>
***********************************************************************************/
uint8_t serialSoftDataCount(enum SoftUARTModules_e eSUARTModule)
{
    if(TRUE == isSoftSerialDataAvailable(eSUARTModule))
    {
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(0);
#endif
        return (stSUART_RXFiFo[eSUARTModule].ui8Head - stSUART_RXFiFo[eSUARTModule].ui8Tail);
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
* >      data = serialSoftRead(module)
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     uint8_t data - the received data byte value
* > <BR><BR>
***********************************************************************************/
uint8_t serialSoftRead(enum SoftUARTModules_e eSUARTModule)
{
    uint8_t ui8serialData;

    if(FALSE == isSoftSerialDataAvailable(eSUARTModule))
    {
#ifdef UNIT_TEST
        UCUNIT_Tracepoint(0);
#endif
        return 0;
    }
    else
    {
        //hal_disableUARTRXInt();
        ui8serialData = stSUART_RXFiFo[eSUARTModule].aui8Buffer[stSUART_RXFiFo[eSUARTModule].ui8Tail++];    // Get Data from aui8Buffer
        stSUART_RXFiFo[eSUARTModule].ui8Tail &= K8_SUART_BUFFER_MASK;
        //hal_enableUARTRXInt();
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
* >      serialSoftFlush(module)
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
void serialSoftFlush(enum SoftUARTModules_e eSUARTModule)
{
    stSUART_RXFiFo[eSUARTModule].ui8Head = 0;
    stSUART_TXFiFo[eSUARTModule].ui8Head = 0;
    stSUART_RXFiFo[eSUARTModule].ui8Tail = 0;
    stSUART_TXFiFo[eSUARTModule].ui8Tail = 0;
    memset(stSUART_TXFiFo[eSUARTModule].aui8Buffer, 0, sizeof(stSUART_TXFiFo[eSUARTModule].aui8Buffer));
    memset(stSUART_RXFiFo[eSUARTModule].aui8Buffer, 0, sizeof(stSUART_RXFiFo[eSUARTModule].aui8Buffer));
}

/* Private Functions */
/*******************************************************************************//**
* \brief Main Software UART engine
*
* > This function is called on every timer interrupt. 
*
* > <BR>
* > **Syntax:**<BR>
* >      softUARTController(), ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
static void softUARTController()
{
    set8BitTimer(K_SUART_TIMER, ui16SUARTBitPeriod_div3);        // periodic interrupt
    serialSoftRxISR();
    serialSoftTxISR();
}

/*******************************************************************************//**
* \brief UART recieve interrupt service routine
*
* >  This is an interrupt handler called when a byte is recieved from the UART peripheral
*
* > <BR>
* > **Syntax:**<BR>
* >      serialSoftRxISR(), ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
static void serialSoftRxISR(void)
{
    /* variables inside ISR must be static */
    static uint8_t ui8TempIn=0;                                               
    static uint8_t ui8TempByte=0xFF;
    static uint8_t ui8ModuleCounter=0;

    /* Run through all modules */
    for(ui8ModuleCounter=0; ui8ModuleCounter<MAX_NUM_OF_SUART; ui8ModuleCounter++)
    {
        /* Poll Rx Pin */
        stSUART_RXFiFo[ui8ModuleCounter].blPinVal = getPinState(stSUART_RXFiFo[ui8ModuleCounter].ui8Pin);
        stSUART_RXFiFo[ui8ModuleCounter].ui8PollCounter++;
        
        switch(stSUART_RXFiFo[ui8ModuleCounter].ui8RXState)
        {
            case RX_IDLE:
            {
                /* Check High State */
                if(HIGH == stSUART_RXFiFo[ui8ModuleCounter].blPinVal)
                {
                    stSUART_RXFiFo[ui8ModuleCounter].ui8HighCounter++;
                }
                else
                {
                    stSUART_RXFiFo[ui8ModuleCounter].ui8HighCounter = 0;
                } 
                
                /* Check if High for duration of > 10 bits */
                if(stSUART_RXFiFo[ui8ModuleCounter].ui8HighCounter >= 30)                            
                {
                    stSUART_RXFiFo[ui8ModuleCounter].ui8RXState = WAIT_4_START_EDGE;
                    
                    /* reset parameters */
                    stSUART_RXFiFo[ui8ModuleCounter].ui8PollCounter = 0;
                    stSUART_RXFiFo[ui8ModuleCounter].blStartBitDetected = FALSE;
                    stSUART_RXFiFo[ui8ModuleCounter].ui8HighCounter = 0;
                    stSUART_RXFiFo[ui8ModuleCounter].ui8LowCounter = 0;
                    stSUART_RXFiFo[ui8ModuleCounter].ui8BitCounter = 0;
                }
                break;
            }
            case WAIT_4_START_EDGE:
            {
                /* Start Bit Detected */
                if((HIGH == stSUART_RXFiFo[ui8ModuleCounter].blPrevPinVal) && (LOW == stSUART_RXFiFo[ui8ModuleCounter].blPinVal))
                {
                    stSUART_RXFiFo[ui8ModuleCounter].ui8RXState = WAIT_4_START_BIT;
                    stSUART_RXFiFo[ui8ModuleCounter].ui8LowCounter = 1;
                }
                /* No Start Edge Yet */
                else
                {
                    /* reset parameters */
                    stSUART_RXFiFo[ui8ModuleCounter].ui8PollCounter = 0;
                }
                break;
            }            
            case WAIT_4_START_BIT:
            {
                if(LOW == stSUART_RXFiFo[ui8ModuleCounter].blPinVal)
                {
                    stSUART_RXFiFo[ui8ModuleCounter].ui8LowCounter++;
                }
                else
                {
                    stSUART_RXFiFo[ui8ModuleCounter].ui8HighCounter++;
                }
                
                /* done with 3 polling samples */
                if(stSUART_RXFiFo[ui8ModuleCounter].ui8PollCounter >= 3)
                {
                    if(stSUART_RXFiFo[ui8ModuleCounter].ui8LowCounter > stSUART_RXFiFo[ui8ModuleCounter].ui8HighCounter)
                    {
                        stSUART_RXFiFo[ui8ModuleCounter].blStartBitDetected = TRUE;
                        stSUART_RXFiFo[ui8ModuleCounter].ui8RXState = WAIT_4_DATA_BIT;
                    }
                    else
                    {
                        stSUART_RXFiFo[ui8ModuleCounter].ui8RXState = RECEPTION_ERROR;
                    }
                    
                    /* reset parameters */
                    stSUART_RXFiFo[ui8ModuleCounter].ui8PollCounter = 0;
                    stSUART_RXFiFo[ui8ModuleCounter].ui8HighCounter = 0;
                    stSUART_RXFiFo[ui8ModuleCounter].ui8LowCounter = 0;
                }
                break;
            }
            case WAIT_4_DATA_BIT:
            {
                if(LOW == stSUART_RXFiFo[ui8ModuleCounter].blPinVal)
                {
                    stSUART_RXFiFo[ui8ModuleCounter].ui8LowCounter++;
                }
                else
                {
                    stSUART_RXFiFo[ui8ModuleCounter].ui8HighCounter++;
                }
                
                /* done with 3 polling samples */
                if(stSUART_RXFiFo[ui8ModuleCounter].ui8PollCounter >= 3)
                {
                    stSUART_RXFiFo[ui8ModuleCounter].ui8BitCounter++;
                    
                    if(stSUART_RXFiFo[ui8ModuleCounter].ui8LowCounter > stSUART_RXFiFo[ui8ModuleCounter].ui8HighCounter)
                    {
                        ui8TempByte &= ~0xF0;           // zero is recieved
                    }
                    else
                    {
                        ui8TempByte |= 0xF0;            // one is recieved
                    }

                    /* reset parameters */
                    stSUART_RXFiFo[ui8ModuleCounter].ui8PollCounter = 0;
                    stSUART_RXFiFo[ui8ModuleCounter].ui8HighCounter = 0;
                    stSUART_RXFiFo[ui8ModuleCounter].ui8LowCounter = 0;                
                }
                
                if(stSUART_RXFiFo[ui8ModuleCounter].ui8BitCounter < 8)
                {
                    ui8TempByte >>= 1;                  // prepare buffer for next bit
                }
                /* a complete byte is recieved */
                else
                {
                    stSUART_RXFiFo[ui8ModuleCounter].ui8RXState = WAIT_4_STOP_BIT;
                    
                    /* reset parameters */
                    stSUART_RXFiFo[ui8ModuleCounter].ui8BitCounter = 0;
                }
                break;
            }            
            case WAIT_4_STOP_BIT:
            {
                if(stSUART_RXFiFo[ui8ModuleCounter].blPinVal == LOW)
                {
                    stSUART_RXFiFo[ui8ModuleCounter].ui8LowCounter++;
                }
                else
                {
                    stSUART_RXFiFo[ui8ModuleCounter].ui8HighCounter++;
                }
                
                /* done with 3 polling samples */
                if(stSUART_RXFiFo[ui8ModuleCounter].ui8PollCounter >= 3)
                {
                    /* Check if high for two consecutive sample */
                    if(stSUART_RXFiFo[ui8ModuleCounter].ui8HighCounter > stSUART_RXFiFo[ui8ModuleCounter].ui8LowCounter)
                    {
                        stSUART_RXFiFo[ui8ModuleCounter].aui8Buffer[stSUART_RXFiFo[ui8ModuleCounter].ui8Head] = ui8TempByte;
                        ui8TempIn = ((stSUART_RXFiFo[ui8ModuleCounter].ui8Head+1) & K8_SUART_BUFFER_MASK);

                        if(ui8TempIn != stSUART_RXFiFo[ui8ModuleCounter].ui8Tail)
                        {
                            stSUART_RXFiFo[ui8ModuleCounter].ui8Head = ui8TempIn;
                        }
                        else
                        {
                            /* Buffer full, do nothing, do not increment the head anymore */
                        }                     
                    
                        stSUART_RXFiFo[ui8ModuleCounter].ui8RXState = WAIT_4_START_EDGE;
                    }
                    else
                    {
                        stSUART_RXFiFo[ui8ModuleCounter].ui8RXState = RECEPTION_ERROR;
                    }    

                    /* reset parameters */
                    stSUART_RXFiFo[ui8ModuleCounter].blStartBitDetected = FALSE;
                    stSUART_RXFiFo[ui8ModuleCounter].ui8PollCounter = 0;
                    stSUART_RXFiFo[ui8ModuleCounter].ui8HighCounter = 0;
                    stSUART_RXFiFo[ui8ModuleCounter].ui8LowCounter = 0;                  
                }
                break;
            }            
            case RECEPTION_ERROR:
            {
                stSUART_RXFiFo[ui8ModuleCounter].blErrorDetected = TRUE;
                stSUART_RXFiFo[ui8ModuleCounter].blStartBitDetected = FALSE;
                stSUART_RXFiFo[ui8ModuleCounter].ui8RXState = RX_IDLE;
                break;
            }            
            default:
            {
                //assert();
                break;
            }            
        }
        
        stSUART_RXFiFo[ui8ModuleCounter].blPrevPinVal = stSUART_RXFiFo[ui8ModuleCounter].blPinVal;
    }
}

/*******************************************************************************//**
* \brief UART transmit interrupt service routine
*
* >  This is an interrupt handler called when a byte is transmitted by the UART peripheral
*
* > <BR>
* > **Syntax:**<BR>
* >      serialSoftTxISR(), ISR
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     none
* > <BR><BR>
***********************************************************************************/
static void serialSoftTxISR(void)
{
    /* variables inside ISR must be static */
    static uint8_t ui8TempByte=0xFF;
    static uint8_t ui8ModuleCounter=0;
    
    /* Run through all modules */
    for(ui8ModuleCounter=0; ui8ModuleCounter<MAX_NUM_OF_SUART; ui8ModuleCounter++)
    {
        /* Check if no available data to send */
        if(FALSE == stSUART_TXFiFo[ui8ModuleCounter].blSendingByte)
        {
            if(stSUART_TXFiFo[ui8ModuleCounter].ui8Tail == stSUART_TXFiFo[ui8ModuleCounter].ui8Head)
            {
                return;                                                     // no data to send
            }
            else
            {
                ui8TempByte = stSUART_TXFiFo[ui8ModuleCounter].aui8Buffer[stSUART_TXFiFo[ui8ModuleCounter].ui8Tail++];
                stSUART_TXFiFo[ui8ModuleCounter].ui8Tail &= K8_SUART_BUFFER_MASK;
                                
                /* Start Sending Byte */
                stSUART_TXFiFo[ui8ModuleCounter].blSendingByte = TRUE;
                stSUART_TXFiFo[ui8ModuleCounter].ui8TXState = SEND_START_BIT;
            }
        }
        else
        {
            stSUART_TXFiFo[ui8ModuleCounter].ui8PollCounter++;
            
            switch(stSUART_TXFiFo[ui8ModuleCounter].ui8TXState)
            {
                case TX_IDLE:
                {
                    stSUART_TXFiFo[ui8ModuleCounter].blSendingByte = FALSE;
                    break;            
                }
                case SEND_START_BIT:
                {
                    clrPin(stSUART_TXFiFo[ui8ModuleCounter].ui8Pin);
                    
                    stSUART_TXFiFo[ui8ModuleCounter].ui8PollCounter = 0;
                    stSUART_TXFiFo[ui8ModuleCounter].ui8BitCounter = 0;
                    stSUART_TXFiFo[ui8ModuleCounter].ui8TXState = WAIT_3_CYCLES;
                    break;
                }
                case SEND_DATA_BIT:
                {
                    if(ui8TempByte&0x01)
                    {
                        setPin(stSUART_TXFiFo[ui8ModuleCounter].ui8Pin);
                    }
                    else
                    {
                        clrPin(stSUART_TXFiFo[ui8ModuleCounter].ui8Pin);
                    }

                    stSUART_TXFiFo[ui8ModuleCounter].ui8BitCounter++;
                    stSUART_TXFiFo[ui8ModuleCounter].ui8TXState = WAIT_3_CYCLES;
                    break;
                }
                case WAIT_3_CYCLES:
                {
                    if(stSUART_TXFiFo[ui8ModuleCounter].ui8PollCounter >= 3)
                    {
                        if(stSUART_TXFiFo[ui8ModuleCounter].ui8BitCounter < 8)
                        {
                            ui8TempByte >>= 1;
                            stSUART_TXFiFo[ui8ModuleCounter].ui8TXState = SEND_DATA_BIT;
                        }
                        else
                        {
                            stSUART_TXFiFo[ui8ModuleCounter].ui8TXState = SEND_STOP_BIT;
                        }                    
                        stSUART_TXFiFo[ui8ModuleCounter].ui8PollCounter = 0;
                    }
                    break;
                }
                case SEND_STOP_BIT: 
                {
                    setPin(stSUART_TXFiFo[ui8ModuleCounter].ui8Pin);
                    
                    if(stSUART_TXFiFo[ui8ModuleCounter].ui8PollCounter >= 3)
                    {
                        stSUART_TXFiFo[ui8ModuleCounter].ui8TXState = TX_IDLE;
                    }
                    break;
                }            
                default:
                {
                    break;
                }            
            }
        }
    }
}

/*******************************************************************************//**
* \brief Returns the status of the transmit buffer content
*
* > Returns the status of the transmit buffer content
*
* > <BR>
* > **Syntax:**<BR>
* >      status = isSoftSerialBufferFull(module)
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     bool_t status - returns the status of the buffer content
* > <BR><BR>
***********************************************************************************/
/*@unused@*/
static bool_t isSoftSerialBufferFull(enum SoftUARTModules_e eSUARTModule)
{
    return (((stSUART_TXFiFo[eSUARTModule].ui8Head+1) & K8_SUART_BUFFER_MASK) == stSUART_TXFiFo[eSUARTModule].ui8Tail);
}

/*******************************************************************************//**
* \brief Returns the status of the available data on the recieve buffer
*
* > Returns the status of the available data on the recieve buffer.
*
* > <BR>
* > **Syntax:**<BR>
* >     status = isSoftSerialDataAvailable(module)
* > <BR><BR>
* > **Parameters:**<BR>
* >     none
* > <BR><BR>
* > **Returns:**<BR>
* >     bool_t status - returns the status of the available data
* > <BR><BR>
***********************************************************************************/
/*@unused@*/
static bool_t isSoftSerialDataAvailable(enum SoftUARTModules_e eSUARTModule)
{
    return (stSUART_RXFiFo[eSUARTModule].ui8Head != stSUART_RXFiFo[eSUARTModule].ui8Tail);
}
/* end of soft_serial.c */
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
