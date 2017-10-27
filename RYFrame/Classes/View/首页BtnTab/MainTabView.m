//
//  MainTabView.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/26.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "MainTabView.h"
#define SUBVIEWWIDTH SCREEN_WIDTH/5.4


@implementation MainTabView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame withBtnData:(MainList *)mainList{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self addScrollerViewSubViewWith:mainList];
    }
    return self;
}

- (void)addScrollerViewSubViewWith:(MainList *)mainList{
    NSArray * arr = mainList.list;
    UIScrollView * scrollerView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, self.hiegth)];
    scrollerView.contentSize = CGSizeMake(arr.count * SUBVIEWWIDTH, self.hiegth);
    for (int i = 0; i < arr.count; i ++) {
        //获取btn的数据
        NSDictionary *dic = arr[i];
        MainList * btnList = [MainList modelObjectWithDictionary:dic];
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(i * SUBVIEWWIDTH, 0, SUBVIEWWIDTH, self.hiegth)];
        //添加图片
        UIImageView * imageView = [[UIImageView alloc] init];
        imageView.center = CGPointMake(view.width/2, 34);
        imageView.bounds = CGRectMake(0, 0, 35, 35);
        [imageView sd_setImageWithURL:[NSURL URLWithString:btnList.coverPath]];
        //添加label
        UILabel * label = [[UILabel alloc] init];
        label.center = CGPointMake(view.width/2, view.hiegth - 15);
        label.bounds = CGRectMake(0, 0, view.width, 20);
        label.text = btnList.title;
        label.font = [UIFont systemFontOfSize:13];
        label.textAlignment = NSTextAlignmentCenter;
        //添加点击Btn
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, 0, view.width, view.hiegth);
        [btn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = 100 + i;
        
        [view addSubview:label];
        [view addSubview:imageView];
        [view addSubview:btn];
        [scrollerView addSubview:view];
    }
    [self addSubview:scrollerView];
}
#pragma mark -- btn的点击方法
- (void)btnclick:(UIButton *)btn{
    if (_delegate && [_delegate respondsToSelector:@selector(touchMainTabBtnWithIndex:)]) {
        [_delegate touchMainTabBtnWithIndex:btn.tag];
    }
}

@end
