//
//  RYNavBar.m
//  RYFrame
//
//  Created by taobo on 2017/9/12.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "RYNavBar.h"

@interface RYNavBar ()

@end
@implementation RYNavBar

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
        RYNavBar * ryView = [[[NSBundle mainBundle] loadNibNamed:@"RYNavBar" owner:self options:nil] lastObject];
        ryView.frame = frame;
        self.autoresizingMask = ryView.autoresizingMask;
        self.alpha = ryView.alpha;
        self.hidden = ryView.hidden;
        ryView.backgroundColor = [UIColor whiteColor];
        return ryView;
    }
    return self;
}
- (void)awakeFromNib{
    [super awakeFromNib];
    self.emailBtn.hidden = YES;
    self.searchFaild.hidden = YES;
    self.historyBtn.hidden = YES;
    self.downLoadBtn.hidden = YES;
    self.title.hidden = YES;
    self.lineView.hidden = YES;
    self.backBtn.hidden = YES;
}
- (void)configNavbarWithTitle:(NSString *)title withType:(NavBarType)barType{
    self.title.text = title;
    switch (barType) {
        case NavBarType_Main:{
            self.emailBtn.hidden = NO;
            self.searchFaild.hidden = NO;
            self.historyBtn.hidden = NO;
            self.downLoadBtn.hidden = NO;
            [self.emailBtn setImage:[UIImage imageNamed:@"email"] forState:UIControlStateNormal];
            [self.historyBtn setImage:[UIImage imageNamed:@"time"] forState:UIControlStateNormal];
            [self.downLoadBtn setImage:[UIImage imageNamed:@"download"] forState:UIControlStateNormal];
            //配置search框
            [self configSearchFaild];
        }
            break;
            
        case NavBarType_Normal:{
            self.emailBtn.hidden = NO;
            self.downLoadBtn.hidden = NO;
            self.title.hidden = NO;
            [self.emailBtn setImage:[UIImage imageNamed:@"email"] forState:UIControlStateNormal];
            [self.downLoadBtn setImage:[UIImage imageNamed:@"navsearch"] forState:UIControlStateNormal];
        }
            break;
            
        case NavBarType_MyInfo:{
            
        }
            break;
            
        case NavBarType_Play:{
            
        }
            break;
        case NavBarType_WebView:{
            self.backBtn.hidden = NO;
            self.title.hidden = NO;
            [self.backBtn setImage:[UIImage imageNamed:@"navBack"] forState:UIControlStateNormal];
        }
            break;
            
            
            
        default:
            break;
    }
}
#pragma mark -- 配置搜索框
- (void)configSearchFaild{
    self.searchFaild.layer.masksToBounds = YES;
    self.searchFaild.layer.cornerRadius = self.searchFaild.bounds.size.height/2;
    UIView * bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 5, 10+13.5, 13.5)];
    UIImageView * leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"search"]];
    leftView.frame = CGRectMake(8, 0, 13.5, 13.5);
    [bgView addSubview:leftView];
    self.searchFaild.leftView = bgView;
    self.searchFaild.leftViewMode = UITextFieldViewModeAlways;
    self.searchFaild.placeholder = @"搜索内容";
}
- (void)setIsShowLineView:(BOOL)isShowLineView{
    self.lineView.hidden = !isShowLineView;
}
#pragma mark -- 点击邮箱
- (IBAction)clickEmail:(UIButton *)sender {
    if (_delegate && [_delegate respondsToSelector:@selector(touchEmail)]) {
        [_delegate touchEmail];
    }
}
#pragma mark -- 点击历史
- (IBAction)clickHistory:(UIButton *)sender {
    if (_delegate && [_delegate respondsToSelector:@selector(touchHistoy)]) {
        [_delegate touchHistoy];
    }
}
#pragma mark -- 点击下载
- (IBAction)clickDownLoad:(UIButton *)sender {
    if (_delegate && [_delegate respondsToSelector:@selector(touchDownLoad)]) {
        [_delegate touchDownLoad];
    }
}

- (IBAction)backBtn:(UIButton *)sender {
    if (_delegate && [_delegate respondsToSelector:@selector(touchBack)]) {
        [_delegate touchBack];
    }
}
@end
