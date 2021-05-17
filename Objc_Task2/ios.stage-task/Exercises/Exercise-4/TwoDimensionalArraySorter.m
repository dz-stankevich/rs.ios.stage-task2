#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    
    NSMutableArray<NSNumber *> *arrayOfNumbs = [[NSMutableArray alloc] init];
    NSMutableArray<NSString *> *arrayOfStrings = [[NSMutableArray alloc] init];
    NSMutableArray *arrayOfNumbsAndStrings = [[NSMutableArray alloc] init];
   // NSString *empty = [NSString stringWithFormat:@""];
    
    if (array == nil || array.count == 0) {
           return @[];
       }
    
    for(NSArray *tempArray in array){
        
        if (![tempArray isKindOfClass:[NSArray class]]) {
            return @[];
        }
        
        for(id obj in tempArray) {
            if ([obj isKindOfClass:[NSNumber class]]){
                [arrayOfNumbs addObject:obj];
            }
            else if ([obj isKindOfClass:[NSString class]]) {
                [arrayOfStrings addObject:obj];
            }
            
        }
    }
    
    NSLog(@"%@", arrayOfNumbs);
    
    if (arrayOfStrings.count == 0) {
        [arrayOfNumbs sortUsingDescriptors: [NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES]]];
        NSLog(@"%@", arrayOfNumbs);
        return arrayOfNumbs;
    }
    else if (arrayOfNumbs.count == 0 ) {
        [arrayOfStrings sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        return arrayOfStrings;
    }
    
        [arrayOfNumbs sortUsingDescriptors: [NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"self" ascending:YES]]];
        [arrayOfStrings sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        [[arrayOfStrings reverseObjectEnumerator] allObjects];
        [arrayOfNumbsAndStrings addObject:arrayOfNumbs];
        [arrayOfNumbsAndStrings addObject:[arrayOfStrings reverseObjectEnumerator].allObjects];
        NSLog(@"%@", arrayOfNumbsAndStrings);
    
    

    
    return arrayOfNumbsAndStrings;
}

@end
