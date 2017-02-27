//
//  UIScreen+DSScreenSize.h
//  DSCommon
//
//  Created by Sincere on 16/3/11.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  屏幕类别
 */
@interface UIScreen (DSScreenSize)

/**
 *  屏幕宽度
 *
 *  @return CGFloat
 */
+ (CGFloat)screenWidth;

/**
 *  屏幕高度
 *
 *  @return CGFloat
 */
+ (CGFloat)screenHeight;

@end
