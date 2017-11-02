//
//  CellFooterView.h
//  RYFrame
//
//  Created by 陶博 on 2017/10/30.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellFooterView : UIView

/**
 刷新的image
 */
@property (weak, nonatomic) IBOutlet RYImageView *refreshImage;

- (instancetype)init;

@end
