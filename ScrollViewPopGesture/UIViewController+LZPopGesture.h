//
//  UIViewController+LZPopGesture.h
//  ScrollViewPopGesture
//
//  Created by 蒋理智 on 2017/8/15.
//  Copyright © 2017年 jingwan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (LZPopGesture)<UIGestureRecognizerDelegate>

- (void)lz_addPopGestureToView:(UIView *)view;

@end
