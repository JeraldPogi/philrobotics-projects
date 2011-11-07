// short long unsigned unsigned modulus

unsigned short long int
__ltmod(unsigned short long int divisor, unsigned short long int dividend)
{
	unsigned char	counter;

	if(divisor != 0) {
		counter = 1;
		while((divisor & (unsigned short long)0x800000UL) == 0) {
			divisor <<= 1;
			counter++;
		}
		do {
			if((unsigned short long)divisor <= (unsigned short long)dividend)
				dividend -= divisor;
			*(unsigned short long int *)&divisor >>= 1;
		} while(--counter != 0);
	}
	return dividend;
}
