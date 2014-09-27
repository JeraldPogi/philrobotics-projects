/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "DProtocol.c"                                                       |
* |:----          |:----                                                                |
* |Description:   | Main Library for differential wheel driven Mobile Robots (Mobots)   |
* |Revision:      | v00.02.01                                                           |
* |Author:        | Efren S. Cruzat II                                                  |
* |               |                                                                     |
* |Dependencies:  |                                                                     |
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
* |v00.01.00    |20110204   |ESCII              |Library Initial Release            |
* |v00.01.02    |20120118   |ESCII              |Last known working port(Pinguino)  |
* |v00.02.01    |2013xxxx   |ESCII              |PhilRobokit Port                   |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#if defined(__PINGUINO__)
#ifndef __SERIAL_PRINTF__
#define __SERIAL_PRINTF__
#endif
#include <serial.c>
#include "Config_Pinguino.c"
#endif

#include "DProtocol.h"

// *** private variables **********************************************
// Receive Buffer
static uint8_t strRxDProtocolID[4];
static uint8_t strRxCommandCode[5];
static uint8_t strRxParam1[7];
static uint8_t strRxParam2[7];
static uint8_t strRxDTerminator[3];

static bool_t bl_reply_supressed;
static uint16_t ui16DProtocolTimeout;
static uint8_t  iByteCounter;

// *** private functions **********************************************
static uint8_t stringToByte(uint8_t cNumeral[]);
static uint8_t numberLookup(uint8_t cNumeral);

void parseIncomingBytes(void)
{
    uint8_t bRecievedByte;

    if(serialDataCount() > 0)
    {
        ui16DProtocolTimeout = getMs();
        bRecievedByte = serialRead();

        // Parse D-Protocol Header
        if(iByteCounter <= 3)
        {
            strRxDProtocolID[iByteCounter] = bRecievedByte;

            // Check if end of string
            if(strRxDProtocolID[iByteCounter] == ' ')
            {
                strRxDProtocolID[iByteCounter] =  '\0';
                iByteCounter = 3;
            }
        }
        // Parse Command Code
        else if(iByteCounter <= 8)
        {
            strRxCommandCode[iByteCounter - 4] = bRecievedByte;

            // Check if end of string
            if(strRxCommandCode[iByteCounter - 4] == ' ')
            {
                strRxCommandCode[iByteCounter - 4] =  '\0';
                iByteCounter = 8;
            }
        }
        // Parse Parameter 1
        else if(iByteCounter <= 15)
        {
            // Check if packet terminated (no Parameter1)
            if(bRecievedByte == 0x0D)
            {
                strRxDTerminator[0] = bRecievedByte;
                strRxParam1[0] = '\0';
                strRxParam2[0] = '\0';
                iByteCounter = 23;
            }

            strRxParam1[iByteCounter - 9] = bRecievedByte;

            if(strRxParam1[iByteCounter - 9] == ' ')
            {
                strRxParam1[iByteCounter - 9] =  '\0';
                iByteCounter = 15;
            }
        }
        // Parse Parameter 2
        else if(iByteCounter <= 22)
        {
            // Check if packet terminated (no Parameter2)
            if(bRecievedByte == 0x0D)
            {
                strRxDTerminator[0] = bRecievedByte;
                strRxParam2[0] = '\0';
                iByteCounter = 23;
            }

            strRxParam2[iByteCounter - 16] = bRecievedByte;

            // Check if end of string
            if(strRxParam2[iByteCounter - 16] == ' ')
            {
                strRxParam2[iByteCounter - 16] =  '\0';
                iByteCounter = 22;
            }
        }
        // Wait for Packet Terminator
        else if(iByteCounter <= 24)
        {
            strRxDTerminator[iByteCounter - 23] = bRecievedByte;

            if(iByteCounter == 24)
            {
                if(strRxDTerminator[0] == 0x0D && strRxDTerminator[1] == 0x0A)
                {
                    // Transfer Bytes to Working Registers
                    for(iByteCounter = 0; iByteCounter < 4; iByteCounter++)
                    {
                        strDProtocolID[iByteCounter] = strRxDProtocolID[iByteCounter];
                    }

                    for(iByteCounter = 0; iByteCounter < 5; iByteCounter++)
                    {
                        strCommandCode[iByteCounter] = strRxCommandCode[iByteCounter];
                    }

                    for(iByteCounter = 0; iByteCounter < 7; iByteCounter++)
                    {
                        strParam1[iByteCounter] = strRxParam1[iByteCounter];
                    }

                    for(iByteCounter = 0; iByteCounter < 7; iByteCounter++)
                    {
                        strParam2[iByteCounter] = strRxParam2[iByteCounter];
                    }

                    blDPacketAvailable = TRUE;
                    // clear Rx buffers
                    resetDProtocol();
                }
                // Error on Termination, clear Rx Buffers
                else
                {
                    blTerminationError = TRUE;
                    serialWriteString((uint8_t*)"#Terminator Problem");
                    serialWrite(0x0D);
                    serialWrite(0x0A);
                }
            }
        }
        // Buffer Overflow
        else
        {
            blBufferOverflow = TRUE;
            serialWriteString((uint8_t*)"#Buffer Overflow");
            serialWrite(0x0D);
            serialWrite(0x0A);
            blDPacketAvailable = FALSE;
        }

        iByteCounter++;
    }

    // Check for Timeout
    if(getElapsedMs(ui16DProtocolTimeout) >= KUL_DPROTOCOL_TIMEOUT)
    {
        ui16DProtocolTimeout = getMs();
        resetDProtocol();
    }
}

