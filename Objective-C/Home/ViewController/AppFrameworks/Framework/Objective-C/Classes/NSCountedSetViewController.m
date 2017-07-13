//
//  NSCountedSetViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/13.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSCountedSetViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSCountedSetViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSCountedSetViewController

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
        [_titleArray addObject:@"NSCountedSet"];
        [_titleArray addObject:@"Initializing a Counted Set"];
        [_titleArray addObject:@"Adding and Removing Entries"];
        [_titleArray addObject:@"Combining and Recombining Sets"];
        [_titleArray addObject:@"Examining a Counted Set"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //NSCountedSet
        NSMutableArray *titlarr = [NSMutableArray new];
        NSArray *arr = @[@1];
        NSCountedSet *set = [[NSCountedSet alloc]initWithArray:arr];
        WyhModel *model = [WyhModel new];
        model.firstName = @"NSCountedSet";
        model.secondName = @"NSCountedSet类向一个可变的、无序的不同对象集合声明了编程接口。一个计数的集合也被称为一个袋子";
        [titlarr addObject:model];
        
        [_dataArray addObject:titlarr];
        
        //Initializing a Counted Set
        NSMutableArray *initArr = [NSMutableArray new];
        
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"- (instancetype)initWithArray:(NSArray<ObjectType> *)array;";
        model1.secondName = @"返回一个被给定数组的内容初始化的计数集对象。\n例子：   NSArray *arr = @[@1];\nNSCountedSet *set = [[NSCountedSet alloc]initWithArray:arr];";
        [initArr addObject:model1];
     
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"- (instancetype)initWithSet:(NSSet<ObjectType> *)set;";
        model2.secondName = @"返回一个被给定集合的内容初始化的计数集对象。\n例子：  NSSet *set2 = [NSSet setWithObject:@1];\nNSCountedSet *set3 = [[NSCountedSet alloc]initWithSet:set2];";
        [initArr addObject:model2];
      
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"- (instancetype)initWithCapacity:(NSUInteger)numItems;";
        model3.secondName = @"返回一个带有足够内存的计数集对象，以保存给定数量的对象。\n例子： NSCountedSet *set2 = [[NSCountedSet alloc]initWithCapacity:1];";
        [initArr addObject:model3];
       
        [_dataArray addObject:initArr];
        
        //Adding and Removing Entries
        NSMutableArray *addArr = [NSMutableArray new];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"- (void)addObject:(ObjectType)object;";
        model4.secondName = @"将给定对象添加到集合中。\n例子：[set addObject:@3];";
        [addArr addObject:model4];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"- (void)removeObject:(ObjectType)object;";
        model5.secondName = @"从集合中删除给定的对象。。\n例子：[set removeObject:@3];";
        [addArr addObject:model5];
        
        [_dataArray addObject:addArr];
        
        //Combining and Recombining Sets
        NSMutableArray *combArr = [NSMutableArray new];
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"- (void)unionSet:(NSSet *)otherSet";
        model6.secondName = @"将另一个给定集合中的每个对象添加到接收集，如果不存在。\n例子： NSSet *set2 = [NSSet setWithObject:@3];\n[set unionSet:set2];";
        [combArr addObject:model6];
        
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"- (void)minusSet:(NSSet *)otherSet";
        model7.secondName = @"如果存在，则从接收集合中删除另一个给定集合中的每个对象。\n例子： NSSet *set2 = [NSSet setWithObject:@3];\n[set minusSet:set2];";
        [combArr addObject:model7];
        
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"- (void)intersectSet:(NSSet *)otherSet";
        model8.secondName = @"从接收集合中移除每个对象不是另一个给定集合的成员。\n例子： NSSet *set2 = [NSSet setWithObject:@3];\n[set intersectSet:set2];";
        [combArr addObject:model8];
        
        [_dataArray addObject:combArr];
        
        //Examining a Counted Set
        NSMutableArray *examiniArr = [NSMutableArray new];
        
        WyhModel *model9 = [WyhModel new];
        model9.firstName = @"- (NSUInteger)countForObject:(ObjectType)object;";
        model9.secondName = @"在集合中返回与给定对象相关联的计数。\n例子：NSUInteger cout = [set countForObject:@3];";
        [examiniArr addObject:model9];
        
        WyhModel *model10 = [WyhModel new];
        model10.firstName = @"- (NSEnumerator<ObjectType> *)objectEnumerator;";
        model10.secondName = @"返回一个枚举器对象，它允许您访问集合中的每个对象，独立于它的计数。\n例子：NSEnumerator *enumerator = [set objectEnumerator];";
        [examiniArr addObject:model10];
        
        [_dataArray addObject:examiniArr];
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
