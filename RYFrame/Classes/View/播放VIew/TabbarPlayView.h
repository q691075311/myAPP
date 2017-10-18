//
//  TabbarPlayView.h
//  RYFrame
//
//  Created by 陶博 on 2017/10/18.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabbarPlayView : UIView

/**
 单例模式

 @return 对象
 */
+ (TabbarPlayView *)sharePlayView;

/**
 重写init

 @return 
 */
- (instancetype)init;

/**
 展示View
 */
- (void)show;

/**
 隐藏View
 */
- (void)hidden;




@end
