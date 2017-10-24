//
//  HotController.m
//  RYFrame
//
//  Created by 陶博 on 2017/10/20.
//  Copyright © 2017年 rongyun. All rights reserved.
//

#import "HotController.h"
#import "MainRequest.h"
#import "ADScrollView.h"
@interface HotController ()

/**
 广告的数组
 */
@property (nonatomic,strong) NSMutableArray * advArr;
@property (nonatomic,strong) NSMutableArray * imageArr;
@property (nonatomic,strong)UITableView * tableView;

@end

@implementation HotController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navBar removeFromSuperview];
    [self initContentView];
}
- (NSArray *)advArr{
    if (!_advArr) {
        _advArr = [[NSMutableArray alloc] init];
    }
    return _advArr;
}
- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
    }
    return _tableView;
}
#pragma mark -- 初始化界面内容
- (void)initContentView{
    self.tableView.frame = CGRectMake(0, 0, SCREEN_WIDTH, MainContentHeigth);
    self.tableView.backgroundColor = [UIColor darkGrayColor];
    [self.view addSubview:self.tableView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [MainRequest mainRequestWithURL:MainURL withResponse:^(id response) {
        MainMainBaseClass * mainBase = [MainMainBaseClass modelObjectWithDictionary:response];
        MainList * mainList = mainBase.list[0];
        NSArray * arr = mainList.list;
        NSDictionary * dic = arr[0];
        NSArray * erArr = dic[@"data"];
        for (NSDictionary * advDic in erArr) {
            MainData * adv = [MainData modelObjectWithDictionary:advDic];
            [self.advArr addObject:adv];
        }
        [self addADscrollerView];
    }];
}
#pragma mark -- 添加广告栏
- (void)addADscrollerView{
    ADScrollView * adView = [[ADScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 150) withADArr:self.advArr];
    self.tableView.tableHeaderView = adView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
