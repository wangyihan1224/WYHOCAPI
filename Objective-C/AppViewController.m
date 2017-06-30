
//
//  AppViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/6/14.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "AppViewController.h"

#import "AppFrameworksViewController.h"
#import "AppServicesViewController.h"
#import "DeveloperToolsViewController.h"
#import "GraphicsAndGamesViewController.h"
#import "MediaAndWebViewController.h"
#import "SystemViewController.h"



static NSString *appCell = @"appCell";
static NSString *appFrameworksViewController = @"AppFrameworksViewController";
static NSString *appServicesViewController = @"AppServicesViewController";
static NSString *developerToolsViewController = @"DeveloperToolsViewController";
static NSString *graphicsAndGamesViewController = @"GraphicsAndGamesViewController";
static NSString *mediaAndWebViewController = @"MediaAndWebViewController";
static NSString *systemViewController = @"SystemViewController";


@interface AppViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong) UITableView *appTableView;
@property(nonatomic,strong)NSMutableArray *dataArray;//数据源
@end


@implementation AppViewController

-(UITableView *)appTableView{
    
    if (!_appTableView) {
        _appTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREENMAINWIDTH, SCREENMAINHEIGHT) style:UITableViewStyleGrouped];
        [_appTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:appCell];
        _appTableView.delegate = self;
        _appTableView.dataSource = self;

    }
    
    return _appTableView;
}

-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        [_dataArray addObject:appFrameworksViewController];
         [_dataArray addObject:appServicesViewController];
         [_dataArray addObject:developerToolsViewController];
         [_dataArray addObject:graphicsAndGamesViewController];
         [_dataArray addObject:mediaAndWebViewController];
         [_dataArray addObject:systemViewController];
    }
    return _dataArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Objective-C学习资料";
    [self.view addSubview:self.appTableView];
}
//多少个分区
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}
//每个分区多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.dataArray.count;
}
//每行的cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:appCell];
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}
//每个cell的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 44;
}

//选择cell后事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *selecTitle = self.dataArray[indexPath.row];
    if ([selecTitle isEqualToString:appFrameworksViewController]) {
        
        AppFrameworksViewController *vc  = [AppFrameworksViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
   
    }else if ([selecTitle isEqualToString:appServicesViewController]){
        AppServicesViewController *vc  = [AppServicesViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:developerToolsViewController]){
        DeveloperToolsViewController *vc  = [DeveloperToolsViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:graphicsAndGamesViewController]){
        GraphicsAndGamesViewController *vc  = [GraphicsAndGamesViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:mediaAndWebViewController]){
        MediaAndWebViewController *vc  = [MediaAndWebViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:systemViewController]){
        SystemViewController *vc  = [SystemViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }
}
//每个分区头的高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 0.001;
}
//每个分区头的view
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
   
    return [UIView new];
    
}
//每个分区底的高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return 0.001;
}
//每个分区底的view
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    
   
    return [UIView new];
}



@end
