//
//  RYNavBar.h
//  RYFrame
//
//  Created by taobo on 2017/9/12.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol RYNavBarDelegate <NSObject>
//点击邮箱
- (void)touchEmail;
//点击历史
- (void)touchHistoy;
//点击下载
- (void)touchDownLoad;
@end

typedef NS_ENUM(NSInteger,NavBarType){
    NavBarType_Main = 0,
    NavBarType_Normal = 1,
    NavBarType_MyInfo = 2,
    NavBarType_Play = 3,
};

@interface RYNavBar : UIView

/**
 首页信箱
 */
@property (weak, nonatomic) IBOutlet UIButton *emailBtn;

/**
 首页搜索框
 */
@property (weak, nonatomic) IBOutlet UITextField *searchFaild;

/**
 首页历史按钮
 */
@property (weak, nonatomic) IBOutlet UIButton *historyBtn;

/**
 首页下载按钮
 */
@property (weak, nonatomic) IBOutlet UIButton *downLoadBtn;

/**
 导航title
 */
@property (weak, nonatomic) IBOutlet UILabel *title;

/**
 RYNavBar的代理
 */
@property (nonatomic,assign) id <RYNavBarDelegate> delegate;

/**
 分割线
 */
@property (weak, nonatomic) IBOutlet UIView *lineView;

/**
 是否展示分割线  默认为NO
 */
@property (nonatomic,assign) BOOL isShowLineView;
/**
 配置导航栏类型

 @param title 导航栏标题
 @param barType 导航栏类型
 */
- (void)configNavbarWithTitle:(NSString *)title withType:(NavBarType)barType;



@end
