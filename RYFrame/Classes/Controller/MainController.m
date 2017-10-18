//
//  MainController.m
//  RYFrame
//
//  Created by taobo on 2017/9/12.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "MainController.h"
#import "MainRequest.h"

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
- (void)getWorkingProgress:(NSProgress *)progress{
    NSLog(@"%@",progress);
}



@end
