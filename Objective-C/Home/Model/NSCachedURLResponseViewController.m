//
//  NSCachedURLResponseViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/10.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSCachedURLResponseViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSCachedURLResponseViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSCachedURLResponseViewController

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
        [_titleArray addObject:@"Creating a cached URL response"];
        [_titleArray addObject:@"Getting cached URL response properties"];
        [_titleArray addObject:@"Constants"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //Creating a cached URL response
        NSMutableArray *creatArr = [NSMutableArray new];
        NSCachedURLResponse *cacheurl = [[NSCachedURLResponse alloc]initWithResponse:[NSURLResponse new] data:[NSData data]];
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"- (instancetype)initWithResponse:(NSURLResponse *)response data:(NSData *)data;";
        model1.secondName = @"nscachedurlresponse初始化一个对象。\n例子：NSCachedURLResponse *cacheurl = [[NSCachedURLResponse alloc]initWithResponse:[NSURLResponse new] data:[NSData data]];";
        [creatArr addObject:model1];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"- (instancetype)initWithResponse:(NSURLResponse *)response data:(NSData *)data userInfo:(NSDictionary *)userInfo storagePolicy:(NSURLCacheStoragePolicy)storagePolicy;";
        model2.secondName = @"nscachedurlresponse初始化一个对象。\n例子：NSCachedURLResponse *cacheurl = [[NSCachedURLResponse alloc]initWithResponse:[NSURLResponse new] data:[NSData data] userInfo:nil];";
        [creatArr addObject:model2];
        
        [_dataArray addObject:creatArr];
        
        //Getting cached URL response properties
        NSMutableArray *getArr = [NSMutableArray new];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"@property(readonly, copy) NSData *data;";
        model3.secondName = @"接收器的缓存数据。。\n例子：NSCachedURLResponse *cacheurl = [[NSCachedURLResponse alloc]initWithResponse:[NSURLResponse new] data:[NSData data] userInfo:nil];\nNSData *data = cacheurl.data;";
        [getArr addObject:model3];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"@property(readonly, copy) NSURLResponse *response;";
        model4.secondName = @"与接收方关联的URL响应对象。\n例子：NSCachedURLResponse *cacheurl = [[NSCachedURLResponse alloc]initWithResponse:[NSURLResponse new] data:[NSData data] userInfo:nil];\n NSURLResponse *response = cacheurl.response;";
        [getArr addObject:model4];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"@property(readonly) NSURLCacheStoragePolicy storagePolicy;";
        model5.secondName = @"接收方的高速缓存存储策略。\n例子：NSCachedURLResponse *cacheurl = [[NSCachedURLResponse alloc]initWithResponse:[NSURLResponse new] data:[NSData data] userInfo:nil];\nNSURLCacheStoragePolicy policy = cacheurl.storagePolicy;";
        [getArr addObject:model5];
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"@property(readonly, copy) NSDictionary *userInfo;";
        model6.secondName = @"接收者的用户信息字典。\n例子：NSCachedURLResponse *cacheurl = [[NSCachedURLResponse alloc]initWithResponse:[NSURLResponse new] data:[NSData data] userInfo:nil];\n  NSDictionary *userinfo = cacheurl.userInfo;";
        [getArr addObject:model6];
      
        [_dataArray addObject:getArr];
        //Constants
        NSMutableArray *constantArr = [NSMutableArray new];
        
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"NSURLCacheStoragePolicy";
        model7.secondName = @"这些常量指定缓存策略的nscachedurlresponse对象使用。\n例子：NSURLCacheStorageAllowed:指定存储在NSURLCache允许无限制\nNSURLCacheStorageAllowedInMemoryOnly:指定存储在NSURLCache是允许的；然而储存应仅限于记忆\nNSURLCacheStorageNotAllowed:指定存储在NSURLCache没有任何时尚允许的，无论是在内存或磁盘上";
        [constantArr addObject:model7];
        
        [_dataArray addObject:constantArr];
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
