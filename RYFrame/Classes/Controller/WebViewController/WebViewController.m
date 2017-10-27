//
//  WebViewController.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/27.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()<RYWebViewDelegate>
@property (nonatomic,strong) WebViewModel * webModel;//webView的模型
@property (nonatomic,strong) RYWebView * webView;//webView
@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _webModel = self.info[@"webModel"];
    [self.navBar configNavbarWithTitle:@"加载中..." withType:NavBarType_WebView];
    self.navBar.isShowLineView = YES;
    [self addWebView];
}
- (void)addWebView{
    _webView = [[RYWebView alloc] initWithFrame:CGRectMake(0, (TOPBAR_HEIGHT) + 44, SCREEN_WIDTH, MainContentHeigth + 43)];
    _webView.webViewDelegate = self;
    [self loadURL];
    [self.view addSubview:_webView];
}

- (void)loadURL{
    NSString * urlStr = _webModel.URL;
    NSURL * url = [NSURL URLWithString:urlStr];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
}
- (void)touchBack{
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark -- RYWebViewDelegate
- (void)ryWebViewTitle:(NSString *)title{
    [self.navBar configNavbarWithTitle:title withType:NavBarType_WebView];
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
