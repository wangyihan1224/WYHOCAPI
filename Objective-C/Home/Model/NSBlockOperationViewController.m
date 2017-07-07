//
//  NSBlockOperationViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/7.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSBlockOperationViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSBlockOperationViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSBlockOperationViewController

-(UITableView *)wyhTable{
    
    if (!_wyhTable) {
        _wyhTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREENMAINWIDTH, SCREENMAINHEIGHT) style:UITableViewStylePlain];
        _wyhTable.delegate = self;
        _wyhTable.dataSource = self;
        _wyhTable.sectionIndexBackgroundColor = CLEARCOLOR;
        _wyhTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_wyhTable registerClass:[NSArrayTableViewCell class] forCellReuseIdentifier:templateCell];
        
    }
    return _wyhTable;
}
-(NSMutableArray *)titleArray{
    if (!_titleArray) {
        _titleArray = [NSMutableArray new];
        [_titleArray addObject:@"A"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        NSMutableArray *arr = [NSMutableArray new];
        
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"+ (instancetype)blockOperationWithBlock:(void (^)(void))block;";
        model1.secondName = @"创建并返回一个NSBlockOperation对象并将指定的块添加到它。\n例子：  NSBlockOperation *operation = [NSBlockOperation blockOperationWithBlock:^{\n}]; ";
        [arr addObject:model1];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"- (void)addExecutionBlock:(void (^)(void))block;";
        model2.secondName = @"将指定的块添加到接收方的块列表中以执行。\n例子：  NSBlockOperation *operation = [NSBlockOperation blockOperationWithBlock:^{\n}];\n[operation addExecutionBlock :^{\n}]; ";
        [arr addObject:model2];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"@property(readonly, copy) NSArray<void (^)(void)> *executionBlocks;";
        model3.secondName = @"与接收方相关联的块。\n例子：  NSBlockOperation *operation = [NSBlockOperation blockOperationWithBlock:^{\n}];\nNSArray *arr2 = operation.executionBlocks; ";
        [arr addObject:model3];
    
        
        [_dataArray addObject:arr];
    }
    return _dataArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.wyhTable];
    // Do any additional setup after loading the view.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataArray.count;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSMutableArray *arr = self.dataArray[section];
    return arr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArrayTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:templateCell];
    NSMutableArray *arr = self.dataArray[indexPath.section];
    cell.model = arr[indexPath.row];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSMutableArray *arr = self.dataArray[indexPath.section];
    return [tableView cellHeightForIndexPath:indexPath model:arr[indexPath.row] keyPath:@"model" cellClass:[NSArrayTableViewCell class] contentViewWidth:SCREENMAINWIDTH];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return self.titleArray[section];
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 30;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return 0.1;
}
-(NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    
    return self.titleArray;
}
-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index{
    
    return [self.titleArray indexOfObject:title];
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
