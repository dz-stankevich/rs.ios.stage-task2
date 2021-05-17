#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    UInt8 reverseN = 0;
    NSInteger counter = 0;
    
    while (n > 0) {
        if (n % 2 != 0){
            reverseN += pow(2, 7 - counter);
        }
        counter ++;
        n /= 2;
    }
    
    return reverseN;
}
