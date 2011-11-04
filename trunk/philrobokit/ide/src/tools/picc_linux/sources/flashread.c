#include	<htc.h>

#ifdef	FLASH_READ
unsigned int
flash_read(unsigned short addr)
{
	return FLASH_READ(addr);
}
#endif

