//
//  UIView+Frame.h
//  RYFrame
//
//  Created by 陶博 on 2017/10/20.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

/**
 View的宽度

 @return
 */
- (CGFloat)width;

/**
 View的高度

 @return
 */
- (CGFloat)hiegth;

/**
 View的X

 @return
 */
- (NSUInteger)origin_X;

/**
 View的Y

 @return 
 */
- (NSUInteger)origin_Y;

@end
