// This header file declares ALL SFRs that are referenced by library sources as extern.
// Library sources shall not include htc.h as this can create a conflict between the device
// used to build the library and the device that reads from the library later.

#define NOP()		asm("nop")
#define CLRWDT()	asm("clrwdt")

#ifndef _PIC14E
#define EEADRL EEADR
#endif

extern volatile unsigned char TXREG;
#ifdef _PIC14E
extern volatile unsigned int EEADR;
#else
extern volatile unsigned char EEADR;
#endif
extern volatile unsigned char EEADRL;
extern volatile unsigned char EEADRH;
extern volatile unsigned char EEDATA;
extern volatile unsigned char EEDATH;
extern volatile unsigned char EECON2;
extern volatile unsigned char EECON1;

extern volatile bit TXIF;
extern volatile bit EEPGD;
extern volatile bit RD;
extern volatile bit WR;
extern volatile bit FREE;
extern volatile bit WREN;
extern volatile bit CARRY;
extern volatile bit GIE;
