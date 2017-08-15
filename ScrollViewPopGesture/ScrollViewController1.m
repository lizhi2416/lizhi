//
//  ScrollViewController1.m
//  ScrollViewPopGesture
//
//  Created by 蒋理智 on 2017/8/15.
//  Copyright © 2017年 jingwan. All rights reserved.
//

#import "ScrollViewController1.h"
#import "UIViewController+LZPopGesture.h"

@interface ScrollViewController1 ()

@end

@implementation ScrollViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIScrollView *scrollV = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 200)];
    scrollV.backgroundColor = [UIColor redColor];
    scrollV.contentSize = CGSizeMake(self.view.bounds.size.width*2, 0);
    [self.view addSubview:scrollV];
    
    //添加返回手势
    [self lz_addPopGestureToView:scrollV];
    
    //你也可以直接将手势加入self.view上
//    [self lz_addPopGestureToView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
