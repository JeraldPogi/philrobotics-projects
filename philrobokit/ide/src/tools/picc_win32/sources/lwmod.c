// word unsigned modulus

unsigned int
__lwmod(unsigned int divisor, unsigned int dividend)
{
	unsigned char	counter;

	if(divisor != 0) {
		counter = 1;
		while((divisor & 0x8000) == 0) {
			divisor <<= 1;
			counter++;
		}
		do {
			if(divisor <= dividend)
				dividend -= divisor;
			divisor >>= 1;
		} while(--counter != 0);
	}
	return dividend;
}
