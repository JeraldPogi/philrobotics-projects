#include <platform.h>

uint16_t interval = 1000; // interval at which to blink (milliseconds)
uint16_t previousMillis = 0;
uint16_t currentMillis;

int main(void)
{
	pinMode(LED_PIN, OUTPUT);
	setPinLow(LED_PIN);
    
	while(true)
	{
	    currentMillis = millis();
		if((uint16_t)(currentMillis-previousMillis) > interval)
		{
			previousMillis = currentMillis;
			togglePin(LED_PIN);
		}
	}
}
