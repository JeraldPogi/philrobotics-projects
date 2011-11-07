#include	<ctype.h>

#ifdef	_XA_
code unsigned char _ctype_[257] = {
#else
const unsigned char _ctype_[257] = {
#endif
		0,
/* 000 */	_C,	_C,	_C,	_C,	_C,	_C,	_C,	_C,
/* 010 */	_C,	_C|_S,	_C|_S,	_C|_S,	_C|_S,	_C|_S,	_C,	_C,
/* 020 */	_C,	_C,	_C,	_C,	_C,	_C,	_C,	_C,
/* 030 */	_C,	_C,	_C,	_C,	_C,	_C,	_C,	_C,
/* 040 */	_S|_B,	_P,	_P,	_P,	_P,	_P,	_P,	_P,
/* 050 */	_P,	_P,	_P,	_P,	_P,	_P,	_P,	_P,
/* 060 */	_N,	_N,	_N,	_N,	_N,	_N,	_N,	_N,
/* 070 */	_N,	_N,	_P,	_P,	_P,	_P,	_P,	_P,
/* 100 */	_P,	_U|_X,	_U|_X,	_U|_X,	_U|_X,	_U|_X,	_U|_X,	_U,
/* 110 */	_U,	_U,	_U,	_U,	_U,	_U,	_U,	_U,
/* 120 */	_U,	_U,	_U,	_U,	_U,	_U,	_U,	_U,
/* 130 */	_U,	_U,	_U,	_P,	_P,	_P,	_P,	_P,
/* 140 */	_P,	_L|_X,	_L|_X,	_L|_X,	_L|_X,	_L|_X,	_L|_X,	_L,
/* 150 */	_L,	_L,	_L,	_L,	_L,	_L,	_L,	_L,
/* 160 */	_L,	_L,	_L,	_L,	_L,	_L,	_L,	_L,
/* 170 */	_L,	_L,	_L,	_P,	_P,	_P,	_P,	_C
};
