#include <htc.h>

#if !defined(_FLASH_WRITE_SIZE) || !defined(_FLASH_ERASE_SIZE)
 #error Both _FLASH_WRITE_SIZE and _FLASH_ERASE_SIZE need to be defined to compile this module.
#endif

#define _FEMASK (_FLASH_ERASE_SIZE-1)
#define _FWMASK (_FLASH_WRITE_SIZE-1)

#if _FLASH_ERASE_SIZE & _FEMASK != 0
 #error _FLASH_ERASE_SIZE must be a power of two
#endif

#if _FLASH_WRITE_SIZE & _FWMASK != 0
 #error _FLASH_WRITE_SIZE must be a power of two
#endif

#define RAM_READ(addr)	(*((unsigned char *)(addr)))

/* An implementation of the flash_write routine that
 * considers variants of PICs that auto-block erase
 * based on flash writes on particular address
 * boundaries.
 * Writes to flash are done in particular block sizes.
 * For example PIC16F887 and PIC16F884.
 */
void flash_copy(const unsigned char * source_addr,unsigned char length,unsigned short dest_addr){
	unsigned char offset;
	unsigned short backup[_FLASH_ERASE_SIZE];

	offset = dest_addr & _FEMASK;	// get actual target's offset into erase block
	dest_addr &= ~_FEMASK;			// get start address of erase block

	// first backup the target area before write
	while(length){
		EEADR=dest_addr&0xff;
		EEADRH=dest_addr>>8;
		EEPGD=1;
		do{
			RD=1;
			NOP();
			NOP();
			backup[EEADR&_FEMASK] = EEDATH<<8 | EEDATA;
		}while(++EEADR & _FEMASK);

		EEADRH = dest_addr>>8;
		EEADR &= ~(_FLASH_ERASE_SIZE-1);	// reset to start of erase block
		EEADR |= ((unsigned char)dest_addr) & _FEMASK;	// get offset


		// backup complete, now update with new data
		// offset contains index into array
		// assumes data is sourced from flash
		EEADR = (unsigned char)source_addr;	// select start of flash buffer
		EEADRH = ((unsigned short)source_addr)>>8;
		do{
			if((((unsigned short)source_addr)&0x8000) == 0x8000){
				// read source word from RAM
				backup[offset] = *source_addr | (*(source_addr+1))<<8;
				source_addr++;
			}else{
				// read source word from flash
				RD=1;
				NOP();
				NOP();
				if(EEADR++ == 0)
					EEADRH++;
				backup[offset] = EEDATH<<8 | EEDATA;
			}
			source_addr++;
			
			length--;
			offset++;
		}while((offset&_FEMASK) && length);


		// new data image complete.
		// transfer image to flash
		EEADR=dest_addr&0xff;
		EEADRH=dest_addr>>8;
		offset = 0;

#if __FLASHTYPE == 3
		// Does this device require a manual erasure?
		FREE=1;
		WREN=1;
		EECON2 = 0x55;
		EECON2 = 0xAA;
		WR = 1;
		asm("nop");
		asm("nop");
		WREN=0;
		FREE=0;
#endif
		
		do{
			EEDATA = backup[offset];
			EEDATH = backup[offset++]>>8;

			WREN=1;
			EECON2 = 0x55;
			EECON2 = 0xAA;
			WR = 1;
			asm("nop");
			asm("nop");
			WREN=0;
			EEADR++;	// this will not cause EEADRH rollover
		}while(EEADR&_FEMASK);

		// This erase block has been rewritten.
		// prepare to resume writing in next erase block (if req'd)
		dest_addr += _FLASH_ERASE_SIZE;
		offset=0;
	}
}
