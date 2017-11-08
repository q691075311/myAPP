//
//  ExquisitelyCell.m
//  RYFrame
//
//  Created by 陶博 on 2017/11/3.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "ExquisitelyCell.h"
#define VIEWWIDTH (SCREEN_WIDTH-15-15-5-5)/3
#define VIEWHIEGTH (VIEWWIDTH) + 60
#define EDGE 15
#define SPACING 5

@implementation ExquisitelyCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code

}
- (void)drawRect:(CGRect)rect{
    
}

- (void)setExquisitelyList:(MainList *)exquisitelyList{
    NSArray * arr = exquisitelyList.list;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        for (int i = 0; i<arr.count; i ++) {
            MainList *exquisitelyItem = [MainList modelObjectWithDictionary:arr[i]];
            UIView * view = [[UIView alloc] initWithFrame:CGRectMake(EDGE + i * (VIEWWIDTH + SPACING), 0, VIEWWIDTH, VIEWHIEGTH)];
            //添加图片
            UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, view.width, view.width)];
            imageView.tag = 10+i;
//            [imageView sd_setImageWithURL:[NSURL URLWithString:exquisitelyItem.pic]];
            //添加label
            UILabel * subTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, imageView.hiegth + 5, imageView.width, 20)];
            subTitleLabel.tag = 100+i;
//            subTitleLabel.text = exquisitelyItem.subtitle;
            subTitleLabel.font = [UIFont systemFontOfSize:12];
            //添加详情label
            CGFloat H =[RYTool getLabelHeightWithString:exquisitelyItem.title withLabelWidth:imageView.width withFontSize:10];
            UILabel * titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, subTitleLabel.origin_Y +subTitleLabel.hiegth + 5, imageView.width, H)];
            titleLabel.tag = 1000+i;
            titleLabel.font = [UIFont systemFontOfSize:10];
//            titleLabel.text = exquisitelyItem.title;
            titleLabel.numberOfLines = 2;
            titleLabel.textColor = [UIColor grayColor];
            //添加Btn
            UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
            btn.frame = CGRectMake(0, 0, view.width, view.hiegth);
            [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
            btn.tag = 10000 + i;
            
            [view addSubview:subTitleLabel];
            [view addSubview:titleLabel];
            [view addSubview:imageView];
            [view addSubview:btn];
            [self addSubview:view];
        }
    });
    for (int i = 0; i<arr.count; i ++) {
        MainList *exquisitelyItem = [MainList modelObjectWithDictionary:arr[i]];
        UIImageView * imageView = [self viewWithTag:10+i];
        [imageView sd_setImageWithURL:[NSURL URLWithString:exquisitelyItem.pic]];
        UILabel * subTitleLabel = [self viewWithTag:100+i];
        subTitleLabel.text = exquisitelyItem.subtitle;
        UILabel * titleLabel = [self viewWithTag:1000+i];
        titleLabel.text = exquisitelyItem.title;
    }
}

- (void)btnClick:(UIButton *)btn{
    if (_delegate && [_delegate respondsToSelector:@selector(exquisitelyClick:)]) {
        [_delegate exquisitelyClick:btn];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
