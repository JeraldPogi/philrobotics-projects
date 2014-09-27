
#include "Config_Arduino.h"

/* Hardware Serial Glue Code */
extern "C" 
{
	void Serial_begin(unsigned long baud) 
	{		
		Serial.begin(baud);
	}
	
	char Serial_write(char char_val)
	{
		return Serial.write(char_val);
	}
	
	long Serial_print(char* string_val)
	{
		return Serial.print(string_val);
	}

	long Serial_write2(uint8_t* buff, char lenght)
	{
		return Serial.write(buff, lenght);
	}
	
	int Serial_available(void)
	{
		return Serial.available();
	}
	
	int Serial_read(void)
	{
		return Serial.read();
	}
}



