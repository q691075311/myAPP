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
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    _scrollView.contentSize = CGSizeMake(SCREEN_WIDTH * imageCount, SCREEN_HEIGHT);
    [self.view addSubview:_scrollView];
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
