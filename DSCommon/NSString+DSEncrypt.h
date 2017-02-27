//
//  NSString+DSEncrypt.h
//  DSCommon
//
//  Created by Sincere on 16/3/11.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  数据加密
 */
@interface NSString (DSEncrypt)

/**
 *  MD5
 *
 *  @return MD5(NSString)
 */
- (NSString*)MD5;

@end
