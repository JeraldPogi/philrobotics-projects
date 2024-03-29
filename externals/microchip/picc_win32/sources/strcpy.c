#include	<string.h>

#ifdef _PIC16
far char *
strcpy(far char * to, register const char * from)
#else /* _PIC16 */
char *
strcpy(char * to, register const char * from)
#endif /* _PIC16 */
{

#ifdef _PIC16
	register far char *	cp;
#else /* _PIC16 */
	register char *	cp;
#endif /* _PIC16 */

	cp = to;
	while(*cp++ = *from++)
		continue;
	return to;
}
