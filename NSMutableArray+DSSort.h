//
//  NSArray+DSSort.h
//  DSCommon
//
//  Created by Sincere on 16/7/6.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  数组排序
 */
@interface NSMutableArray (DSSort)

/**
 *  数组排序
 *
 *  @param key 排序的关键字
 *  @param asc 升序？
 */
- (void)sortWithKey:(NSString*)key ascending:(BOOL)asc;

@end
