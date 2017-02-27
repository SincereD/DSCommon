//
//  DSDevice.m
//  DSCommon
//
//  Created by Sincere on 16/3/15.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import "DSDevice.h"
#import "UIScreen+DSScreenSize.h"

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
 *  操作系统版本号
 *
 *  @return NSString
 */
+ (NSString*)systemVersion
{
    return [[self deviceInfo] objectForKey:@"CFBundleShortVersionString"];
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

/**
 *  获取手机型号（iPhone4 iPhone5 iPhone6 iPhone6Plus）
 *
 *  @return DSPhoneType
 */
+ (DSPhoneType)phoneType
{
    if ([UIScreen screenHeight] == 480)
    {
        return DSPhoneType4;
    }else if ([UIScreen screenHeight] == 568)
    {
        return DSPhoneType5;
    }
    else if ([UIScreen screenHeight] == 667)
    {
        return DSPhoneType6;
    }
    else
    {
        return DSPhoneType6Plus;
    }
}

@end
