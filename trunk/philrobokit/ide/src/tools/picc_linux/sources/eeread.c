#include	<htc.h>

#if	EEPROM_SIZE > 0

unsigned char
eeprom_read(unsigned char addr)
{
	while (WR) continue;
	return EEPROM_READ(addr);
}
#endif
