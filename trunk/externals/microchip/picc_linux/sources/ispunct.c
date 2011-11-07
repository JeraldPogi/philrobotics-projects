#include	<ctype.h>

#ifndef ispunct

#if (defined(_MPC_) && !defined(__DSPICC__)) || defined(_HTKC_) || defined(_8051) || defined(_HTFSC_) || defined(_PSOC_)

bit
ispunct(char c)
#else
int
ispunct(int c)
#endif
{
	if(c >= 041 && c <= 057 || c >= 072 && c <= 0100 || c >= 0133 && c <= 0140 ||
		c >= 0173 && c <= 0176)
		return 1;
	return 0;
}

#endif
