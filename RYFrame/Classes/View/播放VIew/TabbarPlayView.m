//
//  TabbarPlayView.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/18.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "TabbarPlayView.h"
#define VIEWWIDTHORHEIGTH 65
#define ALBUMWIGTH 45
@implementation TabbarPlayView
static TabbarPlayView * playView = nil;
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
#pragma mark -- 单例模式
+ (TabbarPlayView *)sharePlayView{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        playView = [[TabbarPlayView alloc] init];
    });
    return playView;
}

#pragma mark -- 重写init
- (instancetype)init{
    self = [super init];
    if (self) {
//        self.backgroundColor = [UIColor redColor];
        float y;
        //判断iPhone X的机型
        if (iPHONE_X) {
            y = SCREEN_HEIGHT - VIEWWIDTHORHEIGTH/2 - 35;//34是iPhone X的下巴高度
        }else{
            y = SCREEN_HEIGHT - VIEWWIDTHORHEIGTH/2;
        }
        self.center = CGPointMake(SCREEN_WIDTH/2, y);
        self.bounds = CGRectMake(0, 0, VIEWWIDTHORHEIGTH, VIEWWIDTHORHEIGTH);
        [self addPlayViewSubView];
    }
    return self;
}
#pragma mark -- 展示View
- (void)show{
    self.hidden = NO;
    UIWindow * window = [[[UIApplication sharedApplication] delegate] window];
    [window addSubview:self];
    [window bringSubviewToFront:self];
}
#pragma mark -- 隐藏View
- (void)hidden{
    self.hidden = YES;
}
#pragma mark -- 添加PlayView的子视图
- (void)addPlayViewSubView{
    //添加背景图
    UIImageView * imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"playViewBG"]];
    imageView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    [self addSubview:imageView];
    //添加圆形背景图
    UIImageView * yuanImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"playyuan"]];
    yuanImage.center = CGPointMake(self.frame.size.width/2, 32.5);
    yuanImage.bounds = CGRectMake(0, 0, 50, 50);
    [self addSubview:yuanImage];
    [self setAlbumImage];
    [self addPlayButton];
}
#pragma mark -- 添加专辑图
- (void)setAlbumImage{
    _albumImageView = [[RYImageView alloc] initWithImage:[UIImage imageNamed:@"testimage"]];
    _albumImageView.center = CGPointMake(self.frame.size.width/2, 32.5);
    _albumImageView.bounds = CGRectMake(0, 0, ALBUMWIGTH, ALBUMWIGTH);
    _albumImageView.layer.masksToBounds = YES;
    _albumImageView.layer.cornerRadius = ALBUMWIGTH/2;
    [self addSubview:_albumImageView];
}
#pragma mark -- 添加播放按钮
- (void)addPlayButton{
    _playBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _playBtn.center = CGPointMake(self.frame.size.width/2, 32.5);
    _playBtn.bounds = CGRectMake(0, 0, ALBUMWIGTH, ALBUMWIGTH);
    [_playBtn setBackgroundImage:[UIImage imageNamed:@"tabbarplay"] forState:UIControlStateNormal];
    _playBtn.layer.masksToBounds = YES;
    _playBtn.layer.cornerRadius = ALBUMWIGTH/2;
    [_playBtn addTarget:self action:@selector(clickPlayBtn) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_playBtn];
}
#pragma mark -- 点击播放按钮
- (void)clickPlayBtn{
    if (_delegate && [_delegate respondsToSelector:@selector(touchPlayBtn)]) {
        [_delegate touchPlayBtn];
    }
}


@end
