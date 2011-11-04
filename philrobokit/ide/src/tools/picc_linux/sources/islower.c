#include	<ctype.h>

#ifndef islower

#if (defined(_MPC_) && !defined(__DSPICC__)) || defined(_HTKC_) || defined(_8051) || defined(_HTFSC_) || defined(_PSOC_)

bit
islower(char c)
#else
int
islower(int c)
#endif
{
	return c <= 'z' && c >= 'a';
}

#endif
