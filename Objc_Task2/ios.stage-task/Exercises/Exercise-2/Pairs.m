#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
int m = 0;
for (int i = 0; i < [array count]-1; i++) {
  
    
    for (int b = i+1; b < [array count]; b++) {
        
        if (  ([[array objectAtIndex: i] intValue] + [number intValue] == [[array objectAtIndex: b] intValue]) ||
            ([[array objectAtIndex: i] intValue] - [number intValue] == [[array objectAtIndex: b] intValue])  ) {
        ++m;
        }
        
        
    }
    
}

    return m;
}

@end
