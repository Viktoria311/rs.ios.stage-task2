#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
  if ([numbersArray isEqualToArray: @[] ] || numbersArray==nil) {return @"";
    } else {
               NSMutableString *m = [NSMutableString new];  
              //если в массиве элементов меньше 4 или 4
    if ([numbersArray count]<=4){/////////////////////////////////////////////////////
                 int i;
                 for ( i=0; i<[numbersArray count]-1; i++) {
                     if ([[numbersArray objectAtIndex: i] intValue]>255) {return @"The numbers in the input array can be in the range from 0 to 255.";
                     } else if ([[numbersArray objectAtIndex: i] intValue]<0) {return @"Negative numbers are not valid for input.";
                     } else {
                     [m appendString: [NSString stringWithFormat:@"%@.", [numbersArray objectAtIndex: i]]];
                     }
                 }
                     if ([[numbersArray objectAtIndex: i] intValue]>255) {return @"The numbers in the input array can be in the range from 0 to 255.";
                     } else if ([[numbersArray objectAtIndex: i] intValue]<0) {return @"Negative numbers are not valid for input.";
                     } else {
                 [m appendString: [NSString stringWithFormat:@"%@", [numbersArray objectAtIndex: i]]];}
                     if ([numbersArray count]==1) {[m appendString: [NSString stringWithFormat:@".0.0.0"]];}
                     if ([numbersArray count]==2) {[m appendString: [NSString stringWithFormat:@".0.0"]];}
                     if ([numbersArray count]==3) {[m appendString: [NSString stringWithFormat:@".0"]];}
        
        
   } else {///////////////////////если в массиве элементов больше 4
        
                 int j;
                 for ( j=0; j < 3; j++) {
                     if ([[numbersArray objectAtIndex: j] intValue]>255) {return @"The numbers in the input array can be in the range from 0 to 255.";
                     } else if ([[numbersArray objectAtIndex: j] intValue]<0) {return @"Negative numbers are not valid for input.";
                     } else {
                     [m appendString: [NSString stringWithFormat:@"%@", [numbersArray objectAtIndex: j]]];
                     }
                 }
                      if ([[numbersArray objectAtIndex: 4] intValue]>255) {return @"The numbers in the input array can be in the range from 0 to 255.";
                     } else if ([[numbersArray objectAtIndex: 4] intValue]<0) {return @"Negative numbers are not valid for input.";
                     } else {
                 [m appendString: [NSString stringWithFormat:@"%@", [numbersArray objectAtIndex: 4]]];
                 }
     
    }//////////////////////////
            return [[NSString alloc]initWithString: m];
             }
}

@end
