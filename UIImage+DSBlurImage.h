//
//  UIImage+DSBlurImage.h
//  DSCommon
//
//  Created by Sincere on 16/9/20.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (DSBlurImage)

/**
 *  高斯模糊
 *
 *  @param inputRadius 模糊程度
 *
 *  @return 处理后的图片
 */
- (UIImage*)blurImageWithInputRadius:(NSNumber*)inputRadius;

@end
