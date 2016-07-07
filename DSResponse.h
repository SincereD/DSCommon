//
//  DSResponse.h
//  DSCommon
//
//  Created by Sincere on 16/7/7.
//  Copyright © 2016年 QiujunTech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DSResponse : NSObject

-(id)initWithResponseDic:(NSDictionary *)responseDic;

@property (nonatomic, strong) NSString *responseName;   //响应请求名字
@property (nonatomic, assign) BOOL isSuccess;           //是否成功
@property (nonatomic, strong) NSString *errorMsg;       //错误信息
@property (nonatomic, strong) NSDictionary *result;     //结果数据
@property (nonatomic, strong) NSString     *status;
@property (nonatomic, strong) NSString     *resultJsonStr;
@property (nonatomic, strong) NSString     *error_code; //错误码

@property (nonatomic, strong)id responseModel; //

/**
 *  加载结果数据
 *
 *  @param resultData 结果数据
 */
- (void)loadResultData:(NSDictionary *)resultData;


/**
 *  描述当前对象
 *
 *  @return 当前对象的字符串
 */
-(NSString *)description;

@end
