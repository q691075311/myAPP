//
//  WebViewModel.h
//  RYFrame
//
//  Created by 陶博 on 2017/10/27.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WebViewModel : NSObject

/**
 加载的url
 */
@property (nonatomic,copy) NSString * URL;

/**
 页面的title
 */
@property (nonatomic,copy) NSString * title;

@end
