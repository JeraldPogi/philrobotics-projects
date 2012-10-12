#ifndef __COMMON_H__
#define __COMMON_H__

#include <xc.h>
#include <stdint.h>
#include <stdio.h>
#include <stdarg.h>

#ifndef _XTAL_FREQ
	#define _XTAL_FREQ	20000000UL
#endif

#define delay_ms	__delay_ms
#define delay_us	__delay_us

#ifndef BOOL
  //#define	BOOL		bit
  #define	BOOL		unsigned char
#endif

#ifndef BYTE
  #define	BYTE		unsigned char
#endif

#ifndef TRUE
  #define	TRUE		1
  #define	FALSE		0
#endif

#ifndef HIGH
  #define	HIGH		1
  #define	LOW			0
#endif

#ifndef INPUT
  #define	INPUT		1
  #define	OUTPUT		0
  #define	ANALOG		INPUT
#endif

#endif // __COMMON_H__
