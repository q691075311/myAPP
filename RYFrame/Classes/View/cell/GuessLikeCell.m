//
//  GuessLikeCell.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/27.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "GuessLikeCell.h"
#define VIEWWIDTH (SCREEN_WIDTH-15-15-5-5)/3
#define VIEWHIEGTH (VIEWWIDTH) + 30
#define EDGE 15
#define ROWSPACING 5
#define COLSPACING 5

@implementation GuessLikeCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    for (int i = 0; i < 6; i ++) {
        NSInteger row = i % 3;//3是列数 0 1 2 0 1 2
        NSInteger col = i / 3;//3是列数 0 0 0 1 1 1
        UIView * view = [[UIView alloc] initWithFrame:CGRectMake(15 + (row * ((VIEWWIDTH) +ROWSPACING)), col * (VIEWHIEGTH + COLSPACING), VIEWWIDTH, VIEWHIEGTH)];
        view.backgroundColor = [UIColor redColor];
        [self addSubview:view];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
