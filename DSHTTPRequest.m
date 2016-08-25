//
//  DSHTTPRequest.m
//  DSCommon
//
//  Created by Sincere on 16/7/7.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import "DSHTTPRequest.h"
#import <AFNetworking/AFNetworking.h>

@implementation DSHTTPRequest

static DSHTTPRequest * netWorkInstance = nil;

+ (DSHTTPRequest *)sharedHTTPRequest
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        netWorkInstance = [[DSHTTPRequest alloc] init];
    });
    return netWorkInstance;
}

- (id)copyWithZone:(nullable NSZone *)zone
{
    return [DSHTTPRequest sharedHTTPRequest];
}

- (id)mutableCopyWithZone:(NSZone *)zone
{
    return [DSHTTPRequest sharedHTTPRequest];
}

- (id)init
{
    return [DSHTTPRequest sharedHTTPRequest];
}
# pragma mark -- 创建请求 --

- (DSRequest*)createRequestWithRequestName:(NSString*)requestName
                               requestPath:(NSString*)path
                                parameters:(NSDictionary*)parameter isPost:(BOOL)isPost
{
    DSRequest * request = [[DSRequest alloc]init];
    [request requestWithRequestName:requestName requestPath:path parmas:parameter];
    return request;
}

# pragma mark -- 需要发送的请求列表 --

- (void)requesWithRequestName:(NSString*)name
                  requestPath:(NSString*)path
                   parameters:(NSDictionary*)parameter
                       isPost:(BOOL)isPost
                 successBlock:(DSRequestCompletedBlock)success
                  failedBlock:(DSRequestCompletedBlock)failure
{
    DSRequest * request = [self createRequestWithRequestName:name requestPath:path parameters:parameter isPost:isPost];
  
    [request startRequestWithSucessBlock:^(DSRequest *request, DSResponse *response) {
        
        success(request,response);
        
    } FailedBlock:^(DSRequest *request, DSResponse *response) {
        
        failure(request,response);
        
    }];
}

@end
