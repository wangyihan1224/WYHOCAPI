//
//  NSAssertionHandlerViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/7.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSAssertionHandlerViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSAssertionHandlerViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSAssertionHandlerViewController

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
        [_titleArray addObject:@"Handling Assertion Filures"];
        [_titleArray addObject:@"Constants"];
        
}
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        
//          NSAssertionHandler *handler = [NSAssertionHandler currentHandler];
        
        //Handling Assertion Filures
        NSMutableArray *handArr = [NSMutableArray new];
        
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"@property(class, readonly, strong) NSAssertionHandler *currentHandler;";
        model1.secondName = @"返回与当前线程相关联的ns断言处理程序对象。\n例子：  NSAssertionHandler *handler = [NSAssertionHandler currentHandler];";
        [handArr addObject:model1];
      
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"- (void)handleFailureInFunction:(NSString *)functionName file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format, ...;";
        model2.secondName = @"日志(使用NSLog)一个错误消息，其中包括函数的名称、文件的名称和行号。\n例子：  NSAssertionHandler *handler = [NSAssertionHandler currentHandler];\n[handler handleFailureInFunction:@\"函数的名称\" file:@\"文件的名称\" lineNumber:1 description:@\"描述\"];";
        [handArr addObject:model2];
      
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"- (void)handleFailureInMethod:(SEL)selector object:(id)object file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format, ...;";
        model3.secondName = @"日志(使用NSLog)一个错误消息，其中包括失败的方法的名称、对象的类名、源文件的名称和行号。\n例子：   [handler handleFailureInMethod:@selector(handlertest) object:self file:@\"源文件的名称\" lineNumber:1 description:@\"描述\"];";
        [handArr addObject:model3];
       
        [_dataArray addObject:handArr];
        
        //Constants
        NSMutableArray *constantsArr = [NSMutableArray new];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"NSAssertionHandlerKey";
        model4.secondName = @"这个常量引用了每个线程断言处理程序对象的线程字典中的一个键。\n例子：   NSAssertionHandlerKey:在线程字典中具有相应值的键  handleFailureInMethod:object:file:lineNumber:description: and handleFailureInFunction:file:lineNumber:description:";
        [constantsArr addObject:model4];
        
        [_dataArray addObject:constantsArr];
    }
    return _dataArray;
}

-(void)handlertest{
    NSLog(@"handlertest handlertest handlertest");;
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
