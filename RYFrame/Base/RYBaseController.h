//
//  RYBaseController.h
//  RYFrame
//
//  Created by taobo on 2017/9/12.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RYNavBar.h"
@interface RYBaseController : UIViewController
/**
 *  存储界面的值
 */
@property (nonatomic,strong) NSDictionary * info;

/**
 *  导航栏的View
 */
@property (nonatomic,strong) RYNavBar * navBar;

/**
 设置状态栏的颜色

 @param color 
 */
- (void)setStatusBarBackgroundColor:(UIColor *)color;

/**
 跳转页面

 @param controller 跳转到的页面
 @param storyBord storyBord
 @param from self
 @param touchEmail info
 */
- (void)pushToController:(NSString *)controller
           withStoryBord:(NSString *)storyBord
                    from:(UIViewController *)from
                withInfo:(NSDictionary *)info;

/**
 RYNavBarDelegate
 */
- (void)touchEmail;
- (void)touchHistoy;
- (void)touchDownLoad;
- (void)touchBack;
@end
