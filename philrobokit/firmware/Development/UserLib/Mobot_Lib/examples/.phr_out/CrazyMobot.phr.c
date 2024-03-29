#include <PhilRoboKit_CoreLib_Macro.h>/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      	| "CrazyMobot"                                                 			|
* |:----          	|:----                                                                  |
* |Description:   	| Demonstrate Low Level and High Level Motor Control functions			
*						for PBot Mobile Robot Kit (and compatible mobots)					
*						visit "http://www.e-gizmo.com/KIT/P-BOT.htm" for more info.			|
* |Author:        	| Efren S. Cruzat II                                                    |
* |               	|                                                                       |
* |Dependencies: 	|                                                                       |
*
* > This program is free software under GNU General Public License.
*********************************************************************************************/
#define __PKIT__
#include "Mobot_Lib.h"

#define KUL_SWITCHSTATE_INTERVAL 1500

static  uint8_t     State;
        uint32_t    StateDuration;

void init()
{
    setupPBot(SUMO,WHITE,BLACK);                        // Sumo Robot Mode, 
                                                        // Detect White Obstacles, 
                                                        // Detect Black Lines  
    /* Initialize Timers */
    StateDuration = getMs();  
}

void cycle()
{
    /* State Machine */
    switch (State)
    {
        case 0: // Right Motor Running
        {
            runRightMotor(FULLSPEED, FORWARD);
            break;
        }
        case 1: // Right Motor Reverse
        {
            runRightMotor(FULLSPEED, REVERSE);
            break;  
        }
        case 2: // Left Motor Running
        {
            stopMotors();
            runLeftMotor(FULLSPEED, FORWARD);
            break;
        }
        case 3: // Left Motor Reverse
        {
            runLeftMotor(FULLSPEED, REVERSE);  
            break;      
        }
        case 4: // Forward @ Mid Speed
        {
            moveForward(MIDSPEED); 
            break;
        }
        case 5: // Forward @ Low Speed
        {
            moveForward(LOWSPEED); 
            break;  
        }
        case 6: // Reverse @ Low Speed
        {
            moveBackward(LOWSPEED); 
            break;  
        }
        case 7: // Rotate Left
        {
            rotateLeft(MIDSPEED);
            break;
        }
        case 8: // Rotate Right
        {
            rotateRight(MIDSPEED);
            break;
        }
        case 9: // Turn Left
        {
            turnLeft(MIDSPEED);
            break;
        }
        case 10: // Turn Right
        {
            turnRight(MIDSPEED);
            break;
        }
        case 11: // Stop
        {
            /* Victory Dance */
            if(getElapsedMs(StateDuration) <= (KUL_SWITCHSTATE_INTERVAL>>1))
            {
                rotateRight(FULLSPEED);
            }
            else
            {
                rotateLeft(FULLSPEED);
            }
            stopMotors();
            break;
        }
        default: // Stop
        {
            stopMotors();
            break;   
        }           
    }

    /* Scheduler */
    if(getElapsedMs(StateDuration) >= KUL_SWITCHSTATE_INTERVAL)
    {
        StateDuration = getMs();

        if(State <= 10)
        {
            State++;
        }
        else
        {
            State = 0;
        }
    }
}
