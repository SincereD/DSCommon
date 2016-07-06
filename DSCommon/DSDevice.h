//
//  DSDevice.h
//  DSCommon
//
//  Created by Sincere on 16/3/15.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  手机系统、App信息
 */
@interface DSDevice : NSObject

/**
 *  App版本号
 *
 *  @return NSString
 */
+ (NSString*)appVersion;

/**
 *  AppBuid号
 *
 *  @return NSString
 */
+ (NSString*)appBuild;

/**
 *  App显示名称
 *
 *  @return NSString
 */
+ (NSString*)appName;


@end
