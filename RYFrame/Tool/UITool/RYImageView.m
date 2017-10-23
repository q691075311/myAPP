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
    //停止旋转
    self.layer.speed = 0.0;
    //保存时间  恢复旋转需要用
    self.layer.timeOffset = pausedTime;
}

- (void)resumeRotate{
    if (self.layer.timeOffset == 0) {
        [self startRotating];
        return;
    }
    CFTimeInterval pausedTime = self.layer.timeOffset;
    // 开始旋转
    self.layer.speed = 1.0;
    self.layer.timeOffset = 0.0;
    self.layer.beginTime = 0.0;
    // 恢复时间
    CFTimeInterval timeSincePause = [self.layer convertTime:CACurrentMediaTime() fromLayer:nil] - pausedTime;
    // 从暂停的时间点开始旋转
    self.layer.beginTime = timeSincePause;
}
@end
