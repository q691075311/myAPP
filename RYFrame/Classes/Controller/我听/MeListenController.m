//
//  MeListenController.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/17.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "MeListenController.h"

@interface MeListenController ()

@end

@implementation MeListenController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"-----%d",self.navBar.hidden);
    [self.navBar configNavbarWithTitle:@"我听" withType:NavBarType_Normal];
    self.navBar.isShowLineView = YES;
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
