//
//  CellFooterView.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/30.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "CellFooterView.h"

@implementation CellFooterView

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
        CellFooterView * view = [[[NSBundle mainBundle] loadNibNamed:@"CellFooterView" owner:self options:nil] lastObject];
        self.autoresizingMask = view.autoresizingMask;
        return view;
    }
    return self;
}
#pragma mark -- 换一批按钮
- (IBAction)refreshClick:(UIButton *)sender {
    
    
}



@end
