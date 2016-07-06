//
//  UIView+DSCapture.m
//  DSCommon
//
//  Created by Sincere on 16/3/11.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import "UIView+DSCapture.h"

@implementation UIView (DSCapture)

/**
 *  截取UIView完整图片
 *
 *  @return 图片返回值
 */
- (UIImage*)capture
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self.layer renderInContext:context];
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

/**
 *  截取UIView对应区域图片
 *
 *  @param rect 图片位置
 *
 *  @return 图片返回值
 */
- (UIImage*)captureWithRect:(CGRect)rect
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    UIRectClip(rect);
    [self.layer renderInContext:context];
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return  theImage;
}

@end
