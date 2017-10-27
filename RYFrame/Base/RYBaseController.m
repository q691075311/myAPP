//
//  RYBaseController.m
//  RYFrame
//
//  Created by taobo on 2017/9/12.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "RYBaseController.h"

@interface RYBaseController ()<RYNavBarDelegate>

@end

@implementation RYBaseController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.navBar = [[RYNavBar alloc] initWithFrame:CGRectMake(0, TOPBAR_HEIGHT, SCREEN_WIDTH, 44)];
    self.navBar.delegate = self;
    [self.view addSubview:self.navBar];
}
#pragma mark -- 设置状态栏的颜色
- (void)setStatusBarBackgroundColor:(UIColor *)color{
    UIView *statusBar = [[[UIApplication sharedApplication] valueForKey:@"statusBarWindow"] valueForKey:@"statusBar"];
    if ([statusBar respondsToSelector:@selector(setBackgroundColor:)]) {
        statusBar.backgroundColor = color;
    }
}
- (void)pushToController:(NSString *)controller
           withStoryBord:(NSString *)storyName
                    from:(UIViewController *)from
                withInfo:(NSDictionary *)info{
    UIStoryboard * storyBoard = [UIStoryboard storyboardWithName:storyName bundle:nil];
    RYBaseController * VC = [storyBoard instantiateViewControllerWithIdentifier:controller];
    VC.info = info;
    [from .navigationController pushViewController:VC animated:YES];
}
#pragma mark -- RYNavBarDelegate
//点击邮箱
- (void)touchEmail{
    NSLog(@"touchEmail");
}
//点击历史
- (void)touchHistoy{
    NSLog(@"touchHistoy");
}
//点击下载
- (void)touchDownLoad{
    NSLog(@"touchDownLoad");
}
- (void)touchBack{
    NSLog(@"touchBack");
}
@end
