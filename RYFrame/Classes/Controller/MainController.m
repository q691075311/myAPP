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
#import "TestController.h"
@interface MainController ()<RYBaseRequestDelegate>
@property (nonatomic,strong) NSURLSessionDownloadTask * downTask;

@end

@implementation MainController

- (void)viewDidLoad{
    [super viewDidLoad];
    NSLog(@"%@",NSHomeDirectory());
    NSURL *documentsDirectoryURL = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
    NSLog(@"%@",documentsDirectoryURL);
    [MainRequest mainRequestWithURL:MainURL withResponse:^(id response) {
//        NSLog(@"%@",response);
    }];
    NSLog(@"%f",TABBARHEIGTH);
    if (iPHONE_X) {
        NSLog(@"是iPhone x");
    }else{
        NSLog(@"不是iPhone x");
    }
    
    NSLog(@"000000------%f", 100 - TABBARHEIGTH);
}
- (IBAction)changeImage:(UIButton *)sender {
//    TabbarPlayView * view = [TabbarPlayView sharePlayView];
//    view.playBtn.hidden = YES;
    UIStoryboard * story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    TestController * vc = [story instantiateViewControllerWithIdentifier:@"TestController"];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
    
}
- (void)getWorkingProgress:(NSProgress *)progress{
    NSLog(@"%@",progress);
}



@end
