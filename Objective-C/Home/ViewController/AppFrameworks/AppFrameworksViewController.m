//
//  AppFrameworksViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/6/30.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "AppFrameworksViewController.h"
#import "AppKitViewController.h"
#import "FoundationViewController.h"
#import "ObjectiveCViewController.h"
#import "UIKitViewController.h"
#import "WatchKitViewController.h"
static NSString *appKitViewController=@"AppKitViewController";
static NSString *foundationViewController=@"FoundationViewController";
static NSString *objectiveCViewController=@"ObjectiveCViewController";
static NSString *uIKitViewController=@"UIKitViewController";
static NSString *watchKitViewController=@"WatchKitViewController";
static NSString *templateCell = @"templateCell";
@interface AppFrameworksViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@end

@implementation AppFrameworksViewController

-(UITableView *)wyhTable{
    
    if (!_wyhTable) {
        _wyhTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREENMAINWIDTH, SCREENMAINHEIGHT) style:UITableViewStylePlain];
        _wyhTable.delegate = self;
        _wyhTable.dataSource = self;
        _wyhTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_wyhTable registerClass:[UITableViewCell class] forCellReuseIdentifier:templateCell];
        
    }
    return _wyhTable;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        [_dataArray addObject:appKitViewController];
        [_dataArray addObject:foundationViewController];
        [_dataArray addObject:objectiveCViewController];
        [_dataArray addObject:uIKitViewController];
        [_dataArray addObject:watchKitViewController];
    }
    return _dataArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.wyhTable];
    // Do any additional setup after loading the view.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.dataArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:templateCell];
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
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
