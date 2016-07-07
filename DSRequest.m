//
//  DSRequest.m
//  DSCommon
//
//  Created by Sincere on 16/7/7.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import "DSRequest.h"

@interface DSRequest ()
{
    AFHTTPSessionManager * sessionManager;
}

@property (nonatomic, assign) BOOL isManualCancel;

@end

@implementation DSRequest

-(id)init
{
    if (self = [super init])
    {
        [self initialize];
    }
    return self;
}

- (void)initialize
{
    self.params = [[NSMutableDictionary alloc] init];
    self.isManualCancel = NO;
}

- (void)startRequestWithSucessBlock:(DSRequestCompletedBlock )successBlock
                        FailedBlock:(DSRequestCompletedBlock )failedBlock
{
    
    __block DSRequest * blockSelf = self;
    sessionManager = [AFHTTPSessionManager manager];
    [sessionManager POST:@"" parameters:@{} progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)
    {
        
        [blockSelf processSucessBlockwithOperation:sessionManager withResponseObject:responseObject WithSucessBlock:successBlock withFailedBlock:failedBlock];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        [blockSelf processFailureBlockwithOperation:sessionManager withError:error withFailedBlock:failedBlock];
    }];

}

- (void)cancelRequest
{
    
}

- (void)processSucessBlockwithOperation:(AFHTTPSessionManager *)manager
                     withResponseObject:(id )responseObject
                        WithSucessBlock:(DSRequestCompletedBlock )sucessBlock
                        withFailedBlock:(DSRequestCompletedBlock )failedBlock
{
    
    //处理成功时的请求
    NSMutableDictionary *responseData = [NSMutableDictionary dictionary];
    
    @try {
//        [responseData addEntriesFromDictionary:[responseObject  objectFromJSONData]];
    }
    @catch (NSException *exception) {
        
    }
    
    DSResponse *response = [[DSResponse alloc] init];
//    response.responseName = [NSString stringWithFormat:@"%@响应",self.requestName];
//    response.resultJsonStr = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
//    [response loadResultData:responseData];
    
    NSLog(@"%@",response);
    
//    if (response.isSuccess == YES) {
//        sucessBlock(self,response);
//        
//    }else{
//        failedBlock(self,response);
//    }
}

- (void)processFailureBlockwithOperation:(AFHTTPSessionManager *)operation
                               withError:(NSError *)error
                         withFailedBlock:(DSRequestCompletedBlock )failedBlock{
    
    DSResponse *response = [[DSResponse alloc] init];
//    response.responseName = [NSString stringWithFormat:@"%@响应",self.requestName];
//    response.errorMsg = REQUEST_FAILE;
//    
//    NSLog(@"%@",error);
    
    //手动取消的不弹出错误
//    if (self.isManualCancel == NO) {
//    }else{
//    }
//    
    failedBlock(self,response);
    
}

-(NSString *)description{
    
    NSMutableString *descripString = [NSMutableString stringWithFormat:@""];
    [descripString appendString:@"\n========================Request Info==========================\n"];
    [descripString appendFormat:@"Request Name:%@\n",self.requestName];
    [descripString appendFormat:@"Request Url:%@%@\n",@"BASE",self.requestPath];
    [descripString appendFormat:@"Request Methods:%@\n",[self.urlRequest HTTPMethod]];
    [descripString appendFormat:@"Request params:\n%@\n",self.params];
    [descripString appendString:@"===============================================================\n"];
    return descripString;
}
@end
