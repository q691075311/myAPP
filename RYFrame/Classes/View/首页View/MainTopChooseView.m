//
//  MainTopChooseView.m
//  RYFrame
//0.5  1.5  2.5
//  Created by 陶博 on 2017/10/19.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "MainTopChooseView.h"

#define BntWidth SCREEN_WIDTH/5
#define BtnHeigth 40


@implementation MainTopChooseView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor ry_colorWithHexString:@"#f3f4f5"];
        [self addTopViewSubview];
        [self addRedLineView];
    }
    return self;
}
#pragma mark -- 添加top的item
- (void)addTopViewSubview{
    for (int i = 0; i < MainTopItem.count; i ++) {
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(BntWidth * i, 0, BntWidth, BtnHeigth);
        [btn setTitleColor:i == 0 ? [UIColor colorWithRed:243/255.0 green:75/255.0 blue:51/255.0 alpha:1] : [UIColor blackColor] forState:UIControlStateNormal];
        [btn setTitle:MainTopItem[i] forState:UIControlStateNormal];
        btn.tag = i + 100;
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        //记录上个Btn
        if (i == 0) {
            _lastBtn = btn;
        }
        [self addSubview:btn];
    }
}
#pragma mark -- Btn的点击事件
- (void)btnClick:(UIButton *)btn{
    [_lastBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor colorWithRed:243/255.0 green:75/255.0 blue:51/255.0 alpha:1] forState:UIControlStateNormal];
    _lastBtn = btn;
    [self changeRedLineViewFrameWithBtnTag:btn.tag];
    if (_delegate && [_delegate respondsToSelector:@selector(touchBtn:)]) {
        [_delegate touchBtn:btn];
    }
}
#pragma mark -- 添加红色Viwe
- (void)addRedLineView{
    _redLineView = [[UIView alloc] init];
    _redLineView.backgroundColor = [UIColor colorWithRed:243/255.0 green:75/255.0 blue:51/255.0 alpha:1];
    _redLineView.center = CGPointMake(BntWidth/2, self.bounds.size.height - 1);
    _redLineView.bounds = CGRectMake(0, 0, BntWidth/2, 2);
    [self addSubview:_redLineView];
}
#pragma mark -- redView做动画
- (void)changeRedLineViewFrameWithBtnTag:(NSInteger)btnTag{
    [UIView animateWithDuration:0.2 animations:^{
        _redLineView.center = CGPointMake(BntWidth/2 + BntWidth*(btnTag - 100), self.bounds.size.height - 1);
    }];
}


@end
