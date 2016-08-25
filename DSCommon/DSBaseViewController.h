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
- (nullable UIBarButtonItem*)rightBarButtonItem;

/**
 *  获取左侧导航控件
 *
 *  @return UIBarButtonItem
 */
- (nullable UIBarButtonItem*)leftBarButtonItem;

/**
 *  UITabBar
 *
 *  @return UITabBar
 */
- (nullable UITabBar*)tabBar;

/**
 *  设置左侧按钮
 *
 *  @param leftItem UIBarButtonItem
 */
- (void)initLeftBarButtonItem:(nonnull UIBarButtonItem*)leftItem;

- (void)initLeftBarButtonItems:(nonnull NSArray<UIBarButtonItem *>*)leftItems;

/**
 *  设置右侧按钮
 *
 *  @param rightItem UIBarButtonItem
 */
- (void)initRightBarButtonItem:(nonnull UIBarButtonItem*)rightItem;

- (void)initRightBarButtonItems:(nonnull NSArray<UIBarButtonItem*>*)rightItems;

@end
