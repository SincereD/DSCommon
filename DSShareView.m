//
//  YFShareView.m
//  YFCars
//
//  Created by Numsix on 16/4/29.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import "DSShareView.h"
#import <UMSocial.h>

@interface DSShareView ()

@property (nonatomic, weak) UIView *container;
@property (nonatomic, weak) UIButton *cancelButton;
@property (nonatomic, strong) NSMutableArray *titles;

@end


@implementation DSShareView

- (instancetype)init
{
    self = [super initWithFrame:[UIScreen mainScreen].bounds];
    self.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    if (self) {
        [self initSubviews];
    }
    return self;
}

- (void)initSubviews
{
    self.titles = [NSMutableArray arrayWithArray:@[@"微信好友",@"朋友圈",@"QQ好友",@"新浪微博"]];
    UIImage *wechatIcon   = [UIImage imageNamed:@"share_1"];
    UIImage *timelineIcon = [UIImage imageNamed:@"share_2"];
    UIImage *qqIcon       = [UIImage imageNamed:@"share_3"];
    UIImage *sinaIcon     = [UIImage imageNamed:@"share_4"];
    
    NSMutableArray *icons = [NSMutableArray arrayWithObjects:wechatIcon,timelineIcon,qqIcon,sinaIcon,nil];
    
    if (![[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"weixin://"]]) {
        [self.titles removeObject:@"微信好友"];
        [self.titles removeObject:@"朋友圈"];
        [icons removeObject:wechatIcon];
        [icons removeObject:timelineIcon];
    }

    if (![[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"mqq://"]]) {
        [self.titles removeObject:@"QQ好友"];
        [icons removeObject:qqIcon];
    }

    if (![[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"sinaweibo://"]]) {
        [self.titles removeObject:@"新浪微博"];
        [icons removeObject:sinaIcon];
    }
    
    UIView *container  = [[UIView alloc] init];
    container.frame = CGRectMake(10, CGRectGetHeight(self.bounds), CGRectGetWidth(self.bounds)-20, 161);
    container.backgroundColor = [UIColor whiteColor];
    container.layer.masksToBounds = YES;
    container.layer.cornerRadius  = 6.0;
    self.container = container;
    [self addSubview:self.container];
    
    CGFloat offsetX = (CGRectGetWidth(container.bounds)-235)/3+50;
    
    for (int i=0; i<self.titles.count; i++)
    {
        UIButton *button = [[UIButton alloc] init];
        button.frame  = CGRectMake(17.5+i*offsetX, 32.5, 50, 50);
        [button setImage:icons[i] forState:normal];
        [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
        button.tag = i+1;
        [container addSubview:button];
        
        UILabel *label = [[UILabel alloc] init];
        label.frame  = CGRectMake(0, CGRectGetMaxY(button.frame)+20, 0, 0);
        label.text   = self.titles[i];
        label.font   = [UIFont systemFontOfSize:13.f];
        [label sizeToFit];
        label.center = CGPointMake(button.center.x, label.center.y);
        [container addSubview:label];
    }
    
    UIButton *cancelBtn = [[UIButton alloc] init];
    cancelBtn.frame = CGRectMake(10, CGRectGetMaxY(container.frame)+9, CGRectGetWidth(container.frame), 40);
    cancelBtn.backgroundColor = [UIColor whiteColor];
    cancelBtn.layer.masksToBounds = YES;
    cancelBtn.layer.cornerRadius  = 6.0;
    [cancelBtn setTitle:@"取消" forState:UIControlStateNormal];
    [cancelBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    cancelBtn.titleLabel.font = [UIFont systemFontOfSize:15.f];
    [cancelBtn addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
    self.cancelButton = cancelBtn;
    [self addSubview:self.cancelButton];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss)];
    [self addGestureRecognizer:tap];
    
}

- (void)clickButton:(UIButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(shareView:LaunchShareWithPlatfrom:)]) {
        NSString *platform = self.titles[sender.tag-1];
        [self.delegate shareView:self LaunchShareWithPlatfrom:platform];
    }
}

- (void)showInView:(UIView *)view
{
    [view addSubview:self];
    [view bringSubviewToFront:self];
    
    [UIView animateWithDuration:0.3 animations:^{
        
        CGRect aFrame = self.container.frame;
        aFrame.origin.y -= 220;
        self.container.frame = aFrame;
        aFrame = self.cancelButton.frame;
        aFrame.origin.y -= 220;
        self.cancelButton.frame = aFrame;
        
    } completion:^(BOOL finished) {
        
    }];
}

- (void)dismiss
{
    [UIView animateWithDuration:0.3 animations:^{
        
        CGRect aFrame = self.container.frame;
        aFrame.origin.y += 220;
        self.container.frame = aFrame;
        aFrame = self.cancelButton.frame;
        aFrame.origin.y += 220;
        self.cancelButton.frame = aFrame;
        
    } completion:^(BOOL finished) {
        
        [self removeFromSuperview];
    }];
}

@end