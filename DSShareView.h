//
//  YFShareView.h
//  YFCars
//
//  Created by Numsix on 16/4/29.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DSShareView;

@protocol DSShareViewDelegate <NSObject>

@optional

- (void)shareView:(DSShareView *)view LaunchShareWithPlatfrom:(NSString *)platform;

@end

@interface DSShareView : UIView

@property (nonatomic, weak) id<DSShareViewDelegate> delegate;

- (void)showInView:(UIView *)view;

- (void)dismiss;

@end
