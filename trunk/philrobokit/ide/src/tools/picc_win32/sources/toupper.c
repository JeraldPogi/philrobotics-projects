#include	<ctype.h>

char
#if (defined(_MPC_) && !defined(__DSPICC__)) || defined(_HTKC_) || defined(_8051) || defined(_HTFSC_) || defined(_PSOC_) || defined(__MSP430C__)
toupper(register char c)
#else
toupper(register int c)
#endif
{
	if((char)c <= 'z' && (char)c >= 'a')
		c &= ~('a' - 'A') & 0xFF;
	return (char)c;
}
