//
//  CellHeaderView.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/30.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "CellHeaderView.h"

@implementation CellHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)init{
    self = [super init];
    if (self) {
        CellHeaderView * view = [[[NSBundle mainBundle] loadNibNamed:@"CellHeaderView" owner:self options:nil] lastObject];
        self.autoresizingMask = view.autoresizingMask;
        return view;
    }
    return self;
}
@end
