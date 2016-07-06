//
//  DSBaseViewController.h
//  DSCommon
//
//  Created by Sincere on 16/3/11.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  ViewController基类
 */
@interface DSBaseViewController : UIViewController

/**
 *  获取右侧导航控件
 *
 *  @return UIBarButtonItem
 */
- (UIBarButtonItem*)rightBarButtonItem;

/**
 *  获取左侧导航控件
 *
 *  @return UIBarButtonItem
 */
- (UIBarButtonItem*)leftBarButtonItem;

/**
 *  UITabBar
 *
 *  @return UITabBar
 */
- (UITabBar*)tabBar;

@end
