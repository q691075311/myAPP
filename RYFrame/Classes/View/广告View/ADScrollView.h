//
//  ADScrollView.h
//  RYFrame
//
//  Created by 陶博 on 2017/10/24.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <SDCycleScrollView/SDCycleScrollView.h>
//@protocol ADScrollViewDelegate <NSObject>
//
//- (void)touchADWithCurrentIndex:(NSInteger)currentIndex;
//
//@end

@interface ADScrollView : SDCycleScrollView

//@property (nonatomic,assign) id <ADScrollViewDelegate>delegate;

- (instancetype)initWithFrame:(CGRect)frame withADArr:(NSArray *)adArr;

@end
