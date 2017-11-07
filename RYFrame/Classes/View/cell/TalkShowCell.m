//
//  TalkShowCell.m
//  RYFrame
//
//  Created by 陶博 on 2017/11/3.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "TalkShowCell.h"

@implementation TalkShowCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}
- (void)setTalkShowData:(MainList *)talkShowData{
    [self.showImageView sd_setImageWithURL:[NSURL URLWithString:talkShowData.pic]];
    self.showTitle.text = talkShowData.title;
    self.profileLabel.text = talkShowData.subtitle;
    self.playNum.text = [self stringForNumber:talkShowData.playsCount];
    self.playcount.text = [NSString stringWithFormat:@"%.0f集",talkShowData.tracksCount];
    NSString *str = [NSString stringWithFormat:@"%.0f",talkShowData.discountedPrice];
    //判断喜点的显示
    if (talkShowData.discountedPrice != 0) {
        self.likeLabel.hidden = NO;
        self.likeCount.hidden = NO;
    }else{
        self.likeLabel.hidden = YES;
        self.likeCount.hidden = YES;
    }
    self.likeCount.text = str;
    //判断完结的显示 2是已完结
    if (talkShowData.isFinished == 0) {
        self.titleDistance.constant = 8;
    }
}
- (void)setListenList:(MainList *)listenList{
    self.showTitle.text = listenList.title;
    self.profileLabel.text = listenList.subtitle;
    [self.showImageView sd_setImageWithURL:[NSURL URLWithString:listenList.coverPath]];
    self.playNum.text = listenList.footnote;
    self.playNumWidth.constant = 60;
    self.musicImage.hidden = YES;
    self.playcount.hidden = YES;
    self.playImage.image = [UIImage imageNamed:@"yuan"];
    self.titleDistance.constant = 8;
    self.likeLabel.hidden = YES;
}
#pragma mark -- double转字符串
- (NSString *)stringForNumber:(double)num{
    NSString * numStr = [NSString stringWithFormat:@"%.0f",num];
    if (numStr.length>8) {
        float numF = [numStr floatValue];
        float numS = numF/100000000;
        return [NSString stringWithFormat:@"%.1f亿",numS];
    }else if (numStr.length>4){
        float numF = [numStr floatValue];
        float numS = numF/10000;
        return [NSString stringWithFormat:@"%.1f万",numS];
    }else{
        return [NSString stringWithFormat:@"%.0f",num];
    }
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
