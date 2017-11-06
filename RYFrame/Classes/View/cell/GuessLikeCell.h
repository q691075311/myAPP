//
//  GuessLikeCell.h
//  RYFrame
//
//  Created by 陶博 on 2017/10/27.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GuessLikeCellDelegate <NSObject>

- (void)guessLikeBtnClick:(UIButton *)btn;

@end

@interface GuessLikeCell : UITableViewCell

/**
 猜你喜欢的数据
 */
@property (nonatomic,strong) MainList * likeList;
@property (nonatomic,assign) id <GuessLikeCellDelegate> delegate;
@end
