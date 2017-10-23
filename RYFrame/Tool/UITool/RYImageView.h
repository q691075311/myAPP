//
//  RYImageView.h
//  RYFrame
//
//  Created by 陶博 on 2017/10/23.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RYImageView : UIImageView

/**
 开始旋转
 */
- (void)startRotating;

/**
 停止旋转
 */
- (void)stopRotating;

/**
 恢复旋转
 */
- (void)resumeRotate;

@end
