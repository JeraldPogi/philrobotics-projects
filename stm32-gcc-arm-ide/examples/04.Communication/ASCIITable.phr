#include <platform.h>

// first visible ASCIIcharacter '!' is number 33:
char thisChar = 33;

int main(void)
{	
    Serial.begin(115200);
	Serial.print("ASCII Table ~ Character Map\n");    
	while(true)
	{
	    Serial.print(thisChar);
		Serial.print(", dec: %d", thisChar);
		Serial.print(", hex: %x", thisChar);
		Serial.print(", oct: %o", thisChar);
		Serial.print(", bin: %b\n", thisChar);
		
		if(thisChar++ == 126){
			while(true);
		}
	}
}
