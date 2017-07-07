//
//  NSAutoreleasePoolViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/7.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSAutoreleasePoolViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
#import <GameplayKit/GameplayKit.h>
static NSString *templateCell = @"templateCell";
@interface NSAutoreleasePoolViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSAutoreleasePoolViewController

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
        [_titleArray addObject:@"Managing a Pool"];
        [_titleArray addObject:@"Adding an Object to a Pool"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //Managing a Pool
        NSMutableArray *managingArr = [NSMutableArray new];
       
        
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"- (void)release";
        model1.secondName = @"释放并弹出接收方。\n例子：NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init]; [pool release];(MRC) ";
        [managingArr addObject:model1];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"- (void)drain";
        model2.secondName = @"在一个引用计数的环境中，释放和弹出接收方;在垃圾收集环境中，如果在最后一个集合中分配的内存大于当前阈值，则会触发垃圾收集。\n例子：NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init]; [pool drain];(MRC) ";
        [managingArr addObject:model2];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"- (id)autorelease";
        model3.secondName = @"在一个引用计数的环境中，这个方法引发了一个异常。\n例子：NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init]; id export = [pool autorelease];(MRC) ";
        [managingArr addObject:model3];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"- (id)retain";
        model4.secondName = @"在一个引用计数的环境中，这个方法引发了一个异常。\n例子：NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init]; id export = [pool retain];(MRC) ";
        [managingArr addObject:model4];
        
        [_dataArray addObject:managingArr];
        
        //Adding an Object to a Pool
        NSMutableArray *addArr = [NSMutableArray new];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"+ (void)addObject:(id)anObject;";
        model5.secondName = @"在当前线程中添加一个给定对象到活动的自动释放池。\n例子： [NSAutoreleasePool addObject:@\"1\"];(MRC) ";
        [addArr addObject:model5];
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"- (void)addObject:(id)anObject;";
        model6.secondName = @"在当前线程中添加一个给定对象到活动的自动释放池。\n例子：NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init]; [pool addObject:@\"1\"];(MRC) ";
        [addArr addObject:model6];
        
        [_dataArray addObject:addArr];
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
