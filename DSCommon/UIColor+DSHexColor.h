//
//  UIColor+DSHexColor.h
//  DSCommon
//
//  Created by Sincere on 16/3/11.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (DSHexColor)
/**
 *  16进制色值
 *
 *  @param hexString 色值参数
 *
 *  @return 颜色返回值
 */
- (UIColor*)colorWithHexString:(NSString*)hexString;

/**
 *  16进制色值
 *
 *  @param hexString 色值参数
 *  @param alpha     透明度参数
 *
 *  @return 颜色返回值
 */
- (UIColor*)colorWithHexString:(NSString*)hexString alpha:(CGFloat)alpha;

@end
