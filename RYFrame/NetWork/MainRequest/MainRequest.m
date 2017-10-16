//
//  MainRequest.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/16.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "MainRequest.h"

@implementation MainRequest

+ (void)mainRequestWithURL:(NSString *)URL withResponse:(RYResponse)RYResponse{
    [[RYBaseRequest shareManager] get_withURL:URL
                                   withParams:nil
                                 withProgress:^(NSProgress *progress) {
                                     
                                 }
                                  withSuccess:^(id responseObject) {
                                      RYResponse(responseObject);
                                  }
                                     withFail:^(NSError *error, NSDictionary *dic) {
                                         
                                     }];
}

@end
