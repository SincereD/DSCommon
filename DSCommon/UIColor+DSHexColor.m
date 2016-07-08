//
//  UIColor+DSHexColor.m
//  DSCommon
//
//  Created by Sincere on 16/3/11.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import "UIColor+DSHexColor.h"

@implementation UIColor (DSHexColor)

/**
 *  16进制色值
 *
 *  @param hexString 色值参数
 *
 *  @return 颜色返回值
 */
+ (UIColor*)colorWithHexString:(NSString*)hexString{
    unsigned int red,green,blue;
    NSRange range;
    range.length = 2;
    range.location = 0;
    [[NSScanner scannerWithString:[hexString substringWithRange:range]] scanHexInt:&red];
    range.location = 2;
    [[NSScanner scannerWithString:[hexString substringWithRange:range]] scanHexInt:&green];
    range.location = 4;
    [[NSScanner scannerWithString:[hexString substringWithRange:range]] scanHexInt:&blue];
    return [UIColor colorWithRed:(float)(red/255.0f) green:(float)(green/255.0f) blue:(float)(blue/255.0f) alpha:1.0f];
}

/**
 *  16进制色值
 *
 *  @param hexString 色值参数
 *  @param alpha     透明度参数
 *
 *  @return 颜色返回值
 */
+ (UIColor*)colorWithHexString:(NSString*)hexString alpha:(CGFloat)alpha
{
    unsigned int red,green,blue;
    NSRange range;
    range.length = 2;
    range.location = 0;
    [[NSScanner scannerWithString:[hexString substringWithRange:range]] scanHexInt:&red];
    range.location = 2;
    [[NSScanner scannerWithString:[hexString substringWithRange:range]] scanHexInt:&green];
    range.location = 4;
    [[NSScanner scannerWithString:[hexString substringWithRange:range]] scanHexInt:&blue];
    return [UIColor colorWithRed:(float)(red/255.0f) green:(float)(green/255.0f) blue:(float)(blue/255.0f) alpha:alpha];
}
@end
