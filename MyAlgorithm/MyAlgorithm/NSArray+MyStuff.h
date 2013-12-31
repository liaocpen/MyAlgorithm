//
//  NSArray+MyStuff.h
//  MyAlgorithm
//
//  Created by lanhu on 13-12-31.
//  Copyright (c) 2013年 lanhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (MyStuff)

/**
 *  获取数组中最大值的索引
 *
 *  @return index of maximum element in array
 */
- (NSUInteger)indexOfMaximumElement;

/**
 *  Get the Max and Min Simultaneously.
 *  @note Assumes array of NSInteger values
 *  @return NSArray with two elements: indexes of elements with
        minimal/maximal values respectively or nil if receiver array is empty
 */
- (NSArray *)indexesOfMinimumAndMaximumElements;

- (NSString *)longestString;
- (NSString *)shortestString;

- (NSArray *)reversedArray;
- (NSArray *)CocoaImplementationOfReversedArray;

- (NSArray *)intersectionWithArray:(NSArray *)secondArray;

@end
