//
//  ViewController.m
//  DSCommon
//
//  Created by Sincere on 16/3/11.
//  Copyright © 2016年 Sincere. All rights reserved.
//


#ifdef __OBJC__
#import "ViewController.h"
#import "DSCommon.h"
#endif


#import "DSTest.h"

@interface ViewController (){
    
    NSInteger _index;
    
    NSInteger _count;
    
    NSTimer * _timer;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self testQRCode];
    
//    [self testBlurImage];
    
//    foo((void*)0xffee);
    
    [self testColorView];
}

- (void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear: animated];
    
    [self startAniamtion];
}

- (BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)testColorView{
    
    _index = -1;
    
    _count = 0;
    
    CGFloat a = [UIScreen mainScreen].bounds.size.height;
    CGFloat c = [UIScreen mainScreen].bounds.size.width;
    CGFloat b = sqrtf(a*a + c*c);
    CGFloat y = b/24.0f;
    
    CGFloat cosC = (a*a + b*b - c*c)/(2*a*b);

    CGFloat x1 = 2 * cosC * y + sqrtf(2*cosC*y * 2*cosC*y - 2*y*y);
    CGFloat x2 = 2 * cosC * y - sqrtf(pow(2*cosC*y, 2) - 2*y*y);
    
    NSLog(@"x1:%f",x1);
    NSLog(@"x2:%f",x2);
    
    NSArray * colorArray = @[@"f9c53d",@"f9a932",@"f98020",@"f95b1b",@"f9431b",@"d4443e",
                             @"96557d",@"6767ad",@"4777ce",@"3792dd",@"3ba9d2",@"4ec0b9"];
    
    for (int i = 0 ; i<12; i++) {
        
        UIView * view = [[UIView alloc] initWithFrame:CGRectMake(-[UIScreen mainScreen].bounds.size.width*0.5, (i-2)*x1, [UIScreen mainScreen].bounds.size.width*2, x1/sqrtf(2))];
        
        UIColor * color = [UIColor colorWithHexString:colorArray[i]];
        
        [view setBackgroundColor:color];
        
        view.transform = CGAffineTransformRotate(view.transform, -M_PI_4);
        
        [view setTag:i+1000];
        
        [self.view addSubview:view];
    }
    
}

- (void)startAniamtion{
    
   _timer = [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(animationing) userInfo:nil repeats:YES];
   
    [_timer fire];
}

- (void)animationing{
    
    CGFloat height = [UIScreen mainScreen].bounds.size.height/12.0f;
    
    if (_index<12) {
        
        UIView * view = [self.view viewWithTag:_index+1000];
        
        [UIView animateWithDuration:0.9 animations:^{
            [view setAlpha:_count];
        }];
        
    }else{
        
        if (_count == 0) {
            
            _count ++;
            _index = -1;
            
        }else{
            [_timer invalidate];
            
            _timer = nil;
            
            for (int i = 0 ; i<12; i++) {
                UIView * view = [self.view viewWithTag:i+1000];
                
                [UIView animateWithDuration:0.6 animations:^{
                    view.transform = CGAffineTransformIdentity;
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.6 animations:^{
                        view.frame = CGRectMake(0, height*i, [UIScreen mainScreen].bounds.size.width, height);
                    } completion:^(BOOL finished) {
                       
                        [UIView animateWithDuration:0.9 animations:^{
                            view.transform = CGAffineTransformMakeTranslation(-[UIScreen mainScreen].bounds.size.width, 0);
                        } completion:^(BOOL finished) {
                            
                        }];
                        
                    }];
                }];
            }
        }
    }
    
    _index ++ ;
}

- (void)testQRCode {
    
    [self.view addQRCodeWithContent:@"http://www.baidu.com"];
    
}

- (void)testBlurImage {
    
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen screenWidth], [UIScreen screenHeight])];
    
    UIImage * image = [UIImage imageNamed:@"one.jpg"];
    
    [imageView setImage:[image blurImageWithInputRadius:@8]];
    
    [self.view addSubview:imageView];
}

- (void)testNetWork {
    
    DSLog(@"11");
    [[DSHTTPRequest sharedHTTPRequest] requesWithRequestName:@"" requestPath:@"" parameters:@{} isPost:YES successBlock:^(DSRequest *request, DSResponse *response) {

    } failedBlock:^(DSRequest *request, DSResponse *response) {

    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
