//
//  MainTabView.h
//  RYFrame
//
//  Created by 陶博 on 2017/10/26.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MainTabViewDelegate <NSObject>
//点击Bnt的方法
- (void)touchMainTabBtnWithIndex:(NSInteger)index;
@end

@interface MainTabView : UIView

@property (nonatomic,assign) id <MainTabViewDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame withBtnData:(MainList *)mainList;


@end
