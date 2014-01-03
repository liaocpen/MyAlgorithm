//
//  main.c
//  MyAlgorithm
//
//  Created by lanhu on 13-12-26.
//  Copyright (c) 2013年 lanhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+MyStuff.h"
///
int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSLog(@"Quick sorted array %@", [@[@4, @7, @8, @9, @2] quickSortedArrayWithLeftIndex:0
                                                                                                              withRightIndex:[[NSMutableArray arrayWithArray:@[@4, @7, @8, @9, @2]] count] - 1]);
        

    }
    
    return 0;
}

