// short long signed unsigned modulus

signed short long
__atmod(signed short long int divisor, signed short long int dividend)
{
	unsigned char	counter, sign;

	sign = 0;
	if(dividend < 0) {
		dividend = -dividend;
		sign = 1;
	}
	if(divisor < 0)
		divisor = -divisor;
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
	if(sign)
		dividend = -dividend;
	return dividend;
}
