//
//  ExquisitelyCell.h
//  RYFrame
//
//  Created by 陶博 on 2017/11/3.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ExquisitelyCellDelegate <NSObject>

- (void)exquisitelyClick:(UIButton *)btn;

@end

@interface ExquisitelyCell : UITableViewCell

/**
 cell的数据
 */
@property (nonatomic,strong) MainList * exquisitelyList;
@property (nonatomic,assign) id <ExquisitelyCellDelegate> delegate;
@end
