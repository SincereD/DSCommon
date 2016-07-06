//
//  NSString+Predicate.h
//  DSCommon
//
//  Created by Sincere on 16/3/23.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  字符串正则表达式
 */
@interface NSString (DSPredicate)

/**
 *  验证邮箱
 *
 *  @return BOOL
 */
- (BOOL)isValidateEmail;

/**
 *  验证手机号码
 *
 *  @return BOOL
 */
- (BOOL)isValidateMobile;

/**
 *  验证密码（6-16位字母+数字密码）
 *
 *  @return BOOL
 */
- (BOOL)isVaidatePwd;

/**
 *  是否包含子串
 *
 *  @param regex 子串
 *
 *  @return BOOL
 */
- (BOOL)isValidateWithRegex:(NSString *)regex;

/**
 *  验证URL
 *
 *  @return BOOL
 */
- (BOOL)isValidateUrl;

/**
 *  验证车牌号
 *
 *  @return BOOL
 */
- (BOOL)isValidateCarNo;

/**
 *  去掉两端空格和换行符
 *
 *  @return NSString
 */
- (NSString *)stringByTrimmingBlank;

@end
