//
//  HotController.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/20.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "HotController.h"

@interface HotController ()

@end

@implementation HotController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
//    view.backgroundColor = [UIColor redColor];
//    [self.view addSubview:view];
    [self.navBar removeFromSuperview];
    self.view.backgroundColor = [UIColor redColor];
    
}
- (IBAction)animtion:(UIButton *)sender {
    TabbarPlayView * playView = [TabbarPlayView sharePlayView];
    [playView.albumImageView startRotating];
}
- (IBAction)stop:(UIButton *)sender {
    TabbarPlayView * playView = [TabbarPlayView sharePlayView];
    [playView.albumImageView stopRotating];
}
- (IBAction)huifu:(UIButton *)sender {
    TabbarPlayView * playView = [TabbarPlayView sharePlayView];
    [playView.albumImageView resumeRotate];
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
