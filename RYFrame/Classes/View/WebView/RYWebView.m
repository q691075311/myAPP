//
//  RYWebView.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/27.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "RYWebView.h"

@interface RYWebView () <UIWebViewDelegate>

@end

@implementation RYWebView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.delegate = self;
        [self configWebView];
    }
    return self;
}
- (void)configWebView{
    self.backgroundColor = [UIColor lightGrayColor];
}
#pragma mark -- UIWebViewDelegate  代理
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    NSString * titleStr = [webView stringByEvaluatingJavaScriptFromString:@"document.title"];
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(ryWebViewTitle:)]) {
        [_webViewDelegate ryWebViewTitle:titleStr];
    }
}


@end
