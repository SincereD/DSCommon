//
//  NSArray+DSSort.m
//  DSCommon
//
//  Created by Sincere on 16/7/6.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import "NSMutableArray+DSSort.h"

@implementation NSMutableArray (DSSort)

/**
 *  数组排序
 *
 *  @param key 排序的关键字
 *  @param asc 升序？
 */
- (void)sortWithKey:(NSString*)key ascending:(BOOL)asc
{
    NSSortDescriptor * sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:key ascending:asc];
    [self sortUsingDescriptors:@[sortDescriptor]];
}

@end
