unsigned short long
__tmul(unsigned short long multiplier, unsigned short long multiplicand)
{
	unsigned short long	product = 0;

	do {
		if(multiplier & 1)
			product += multiplicand;
		multiplicand <<= 1;
		multiplier >>= 1;
	} while(multiplier != 0);
	return product;
}
