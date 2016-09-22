//
//  DSCommon.h
//  DSCommon
//
//  Created by Sincere on 16/3/11.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#ifndef DSCommon_h
#define DSCommon_h

#import "DSBaseViewController.h" //UIViewController 基类


#import "DSMacro.h" //常用宏定义
#import "DSDevice.h" //系统信息

#import "DSAuthority.h"   // 系统权限
#import "DSFileManager.h" // 文件管理
#import "DSAnimation.h"   // 转场动画

#import "UIScreen+DSScreenSize.h" //屏幕宽度

#import "NSString+DSEncrypt.h"    //字符串加密
#import "NSString+DSPredicate.h"  //正则表达式
#import "NSString+DSURLString.h"  //URL转码

#import "DSAttribuateLabel.h"     //富文本标签

#import "UIColor+DSHexColor.h"    //16进制色值

#import "DSShareView.h"           //第三方分享页面

#import "UIImage+DSColorImage.h"  //根据色值生成图片
#import "UIImage+DSImageColor.h"  //获取图片的主色调
#import "UIImage+DSBlurImage.h"   //模糊效果

#import "UIView+DSCapture.h"      //截取UIView
#import "UIView+DSQRCode.h"       //二维码生成器

#import "NSMutableArray+DSSort.h" //数组排序

#import "DSHTTPRequest.h"


#endif /* DSCommon_h */
