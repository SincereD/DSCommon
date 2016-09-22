//
//  UIImage+DSBlurImage.m
//  DSCommon
//
//  Created by Sincere on 16/9/20.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import "UIImage+DSBlurImage.h"

@implementation UIImage (DSBlurImage)

- (UIImage*)blurImageWithInputRadius:(NSNumber*)inputRadius{
    
    CIContext *context = [CIContext contextWithOptions:nil];
    
    CIImage *image = [CIImage imageWithCGImage:self.CGImage];
    
    CIFilter *filter = [CIFilter filterWithName:@"CIGaussianBlur"];
    
    [filter setValue:image forKey:kCIInputImageKey];
    
    [filter setValue:inputRadius forKey: @"inputRadius"];
    
    CIImage *result = [filter valueForKey:kCIOutputImageKey];
    
    CGImageRef outImage = [context createCGImage: result fromRect:[image extent]];
    
    UIImage * blurImage = [UIImage imageWithCGImage:outImage];
    
    return blurImage;
    
}

@end
