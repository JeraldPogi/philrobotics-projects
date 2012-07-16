unsigned int
__wmul(unsigned int multiplier, unsigned int multiplicand)
{
	unsigned int	product = 0;

	do {
		if(multiplier & 1)
			product += multiplicand;
		multiplicand <<= 1;
		multiplier >>= 1;
	} while(multiplier != 0);
	return product;
}
