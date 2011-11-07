#ifndef _HTC_H_
#define _HTC_H_


/* Definitions for _HTC_EDITION_ values */
#define __LITE__ 0
#define __STD__ 1
#define __PRO__ 2

/* common definitions */

#define	___mkstr1(x)	#x
#define	___mkstr(x)	___mkstr1(x)



/* HI-TECH PICC / PICC-Lite compiler */
#if	defined(__PICC__) || defined(__PICCLITE__)
#include <pic.h>
#endif

/* HI-TECH PICC-18 compiler */
#if	defined(__PICC18__)
#include <pic18.h>
#endif

/* HI-TECH dsPICC compiler */
#if	defined(__DSPICC__)
#include <dspic.h>
#endif

/* HI-TECH C for PIC32 */
#if defined(__PICC32__)
#include <pic32.h>
#endif

#endif
