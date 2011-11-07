unsigned char
__bmul(unsigned char multiplier, unsigned char multiplicand)
{
	unsigned char	product = 0;

	do {
		if(multiplier & 1)
			product += multiplicand;
		multiplicand <<= 1;
		multiplier >>= 1;
	} while(multiplier != 0);
	return product;
}

