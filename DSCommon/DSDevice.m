//
//  DSDevice.m
//  DSCommon
//
//  Created by Sincere on 16/3/15.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import "DSDevice.h"

@implementation DSDevice

/**
 *  App信息
 *
 *  @return NSString
 */
+ (NSDictionary*)deviceInfo
{
    return [[NSBundle mainBundle] infoDictionary];
}

/**
 *  App版本号
 *
 *  @return NSString
 */
+ (NSString*)appVersion
{
    return [[self deviceInfo] objectForKey:@"CFBundleShortVersionString"];
}

/**
 *  AppBuid号
 *
 *  @return NSString
 */
+ (NSString*)appBuild
{
    return [[self deviceInfo] objectForKey:@"CFBundleVersion"];
}

/**
 *  App显示名称
 *
 *  @return NSString
 */
+ (NSString*)appName
{
    return [[self deviceInfo] objectForKey:@"CFBundleDisplayName"];
}

@end
