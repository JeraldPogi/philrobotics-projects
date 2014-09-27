/*****************************************************************************************//**
* # PhilRobotics | Philippine Electronics and Robotics Enthusiasts Club #
* http://philrobotics.com | http://philrobotics.com/forum | http://facebook.com/philrobotics
* phirobotics.core@philrobotics.com
*
*---------------------------------------------------------------------------------------------
* |Filename:      	| "Telemetry"                                                 			|
* |:----          	|:----                                                                  |
* |Description:   	| Demonstrate P-Bot telemetry through UART using D-Protocol				
*						visit "http://www.e-gizmo.com/KIT/P-BOT.htm" for more info.			|
* |Author:        	| Efren S. Cruzat II                                                    |
* |               	|                                                                       |
* |Dependencies: 	|                                                                       |
*
* > This program is free software under GNU General Public License.
*********************************************************************************************/
#define __ARDUINO__
#include "Mobot_Lib.h"

#define KUL_POLLING_INTERVAL  1000                      // sensor polling and peporting interval in mS
                                                         
void init()
{
    setupPBotUART(SUMO,WHITE,BLACK,TRUE,9600);           // Sumo Robot Mode, 
                                                        // Detect White Obstacles, 
                                                        // Detect Black Lines
                                                        // Enable Telemetry
                                                        // 9600bps
}
 
void cycle()
{
    pollSensors(KUL_POLLING_INTERVAL);                  // poll and report status every 1S
}

