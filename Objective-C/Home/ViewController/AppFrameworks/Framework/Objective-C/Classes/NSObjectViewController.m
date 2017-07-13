//
//  NSObjectViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/12.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSObjectViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSObjectViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSObjectViewController

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
         [_titleArray addObject:@"Initializing a Class"];
        [_titleArray addObject:@"Creating,Copying,and Deallocating Objects"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //Initializing a Class
        NSMutableArray *initArr = [NSMutableArray new];
        
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"+ (void)initialize;";
        model1.secondName = @"在收到第一个消息之前初始化该类。\n例子：[NSObject initialize];";
        [initArr addObject:model1];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"+ (void)load;";
        model2.secondName = @"每当在objective-a中添加类或类别时，就会调用;在加载时实现这个方法来执行类特定的行为。\n例子：[NSObject load];";
        [initArr addObject:model2];
        
        [_dataArray addObject:initArr];
        
        //Creating,Copying,and Deallocating Objects
        NSMutableArray *deallocatArr = [NSMutableArray new];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"+ (instancetype)alloc;";
        model3.secondName = @"返回一个接收类的新实例。\n例子：[NSObject alloc];";
        [deallocatArr addObject:model3];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"+ (instancetype)allocWithZone:(struct _NSZone *)zone;";
        model4.secondName = @"返回一个接收类的新实例。\n例子：[NSObject alloc];";
        [deallocatArr addObject:model4];
        
       
        [_dataArray addObject:deallocatArr];
        
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
