//
//  TabbarPlayView.h
//  RYFrame
//
//  Created by 陶博 on 2017/10/18.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TabbarPlayViewDelegate <NSObject>

- (void)touchPlayBtn;

@end

@interface TabbarPlayView : UIView

/**
 播放按钮
 */
@property (nonatomic,strong) UIButton * playBtn;

/**
 专辑图片
 */
@property (nonatomic,strong) UIImageView * albumImageView;

/**
 TabbarPlayView的代理
 */
@property (nonatomic,assign) id <TabbarPlayViewDelegate> delegate;

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

/**
 加载专辑图片

 @param albumImage 专辑图片
 */
- (void)setAlbumImage;


@end
