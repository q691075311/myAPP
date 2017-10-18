//
//  TabBarController.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/17.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "TabBarController.h"
#import "MainController.h"
#import "MeListenController.h"
#import "FindController.h"
#import "LoginController.h"
#import "TabbarPlayView.h"
@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置tabbar的shadow
    [self.tabBar setShadowImage:[UIImage imageNamed:@"tabbarshadow"]];
    [self.tabBar setBackgroundImage:[[UIImage alloc]init]];
    //设置tabbar的背景颜色
    [[UITabBar appearance] setBarTintColor:[UIColor whiteColor]];
    [UITabBar appearance].translucent = NO;
    [self configTabbar];
}
- (void)viewWillLayoutSubviews{
    NSLog(@"viewWillLayoutSubviews");
    [self addTabbarPlayView];
}
#pragma mark -- 添加tabbar的播放View
- (void)addTabbarPlayView{
    TabbarPlayView * playView = [TabbarPlayView sharePlayView];
    [playView show];
}
#pragma mark -- 配置tabbar
- (void)configTabbar{
    UIWindow * window = [[[UIApplication sharedApplication] delegate] window];
    window.backgroundColor = [UIColor whiteColor];
    //获取Storyboard
    UIStoryboard * mainsb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UIStoryboard * meListen = [UIStoryboard storyboardWithName:@"MeListen" bundle:[NSBundle mainBundle]];
    UIStoryboard * find = [UIStoryboard storyboardWithName:@"Find" bundle:[NSBundle mainBundle]];
    UIStoryboard * login = [UIStoryboard storyboardWithName:@"Login" bundle:[NSBundle mainBundle]];
    //创首页选视图
    MainController * mainVC = [mainsb instantiateViewControllerWithIdentifier:@"MainController"];
    UINavigationController * mainNav = [[UINavigationController alloc] initWithRootViewController:mainVC];
    [self setTabBarItemPropertyWithController:mainVC
                                    withImage:[UIImage imageNamed:@"main"]
                            withSelecterImage:[UIImage imageNamed:@"mainSelect"]];
    
    
    //创建我听选视图
    MeListenController * meListenVC = [meListen instantiateViewControllerWithIdentifier:@"MeListenController"];
    UINavigationController * meListenNav = [[UINavigationController alloc] initWithRootViewController:meListenVC];
    [self setTabBarItemPropertyWithController:meListenVC
                                    withImage:[UIImage imageNamed:@"melisten"]
                            withSelecterImage:[UIImage imageNamed:@"melistenselect"]];
    
    //创建空白选视图
    MeListenController * meListenVC1 = [meListen instantiateViewControllerWithIdentifier:@"MeListenController"];
    UINavigationController * meListenNav1 = [[UINavigationController alloc] initWithRootViewController:meListenVC1];
    [self setTabBarItemPropertyWithController:meListenVC1
                                    withImage:nil
                            withSelecterImage:nil];
    
    //创建发现的视图
    FindController * findVC = [find instantiateViewControllerWithIdentifier:@"FindController"];
    UINavigationController * findNav = [[UINavigationController alloc] initWithRootViewController:findVC];
    [self setTabBarItemPropertyWithController:findVC
                                    withImage:[UIImage imageNamed:@"find"]
                            withSelecterImage:[UIImage imageNamed:@"findselect"]];
    
    //创建登录的视图
    LoginController * loginVC = [login instantiateViewControllerWithIdentifier:@"LoginController"];
    UINavigationController * loginNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    [self setTabBarItemPropertyWithController:loginVC
                                    withImage:[UIImage imageNamed:@"Login"]
                            withSelecterImage:[UIImage imageNamed:@"Loginselect"]];
    //添加控制器
    [self addChildViewController:mainNav];
    [self addChildViewController:meListenNav];
    [self addChildViewController:meListenNav1];
    [self addChildViewController:findNav];
    [self addChildViewController:loginNav];
    window.rootViewController = self;
    
}
#pragma mark -- 配置图片
- (void)setTabBarItemPropertyWithController:(UIViewController *)viewController withImage:(UIImage *)image withSelecterImage:(UIImage *)selecterImage{
    //设置选中图片
    viewController.tabBarItem.selectedImage = [selecterImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //设置默认图片
    viewController.tabBarItem.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //设置tabBarItem图片的位置   上 左 下 右
    viewController.tabBarItem.imageInsets = UIEdgeInsetsMake(0, 0, -12, 0);
    viewController.tabBarController.view.backgroundColor = [UIColor blueColor];
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
