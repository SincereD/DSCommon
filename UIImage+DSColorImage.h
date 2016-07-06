//
//  UIImage+DSColorImage.h
//  DSCommon
//
//  Created by Sincere on 16/7/6.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  根据色值生成UIImage
 */
@interface UIImage (DSColorImage)

/**
 *  根据色值生成UIImage
 *
 *  @param color UIColor
 *
 *  @return UIImage
 */
- (UIImage *)imageFromColor:(UIColor *)color;
@end