void resetDProtocol(void)
{
    ui16DProtocolTimeout = getMs();
    iByteCounter = 0;
    strRxDProtocolID[0] = '\0';
    strRxCommandCode[0] = '\0';
    strRxParam1[0] = '\0';
    strRxParam2[0] = '\0';
    strRxDTerminator[0] = '\0';
}

// Interpret DProtocol
void interpretDProtocolCommands(void)
{
    if(blDPacketReady)
    {
        if(checkPBotMotionCommands())
        {
            // null
        }
        else if(checkSensorCommands())
        {
            // null
        }
        /*
            Insert other D-Protocol checking here
        */
        else // default: stopMotors
        {
            serialWriteString((uint8_t*)"#Command Not Supported");
            serialWrite(0x0D);
            serialWrite(0x0A);
            printD(strDProtocolID, (uint8_t*)"cNSP", (uint8_t*)"NOT", (uint8_t*)"KNOWN");
            bl_reply_supressed = TRUE;
            stopMotors();
        }

        // echo received bytes
        if(bl_reply_supressed)
        {
            bl_reply_supressed = FALSE;
        }
        else
        {
            serialWriteString(strDProtocolID);
            serialWriteString((uint8_t*)' ');
            serialWriteString(strCommandCode);
            serialWriteString((uint8_t*)' ');
            serialWriteString(strParam1);
            serialWriteString((uint8_t*)' ');
            serialWriteString(strParam2);
            serialWriteString((uint8_t*)' ');
            serialWrite(0x0D);
            serialWrite(0x0A);
        }

        blDPacketReady = FALSE;
    }
}

bool_t checkSensorCommands(void)
{
    // read command reply
    if(/*String(strCommandCode)*/strCommandCode == "rWSC")
    {
        serialWriteString((uint8_t*)"#Wall Sensors Status");
        serialWrite(0x0D);
        serialWrite(0x0A);
        serialWriteString((uint8_t*)"D00");
        reportWallSensors(ui8ObstacleLocation);
        bl_reply_supressed = TRUE;
        return TRUE;
    }
    else if(/*String(strCommandCode)*/strCommandCode == "rLSC")
    {
        serialWriteString((uint8_t*)"#Line Sensors Status");
        serialWrite(0x0D);
        serialWrite(0x0A);
        serialWriteString((uint8_t*)"D00");
        reportLineSensors(ui8LineLocation);
        bl_reply_supressed = TRUE;
        return TRUE;
    }

    return FALSE;
}

