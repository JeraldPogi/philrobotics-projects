/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      | "LowLevelMobot.c"                                                   |
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
* |v00.01.00    |20101216   |ESCII              |Library Initial Release            |
* |v00.01.01    |20120118   |ESCII              |Last known working port(Pinguino)  |
* |v00.02.01    |2013xxxx   |ESCII              |PhilRobokit Port                   |
*********************************************************************************************/
#define __SHOW_MODULE_HEADER__ /*!< \brief This section includes the Module Header on the documentation */
#undef  __SHOW_MODULE_HEADER__

#if defined(__PINGUINO__)
#include <pin.h>
#include <system.c>
#include <digitalw.c>

#include <mathlib.c>
#include <delay.c>
#include <millis.c>
#endif

#include "LowLevelMobot.h"

// *** private variables **********************************************

// *** private functions **********************************************
static uint8_t readSensorOutput(uint8_t iSensorPin, bool_t blPolarity);

// *** Low Level Motor Control Functions **********************************
void runRightMotor(uint8_t ui8Speed, bool_t blDirection)
{
    if(KBL_REVERSE_DIR == blDirection)
    {
        mc_setPin(KI_RIGHTMOTOR_DIRCTRL);
    }
    else
    {
        mc_clrPin(KI_RIGHTMOTOR_DIRCTRL);
    }

#if (MOTOR_TYPE == USE_DC_FIX_SPEED)
	#if (DRIVER_TYPE == DRIVER_HBRIDGE)
    if(KBL_REVERSE_DIR == blDirection)
    {
        mc_clrPin(KI_RIGHTMOTOR_RUNCTRL);
    }
    else
    {
        mc_setPin(KI_RIGHTMOTOR_RUNCTRL);
    }	
	#else
    mc_setPin(KI_RIGHTMOTOR_RUNCTRL);
	#endif
#elif (MOTOR_TYPE == USE_DC_VAR_SPEED)
	#if (DRIVER_TYPE == DRIVER_HBRIDGE)
    if(KBL_REVERSE_DIR == blDirection)
    {
        setSoftDAC(RIGHT_MOTOR, (KB_MAXSPEED-ui8Speed));
    }
    else
    {
        setSoftDAC(RIGHT_MOTOR, ui8Speed);	
    }	
	#else
    setSoftDAC(RIGHT_MOTOR, ui8Speed);
	#endif
#elif (MOTOR_TYPE == USE_SERVO)
#else
#error undefined MOTOR_TYPE
#endif
}

void runLeftMotor(uint8_t ui8Speed, bool_t blDirection)
{
    if(KBL_REVERSE_DIR == blDirection)
    {
        mc_setPin(KI_LEFTMOTOR_DIRCTRL);
    }
    else
    {
        mc_clrPin(KI_LEFTMOTOR_DIRCTRL);
    }

#if (MOTOR_TYPE == USE_DC_FIX_SPEED)
	#if (DRIVER_TYPE == DRIVER_HBRIDGE)
    if(KBL_REVERSE_DIR == blDirection)
    {
        mc_clrPin(KI_LEFTMOTOR_RUNCTRL);
    }
    else
    {
        mc_setPin(KI_LEFTMOTOR_RUNCTRL);
    }	
	#else
    mc_setPin(KI_LEFTMOTOR_RUNCTRL);
	#endif
#elif (MOTOR_TYPE == USE_DC_VAR_SPEED)
	#if (DRIVER_TYPE == DRIVER_HBRIDGE)
    if(KBL_REVERSE_DIR == blDirection)
    {
        setSoftDAC(LEFT_MOTOR, (KB_MAXSPEED-ui8Speed));
    }
    else
    {
        setSoftDAC(LEFT_MOTOR, ui8Speed);	
    }	
	#else
    setSoftDAC(LEFT_MOTOR, ui8Speed);
	#endif
#elif (MOTOR_TYPE == USE_SERVO)
#else
#error undefined MOTOR_TYPE
#endif
}

void stopRightMotor(void)
{
    mc_clrPin(KI_RIGHTMOTOR_DIRCTRL);
#if (MOTOR_TYPE == USE_DC_FIX_SPEED)
    mc_clrPin(KI_RIGHTMOTOR_RUNCTRL);
#elif (MOTOR_TYPE == USE_DC_VAR_SPEED)
    setSoftDAC(RIGHT_MOTOR, 0);
#elif (MOTOR_TYPE == USE_SERVO)
#else
#error undefined MOTOR_TYPE
#endif
}

void stopLeftMotor(void)
{
    mc_clrPin(KI_LEFTMOTOR_DIRCTRL);
#if (MOTOR_TYPE == USE_DC_FIX_SPEED)
    mc_clrPin(KI_LEFTMOTOR_RUNCTRL);
#elif (MOTOR_TYPE == USE_DC_VAR_SPEED)
    setSoftDAC(LEFT_MOTOR, 0);
#elif (MOTOR_TYPE == USE_SERVO)
#else
#error undefined MOTOR_TYPE
#endif
}

