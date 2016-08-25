//
//  ViewController.m
//  DSCommon
//
//  Created by Sincere on 16/3/11.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import "ViewController.h"
#import "DSCommon.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[DSHTTPRequest sharedHTTPRequest] requesWithRequestName:@"" requestPath:@"" parameters:@{} isPost:YES successBlock:^(DSRequest *request, DSResponse *response) {
        
    } failedBlock:^(DSRequest *request, DSResponse *response) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
