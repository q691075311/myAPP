//
//  RYPublic.h
//  RYFrame
//
//  Created by taobo on 2017/9/8.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#ifndef RYPublic_h
#define RYPublic_h
//设备类型
#define DEVICE @"iPhone"
//屏幕的宽度
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
//屏幕的高度
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
//判断是否为iPhoneX
#define iPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125,2436), [[UIScreen mainScreen] currentMode].size) : NO)
//获取iPhone X顶部状态栏的高度
#define TOPBAR_HEIGHT [UIApplication sharedApplication].statusBarFrame.size.height
//获取iPhone X的tabbar高度
#define TABBARHEIGTH iPHONE_X == NO ? 0 : 34.0
//首页标题的数组
#define MainTopItem @[@"热门",@"分类",@"精品",@"直播",@"广播"]

#define BaseURL @"http://m.funqu.cn/d/"
#define POST_URL @"phone/product/bannerList"
#define MainURL @"http://mobwsa.ximalaya.com/mobile/discovery/v4/recommend/ts-1508132421726?appid=0&categoryId=-2&channel=ios-b1&code=43_310000_3100&device=iPhone&deviceId=D39FCBD0-206D-4103-831A-19B9D2EC938C&includeActivity=true&includeSpecial=true&network=WIFI&operator=3&scale=2&uid=0&version=6.3.33&xt=1508132421727"



#endif /* RYPublic_h */
