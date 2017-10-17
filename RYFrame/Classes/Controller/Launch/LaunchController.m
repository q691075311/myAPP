//
//  LaunchController.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/16.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "LaunchController.h"
#define imageCount 3
@interface LaunchController ()

@end

@implementation LaunchController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initScorllView];
}
- (void)initScorllView{
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    _scrollView.contentSize = CGSizeMake(SCREEN_WIDTH * imageCount, SCREEN_HEIGHT);
    _scrollView.bounces = NO;
    _scrollView.pagingEnabled = YES;
    [self addScrollViewData];
    [self.view addSubview:_scrollView];
}
- (void)addScrollViewData{
    UIColor * color0 = [UIColor redColor];
    UIColor * color1 = [UIColor blueColor];
    UIColor * color2 = [UIColor brownColor];
    NSArray * arr = @[color0,color1,color2];
    for (int i = 0; i < imageCount; i ++) {
        UIImageView * imageVeiw = [[UIImageView alloc] init];
        imageVeiw.backgroundColor = arr[i];
        imageVeiw.frame = CGRectMake(SCREEN_WIDTH * i, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
        imageVeiw.userInteractionEnabled = YES;
        if (i == imageCount - 1) {
            UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapSelector)];
            [imageVeiw addGestureRecognizer:tap];
        }
        [_scrollView addSubview:imageVeiw];
    }
}
- (void)tapSelector{
    NSLog(@"进入首页");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
