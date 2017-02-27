//
//  DSFileManager.h
//  DSCommon
//
//  Created by Sincere on 16/7/8.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  文件管理
 */
@interface DSFileManager : NSObject

/**
 *  Document
 *
 *  @return NSString
 */
+ (NSString*)documentPath;

/**
 *  Cache
 *
 *  @return NSString
 */
+ (NSString*)cachePath;

/**
 *  Library
 *
 *  @return NSString
 */
+ (NSString*)libraryPath;

@end
