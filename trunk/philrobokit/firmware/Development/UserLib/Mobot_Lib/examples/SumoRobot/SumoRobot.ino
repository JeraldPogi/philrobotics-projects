/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      	| "Telemetry"                                                 			|
* |:----          	|:----                                                                  |
* |Description:   	| Sumo Robot Demo Sketch for E-Gizmo's P-Bot			
*						visit "http://www.e-gizmo.com/KIT/P-BOT.htm" for more info.			|
* |Author:        	| Efren S. Cruzat II                                                    |
* |               	|                                                                       |
* |Dependencies: 	|                                                                       |
*
* > This program is free software under GNU General Public License.
*********************************************************************************************/
#define __ARDUINO__
#include "Mobot_Lib.h"

/* Validation Delays */
#define KUL_LINESENSOR_DEBOUNCE_MS    10

uint32_t    LineSensorDebounce;
bool_t      LineDetected;

void init()
{
    setupPBot(SUMO,WHITE,BLACK);                            // Sumo Robot Mode, 
                                                            // Detect White Wall, 
                                                            // Detect Black Lines
    /* Initialize Timers */
    LineSensorDebounce = getMs();
}

void cycle()
{
    uint8_t LineState;
    uint8_t WallState;
    bool_t  RotateRight;
    bool_t  RandomLocked;

    /* Read Line Sensors */
    LineState = detectLine();

    /* Line Detection Debounce */
    if(LineState != NO_LINE)
    {
        if((getMs() - LineSensorDebounce) >= KUL_LINESENSOR_DEBOUNCE_MS)            // validation delayMs
        {
            LineDetected = true;
        }
    }
    else
    {
        LineSensorDebounce = getMs();
        LineDetected = false;
    }

    /* Detect Obstacles */
    WallState = detectObstacle();

    /* Randomly Select Rotation */
    if(randomNum(0,255) >= 128 && !RandomLocked)
    {
        RotateRight = true;
    }
    else
    {
        RotateRight = false;
    }
  
    /* Move P-Bot */
    if(LineDetected)
    {
        moveBackward(MIDSPEED);
        delayMs(200);

        if(RotateRight)
        {
            rotateRight(MIDSPEED);
        }
        else
        {
            rotateLeft(MIDSPEED);
        }
            RandomLocked = true;
            delayMs(300);
        }  
    /* Right */
    else if(WallState == OBJECT_RIGHTCENTER)
    {
        turnRight(MIDSPEED);
        delayMs(300);
    }
    /* Left */
    else if(WallState == OBJECT_LEFTCENTER)
    {
        turnLeft(MIDSPEED);
        delayMs(300);    
    }  
    /* Far Right */
    else if(WallState == OBJECT_RIGHT)
    {
        rotateRight(MIDSPEED);
    }
    /* Far Left */
    else if(WallState == OBJECT_LEFT)
    {
        rotateLeft(MIDSPEED);
    }
    /* Near Front */
    else if(WallState == OBJECT_NEARFRONT)
    {
        moveForward(FULLSPEED);
    }  
    else
    {
        moveForward(LOWSPEED);
        RandomLocked = false;
    }
}
