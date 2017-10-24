//
//  ADScrollView.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/24.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "ADScrollView.h"

@implementation ADScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame withADArr:(NSArray *)adArr{
    self = [super initWithFrame:frame];
    if (self) {
        [self configViewWithArr:(NSArray *)adArr];
    }
    return self;
}

- (void)configViewWithArr:(NSArray *)adArr{
    NSMutableArray * imageArr = [[NSMutableArray alloc] init];
    for (MainData * adv in adArr) {
        [imageArr addObject:adv.cover];
    }
    self.imageURLStringsGroup = imageArr;
    self.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
    self.currentPageDotColor = [UIColor whiteColor];
    self.clickItemOperationBlock = ^(NSInteger currentIndex) {
        
    };
}

@end
