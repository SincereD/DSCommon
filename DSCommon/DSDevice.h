//
//  DSDevice.h
//  DSCommon
//
//  Created by Sincere on 16/3/15.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, DSPhoneType) {
    DSPhoneType4     = 0,
    DSPhoneType5     = 1,
    DSPhoneType6     = 2,
    DSPhoneType6Plus = 3,
};


/**
 *  手机系统、App信息
 */
@interface DSDevice : NSObject

/**
 *  操作系统版本号
 *
 *  @return NSString
 */
+ (NSString*)systemVersion;

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

/**
 *  获取手机型号（iPhone4 iPhone5 iPhone6 iPhone6Plus）
 *
 *  @return DSPhoneType
 */
+ (DSPhoneType)phoneType;

@end
