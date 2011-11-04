#include	<string.h>

#ifdef _PIC16
far void *
memcpy(far void * d1, const void * s1, register size_t n)
#else /*  _PIC16 */
void *
memcpy(void * d1, const void * s1, register size_t n)
#endif /* _PIC16 */
{

#ifdef _PIC16
	register far char *	d;
#else  /* _PIC16 */
	register char *		d;
#endif /* _PIC16 */
	register const char *	s;

	s = s1;
	d = d1;
	while(n--)
		*d++ = *s++;
	return d1;
}
