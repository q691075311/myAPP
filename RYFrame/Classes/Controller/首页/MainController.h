//
//  MainController.h
//  RYFrame
//
//  Created by taobo on 2017/9/12.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "RYBaseController.h"
#import "RYNavBar.h"
#import "HotController.h"
#import "SubClassController.h"
#import "FineController.h"
@interface MainController : RYBaseController

/**
 热门控制器
 */
@property (nonatomic,strong) HotController * hotController;

/**
 分类控制器
 */
@property (nonatomic,strong) SubClassController * subClassController;

/**
 精品控制器
 */
@property (nonatomic,strong) FineController * fineController;
/**
 导航栏View
 */
@property (nonatomic,strong) RYNavBar * ryNavBar;

/**
 界面的数据
 */
@property (nonatomic,strong) NSDictionary * ryInfo;

@end
