#include	<ctype.h>

#ifndef iscntrl

#if	(defined(_MPC_) && !defined(__DSPICC__)) || defined(_HTKC_) || defined(_8051) || defined(_HTFSC_) || defined(_PSOC_)
bit
iscntrl(char c)
#else
int
iscntrl(int c)
#endif
{
	return c < ' ';
}

#endif
