/*
 *	Functions to support persistent variables.
 *
 *	persist_validate() marks the persistent data area
 *	as valid, via a magic number and checksum.
 *	persist_check() checks that it is valid, and optionally
 *	clears it to zero.
 *
 *	Copyright (C) HI-TECH Software 2002
 */

#include	<sys.h>
#include	<string.h>

extern far char		_Lnvram[], _Hnvram[];
#if	_GPRBITS_ > 0
extern far char		_Lnvram_1[], _Hnvram_1[];
#endif
#if	_GPRBITS_==2
extern far char		_Lnvram_2[], _Hnvram_2[];
extern far char		_Lnvram_3[], _Hnvram_3[];
#endif

static persistent long		magic;
static persistent unsigned char	checksum;

#define	MAGIC	0x1B25C687

void
persist_validate(void)
{
	register char 		cp;
	register char		c;
	register unsigned char	size;

	magic = MAGIC;
	checksum = 0;
	size = (unsigned char)(_Hnvram - _Lnvram);
	for(c = 0, cp = (unsigned char)_Lnvram; size > 0; --size) {
		c += *(persistent char *)cp;
	}
#if	_GPRBITS_ > 0
	size = (unsigned char)(_Hnvram_1 - _Lnvram_1);
	for(cp = (unsigned char)_Lnvram_1; size > 0; --size) {
		c += *(persistent bank1 char *)cp;
	}
#endif
#if	_GPRBITS_==2
	size = (unsigned char)(_Hnvram_2 - _Lnvram_2);
	for(cp = (unsigned char)_Lnvram_2; size > 0; --size) {
		c += *(persistent bank2 char *)cp;
	}
	size = (unsigned char)(_Hnvram_3 - _Lnvram_3);
	for(cp = (unsigned char)_Lnvram_3; size > 0; --size) {
		c += *(persistent bank3 char *)cp;
	}
#endif
	checksum = -c;
}

int
persist_check(int flag)
{
	register char 		cp;
	register char		c;
	register unsigned char	size;

	if(magic == MAGIC) {
		size = (unsigned char)(_Hnvram - _Lnvram);
		for(c = 0, cp = (unsigned char)_Lnvram; size > 0; --size) {
			c += *(persistent char *)cp;
		}
#if	_GPRBITS_ > 0
		size = (unsigned char)(_Hnvram_1 - _Lnvram_1);
		for(cp = (unsigned char)_Lnvram_1; size > 0; --size) {
			c += *(persistent bank1 char *)cp;
		}
#endif
#if	_GPRBITS_==2
		size = (unsigned char)(_Hnvram_2 - _Lnvram_2);
		for(cp = (unsigned char)_Lnvram_2; size > 0; --size) {
			c += *(persistent bank2 char *)cp;
		}

		size = (unsigned char)(_Hnvram_3 - _Lnvram_3);
		for(cp = (unsigned char)_Lnvram_3; size > 0; --size) {
			c += *(persistent bank3 char *)cp;
		}
#endif
		if(c == 0) {
			return 1;
		}
	}
	if(flag) {
		size = (unsigned char)(_Hnvram - _Lnvram);
		for(cp = (unsigned char)_Lnvram; size > 0; --size) {
			*(persistent char *)cp = 0;
		}
#if	_GPRBITS_ > 0
		size = (unsigned char)(_Hnvram_1 - _Lnvram_1);
		for(cp = (unsigned char)_Lnvram_1; size > 0; --size) {
			*(persistent bank1 char *)cp = 0;
		}
#endif
#if	_GPRBITS_==2
		size = (unsigned char)(_Hnvram_2 - _Lnvram_2);
		for(cp = (unsigned char)_Lnvram_2; size > 0; --size) {
			*(persistent bank2 char *)cp = 0;
		}
		size = (unsigned char)(_Hnvram_3 - _Lnvram_3);
		for(cp = (unsigned char)_Lnvram_3; size > 0; --size) {
			*(persistent bank3 char *)cp = 0;
		}
#endif
		persist_validate();
	}
	return 0;
}

