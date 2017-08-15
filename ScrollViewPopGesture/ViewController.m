//
//  ViewController.m
//  ScrollViewPopGesture
//
//  Created by 蒋理智 on 2017/8/15.
//  Copyright © 2017年 jingwan. All rights reserved.
//

#import "ViewController.h"
#import "ScrollViewController1.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)pushAction:(id)sender {
    ScrollViewController1 *svc = [[ScrollViewController1 alloc]init];
    [self.navigationController pushViewController:svc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
