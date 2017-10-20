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
    NSLog(@"%@",NSHomeDirectory());
    [self.navBar configNavbarWithTitle:nil withType:NavBarType_Main];
    self.navBar.isShowLineView = YES;
    [self addTopItemView];
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
- (void)initScrollView{
    self.contentScrollView.frame = CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)
}


- (IBAction)changeImage:(UIButton *)sender {
//    UIButton * btn = [_topItemView viewWithTag:3];
//    [_topItemView btnClick:btn];
}
- (void)getWorkingProgress:(NSProgress *)progress{
    NSLog(@"%@",progress);
}



@end
