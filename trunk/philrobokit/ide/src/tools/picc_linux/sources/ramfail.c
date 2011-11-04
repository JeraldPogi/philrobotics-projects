
// WARNING - Corrupted RAM detected
// This routine should only be called during device startup if a RAM integrity test has
// been requested and the test has detected a problem in RAM.
// Upon entry to this routine, IRP (bit) and FSR point to the first location that failed.
// The errorcode will be passed in via working register.
#ifdef _PIC12
void fastcall ram_test_failed(unsigned char errorcode){
#else
void ram_test_failed(unsigned char errorcode){
#endif
	// WARNING - RAM has not been initialized at this point - avoid using global variables
	// TODO - Copy errorcode to a known safe location as it is currently stored in working register.
	// TODO - User to implement system failure process, log failure and continue? self-destruct?
	while(errorcode);
	return;	// return to continue testing
}