// *** Low Level Sensor Functions *****************************************
static uint8_t readSensorOutput(uint8_t iSensorPin, bool_t blPolarity)
{
    if(blPolarity)
    {
        return !mc_getPinState(iSensorPin);                                 // active low
    }
    else
    {
        return mc_getPinState(iSensorPin);                                  // active high
    }
}
#if 0
uint16_t getRightTachoPeriod(bool_t blActiveEdge)                           // 1 - rising edge, 0 - falling edge
{
    static  bool_t      blPrevTachoState;
    bool_t      blTachoState;
    bool_t      blEdgeDetected;
    static  uint16_t    ui16PrevEdgeMarkTimer;
    uint16_t    ui16EdgeMarkTimer;                                  // will be initialized and used only when edge is detected
    static  uint16_t    ui16PollTimeoutTimer;
    static  uint16_t    ui16TachoPeriod;
    blEdgeDetected = FALSE;
    // poll tacho pin
    blTachoState = readSensorOutput(KI_RIGHTWHEEL_TACHO, !blActiveEdge);

    // detect edge
    if(!blPrevTachoState && blTachoState)
    {
        blEdgeDetected = TRUE;
        ui16EdgeMarkTimer = getMs();
        ui16PollTimeoutTimer = ui16EdgeMarkTimer;
    }

    // check timeout
    if(!blEdgeDetected)
    {
        if(getElapsedMs(ui16PollTimeoutTimer) >= KUL_TACHOPOLLTIMEOUT)
        {
            blEdgeDetected = FALSE;
            ui16TachoPeriod = 0;
        }
    }
    // compute tacho period
    else
    {
        blEdgeDetected = FALSE;
        // IIR 1/4 new, 3/4 old
        ui16TachoPeriod >>= 2;
        ui16TachoPeriod *= 3;
        ui16TachoPeriod += ((ui16EdgeMarkTimer - ui16PrevEdgeMarkTimer) >> 2);
        ui16PrevEdgeMarkTimer = ui16EdgeMarkTimer;
    }

    blPrevTachoState = blTachoState;
    return ui16TachoPeriod;
}

uint16_t getLeftTachoPeriod(bool_t blActiveEdge)                                // 1 - rising edge, 0 - falling edge
{
    static  bool_t blPrevTachoState;
			bool_t blTachoState;
			bool_t blEdgeDetected;
    static  uint16_t ui16PrevEdgeMarkTimer;
			uint16_t ui16EdgeMarkTimer;                                  		// will be initialized and used only when edge is detected
    static  uint16_t ui16PollTimeoutTimer;
    static  uint16_t ui16TachoPeriod;
			blEdgeDetected = FALSE;
    
	// poll tacho pin
    blTachoState = readSensorOutput(KI_LEFTWHEEL_TACHO, !blActiveEdge);

    // detect edge
    if(!blPrevTachoState && blTachoState)
    {
        blEdgeDetected = TRUE;
        ui16EdgeMarkTimer = getMs();
        ui16PollTimeoutTimer = ui16EdgeMarkTimer;
    }

    // check timeoout
    if(!blEdgeDetected)
    {
        if(getElapsedMs(ui16PollTimeoutTimer) >= KUL_TACHOPOLLTIMEOUT)
        {
            blEdgeDetected = FALSE;
            ui16TachoPeriod = 0;
        }
    }
    // compute tacho period
    else
    {
        blEdgeDetected = FALSE;
        // IIR 1/4 new, 3/4 old
        ui16TachoPeriod >>= 2;
        ui16TachoPeriod *= 3;
        ui16TachoPeriod += ((ui16EdgeMarkTimer - ui16PrevEdgeMarkTimer) >> 2);
        ui16PrevEdgeMarkTimer = ui16EdgeMarkTimer;
    }

    blPrevTachoState = blTachoState;
    return ui16TachoPeriod;
}
#endif

void pollWallSensors(bool_t* blObstacleSensorPolarity)
{
    blWallDetectedonLeft = readSensorOutput(KI_LEFT_WALLSENSOR, *blObstacleSensorPolarity);
    blWallDetectedonCenter = readSensorOutput(KI_CENTER_WALLSENSOR, *blObstacleSensorPolarity);
    blWallDetectedonRight = readSensorOutput(KI_RIGHT_WALLSENSOR, *blObstacleSensorPolarity);
}

void pollLineSensors(bool_t* blLineSensorPolarity)
{
    blLineDetectedonLeft = readSensorOutput(KI_LEFT_LINESENSOR, *blLineSensorPolarity);
    blLineDetectedonCenter = readSensorOutput(KI_CENTER_LINESENSOR, *blLineSensorPolarity);
    blLineDetectedonRight = readSensorOutput(KI_RIGHT_LINESENSOR, *blLineSensorPolarity);
}
// *********************************************************************
// End of LowLevelMobot.c
// *********************************************************************
