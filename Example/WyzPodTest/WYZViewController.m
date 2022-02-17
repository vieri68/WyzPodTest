//
//  WYZViewController.m
//  WyzPodTest
//
//  Created by vieri on 02/16/2022.
//  Copyright (c) 2022 vieri. All rights reserved.
//

#import "WYZViewController.h"
#import <WyzPodTest/Header.h>
@interface WYZViewController ()

@end

@implementation WYZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    WYZTestView *view = [[WYZTestView alloc] initWithFrame:CGRectMake(10, 10, 300, 300)];
//    [self.view addSubview:view];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [view showLocalImage];
//    });
    
    WYZTestViewWithXIB *view = [WYZTestViewWithXIB viewFromXib];
    [self.view addSubview:view];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [view showRemoteImageWithUrl:@"https://file.cdn.tapque.com/meitu/image/iphone_5816cf.png"];
    });
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
