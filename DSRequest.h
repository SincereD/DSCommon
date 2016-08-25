//
//  DSRequest.h
//  DSCommon
//
//  Created by Sincere on 16/7/7.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DSResponse.h"
#import "AFNetworking.h"

#define RequestTimeOut      10

#define Data_Format_Error   @"数据格式错误"
#define Network_Unable      @"网络状况异常"
#define Request_Fail        @"网络请求失败"

@class DSRequest;

#if NS_BLOCKS_AVAILABLE
typedef void(^DSRequestCompletedBlock)(DSRequest *request, DSResponse *response);
#endif

/**
 *  DSRequest HTTP网络请求
 */
@interface DSRequest : NSObject

@property (nonatomic, assign) BOOL isHideSp;
@property (nonatomic, strong) NSString *requestName;
@property (nonatomic, strong) NSString *requestPath;

@property (nonatomic, strong) NSMutableDictionary *params;
@property (nonatomic, strong) NSMutableURLRequest *urlRequest;

/**
 *  创建请求
 *
 *  @param name   请求名称
 *  @param path   请求路径
 *  @param parmas 请求参数
 *
 */
- (void)requestWithRequestName:(NSString*)name
                           requestPath:(NSString*)path
                                parmas:(NSDictionary*)parmas;

/**
 *  启动请求
 *
 *  @param sucessBlock 成功
 *  @param failedBlock 失败
 */
- (void)startRequestWithSucessBlock:(DSRequestCompletedBlock )sucessBlock
                        FailedBlock:(DSRequestCompletedBlock )failedBlock;

/**
 *  取消请求
 */
- (void)cancelRequest;

@end
