//
//  MainController.m
//  RYFrame
//
//  Created by taobo on 2017/9/12.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "MainController.h"
#import "MainRequest.h"
#import "MainTopChooseView.h"


@interface MainController ()<RYBaseRequestDelegate,UIScrollViewDelegate,MainTopChooseViewDelegate>
@property (nonatomic,strong) NSURLSessionDownloadTask * downTask;
@property (nonatomic,strong) MainTopChooseView * topItemView;
@property (nonatomic,strong) UIScrollView * contentScrollView;
@end

@implementation MainController

- (void)viewDidLoad{
    [super viewDidLoad];
    NSLog(@"%@",NSHomeDirectory());
    [self.navBar configNavbarWithTitle:nil withType:NavBarType_Main];
    self.navBar.isShowLineView = YES;
    [self addTopItemView];
    [self initScrollView];
    [self createSubViweController];
}
#pragma mark -- 添加子视图到首页Controller
- (void)createSubViweController{
    UIStoryboard * story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //创建各种Controller
    _hotController = [story instantiateViewControllerWithIdentifier:@"HotController"];
    _subClassController = [story instantiateViewControllerWithIdentifier:@"SubClassController"];
    _fineController = [story instantiateViewControllerWithIdentifier:@"FineController"];
    _liveController = [story instantiateViewControllerWithIdentifier:@"LiveController"];
    _broadcastController = [story instantiateViewControllerWithIdentifier:@"BroadcastController"];
    //初始化View的frame
    _hotController.view.frame = CGRectMake(0, 0, SCREEN_WIDTH, _contentScrollView.hiegth);
    _subClassController.view.frame = CGRectMake(SCREEN_WIDTH, 0, SCREEN_WIDTH, _contentScrollView.hiegth);
    _fineController.view.frame = CGRectMake(SCREEN_WIDTH * 2, 0, SCREEN_WIDTH, _contentScrollView.hiegth);
    _liveController.view.frame = CGRectMake(SCREEN_WIDTH * 3, 0, SCREEN_WIDTH, _contentScrollView.hiegth);
    _broadcastController.view.frame = CGRectMake(SCREEN_WIDTH * 4, 0, SCREEN_WIDTH, _contentScrollView.hiegth);
    //添加子控制器
    [self addChildViewController:_hotController];
    [self addChildViewController:_subClassController];
    [self addChildViewController:_fineController];
    [self addChildViewController:_liveController];
    [self addChildViewController:_broadcastController];
    //添加View
    [_contentScrollView addSubview:_hotController.view];
    [_contentScrollView addSubview:_subClassController.view];
    [_contentScrollView addSubview:_fineController.view];
    [_contentScrollView addSubview:_liveController.view];
    [_contentScrollView addSubview:_broadcastController.view];
}
#pragma mark -- 添加顶部itemView
- (void)addTopItemView{
    _topItemView = [[MainTopChooseView alloc] initWithFrame:CGRectMake(0, TOPBAR_HEIGHT + 44, SCREEN_WIDTH, 43)];
    _topItemView.delegate = self;
    [self.view addSubview:_topItemView];
}
#pragma mark -- 初始化contentScrollView
- (UIScrollView *)contentScrollView{
    if (!_contentScrollView) {
        _contentScrollView = [[UIScrollView alloc] init];
    }
    return _contentScrollView;
}
#pragma mark -- 加载ScrollView
- (void)initScrollView{
    CGFloat hiegth = SCREEN_HEIGHT - 49 - TOPBAR_HEIGHT - 44 - (TABBARHEIGTH) - _topItemView.hiegth;//49是tabbar高度，44是导航栏高度，
    self.contentScrollView.frame = CGRectMake(0, _topItemView.origin_Y+_topItemView.hiegth, SCREEN_WIDTH, hiegth);
    self.contentScrollView.contentSize = CGSizeMake(SCREEN_WIDTH * MainTopItem.count, self.contentScrollView.hiegth);
    self.contentScrollView.pagingEnabled = YES;
    self.contentScrollView.delegate = self;
    [self.view addSubview:self.contentScrollView];
}
#pragma mark -- UIScrollViewDelegate ScrollView减速完成时调用
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    [self topViewAnimationsWithTag:(scrollView.contentOffset.x/SCREEN_WIDTH) + 100];
}
#pragma mark -- 改变topView的动画
- (void)topViewAnimationsWithTag:(NSInteger)tag{
    UIButton * btn = [_topItemView viewWithTag:tag];
    [_topItemView btnClick:btn];
}

#pragma mark -- MainTopChooseViewDelegate
- (void)touchBtn:(UIButton *)btn{
    [self.contentScrollView setContentOffset:CGPointMake(SCREEN_WIDTH * (btn.tag - 100), 0) animated:YES];
}

- (void)getWorkingProgress:(NSProgress *)progress{
    NSLog(@"%@",progress);
}



@end
