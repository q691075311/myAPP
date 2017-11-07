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
#import "MainTabView.h"
#import "WebViewModel.h"
#import "WebViewController.h"
#import "GuessLikeCell.h"
#import "CellHeaderView.h"
#import "CellFooterView.h"
#import "ExquisitelyCell.h"
#import "TalkShowCell.h"

#define VIEWWIDTH (SCREEN_WIDTH-15-15-5-5)/3
#define VIEWHIEGTH (VIEWWIDTH) + 40
#define ROWSPACING 5

@interface HotController ()<UITableViewDelegate,UITableViewDataSource,MainTabViewDelegate>

@property (nonatomic,strong) NSMutableArray * advArr;//广告的数组
@property (nonatomic,strong) UITableView * tableView;
@property (nonatomic,strong) MainMainBaseClass * mainBase;//首页数据
@property (nonatomic,strong) UIView * tableViewHeaderView;//tableView的头视图
@property (nonatomic,strong) ADScrollView * adView;//广告轮播图
@property (nonatomic,strong) MainTabView * tabBtnView;//tabBtnView
@property (nonatomic,strong) NSMutableArray * sectionHeaderTitleArr;//区头标题

@end

@implementation HotController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navBar removeFromSuperview];
    //请求首页数据
    [self requestMainInfo];
    __weak typeof(self) weakSelf = self;
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [weakSelf requestMainInfo];
        
    }];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
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
- (NSMutableArray *)sectionHeaderTitleArr{
    if (!_sectionHeaderTitleArr) {
        _sectionHeaderTitleArr = [[NSMutableArray alloc] init];
    }
    return _sectionHeaderTitleArr;
}
#pragma mark -- 创建TableViewHeadView
- (void)createTableViewHeadView{
    _tableViewHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 230)];
    _tableViewHeaderView.backgroundColor = [UIColor lightGrayColor];
    self.tableView.tableHeaderView = self.tableViewHeaderView;
}
#pragma mark -- 初始化界面内容
- (void)initContentView{
    self.tableView.frame = CGRectMake(0, 0, SCREEN_WIDTH, MainContentHeigth);
    self.tableView.backgroundColor = [UIColor ry_colorWithHexString:@"#f3f4f5"];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self createTableViewHeadView];
    [self.view addSubview:self.tableView];
}
#pragma mark -- 初始化区头标题
- (void)configSectionHeaderTitleArr{
    [self.sectionHeaderTitleArr removeAllObjects];
    [self.sectionHeaderTitleArr addObject:@"猜你喜欢"];
    for (int i = 0; i<_mainBase.list.count; i ++) {
        MainList * item = _mainBase.list[i];
        if (item.title) {
            [self.sectionHeaderTitleArr addObject:item.title];
        }
    }
}
#pragma mark -- 添加广告栏
- (void)addADscrollerView{
    //取出广告数据
    MainList * mainList = _mainBase.list[0];
    NSArray * arr = mainList.list;
    NSDictionary * dic = arr[0];
    NSArray * erArr = dic[@"data"];
    for (NSDictionary * advDic in erArr) {
        MainData * adv = [MainData modelObjectWithDictionary:advDic];
        [self.advArr addObject:adv];
    }
    _adView = [[ADScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 150) withADArr:self.advArr];
    [self.tableViewHeaderView addSubview:_adView];
    //点击广告图片的方法
    _adView.clickItemOperationBlock = ^(NSInteger currentIndex) {
        
    };
}
#pragma mark -- 添加头视图tabView
- (void)addTabView{
    //取出Btn数据
    MainList * mainList = _mainBase.list[1];
    MainTabView * tabBtnView = [[MainTabView alloc] initWithFrame:CGRectMake(0, _adView.origin_Y + _adView.hiegth, SCREEN_WIDTH, 80) withBtnData:mainList];
    tabBtnView.delegate = self;
    [self.tableViewHeaderView addSubview:tabBtnView];
}
#pragma mark -- MainTabViewDelegate 点击头视图Btn的方法
- (void)touchMainTabBtnWithIndex:(NSInteger)index{
    MainList * mainList = _mainBase.list[1];
    NSArray * arr = mainList.list;
    NSDictionary *dic = arr[index-100];
    MainList * btnList = [MainList modelObjectWithDictionary:dic];
    //添加H5
    if ([btnList.contentType isEqualToString:@"html5"]) {
        WebViewModel * webModel = [[WebViewModel alloc] init];
        webModel.URL = btnList.url;
        [self pushToController:@"WebViewController"
                 withStoryBord:@"Main"
                          from:self
                      withInfo:@{@"webModel":webModel}];
    }
    
}
#pragma mark -- UITableViewDataSource
//分区的区数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    return self.sectionHeaderTitleArr.count;
    return 9;
}
//row的个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }else if (section == 1 || section == 8){
        return 1;
    }else if (section == 2||section == 3||section == 4||section == 5||section == 6||section == 7) {
        NSInteger index;
        if (section == 4||section == 5||section == 6||section == 7) {
            index = section + 3;
        }else{
            index = section + 2;
        }
        MainList * mainList = self.mainBase.list[index];
        NSArray * arr = mainList.list;
        return arr.count;
    }
    return 0;
}
//配置cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        //猜你喜欢0
        static NSString * identfier = @"GuessLikeCell";
        GuessLikeCell * cell = [tableView dequeueReusableCellWithIdentifier:identfier];
        if (!cell) {
            cell = [[GuessLikeCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identfier];
        }
        MainList * likeList = self.mainBase.list[2];
        cell.likeList = likeList;
        return cell;
    }else if (indexPath.section == 1 || indexPath.section == 8){
        //精品1  音乐好时光8
        static NSString * identifier = @"ExquisitelyCell";
        ExquisitelyCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if (!cell) {
            cell = [[ExquisitelyCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        }
        MainList * exquisitely;
        if (indexPath.section == 1) {
            exquisitely = self.mainBase.list[3];
        }else if (indexPath.section == 8){
            exquisitely = self.mainBase.list[12];
        }
        cell.exquisitelyList = exquisitely;
        return cell;
    }else if(indexPath.section == 2||indexPath.section == 3||indexPath.section == 4||indexPath.section == 5||indexPath.section == 6||indexPath.section == 7){
        //相声评书2,IT科技3,精品听单4,最热有声书5，历史6，综艺娱乐7
        static NSString * identifier = @"TalkShowCell";
        TalkShowCell * cell = (TalkShowCell *)[tableView dequeueReusableHeaderFooterViewWithIdentifier:identifier];
        if (!cell) {
            cell = [[[NSBundle mainBundle] loadNibNamed:identifier owner:self options:nil] lastObject];
        }
        NSInteger index;
        if (indexPath.section == 4 || indexPath.section == 5 || indexPath.section == 6 || indexPath.section == 7) {
            index = indexPath.section + 3;
        }else{
            index = indexPath.section + 2;
        }
        MainList * talkShow = self.mainBase.list[index];
        NSArray * arr = talkShow.list;
        NSDictionary * dic = arr[indexPath.row];
        MainList * item = [MainList modelObjectWithDictionary:dic];
        if (indexPath.section == 4) {
            cell.listenList = item;
        }else{
            cell.talkShowData = item;
        }
        return cell;
    }else{
        
        
    }
    return nil;
}
//cell的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return (VIEWHIEGTH)*2+ROWSPACING;
    }else if (indexPath.section == 1 || indexPath.section == 8){
        return (VIEWHIEGTH+20);
    }else if (indexPath.section == 2 || indexPath.section == 3 || indexPath.section == 4|| indexPath.section == 5|| indexPath.section == 6|| indexPath.section == 7){
        return 100;
    }
    return 50;
}
//设置区头的View
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    CellHeaderView * headView = [[CellHeaderView alloc] init];
    headView.titleLabel.text = self.sectionHeaderTitleArr[section];
    return headView;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 50;
}
//设置区尾的View
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    CellFooterView * view = [[CellFooterView alloc] init];
    return view;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 50;
}
//点击cell的方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
//设置区头和区尾不悬浮
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat sectionHeaderHeight = 50;
    CGFloat sectionFooterHeight = 50;
    CGFloat offsetY = scrollView.contentOffset.y;
    if (offsetY >= 0 && offsetY <= sectionHeaderHeight)
    {
        scrollView.contentInset = UIEdgeInsetsMake(-offsetY, 0, -sectionFooterHeight, 0);
    }else if (offsetY >= sectionHeaderHeight && offsetY <= scrollView.contentSize.height - scrollView.frame.size.height - sectionFooterHeight)
    {
        scrollView.contentInset = UIEdgeInsetsMake(-sectionHeaderHeight, 0, -sectionFooterHeight, 0);
    }else if (offsetY >= scrollView.contentSize.height - scrollView.frame.size.height - sectionFooterHeight && offsetY <= scrollView.contentSize.height - scrollView.frame.size.height)
    {
        scrollView.contentInset = UIEdgeInsetsMake(-offsetY, 0, -(scrollView.contentSize.height - scrollView.frame.size.height - sectionFooterHeight), 0);
    }
}
#pragma mark -- 请求首页所有信息
- (void)requestMainInfo{
    [MainRequest mainRequestWithURL:MainURL withResponse:^(id response) {
        _mainBase = [MainMainBaseClass modelObjectWithDictionary:response];
        //配置区头title数组
        [self configSectionHeaderTitleArr];
        //初始化tableView
        [self initContentView];
        //添加广告图
        [self addADscrollerView];
        //添加头视图BtnView
        [self addTabView];
        //刷新tableView
        [self.tableView reloadData];
        [self.tableView.mj_header endRefreshing];
    }];
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