bool_t checkPBotMotionCommands(void)
{
    bool_t bl_Temp;

    // low level mobot control
    if(/*String(strCommandCode)*/strCommandCode == "rRMT")
    {
        serialWriteString((uint8_t*)"#Run Right Motor");
        serialWrite(0x0D);
        serialWrite(0x0A);

        if(/*String(strParam2)*/strParam2 == "F")
        {
            bl_Temp = 0;
        }
        else
        {
            bl_Temp = 1;
        }

        runRightMotor(stringToByte(strParam1), bl_Temp);
        return TRUE;
    }
    else if(/*String(strCommandCode)*/strCommandCode == "rLMT")
    {
        serialWriteString((uint8_t*)"#Run Left Motor");
        serialWrite(0x0D);
        serialWrite(0x0A);

        if(/*String(strParam2)*/strParam2 == "F")
        {
            bl_Temp = 0;
        }
        else
        {
            bl_Temp = 1;
        }

        runLeftMotor(stringToByte(strParam1), bl_Temp);
        return TRUE;
    }
    else if(/*String(strCommandCode)*/strCommandCode == "sRMT")
    {
        serialWriteString((uint8_t*)"#Stop Right Motor");
        serialWrite(0x0D);
        serialWrite(0x0A);
        stopRightMotor();
        return TRUE;
    }
    else if(/*String(strCommandCode)*/strCommandCode == "sLMT")
    {
        serialWriteString((uint8_t*)"#Stop Left Motor");
        serialWrite(0x0D);
        serialWrite(0x0A);
        stopLeftMotor();
        return TRUE;
    }
    // high level mobot control
    else if(/*String(strCommandCode)*/strCommandCode == "mFWD")
    {
        serialWriteString("#Move Forward");
        serialWrite(0x0D);
        serialWrite(0x0A);
        moveForward(stringToByte(strParam1));
        return TRUE;
    }
    else if(/*String(strCommandCode)*/strCommandCode == "mBCK")
    {
        serialWriteString((uint8_t*)"#Move Backward");
        serialWrite(0x0D);
        serialWrite(0x0A);
        moveBackward(stringToByte(strParam1));
        return TRUE;
    }
    else if(/*String(strCommandCode)*/strCommandCode == "tRGT")
    {
        serialWriteString((uint8_t*)"#Turn Right");
        serialWrite(0x0D);
        serialWrite(0x0A);
        turnRight(stringToByte(strParam1));
        return TRUE;
    }
    else if(/*String(strCommandCode)*/strCommandCode == "tLFT")
    {
        serialWriteString((uint8_t*)"#Turn Left");
        serialWrite(0x0D);
        serialWrite(0x0A);
        turnLeft(stringToByte(strParam1));
        return TRUE;
    }
    else if(/*String(strCommandCode)*/strCommandCode == "rRGT")
    {
        serialWriteString((uint8_t*)"#Rotate Right");
        serialWrite(0x0D);
        serialWrite(0x0A);
        rotateRight(stringToByte(strParam1));
        return TRUE;
    }
    else if(/*String(strCommandCode)*/strCommandCode == "rLFT")
    {
        serialWriteString((uint8_t*)"#Rotate Left");
        serialWrite(0x0D);
        serialWrite(0x0A);
        rotateLeft(stringToByte(strParam1));
        return TRUE;
    }
    else if(/*String(strCommandCode)*/strCommandCode == "sPBT")
    {
        serialWriteString((uint8_t*)"#Stop PBot");
        serialWrite(0x0D);
        serialWrite(0x0A);
        stopMotors();
        return TRUE;
    }

    return FALSE;
}

static uint8_t stringToByte(uint8_t cNumeral[])
{
    uint8_t bTemp = 0;
    uint8_t  iTemp1,iTemp2;

    for(iTemp1 = 0; iTemp1 < 10; iTemp1++)
    {
        if(cNumeral[iTemp1] == '\0')
        {
            break;
        }
    }

    iTemp2 = iTemp1;

    // hundreds digit
    if(iTemp1 == 3)
    {
        bTemp = numberLookup(cNumeral[iTemp2 - iTemp1]) * 100;
        iTemp1--;
    }

    // tens digit
    if(iTemp1 == 2)
    {
        bTemp += numberLookup(cNumeral[iTemp2 - iTemp1]) * 10;
        iTemp1--;
    }

    // ones digit
    if(iTemp1 == 1)
    {
        bTemp += numberLookup(cNumeral[iTemp2 - iTemp1]);
    }

    return bTemp;
}

static uint8_t numberLookup(uint8_t cNumeral)
{
    if(cNumeral == '1')
    {
        return 1;
    }
    else if(cNumeral == '2')
    {
        return 2;
    }
    else if(cNumeral == '3')
    {
        return 3;
    }
    else if(cNumeral == '4')
    {
        return 4;
    }
    else if(cNumeral == '5')
    {
        return 5;
    }
    else if(cNumeral == '6')
    {
        return 6;
    }
    else if(cNumeral == '7')
    {
        return 7;
    }
    else if(cNumeral == '8')
    {
        return 8;
    }
    else if(cNumeral == '9')
    {
        return 9;
    }
    else
    {
        return 0;
    }
}


// ************************************************************************
// End of DProtocol.c
// ************************************************************************
