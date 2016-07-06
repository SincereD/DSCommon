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

/**
 *  获取右侧导航控件
 *
 *  @return UIBarButtonItem
 */
- (UIBarButtonItem*)rightBarButtonItem
{
    return self.navigationController.navigationItem.rightBarButtonItem;
}

/**
 *  获取左侧导航控件
 *
 *  @return UIBarButtonItem
 */
- (UIBarButtonItem*)leftBarButtonItem
{
    return self.navigationController.navigationItem.leftBarButtonItem;
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

@end
