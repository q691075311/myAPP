//
//  RYImageView.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/23.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "RYImageView.h"

@implementation RYImageView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)startRotating{
    //创建旋转动画
    CABasicAnimation * baseAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    //设置旋转动画的开始值
    baseAnimation.fromValue = [NSNumber numberWithFloat:0.0];
    //设置旋转动画的结束值
    baseAnimation.toValue = [NSNumber numberWithFloat:M_PI * 2];
    //设置动画的时间
    baseAnimation.duration = 10.0;
    //设置重复次数为最大
    baseAnimation.repeatCount = MAXFLOAT;
    //添加动画到layer上
    [self.layer addAnimation:baseAnimation forKey:nil];
}

- (void)stopRotating{
    CFTimeInterval pausedTime = [self.layer convertTime:CACurrentMediaTime() fromLayer:nil];
    self.layer.speed = 0.0;
    self.layer.timeOffset = pausedTime;
}

- (void)resumeRotate{
    
}
@end
