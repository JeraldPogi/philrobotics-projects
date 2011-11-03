//PhilRoboKit LED Blinker 1

#include "PhilRobokit_Macro.h"

void init()
{
	setupLEDs();
	setupBuzzer();
	setupSwitches();		
	setupSerial(57600);	
		
	clearLED(LED1);
	clearLED(LED2);
	setLED(LED3);
	setLED(LED4);
	
	clearBuzzer();	
	
	serialSend("PhilRobokit!=)\r");	
}	

void setupSPI(register sSDO)
{
	sSDO ^= 1;
}	

void program()
{	
	setupSPI(PIN2);
	
	if(isSerialDataAvailable()){
		serialSendChar(serialRead());
	}
		
	toggleLED(LED1);
	toggleLED(LED2);
	toggleLED(LED3);
	toggleLED(LED4);			
			
	delayMs(250);
			
	if(isButtonPressed(SW1))
	{			
		setBuzzer();
	}	
	else if(isButtonPressed(SW2)){
		clearBuzzer();
	}	
			
	delayMs(250);
}