//
//  NSArray+MyStuff.m
//  MyAlgorithm
//
//  Created by lanhu on 13-12-31.
//  Copyright (c) 2013年 lanhu. All rights reserved.
//

#import "NSArray+MyStuff.h"

@implementation NSArray (MyStuff)



#pragma mark - SORT STUFF
#pragma mark - Bubble sort 

- (NSMutableArray *)bubbleSortedArray
{
    NSMutableArray *selfCopy = [self mutableCopy];
    id temp = nil;
    
    for (int i = (int)[selfCopy count] - 2; i >= 0; i--) {
        for (int j = 0 ; j <= i; j++) {
            if ([selfCopy[j] integerValue] > [selfCopy[j + 1] integerValue]) {
                temp = [selfCopy objectAtIndex:j];
                [selfCopy replaceObjectAtIndex:j withObject:[selfCopy objectAtIndex:j + 1]];
                [selfCopy replaceObjectAtIndex:j + 1 withObject:temp];
            }
        }
    }
    
    return selfCopy;
}

#pragma mark - Qucik sort
- (NSMutableArray *)quickSortedArrayWithLeftIndex:(NSInteger)left withRightIndex:(NSInteger)right
{
    NSMutableArray *selfCopy = (NSMutableArray *)self;
    
    if (![self isKindOfClass:[NSMutableArray class]]) {
        selfCopy = [self mutableCopy];
    }
    
    NSInteger i = 0, j = 0;
    id x = nil, y = nil;
    
    i = left;
    j = right;
    x = selfCopy[(left + right) / 2];
    
    do {
        while (([selfCopy[i] floatValue] < [x floatValue]) && (i < right)) {
            i++;
        }
        while (([selfCopy[j] floatValue] > [x floatValue]) && (j > left)) {
            j--;
        }
        
        if (i <= j) {
            y = selfCopy[i];
            [selfCopy replaceObjectAtIndex:i withObject:selfCopy[j]];
            selfCopy[j] = y;
            i++;
            j--;
        }
        
    } while (i <= j);
    
    if (left < j) {
        selfCopy = [selfCopy quickSortedArrayWithLeftIndex:left withRightIndex:j];
    }
    
    if (i < right) {
        selfCopy = [selfCopy quickSortedArrayWithLeftIndex:i withRightIndex:right];
    }
    
    return selfCopy;
}

#pragma mark - Insertion sort

- (NSMutableArray *)insertionSortedArray {
    NSMutableArray *selfCopy = [self mutableCopy];
    NSInteger a = 0, b = 0;
    
    id temp = nil;
    
    return selfCopy;
}














@end
