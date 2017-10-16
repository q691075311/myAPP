//
//  AppDelegate.m
//  RYFrame
//
//  Created by taobo on 17/8/24.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "AppDelegate.h"
#import "MainController.h"
#import "IQKeyboardManager.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //app第一次登陆
    [self app_FirstLaunch];
    //判断网络状态
    [[RYBaseRequest shareManager] judgeNetworkChange];
    //初始化IQKeyboardManager
    [self configIQKeyBoardManager];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}
- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
}

#pragma mark -- app第一次启动
- (void)app_FirstLaunch{
    MainController * mainVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"MainController"];
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:mainVC];
    nav.navigationBarHidden = YES;
    self.window.rootViewController = nav;
}
- (void)configIQKeyBoardManager{
    IQKeyboardManager * keyBoardManager = [IQKeyboardManager sharedManager];
    keyBoardManager.enable = YES;
    keyBoardManager.shouldResignOnTouchOutside = YES; //控制点击背景是否收起键盘
    keyBoardManager.enableAutoToolbar = NO; // 控制是否显示键盘上的工具条
}
@end
