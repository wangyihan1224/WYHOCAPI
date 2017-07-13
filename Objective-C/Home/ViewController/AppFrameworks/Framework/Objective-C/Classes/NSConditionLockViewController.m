//
//  NSConditionLockViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/13.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSConditionLockViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSConditionLockViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSConditionLockViewController

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
        [_titleArray addObject:@"NSConditionLock"];
        [_titleArray addObject:@"Initializing an NSConditionLock Object'"];
        [_titleArray addObject:@"Accessing the Condition"];
        [_titleArray addObject:@"Acquiring and Releasing a Lock"];
        [_titleArray addObject:@"Identifying the Condition Lock"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //NSConditionLock
        NSMutableArray *titlarr = [NSMutableArray new];
        NSConditionLock *lock = [[NSConditionLock alloc]initWithCondition:1];
        WyhModel *model = [WyhModel new];
        model.firstName = @"NSConditionLock";
        model.secondName = @"ns条件锁类定义了一些对象，这些对象的锁可以与特定的、用户定义的条件相关联。使用ns条件锁对象，您可以确保只有在满足特定条件的情况下，线程才能获得锁。一旦它获得了锁并执行了关键部分的代码，线程就可以放弃锁，并将相关的条件设置为新的。条件本身是任意的:您将它们定义为您的应用程序所需要的";
        [titlarr addObject:model];
        
        [_dataArray addObject:titlarr];
        
        //Initializing an NSConditionLock Object
        NSMutableArray *initArr = [NSMutableArray new];
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"- (instancetype)initWithCondition:(NSInteger)condition;";
        model1.secondName = @"初始化一个新分配的ns条件锁对象并设置它的条件。\n例子：NSConditionLock *lock = [[NSConditionLock alloc]initWithCondition:1];";
        [initArr addObject:model1];
        
        [_dataArray addObject:initArr];
        
        //Accessing the Condition
        NSMutableArray *accessArr = [NSMutableArray new];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"@property(readonly) NSInteger condition;";
        model2.secondName = @"与接收方有关的条件。\n例子：NSInteger condition = lock.condition;";
        [accessArr addObject:model2];
        
        [_dataArray addObject:accessArr];
        
        //Acquiring and Releasing a Lock
        NSMutableArray *acquirArr = [NSMutableArray new];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"- (BOOL)lockBeforeDate:(NSDate *)limit;";
        model3.secondName = @"尝试在指定的时间点之前获得一个锁。。\n例子： BOOL isLock = [lock lockBeforeDate:[NSDate date]];";
        [acquirArr addObject:model3];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"- (void)lockWhenCondition:(NSInteger)condition;";
        model4.secondName = @"试图获得锁。\n例子：[lock lockWhenCondition:1];";
        [acquirArr addObject:model4];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"- (BOOL)lockWhenCondition:(NSInteger)condition beforeDate:(NSDate *)limit;";
        model5.secondName = @"试图在指定的时间点之前获得一个锁。\n例子： BOOL islock = [lock lockWhenCondition:1 beforeDate:[NSDate date]];";
        [acquirArr addObject:model5];
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"- (BOOL)tryLock;";
        model6.secondName = @"试图在不考虑接收方条件的情况下获取锁。\n例子： BOOL tryLock = [lock tryLock];";
        [acquirArr addObject:model6];
        
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"- (BOOL)tryLockWhenCondition:(NSInteger)condition;";
        model7.secondName = @"如果接收方的条件等于指定的条件，则尝试获取锁。\n例子： BOOL tryLock = [lock tryLockWhenCondition:1];";
        [acquirArr addObject:model7];
        
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"- (void)unlockWithCondition:(NSInteger)condition;";
        model8.secondName = @"放弃锁，设置接收器的状态。\n例子：  [lock unlockWithCondition:1];";
        [acquirArr addObject:model8];
       
        [_dataArray addObject:acquirArr];
        
        //Identifying the Condition Lock
        NSMutableArray *idenarr = [NSMutableArray new];
        
        WyhModel *model9 = [WyhModel new];
        model9.firstName = @"@property(copy) NSString *name;";
        model9.secondName = @"与接收方相关联的名称。\n例子：NSString *name= lock.name;";
        [idenarr addObject:model9];
        
        [_dataArray addObject:idenarr];
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
