//
//  MainController.m
//  RYFrame
//
//  Created by taobo on 2017/9/12.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "MainController.h"
#import "MainRequest.h"
#import "TabbarPlayView.h"
#import "TabBarController.h"
#import "LoginController.h"
#import "TestController.h"
@interface MainController ()<RYBaseRequestDelegate>
@property (nonatomic,strong) NSURLSessionDownloadTask * downTask;

@end

@implementation MainController

- (void)viewDidLoad{
    [super viewDidLoad];
    NSLog(@"%@",NSHomeDirectory());
//    NSURL *documentsDirectoryURL = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
//    NSLog(@"%@",documentsDirectoryURL);
//    [MainRequest mainRequestWithURL:MainURL withResponse:^(id response) {
//
//    }];
    
    [self.navBar configNavbarWithTitle:nil withType:NavBarType_Main];
    self.navBar.isShowLineView = YES;
    
}
- (IBAction)changeImage:(UIButton *)sender {
//    TabbarPlayView * view = [TabbarPlayView sharePlayView];
//    view.playBtn.hidden = YES;
//    UIStoryboard * story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    TestController * vc = [story instantiateViewControllerWithIdentifier:@"TestController"];
//    vc.hidesBottomBarWhenPushed = YES;
//    [self.navigationController pushViewController:vc animated:YES];
//    [TabBarController changeMyTabbarImageWithLogin:NO];
//    UIStoryboard * story = [UIStoryboard storyboardWithName:@"Login" bundle:nil];
//    LoginController * loginVC = [story instantiateViewControllerWithIdentifier:@"LoginController"];
//    TabBarController * tabbar = [[TabBarController alloc] init];
//    [tabbar setTabBarItemPropertyWithController:loginVC withImage:nil withSelecterImage:nil];
//    tabbar.loginImage = [UIImage imageNamed:@"my"];
    
    
}
- (void)getWorkingProgress:(NSProgress *)progress{
    NSLog(@"%@",progress);
}



@end
