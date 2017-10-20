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


@interface MainController ()<RYBaseRequestDelegate>
@property (nonatomic,strong) NSURLSessionDownloadTask * downTask;
@property (nonatomic,strong) MainTopChooseView * topItemView;
@property (nonatomic,strong) UIScrollView * contentScrollView;
@end

@implementation MainController

- (void)viewDidLoad{
    [super viewDidLoad];
    NSLog(@"----%f",SCREEN_HEIGHT - 49 - TOPBAR_HEIGHT - 44 - (TABBARHEIGTH));    NSLog(@"%@",NSHomeDirectory());
    [self.navBar configNavbarWithTitle:nil withType:NavBarType_Main];
    self.navBar.isShowLineView = YES;
    [self addTopItemView];
    [self initScrollView];
    [self createSubViweController];
}
- (void)createSubViweController{
    UIStoryboard * story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    _hotController = [story instantiateViewControllerWithIdentifier:@"HotController"];
    _subClassController = [story instantiateViewControllerWithIdentifier:@"SubClassController"];
    _fineController = [story instantiateViewControllerWithIdentifier:@"FineController"];
    [self addChildViewController:_hotController];
    [self addChildViewController:_subClassController];
    [self addChildViewController:_fineController];
    _hotController.view.frame = CGRectMake(0, 0, SCREEN_WIDTH, _contentScrollView.hiegth);
    _subClassController.view.frame = CGRectMake(SCREEN_WIDTH, 0, SCREEN_WIDTH, _contentScrollView.hiegth);
    _fineController.view.frame = CGRectMake(SCREEN_WIDTH * 2, 0, SCREEN_WIDTH, _contentScrollView.hiegth);
    [_contentScrollView addSubview:_hotController.view];
    [_contentScrollView addSubview:_subClassController.view];
    [_contentScrollView addSubview:_fineController.view];
}
#pragma mark -- 添加顶部itemView
- (void)addTopItemView{
    _topItemView = [[MainTopChooseView alloc] initWithFrame:CGRectMake(0, TOPBAR_HEIGHT + 44, SCREEN_WIDTH, 43)];
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
    [self.view addSubview:self.contentScrollView];
}


- (IBAction)changeImage:(UIButton *)sender {
//    UIButton * btn = [_topItemView viewWithTag:3];
//    [_topItemView btnClick:btn];
}
- (void)getWorkingProgress:(NSProgress *)progress{
    NSLog(@"%@",progress);
}



@end
