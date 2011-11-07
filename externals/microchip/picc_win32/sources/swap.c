void
_swap(unsigned len, register char * s1, register char * s2)
{
	register char	c;

	while(len--) {
		c = *s1;
		*s1++ = *s2;
		*s2++ = c;
	}
}
