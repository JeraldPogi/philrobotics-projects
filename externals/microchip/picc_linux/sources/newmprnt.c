#include	<stdio.h>
#include	<stdlib.h>
#include	<string.h>


/*
 * 	If using long or floating point types, define __LONG and/or
 * 	__FLOAT to enable support for them.
 *
 * 	Extra features in this version of mprnt.c:
 * 	
 * 	+ flag for sign insertion
 * 	leading zeros
 * 	
 * 	
 * 	
 *	doprnt for PIC. Supports:
 *
 *	%d	decimal
 *	%u	unsigned
 *	%o	octal
 *	%x	hex (lower case)
 *	%X	hex (upper case)
 *	%s	string
 *	%c	character
 *
 *	On the 14 bit PICS only:
 *	Field widths and precision are supported (precision is significant
 *	only for %s), including variable width, e.g. %*s
 *
 *	Optionally (on 14 bitters)
 *
 *	%ld	long decimal
 *	%lx	long hex (lower case)
 *	%lX	long hex (upper case)
 *	%lo	long octal
 *
 *	Even more optionally:
 *
 *	%f	float (really double) - field width and precision supported
 *	%e	float - scientific format
 *	
 *	$Id: newmprnt.c 24666 2006-12-07 05:46:42Z garth $
 *	$Log$
 *	Revision 1.9  2004/08/26 01:53:32  release
 *	Commented out comment on end of #endif
 *
 *	Revision 1.8  2000/10/23 03:17:47  lucky
 *	Added a comment about compiling for long or float support
 *	
 *	Revision 1.7  1999/05/06 20:16:09  clyde
 *	Fixed problem where 1.02 was printed as 1. 2
 *	
 *
 */

#ifdef	__FLOAT
#define	__LONG	1	/* float requires long */
#endif

#ifdef	__LONG
#define	INT	long
#else
#define	INT	short
#endif

#define	pputch(c)	(retval++, where ? (void)(*where++=(c)):putch(c))
const char *	x;

// definitions for "sign"

#define LONG		0x80	// long integral type to be printed
#define MANSIGN		0x40	// sign must be printed

#define PADZERO		0x10	// unused width is to be padded with 0s

#define NOZEROPAD	0x04	// zero padding cannot be selected
#define ISFLOAT		0x02	// type is float and "." still to be printed
#define ISSIGNED	0x01	// number is signed, also...
#define ISNEG		0x01	// number is negative, "-" to be printed

