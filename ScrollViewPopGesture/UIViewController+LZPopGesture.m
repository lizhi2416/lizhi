//
//  UIViewController+LZPopGesture.m
//  ScrollViewPopGesture
//
//  Created by 蒋理智 on 2017/8/15.
//  Copyright © 2017年 jingwan. All rights reserved.
//

#import "UIViewController+LZPopGesture.h"

const CGFloat edgeValue = 40.0;//改变边缘有效值

@implementation UIViewController (LZPopGesture)
- (void)lz_addPopGestureToView:(UIView *)view{
    // edge gesture
    NSArray *internalTargets = [self.navigationController.interactivePopGestureRecognizer valueForKey:@"targets"];
    id internalTarget = [internalTargets.firstObject valueForKey:@"target"];
    UIPanGestureRecognizer *lz_popGesture = [[UIPanGestureRecognizer alloc]initWithTarget:internalTarget action:NSSelectorFromString(@"handleNavigationTransition:")];
    lz_popGesture.delegate = self;
    [view addGestureRecognizer:lz_popGesture];
}

#pragma mark -- UIGestureRecognizerDelegate
- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer {
    // 侧滑手势触发位置
    CGPoint location = [gestureRecognizer locationInView:self.view];
    CGPoint offSet = [gestureRecognizer translationInView:gestureRecognizer.view];
    BOOL ret = (0 < offSet.x && location.x <= edgeValue);
    return ret;
}
@end
