//
//  BroadcastController.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/23.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "BroadcastController.h"

@interface BroadcastController ()

@end

@implementation BroadcastController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navBar removeFromSuperview];
    self.view.backgroundColor = [UIColor darkGrayColor];
    
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
