//PhilRoboKit LED Blinker 2

//#define _LEGACY_HEADERS

#include <htc.h>
#include "PhilRobokit_Header.h"

#define _XTAL_FREQ 20000000

//__CONFIG(WDTDIS & HS & LVPDIS & PWRTEN);

__CONFIG(WDTE_OFF & FOSC_HS & LVP_OFF & PWRTE_ON);


void main(void)
{
	TRISC = LED_MASK_PORTC;
	TRISD = LED_MASK_PORTD;
	
	PORTC = LED_MASK_PORTC; //Clear LED
	PORTD = LED_MASK_PORTD; //Clear LED
	
	while(1)
	{
			LED1 ^= 1;
			__delay_ms(250);
						
			LED2 ^= 1;
			__delay_ms(250);
			
			LED3 ^= 1;
			__delay_ms(250);
			
			LED4 ^= 1;
			__delay_ms(250);
	}
}