unsigned char
#ifdef _PIC16
sprintf(far char * where, const char * f, ...)
#else
sprintf(char * where, const char * f, ...)
#endif
{
	char		c;
	va_list		ap;
	unsigned char	sign;
	unsigned char	prec;
	unsigned INT	i;
	unsigned char	retval;
#ifdef	__FLOAT
	unsigned long	frac;
	unsigned long	over;
	unsigned char	digs;
#endif
#ifndef	_PIC12
	signed char	width;
#else
#define	width	sign
#endif
	
	retval = 0;
	va_start(ap, f);
	while(c	= *f++)
		if(c !=	'%')
			pputch(c);
		else {
			prec = 255;
#ifndef	_PIC12
			width = 0;
#endif
			sign = 0;
loop:
			switch(c = *f++) {

			case 0:
				if(where)
					*where = 0;
				return retval;
#ifndef	_PIC12
			case '*':
				width = va_arg(ap, int);
				goto loop;
			case '+':
				sign |= MANSIGN;
				goto loop;
#if	__LONG
			case 'l':
				sign |= LONG;
				goto loop;
#endif
#endif
				


			case 'd':
				sign++;		// set ISSIGNED
				goto decimal;
			case 'x':
			case 'X':
				prec += 8;
			case 'o':
				prec -= 2;
			case 'u':
decimal:
				{
					unsigned INT	j;

#if	__LONG
					if(sign & LONG)
						i = va_arg(ap, unsigned INT);
					else
#endif
						i = va_arg(ap, int);
					if(sign & ISSIGNED) {
					       	if((INT)i < 0) {
							i = -i;	// and leave ISSIGNED SET
#ifndef	_PIC12
							width--;
#endif
					       	} else {
						       	sign &= ~ISSIGNED; // clear ISSIGED
#ifndef _PIC12
							if(sign & MANSIGN)
								width--;
#endif 	/*_PIC12 */
						}
					} else {
#if	__LONG
						if(!(sign & LONG))
							i = (unsigned short)i;
#endif
						sign &= ~ISSIGNED;
					}
					prec -= 255-10;
putint:
					c = (unsigned INT)i % prec;
					*(unsigned INT *)&i /= prec;
					j = 1;
					while(j <= i) {
						j *= prec;
#ifndef	_PIC12
						width--;
#endif
					}
/////////////////////////////////////////////////////////////////////////////////////////
#ifndef	_PIC12
						if(!(sign & PADZERO))
							while(--width > 0)
								pputch(' ');

						if(sign & ISNEG)
							pputch('-');
						else if(sign & MANSIGN)
							pputch('+');
						if(sign & PADZERO)
							while(--width > 0)
								pputch('0');
#else /*  _PIC12 */
					if(sign & ISSIGNED)
						pputch('-');
#endif  /*_PIC12 */
/////////////////////////////////////////////////////////////////////////////////////////
					while(j /= prec) {
						width = (i/j)%prec;
						if(width > 9)
							width += 'A'-'0'-10;
						pputch(width+'0');
					}
					if(c > 9)
						c += 'A'-'0'-10;
					pputch(c+'0');
#if	__FLOAT
					if(sign & ISFLOAT) {
						pputch('.');
						i = frac;
						sign = PADZERO;	// clear the request for a dot
						width = digs;
						prec = 10;
						goto putint;
					}
#endif
				}
				break;
#if	__FLOAT
			case 'f':
				{
					double	f;
					
					f = va_arg(ap, double);
					if(prec > 6)
						prec = 6;
					digs = prec;
					sign &= 0xF0;
					if(f < 0) {
						sign |= ISSIGNED;
						f = -f;
#ifndef	_PIC12
						width--;
#endif
					} else {
#ifndef _PIC12
						if(sign & MANSIGN)
							width--;
#endif  /* _PIC12 */
					}
					if(digs == 0) {
						i = (unsigned long)(f+0.5);
						prec = 10;
						goto putint;	/* put as integer - no dot */
					}
					width -= digs+1;
					i = (unsigned long)f;
					f -= (double)i;
					sign |= ISFLOAT;
					over = 1;
					do {
						f *= 10.0;
						over *= 10;
					}
					while(--prec);
					f += 0.5;
					frac = (unsigned long)f;
					if(frac >= over) {
						frac -= over;
						i++;
					}
					prec = 10;
					goto putint;
				}
#endif

				
			case 'c':
#ifndef	_PIC12
				while(width > 1) {
					pputch(' ');
					width--;
				}
#endif
				c = va_arg(ap, int);
				pputch(c);
				continue;
			case 's':
				{

					x = va_arg(ap, const char *);
#ifndef	_PIC12
					c = 0;
					while(x[c])
						c++;
					if(c < prec)
						prec = c;
					while(width > prec) {
						pputch(' ');
						width--;
					}
					while(prec--) {
						c = *x++;
						pputch(c);
					}
#else
					while(c = *x++)
						pputch(c);
#endif
					break;
				}

#ifndef	_PIC12
			case '.':
				if(*f == '*') {
					prec = va_arg(ap, int);
					f++;
				} else {
					prec = *f++ - '0';
					c = *f;
					if(c >= '0' && c <= '9') {
						prec = prec*10 + c - '0';
						f++;
					}
				}
				goto loop;

			case '0':
				// if we haven't been through a non-zero digit yet
				if(!(sign & NOZEROPAD)) {
					sign |= PADZERO;	// this is a leading 0
					goto loop;
				}
				// otherwise, fall through
			default:
				if(c >= '0' && c <= '9') {
					sign |= NOZEROPAD;	// any zeros to come do not imply zeropad
					width = width * 10 + c - '0';
					goto loop;
				}
#else
			default:
#endif
				pputch(c);
				continue;

			}

		}
	if(where)
		*where = 0;
	return retval;
}

