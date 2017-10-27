//
//  RYWebView.h
//  RYFrame
//
//  Created by 陶博 on 2017/10/27.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RYWebViewDelegate <NSObject>

- (void)ryWebViewTitle:(NSString *)title;

@end

@interface RYWebView : UIWebView
@property (nonatomic,assign) id <RYWebViewDelegate> webViewDelegate;


@end
