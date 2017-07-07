//
//  NSBundleViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/7.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSBundleViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSBundleViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSBundleViewController

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
        [_titleArray addObject:@"Getting Standard Bundle Objects"];
        [_titleArray addObject:@"Creating and Initializing a Bundle"];
        [_titleArray addObject:@"Loading Nib Files"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //Getting Standard Bundle Objects
        NSMutableArray *getArr = [NSMutableArray new];
         NSBundle *bundle = [NSBundle mainBundle];
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"@property(class, readonly, strong) NSBundle *mainBundle;";
        model1.secondName = @"返回包含当前可执行文件的bundle对象。\n例子： NSBundle *bundle = [NSBundle mainBundle];";
        [getArr addObject:model1];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"@property(class, readonly, copy) NSArray<NSBundle *> *allFrameworks;";
        model2.secondName = @"返回代表框架的所有应用程序包的数组。\n例子：NSArray *arr =  [NSBundle allFrameworks];";
        [getArr addObject:model2];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"@property(class, readonly, copy) NSArray<NSBundle *> *allBundles;";
        model3.secondName = @"返回所有应用程序的非框架包的数组。\n例子： NSArray *arr = [NSBundle allBundles];";
        [getArr addObject:model3];
       
        [_dataArray addObject:getArr];
        
        //Creating and Initializing a Bundle
        NSMutableArray *creatArr =[NSMutableArray new];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"+ (instancetype)bundleWithURL:(NSURL *)url;";
        model4.secondName = @"返回一个与指定文件URL对应的NSBundle对象。\n例子： NSBundle *bundle1 = [NSBundle bundleWithURL:[NSURL URLWithString:@\"www.baidu.com\"]];";
        [creatArr addObject:model4];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"+ (instancetype)bundleWithPath:(NSString *)path;";
        model5.secondName = @"返回一个与指定目录相对应的NSBundle对象。\n例子： NSString *path = [[NSBundle mainBundle]pathForResource:@\"NSArrayEmple\" ofType:@\"plist\"];\nNSBundle *bundle1 = [NSBundle bundleWithPath:path];";
        [creatArr addObject:model5];
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"+ (NSBundle *)bundleForClass:(Class)aClass;";
        model6.secondName = @"返回指定类关联的NSBundle对象。\n例子： NSBundle *bundle1 = [NSBundle bundleForClass:[NSBundleViewController class]];";
        [creatArr addObject:model6];
        
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"+ (NSBundle *)bundleWithIdentifier:(NSString *)identifier;";
        model7.secondName = @"返回具有指定的bundle标识符的NSBundle实例。\n例子：NSBundle *bundle1 = [NSBundle bundleWithIdentifier:@\"identifier\"];";
        [creatArr addObject:model7];
        
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"- (instancetype)initWithURL:(NSURL *)url;";
        model8.secondName = @"返回一个初始化的NSBundle对象，以对应指定的文件URL。\n例子： NSBundle *bundle1 = [[NSBundle alloc]initWithURL:[NSURL URLWithString:@\"111\"]];";
        [creatArr addObject:model8];
        
        WyhModel *model9 = [WyhModel new];
        model9.firstName = @"- (instancetype)initWithPath:(NSString *)path;";
        model9.secondName = @"返回一个初始化的NSBundle对象，以与指定的目录相对应。\n例子： NSString *path = [[NSBundle mainBundle]pathForResource:@\"NSArrayEmple\" ofType:@\"plist\"];\nNSBundle *bundle1 = [[NSBundle alloc]initWithPath:path];";
        [creatArr addObject:model9];
       
       
        [_dataArray addObject:creatArr];
        
         //Loading Nib Files
        NSMutableArray *loadArr = [NSMutableArray new];
        
        
        [_dataArray addObject:loadArr];
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
