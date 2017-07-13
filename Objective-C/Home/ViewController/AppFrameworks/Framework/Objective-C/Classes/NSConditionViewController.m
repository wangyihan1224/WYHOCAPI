//
//  NSConditionViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/13.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSConditionViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSConditionViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSConditionViewController

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
        [_titleArray addObject:@"NSCondition"];
        [_titleArray addObject:@"Waiting for the Lock"];
        [_titleArray addObject:@"Signaling Waiting Threads"];
        [_titleArray addObject:@"Identifying the Condition"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //NSCondition
        NSMutableArray *titlarr = [NSMutableArray new];
        
        WyhModel *model = [WyhModel new];
        model.firstName = @"NSCondition";
        model.secondName = @"nsclass类实现了一个条件变量，它的语义遵循用于posix样式条件的语义。条件对象在给定线程中充当锁和检查点。当它测试条件并执行由条件触发的任务时，锁保护您的代码。检查点行为要求在线程执行其任务之前，条件是正确的。虽然条件不是真的，但是线程阻塞了。它仍然被阻塞，直到另一个线程发出条件对象的信号";
        [titlarr addObject:model];
        
        [_dataArray addObject:titlarr];
        
         NSCondition *condition = [NSCondition new];
        //Waiting for the Lock
        NSMutableArray *waitArr = [NSMutableArray new];
        
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"- (void)wait;";
        model1.secondName = @"阻塞当前线程，直到条件被释放。\n例子： NSCondition *condition = [NSCondition new];\n[condition wait];";
        [waitArr addObject:model1];
       
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"- (BOOL)waitUntilDate:(NSDate *)limit;";
        model2.secondName = @"阻塞当前线程，直到条件被通知或指定的时间限制到达。。\n例子：BOOL iswait = [condition waitUntilDate:[NSDate date]];";
        [waitArr addObject:model2];
        
        [_dataArray addObject:waitArr];
        
        //Signaling Waiting Threads
        NSMutableArray *signalArr = [NSMutableArray new];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"- (void)signal;";
        model3.secondName = @"发出信号，唤醒一个正在等待的线程。\n例子：[condition signal];";
        [signalArr addObject:model3];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"- (void)broadcast;";
        model4.secondName = @"发出信号，唤醒所有正在等待的线程。\n例子：[condition broadcast];";
        [signalArr addObject:model4];
        
        [_dataArray addObject:signalArr];
        
        //Identifying the Condition
        NSMutableArray *identifyArr = [NSMutableArray new];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"@property(copy) NSString *name;";
        model5.secondName = @"条件的名称。\n例子：NSString *na= condition.name;";
        [identifyArr addObject:model5];
        
        [_dataArray addObject:identifyArr];
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
