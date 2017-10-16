//
//  MainRequest.h
//  RYFrame
//
//  Created by 陶博 on 2017/10/16.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^RYResponse)(id response);

@interface MainRequest : NSObject

/**
 请求首页数据

 @param URL URL
 */
+ (void)mainRequestWithURL:(NSString *)URL withResponse:(RYResponse)RYResponse;

@end
