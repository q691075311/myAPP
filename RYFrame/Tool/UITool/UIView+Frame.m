//
//  UIView+Frame.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/20.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

- (CGFloat)width{
    return self.bounds.size.width;
}
- (CGFloat)hiegth{
    return self.bounds.size.height;
}
- (NSUInteger)origin_X{
    return self.frame.origin.x;
}
- (NSUInteger)origin_Y{
    return self.frame.origin.y;
}
@end
