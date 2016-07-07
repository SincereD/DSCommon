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

#define DATA_FORMAT_ERROR   @"数据格式错误"
#define NETWORK_UNABLE      @"网络状况异常"
#define REQUEST_FAILE       @"网络请求失败"

@class DSRequest;

#if NS_BLOCKS_AVAILABLE
typedef void(^DSRequestCompletedBlock)(DSRequest *request, DSResponse *response);
#endif

@interface DSRequest : NSObject

@property (nonatomic, assign) BOOL isHideSp;
@property (nonatomic, strong) NSString *requestName;
@property (nonatomic, strong) NSString *requestPath;

@property (nonatomic, strong) NSMutableDictionary *params;
@property (nonatomic, strong) NSMutableURLRequest *urlRequest;


- (void)startRequestWithSucessBlock:(DSRequestCompletedBlock )sucessBlock
                        FailedBlock:(DSRequestCompletedBlock )failedBlock;

- (void)cancelRequest;

@end
