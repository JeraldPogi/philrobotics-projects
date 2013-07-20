#include <PhilRoboKit_CoreLib_Macro.h>#include <soft_dac.h>

#define LED_UPDATE_INTERVAL    50

static uint16_t LoopTimer;
static              uint8_t  LEDCounter, ADCOutValue = 0;
static 				uint8_t  LogLookup[25] = {0,0,0,0,0,1,2,3,5,8,11,16,23,32,45,64,90,127,180,255,255,255,255,255,255};	
static 				bool_t	 LEDDirection;
static uint16_t BlinkTimer;

void init()
{
	setupSoftDAC(SDAC0, LED1, ADCOutValue);
    LoopTimer = getMs();     
	//BlinkTimer = getMs();  	// get time stamp
}

void cycle()
{
  if(getElapsedMs(LoopTimer) >= LED_UPDATE_INTERVAL)
  {
    LoopTimer = getMs();                            // get time stamp
 
    if(LEDCounter >= 24)
    {
      LEDCounter=24;
      LEDDirection = false;
    }
    else if(LEDCounter <= 1)
    {
      LEDDirection = true;
      LEDCounter=1;
    }
    else
    {
      /* Do Nothing */
    }
    
    if(LEDDirection)
    {
      LEDCounter++;
    }
    else
    {
      LEDCounter--;
    }
	
    ADCOutValue = LogLookup[LEDCounter];
	setSoftDAC(SDAC0, ADCOutValue); 
  }
  
  //if(getElapsedMs(BlinkTimer) >= LED_UPDATE_INTERVAL)
  //{
	//  BlinkTimer = getMs();  	// get time stamp
	//  togglePin(LED2);
  //}
}
