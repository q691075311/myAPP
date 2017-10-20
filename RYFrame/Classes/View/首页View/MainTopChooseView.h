//
//  MainTopChooseView.h
//  RYFrame
//
//  Created by 陶博 on 2017/10/19.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTopChooseView : UIView

/**
 红色的View
 */
@property (nonatomic,strong) UIView * redLineView;

/**
 点击的上一个Btn
 */
@property (nonatomic,strong) UIButton * lastBtn;
/**
 初始化View

 @param frame 位置
 @param arr View上的选项
 @return View
 */
- (instancetype)initWithFrame:(CGRect)frame;
- (void)btnClick:(UIButton *)btn;
@end
