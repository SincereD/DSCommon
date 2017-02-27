//
//  DSHTTPRequest.h
//  DSCommon
//
//  Created by Sincere on 16/7/7.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DSRequest.h"

#define BaseURL @""

@interface DSHTTPRequest : NSObject

+ (DSHTTPRequest *)sharedHTTPRequest;

//测试请求
- (void)requesWithRequestName:(NSString*)name
                  requestPath:(NSString*)path
                   parameters:(NSDictionary*)parameter
                       isPost:(BOOL)isPost
                 successBlock:(DSRequestCompletedBlock)success
                  failedBlock:(DSRequestCompletedBlock)failure;
@end
