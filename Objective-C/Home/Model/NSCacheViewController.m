//
//  NSCacheViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/10.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSCacheViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSCacheViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSCacheViewController

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
        [_titleArray addObject:@"Managing the Name"];
        [_titleArray addObject:@"Managing Cache Size"];
        [_titleArray addObject:@"Managing iscardable Content"];
        [_titleArray addObject:@"Managing the Delegate"];
        [_titleArray addObject:@"Adding and Removing Cached Values"];
        [_titleArray addObject:@"Getting a Cached Value"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //Managing the Name
        NSMutableArray *manageArr = [NSMutableArray new];
        NSCache *cache = [NSCache new];
        
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"@property(copy) NSString *name;";
        model1.secondName = @"缓存的名称。\n例子：NSString *name = cache.name;";
        [manageArr addObject:model1];
        
        
        [_dataArray addObject:manageArr];
        //Managing Cache Size
        NSMutableArray *sizeArr =[NSMutableArray new];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"@property NSUInteger countLimit;";
        model2.secondName = @"缓存应该保存的最大对象数。\n例子：NSUInteger countLimit = cache.countLimit;";
        [sizeArr addObject:model2];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"@property NSUInteger totalCostLimit;";
        model3.secondName = @"这个缓存可以开始驱逐对象之前的最大总成本。\n例子：NSUInteger totalCostLimit = cache.totalCostLimit;";
        [sizeArr addObject:model3];
        
        [_dataArray addObject:sizeArr];
        
        //Managing iscardable Content
        NSMutableArray *contentArr = [NSMutableArray new];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"@property BOOL evictsObjectsWithDiscardedContent;";
        model4.secondName = @"缓存是否会自动将对象的无用的内容丢弃。\n例子：BOOL isevicts = cache.evictsObjectsWithDiscardedContent;";
        [contentArr addObject:model4];
        
        [_dataArray addObject:contentArr];
        //Managing the Delegate
        NSMutableArray *delegateArr = [NSMutableArray new];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"@property(assign) id<NSCacheDelegate> delegate;";
        model5.secondName = @"缓存的委托。\n例子：cache.delegate=self;";
        [delegateArr addObject:model4];
        
        [_dataArray addObject:delegateArr];
        
        //Getting a Cached Value
        NSMutableArray *getArr = [NSMutableArray new];
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"- (ObjectType)objectForKey:(KeyType)key;";
        model6.secondName = @"返回与给定键相关联的值。\n例子： NSString *string =  [cache objectForKey:@\"1\"];";
        [getArr addObject:model6];
     
        [_dataArray addObject:getArr];
        
        //Adding and Removing Cached Values
        NSMutableArray *addArr = [NSMutableArray new];
        
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"- (void)setObject:(ObjectType)obj forKey:(KeyType)key;";
        model7.secondName = @"在缓存中设置指定键的值。\n例子： [cache setObject:@\"2\" forKey:@\"1\"];";
        [addArr addObject:model7];
        
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"- (void)setObject:(ObjectType)obj forKey:(KeyType)key cost:(NSUInteger)g;";
        model8.secondName = @"设置缓存中指定键的值，并将键值对与指定的成本相关联。\n例子： [cache setObject:@\"2\" forKey:@\"1\" cost:1];";
        [addArr addObject:model8];
        
        WyhModel *model9 = [WyhModel new];
        model9.firstName = @"- (void)removeObjectForKey:(KeyType)key;";
        model9.secondName = @"删除缓存中指定键的值。\n例子：[cache removeObjectForKey:@\"1\"];";
        [addArr addObject:model9];
        
        WyhModel *model10 = [WyhModel new];
        model10.firstName = @"- (void)removeAllObjects;";
        model10.secondName = @"清空缓存。\n例子：[cache removeAllObjects];";
        [addArr addObject:model10];
        
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
