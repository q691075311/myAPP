//
//  GuessLikeCell.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/27.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "GuessLikeCell.h"
#define VIEWWIDTH (SCREEN_WIDTH-15-15-5-5)/3
#define VIEWHIEGTH (VIEWWIDTH) + 40
#define EDGE 15
#define ROWSPACING 5
#define COLSPACING 5

@implementation GuessLikeCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setLikeList:(MainList *)likeList{
    NSArray * arr = likeList.list;
    NSMutableArray * likeArr = [[NSMutableArray alloc] init];
    [likeArr removeAllObjects];
    for (NSDictionary * dic in arr) {
        MainList * likeItem = [MainList modelObjectWithDictionary:dic];
        [likeArr addObject:likeItem];
    }
    for (int i = 0; i < likeArr.count; i ++) {
        MainList * likeItem = likeArr[i];
        NSInteger row = i % 3;//3是列数 0 1 2 0 1 2
        NSInteger col = i / 3;//3是列数 0 0 0 1 1 1
        UIView * view = [[UIView alloc] initWithFrame:CGRectMake(15 + (row * ((VIEWWIDTH) +ROWSPACING)), col * (VIEWHIEGTH + COLSPACING), VIEWWIDTH, VIEWHIEGTH)];
        //添加图片
        UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, view.width, view.width)];
        [imageView sd_setImageWithURL:[NSURL URLWithString:likeItem.pic]];
        //添加label
        CGFloat H = [RYTool getLabelHeightWithString:likeItem.title withLabelWidth:view.width withFontSize:11];
        UILabel * label =[[UILabel alloc] initWithFrame:CGRectMake(0, imageView.hiegth+5, view.width, H)];
        label.text = likeItem.title;
        label.numberOfLines = 2;
        label.font = [UIFont systemFontOfSize:11];
        //添加Btn
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, 0, view.width, view.hiegth);
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = 100+i;
        
        [view addSubview:label];
        [view addSubview:imageView];
        [view addSubview:btn];
        [self addSubview:view];
    }
}

- (void)btnClick:(UIButton *)btn{
    if (_delegate && [_delegate respondsToSelector:@selector(guessLikeBtnClick:)]) {
        [_delegate guessLikeBtnClick:btn];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
