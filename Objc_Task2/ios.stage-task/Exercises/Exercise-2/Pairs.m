#import "Pairs.h"


@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    int temp = 0;
    NSInteger counter = 0;
    
    for(int frsNumb = 0; frsNumb < array.count; frsNumb++){
        for (int secNumb = frsNumb + 1; secNumb < array.count; secNumb++) {
            temp = ABS([array[frsNumb] intValue] - [array[secNumb]  intValue]);
            if(temp == [number intValue]){
                counter++;
            }
        }
    }
    
    
    return counter;
}

@end
