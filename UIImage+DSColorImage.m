//
//  UIImage+DSColorImage.m
//  DSCommon
//
//  Created by Sincere on 16/7/6.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import "UIImage+DSColorImage.h"

@implementation UIImage (DSColorImage)

- (UIImage *)imageFromColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0, 0, 1, 1);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
