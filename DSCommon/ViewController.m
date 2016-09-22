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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self testQRCode];
    
    [self testBlurImage];
    
    
    foo((void*)0xffee);
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
