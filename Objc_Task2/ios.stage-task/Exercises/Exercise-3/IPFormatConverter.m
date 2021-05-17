#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    NSString *outRange = [NSString stringWithFormat:@"The numbers in the input array can be in the range from 0 to 255."];
    NSString *negativeNumb = [NSString stringWithFormat:@"Negative numbers are not valid for input."];
    NSString *empty = [NSString stringWithFormat:@""];
    NSMutableString *resultIP = [[NSMutableString alloc] init];
    
    if (numbersArray.count == 0 || numbersArray == nil) {
        return empty;
    }
    
    for (NSNumber *value in numbersArray) {
        if ([value intValue] > 255) {
            return outRange;
        }
        if ([value intValue] < 0) {
            return negativeNumb;
        }
    }
    
    
    for (int i = 0; i < 4; i++) {
        if (i < numbersArray.count) {
            [resultIP appendFormat:@"%@.", numbersArray[i]];
        }
        else {
            [resultIP appendString:@"0."];
            NSLog(@"%@", resultIP);
        }
        
        
    }

    [resultIP deleteCharactersInRange:NSMakeRange(resultIP.length - 1, 1)];
    
    
    return resultIP;
}

@end
