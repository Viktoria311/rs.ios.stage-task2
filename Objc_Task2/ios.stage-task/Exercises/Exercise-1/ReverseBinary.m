#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {

	if ( n == 0) {
    		return 0;
	} else {
	
	UInt8 m = n;
	m ^= (1<<0)|(1<<1)|(1<<2)|(1<<3)|(1<<4)|(1<<5)|(1<<6)|(1<<7);
	return m;
	}
}
