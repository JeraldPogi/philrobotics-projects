//PhilRoboKit LED Blinker 1

#include "PhilRobokit_Macro.h"

void init()
{
	setupLEDs();
		
	clearLED(LED1);
	clearLED(LED2);
	setLED(LED3);
	setLED(LED4);
}	

void program()
{	
		
	toggleLED(LED1);
	toggleLED(LED2);
	toggleLED(LED3);
	toggleLED(LED4);			
			
	delayMs(500);
}