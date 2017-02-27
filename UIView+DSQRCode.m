//
//  UIView+DSQRCode.m
//  DSCommon
//
//  Created by Sincere on 16/9/20.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import "UIView+DSQRCode.h"

@implementation UIView (DSQRCode)

- (void)addQRCodeWithContent:(NSString*)content{
    
    // 1.创建滤镜
    
    CIFilter*filter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    
    // 2.清空滤镜(还原默认设置,因为滤镜有可能保存上一次的设置)
    
    [filter setDefaults];
    
    // 3.创建二维码需要保存的数据
    
    NSData * data = [content dataUsingEncoding:NSUTF8StringEncoding];
    
    // 4.设置数据(KVC)
    
    [filter setValue:data forKey:@"inputMessage"];
    
    // 5.生成二维码,获取生成后的二维码图片
    
    CIImage * image = [filter outputImage];
    
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 300,300)];
    
    [imageView setImage:[self createNonInterpolatedUIImageFormCIImage:image withSize:300]];
    
    [imageView setCenter:self.center];
    
    [imageView setBackgroundColor:[UIColor brownColor]];
    
    [self addSubview:imageView];
    
}

/**
 *高清二维码
 *根据CIImage生成指定大小的UIImage
 *
 *@paramimage CIImage
 *@paramsize图片宽度
 */
- (UIImage*)createNonInterpolatedUIImageFormCIImage:(CIImage*)image withSize:(CGFloat) size
{
    
    CGRect extent =CGRectIntegral(image.extent);
    
    CGFloat scale = MIN(size/CGRectGetWidth(extent), size/CGRectGetHeight(extent));
    
    // 1.创建bitmap;
    
    CGFloat size_twidth = CGRectGetWidth(extent) * scale;
    
    CGFloat size_theight = CGRectGetHeight(extent) * scale;
    
    CGColorSpaceRef cs = CGColorSpaceCreateDeviceGray();
    
    CGContextRef bitmapRef = CGBitmapContextCreate(nil, size_twidth, size_theight,8,0, cs, (CGBitmapInfo)kCGImageAlphaNone);
    
    CIContext*context = [CIContext contextWithOptions:nil];
    
    CGImageRef bitmapImage = [context createCGImage:image fromRect:extent];
    
    CGContextSetInterpolationQuality(bitmapRef,kCGInterpolationNone);
    
    CGContextScaleCTM(bitmapRef, scale, scale);
    
    CGContextDrawImage(bitmapRef, extent, bitmapImage);
    
    // 2.保存bitmap到图片
    
    CGImageRef scaledImage =CGBitmapContextCreateImage(bitmapRef);
    
    CGContextRelease(bitmapRef);
    
    CGImageRelease(bitmapImage);
    
    return [UIImage imageWithCGImage:scaledImage];
}


@end
