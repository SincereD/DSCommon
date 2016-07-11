//
//  DSAuthority.m
//  DSCommon
//
//  Created by Sincere on 16/7/8.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import "DSAuthority.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import <AVFoundation/AVFoundation.h>
#import <AddressBook/AddressBook.h>
#import <CoreLocation/CoreLocation.h>
#import <UIKit/UIKit.h>

@implementation DSAuthority

/**
 *  相册权限
 *
 *  @return BOOL
 */
+ (BOOL) isPhotosAuthorized;
{
    ALAuthorizationStatus author = [ALAssetsLibrary authorizationStatus];
    if (author == ALAuthorizationStatusDenied)
    {
        return NO;
    }
    return YES;
}

/**
 *  照相机权限
 *
 *  @return BOOL
 */
+ (BOOL) isCameraAuthorized
{
    AVAuthorizationStatus avStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    BOOL isHaveCamera = (avStatus == AVAuthorizationStatusAuthorized || avStatus == AVAuthorizationStatusNotDetermined);
    if (!isHaveCamera)
    {
        return NO;
    }
    return YES;
}

/**
 *  麦克风权限
 *
 *  @return BOOL
 */
+ (BOOL) isMicroPhoneAuthorized
{
    __block BOOL bCanRecord = YES;
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    if ([audioSession respondsToSelector:@selector(requestRecordPermission:)])
    {
        [audioSession performSelector:@selector(requestRecordPermission:) withObject:^(BOOL granted) {
            bCanRecord = granted;
        }];
    }
    return bCanRecord;
}

/**
 *  通知权限
 *
 *  @return BOOL
 */
+ (BOOL) isNotificationAuthorized
{
    BOOL isAllowNotifi = NO;
    UIUserNotificationSettings *setting = [[UIApplication sharedApplication] currentUserNotificationSettings];
    if (UIUserNotificationTypeNone != setting.types) {
        isAllowNotifi = YES;
    }
    return isAllowNotifi;
}

/**
 *  定位权限
 *
 *  @return BOOL
 */
+ (BOOL)isLocatonAuthorized
{
    if (![CLLocationManager locationServicesEnabled])
    {
        return NO;
    }
    
    CLAuthorizationStatus status = [CLLocationManager authorizationStatus];
    if (status == kCLAuthorizationStatusAuthorizedWhenInUse || status == kCLAuthorizationStatusAuthorizedAlways )
    {
        return YES;
    }
    return NO;
}

/**
 *  通讯录权限
 *
 *  @return BOOL
 */
+ (BOOL) isContactsAuthorized
{
    if (ABAddressBookGetAuthorizationStatus() == kABAuthorizationStatusDenied || ABAddressBookGetAuthorizationStatus() == kABAuthorizationStatusRestricted)
    {
        return NO;
    }
    return YES;
}


@end
