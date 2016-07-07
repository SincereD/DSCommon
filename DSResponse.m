//
//  DSResponse.m
//  DSCommon
//
//  Created by Sincere on 16/7/7.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import "DSResponse.h"
#import "DSHTTPRequest.h"

@implementation DSResponse

-(id)initWithResponseDic:(NSDictionary *)response{
    self = [super init];
    
    if (self) {
        [self initializeWithDic:response];
    }
    
    return self;
}

- (void)initializeWithDic:(NSDictionary *)response{
    
    _isSuccess = NO;
    
    if (response == nil || ![response isKindOfClass:[NSDictionary class]]
        || [response objectForKey:@"code"] == nil)
    {
        self.errorMsg = DATA_FORMAT_ERROR;
        return;
    }
    _isSuccess = [[response objectForKey:@"code"] boolValue];
    
    if (_isSuccess == NO && [response objectForKey:@"message"]!= nil )
    {
        self.errorMsg = [NSString stringWithFormat:@"%@",[response objectForKey:@"message"]];
        return;
    }
    
    if (_isSuccess == NO && [response objectForKey:@"message"]== nil )
    {
        self.errorMsg = DATA_FORMAT_ERROR;
        return;
    }
    
    if (_isSuccess == YES && [response objectForKey:@"object"] == nil)
    {
        self.errorMsg = DATA_FORMAT_ERROR;
        return;
    }
    
    NSDictionary *result = [response objectForKey:@"object"];
    
    
    if ([result isKindOfClass:[NSDictionary class]])
    {
        _isSuccess = YES;
        self.result = result;
        
    }else if ([result isKindOfClass:[NSArray class]])
    {
        _isSuccess = YES;
        self.result = [NSDictionary dictionaryWithObject:result forKey:@"object"];
        
    }else if(result != nil)
    {
        self.result = [NSDictionary dictionaryWithObject:result forKey:@"object"];
    }
    else
    {
        _isSuccess = NO;
        self.errorMsg = DATA_FORMAT_ERROR;
    }
}

- (void)loadResultData:(NSDictionary *)resultData{
    
    _isSuccess = NO;
    
    if (resultData == nil || ![resultData isKindOfClass:[NSDictionary class]]
        || [resultData objectForKey:@"code"] == nil)
    {
        self.errorMsg = DATA_FORMAT_ERROR;
        return;
    }
    
    if ([[[resultData objectForKey:@"code"] stringValue] isEqualToString:@"1"])
    {
        _isSuccess = YES;
    }else{
        self.error_code = [resultData objectForKey:@"code"];
        _isSuccess = NO;
    }
    
    if (_isSuccess == NO && [resultData objectForKey:@"message"]!= nil )
    {
        self.errorMsg = [NSString stringWithFormat:@"%@",[resultData objectForKey:@"message"]];
        return;
    }
    
    if (_isSuccess == NO && [resultData objectForKey:@"message"]== nil )
    {
        self.errorMsg = DATA_FORMAT_ERROR;
        return;
    }
    
    if (_isSuccess == YES && [resultData objectForKey:@"object"] == nil)
    {
        self.errorMsg = DATA_FORMAT_ERROR;
        return;
    }
    
    NSDictionary *result = [resultData objectForKey:@"object"];
    
    if ([result isKindOfClass:[NSDictionary class]])
    {
        _isSuccess = YES;
        self.result = result;
    }
    else if ([result isKindOfClass:[NSArray class]])
    {
        _isSuccess = YES;
        self.result = [NSDictionary dictionaryWithObject:result forKey:@"object"];
    }else if(result != nil)
    {
        self.result = [NSDictionary dictionaryWithObject:result forKey:@"object"];
    }
    else
    {
        _isSuccess = NO;
        self.errorMsg = DATA_FORMAT_ERROR;
    }
}


-(NSString *)description{
    
    NSMutableString *descripString = [NSMutableString stringWithFormat:@""];
    [descripString appendString:@"\n========================Response Info===========================\n"];
    [descripString appendFormat:@"Response Name:%@\n",self.responseName];
    //[descripString appendFormat:@"Response Content:\n%@\n",self.result];
    [descripString appendFormat:@"Response resultJsonStr:\n%@\n",self.resultJsonStr];
    if(self.result == nil && self.isSuccess == NO)
        [descripString appendFormat:@"Response Error:\n%@\n",self.errorMsg];
    [descripString appendString:@"===============================================================\n"];
    return descripString;
}

@end
