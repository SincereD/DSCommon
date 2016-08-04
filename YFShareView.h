//
//  YFShareView.h
//  YFCars
//
//  Created by Numsix on 16/4/29.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YFShareView;

@protocol YFShareViewDelegate <NSObject>

@optional

- (void)shareView:(YFShareView *)view LaunchShareWithPlatfrom:(NSString *)platform;

@end

@interface YFShareView : UIView

@property (nonatomic, weak) id<YFShareViewDelegate> delegate;

- (void)showInView:(UIView *)view;

- (void)dismiss;

@end
