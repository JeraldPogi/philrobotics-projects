#ifndef _ASPIC_H_
#define	_ASPIC_H_

#include <as_chip_select.h>

#if defined(_PIC14) || defined(_PIC14E)
#define BANKMASK(addr)	((addr)&07fh)
#else
#define BANKMASK(addr)	((addr)&01fh)
#endif
#endif

