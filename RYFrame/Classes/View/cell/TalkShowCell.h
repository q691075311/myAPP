//
//  TalkShowCell.h
//  RYFrame
//
//  Created by 陶博 on 2017/11/3.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TalkShowCell : UITableViewCell

/**
 播放图片
 */
@property (weak, nonatomic) IBOutlet UIImageView *playImage;

/**
 音乐图片
 */
@property (weak, nonatomic) IBOutlet UIImageView *musicImage;

/**
 图片
 */
@property (weak, nonatomic) IBOutlet UIImageView *showImageView;

/**
 标题
 */
@property (weak, nonatomic) IBOutlet UILabel *showTitle;

/**
 简介label
 */
@property (weak, nonatomic) IBOutlet UILabel *profileLabel;

/**
 播放量
 */
@property (weak, nonatomic) IBOutlet UILabel *playNum;

/**
 集数
 */
@property (weak, nonatomic) IBOutlet UILabel *playcount;

/**
 喜点label
 */
@property (weak, nonatomic) IBOutlet UILabel *likeLabel;
/**
 喜点
 */
@property (weak, nonatomic) IBOutlet UILabel *likeCount;

/**
 播放数宽度
 */
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *playNumWidth;

/**
 title的距离
 */
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titleDistance;

/**
 相声评书数据
 */
@property (nonatomic,strong) MainList *talkShowData;

/**
 精心听单
 */
@property (nonatomic,strong) MainList *listenList;
@end
