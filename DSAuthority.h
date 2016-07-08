//
//  DSAuthority.h
//  DSCommon
//
//  Created by Sincere on 16/7/8.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

/**
 *  系统权限类
 */
@interface DSAuthority : NSObject

/**
 *  相册权限
 *
 *  @return BOOL
 */
+ (BOOL) isPhotosAuthorized;

/**
 *  照相机权限
 *
 *  @return BOOL
 */
+ (BOOL) isCameraAuthorized;

/**
 *  麦克风权限
 *
 *  @return BOOL
 */
+ (BOOL) isMicroPhoneAuthorized;

/**
 *  通知权限
 *
 *  @return BOOL
 */
+ (BOOL) isNotificationAuthorized;

/**
 *  定位权限
 *
 *  @return BOOL
 */
+ (BOOL)isLocatonAuthorized;

/**
 *  通讯录权限
 *
 *  @return BOOL
 */
+ (BOOL) isContactsAuthorized;

@end
