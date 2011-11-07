// integer signed unsigned modulus

signed int
__awmod(signed int divisor, signed int dividend)
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
		while(((unsigned int)divisor & 0x8000U) == 0) {
			divisor <<= 1;
			counter++;
		}
		do {
			if((unsigned int)divisor <= (unsigned int)dividend)
				dividend -= divisor;
			*(unsigned int *)&divisor >>= 1;
		} while(--counter != 0);
	}
	if(sign)
		dividend = -dividend;
	return dividend;
}
