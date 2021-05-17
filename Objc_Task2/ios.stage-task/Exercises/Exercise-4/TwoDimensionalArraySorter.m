#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {

if (![array isKindOfClass: [NSArray class]] || ![array[0] isKindOf: [NSArray class]] || array == nil) { return @[];
} else {
    //создать мутабельные массивы цифр и строк
    NSMutableArray *arrOfNumbers = [NSMutableArray new];
    NSMutableArray *arrOfStrings = [NSMutableArray new];
    for (int i=0; i<[array count]; i++) {//перебираем массивы
        if ([array[i][0] isKindOfClass:[NSNumber class]]) {
         for ( int q=0; q < [array[i] count]; q++) {//перебираем кждый элемент массива
            [arrOfNumbers addObject: array[i][q]];
            
        }// внутренний for
        }
        if ([array[i][0] isKindOfClass:[NSString class]]) {
         for ( int w = 0; w < [array[i] count]; w++) {//перебираем кждый элемент массива
            [arrOfStrings addObject: array[i][w]];
            
        }// внутренний for
        }
       
    } //внешний for

   //ТЕПЕРЬ НАДО сортировать оба массива. если arrOfNumbers!= nil и другой тоже
    if (![arrOfNumbers isEqualToArray: @[]]) {
        //сортируем arrOfNumbers
        NSArray *numbersSorted = [[NSArray arrayWithArray: arrOfNumbers] sortedArrayUsingSelector:@selector(compare:)];
    } 
    if (![arrOfStrings isEqualToArray: @[]]) {
        //сортируем arrOfStrings
        NSArray *sortedArrayOfStrings = [[NSArray arrayWithArray: arrOfStrings] sortedArrayUsingSelector:@selector(compare:) ];
    }
    if ([arrOfNumbers isEqualToArray: @[]]) {return [NSArray arrayWithArray: arrOfStrings];
   } else if ([arrOfStrings isEqualToArray: @[]]) {
    return [NSArray arrayWithArray: arrOfNumbers];
    } else if (![arrOfNumbers isEqualToArray: @[]] && ![arrOfStrings isEqualToArray: @[]]) {
    //сортировка arrOfStrings НАОБОРОТ происходит внутри
        return [NSArray arrayWithArray: [[NSMutableArray arrayWithArray: numbersSorted] addObject: [[sortedArrayOfStrings reverseObjectEnumerator] allObjects]]];
    }
}//это скобка от else

//закрывающая скобка функции
}

@end
