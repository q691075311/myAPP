//
//  TabBarController.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/17.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBar.backgroundColor = [UIColor clearColor];
    //设置tabar字体大小颜色
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor], NSForegroundColorAttributeName, [UIFont systemFontOfSize:10],NSFontAttributeName,nil] forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor], NSForegroundColorAttributeName, [UIFont systemFontOfSize:10],NSFontAttributeName,nil] forState:UIControlStateSelected];
    [self configTabbar];
}

- (void)configTabbar{
    UIWindow * window = [[[UIApplication sharedApplication] delegate] window];
    window.backgroundColor = [UIColor whiteColor];
    //获取Storyboard
    UIStoryboard * mainsb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UIStoryboard * classsb = [UIStoryboard storyboardWithName:@"class" bundle:[NSBundle mainBundle]];
    UIStoryboard * usersb = [UIStoryboard storyboardWithName:@"User" bundle:[NSBundle mainBundle]];
    //创建精选视图
    ViewController * mainVC = [mainsb instantiateViewControllerWithIdentifier:@"ViewController"];
    UINavigationController * mainNav = [[UINavigationController alloc] initWithRootViewController:mainVC];
    mainVC.tabBarItem.title = @"精选";
    [Tool setTabBarItemPropertyWithController:mainVC
                                    withImage:[UIImage imageNamed:@"mainnotselecter"]
                            withSelecterImage:[UIImage imageNamed:@"mainselecter"]];
    //创建分类的视图
    ClassController * classVC = [classsb instantiateViewControllerWithIdentifier:@"ClassController"];
    UINavigationController * classNav = [[UINavigationController alloc] initWithRootViewController:classVC];
    classVC.tabBarItem.title=@"分类";
    [Tool setTabBarItemPropertyWithController:classVC
                                    withImage:[UIImage imageNamed:@"classnotselecter"]
                            withSelecterImage:[UIImage imageNamed:@"classselecter"]];
    //创建个人中心的视图
    UserInfoController * userVC = [usersb instantiateViewControllerWithIdentifier:@"UserInfoController"];
    UINavigationController * userNav = [[UINavigationController alloc] initWithRootViewController:userVC];
    userVC.tabBarItem.title=@"我";
    [Tool setTabBarItemPropertyWithController:userVC
                                    withImage:[UIImage imageNamed:@"usernotselecter"]
                            withSelecterImage:[UIImage imageNamed:@"userselecter"]];
    
    [tb addChildViewController:mainNav];
    [tb addChildViewController:classNav];
    [tb addChildViewController:userNav];
    window.rootViewController = tb;
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
