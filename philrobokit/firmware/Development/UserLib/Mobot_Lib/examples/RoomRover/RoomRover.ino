/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      	| "RoomRover"                                                 			|
* |:----          	|:----                                                                  |
* |Description:   	| Demonstrate High Level Motor Control functions						
*						for PBot Mobile Robot Kit (and compatible mobots)					
*						visit "http://www.e-gizmo.com/KIT/P-BOT.htm" for more info.			|
* |Author:        	| Efren S. Cruzat II                                                    |
* |               	|                                                                       |
* |Dependencies: 	|                                                                       |
*
* > This program is free software under GNU General Public License.
*********************************************************************************************/
#define __ARDUINO__
#include "Mobot_Lib.h"

#define K_FULL_ROTATE_PERIOD        1500            // 1.5 Seconds
#define K_BACKOFF_PERIOD            2500            // 2.5 Seconds
#define K_MAXIDLDE_PERIOD           5000            // No Wall Detected for 5 Seconds, could be stucked somewhere

#define KBL_TURNLEFT                FALSE
#define KBL_TURNRIGHT               TRUE

uint16_t    IdlePeriod;
uint8_t     WallState;
uint8_t     PrevWallState;

void PerformManeuver(void);

void init()
{
    setupPBot(SUMO,WHITE,BLACK);                    // Sumo Robot Mode,
                                                    // Detect White Obstacles,
                                                    // Detect Black Lines
    IdlePeriod = getMs();
}

void cycle()
{
    WallState = detectObstacle();

    if(PrevWallState == WallState)
    {
        if(getElapsedMs(IdlePeriod) > K_MAXIDLDE_PERIOD)
        {
            PerformManeuver();
        }
    }
    else
    {
        IdlePeriod = getMs();
    }

    if(WallState == NO_OBSTACLE)
    {
        //moveForward(FULLSPEED);
        turnLeft(40);  // my bias kasi sa right ang PBot ko... :P
    }
    else
    {
        /* Obstacle on left */
        if(WallState == OBJECT_LEFT)
        {
            turnRight(FULLSPEED);
        }
        /* Obstacle on right */
        else if(WallState == OBJECT_RIGHT)
        {
            turnLeft(FULLSPEED);
        }
        /* Obstacle on left-center */
        else if(WallState == OBJECT_LEFTCENTER)
        {
            rotateRight(FULLSPEED);
        }
        /* Obstacle on right-center */
        else if(WallState == OBJECT_RIGHTCENTER)
        {
            rotateLeft(FULLSPEED);
        }
        else
        {
            PerformManeuver();
        }
    }

    PrevWallState = WallState;
}

void PerformManeuver(void)
{
    bool_t      TurnDirection = KBL_TURNLEFT;
    uint16_t    MotionTimer;

    MotionTimer = getMs();

    /* Move Backward for 3Sec */
    while(getElapsedMs(MotionTimer) < K_BACKOFF_PERIOD)
    {
        moveBackward(FULLSPEED);
    }

    if(randomNum(0,255) < 128)
    {
        TurnDirection = KBL_TURNLEFT;
    }
    else
    {
        TurnDirection = KBL_TURNRIGHT;
    }

    MotionTimer = getMs();

    /* Rotate for 5Sec */
    while(getElapsedMs(MotionTimer) < K_FULL_ROTATE_PERIOD)
    {
        if(KBL_TURNRIGHT == TurnDirection)
        {
            rotateRight(FULLSPEED);
        }
        else
        {
            rotateLeft(FULLSPEED);
        }
    }

    IdlePeriod = getMs();
}




