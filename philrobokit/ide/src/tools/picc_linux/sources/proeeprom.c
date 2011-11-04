#include	<htc.h>

#if	EEPROM_SIZE

void
eecpymem(void *to, const eeprom void * from, unsigned char size)
{


	unsigned char *cp = to;

	EEADRL = (unsigned char)from;
	while (WR) continue;
	while(size--) {
		#ifdef	__FLASHTYPE
		EECON1 &= 0x7F;
		#endif
		RD = 1;
		*cp++ = EEDATA;
		++EEADRL;
	}
}

void
memcpyee(eeprom void * to, const void *from, unsigned char size)
{
	const unsigned char *ptr =from;

	while (WR) continue;
	EEADRL = (unsigned char)to - 1;
	#ifdef	__FLASHTYPE
	EECON1 &= 0x7F;
	#endif
	while(size--) {
		while (WR) continue;
		EEDATA = *ptr++;
		++EEADRL;
		CARRY = 0; if (GIE) CARRY = 1; GIE = 0;
		WREN = 1;
		EECON2 = 0x55;
		EECON2 = 0xAA;
		WR = 1;
		WREN = 0;
		if (CARRY) GIE = 1;	//an opportunity for interrupts to happen
	}
	return (unsigned char *)to;
}

#endif
