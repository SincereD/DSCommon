//
//  DSBaseViewController.m
//  DSCommon
//
//  Created by Sincere on 16/3/11.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import "DSBaseViewController.h"

@implementation DSBaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

/**
 *  获取右侧导航控件
 *
 *  @return UIBarButtonItem
 */
- (UIBarButtonItem*)rightBarButtonItem
{
    return self.navigationItem.rightBarButtonItem;
}

/**
 *  获取左侧导航控件
 *
 *  @return UIBarButtonItem
 */
- (UIBarButtonItem*)leftBarButtonItem
{
    return self.navigationItem.leftBarButtonItem;
}

/**
 *  UITabBar
 *
 *  @return UITabBar
 */
- (UITabBar*)tabBar
{
    return self.tabBarController.tabBar;
}

/**
 *  设置左侧按钮
 *
 *  @param leftItem UIBarButtonItem
 */
- (void)initLeftBarButtonItem:(nonnull UIBarButtonItem*)leftItem
{
    [self.navigationItem setLeftBarButtonItem:leftItem];
}

- (void)initLeftBarButtonItems:(nonnull NSArray<UIBarButtonItem *>*)leftItems
{
    [self.navigationItem setLeftBarButtonItems:leftItems];
}

/**
 *  设置右侧按钮
 *
 *  @param rightItem UIBarButtonItem
 */
- (void)initRightBarButtonItem:(nonnull UIBarButtonItem*)rightItem
{
    [self.navigationItem setRightBarButtonItem:rightItem];
}

- (void)initRightBarButtonItems:(nonnull NSArray<UIBarButtonItem*>*)rightItems
{
    [self.navigationItem setRightBarButtonItems:rightItems];
}

@end
