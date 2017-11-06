//
//  CellHeaderView.h
//  RYFrame
//
//  Created by 陶博 on 2017/10/30.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellHeaderView : UIView

/**
 标签的数组
 */
@property (nonatomic,copy) NSArray * itemArr;

/**
 标题
 */
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

- (instancetype)init;

@end
