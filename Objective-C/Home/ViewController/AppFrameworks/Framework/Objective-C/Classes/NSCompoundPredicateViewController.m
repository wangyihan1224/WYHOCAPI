//
//  NSCompoundPredicateViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/13.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSCompoundPredicateViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSCompoundPredicateViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSCompoundPredicateViewController

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
        [_titleArray addObject:@"NSCompoundPredicate"];
        [_titleArray addObject:@"Constructors"];
        [_titleArray addObject:@"Getting Information About a CompoundPredicate"];
        [_titleArray addObject:@"Constants"];
        [_titleArray addObject:@"Initializers"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //NSCompoundPredicate
        NSMutableArray *titlarr = [NSMutableArray new];
        
        WyhModel *model = [WyhModel new];
        model.firstName = @"NSCompoundPredicate";
        model.secondName = @"nscompound谓词是NSPredicate的一个子类，用于表示逻辑“gate”操作(/或非)和比较操作。";
        [titlarr addObject:model];
        
        [_dataArray addObject:titlarr];
        //Constructors
        NSMutableArray *constructorArr  = [NSMutableArray new];
        NSPredicate *cate = [NSPredicate predicateWithFormat:@"a>2"];
        NSArray *arr = @[cate];
        NSCompoundPredicate *predicate = [NSCompoundPredicate andPredicateWithSubpredicates:arr];
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"+ (NSCompoundPredicate *)andPredicateWithSubpredicates:(NSArray<NSPredicate *> *)subpredicates;";
        model1.secondName = @"返回一个新的谓词，该谓词是在给定数组中通过and ing谓词生成的。\n例子：NSPredicate *cate = [NSPredicate predicateWithFormat:@\"2\"];\nNSArray *arr = @[cate];\nNSCompoundPredicate *predicate = [NSCompoundPredicate andPredicateWithSubpredicates:arr];";
        [constructorArr addObject:model1];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"+ (NSCompoundPredicate *)notPredicateWithSubpredicate:(NSPredicate *)predicate;";
        model2.secondName = @"返回一个由非指定谓词形成的新谓词。\n例子：NSPredicate *cate = [NSPredicate predicateWithFormat:@\"2\"];\nNSCompoundPredicate *predicate = [NSCompoundPredicate notPredicateWithSubpredicate:cate];";
        [constructorArr addObject:model2];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"+ (NSCompoundPredicate *)orPredicateWithSubpredicates:(NSArray<NSPredicate *> *)subpredicates;";
        model3.secondName = @"返回一个由给定数组中的谓词组成的新谓词。\n例子：NSPredicate *cate = [NSPredicate predicateWithFormat:@\"2\"];\nNSArray *arr = @[cate];\nNSCompoundPredicate *predicate = [NSCompoundPredicate orPredicateWithSubpredicates:arr];";
        [constructorArr addObject:model3];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"- (instancetype)initWithType:(NSCompoundPredicateType)type subpredicates:(NSArray<NSPredicate *> *)subpredicates;";
        model4.secondName = @"使用给定数组的谓词将接收到的接收器返回给给定的类型。\n例子：NSPredicate *cate = [NSPredicate predicateWithFormat:@\"2\"];\nNSArray *arr = @[cate];\n  NSCompoundPredicate *compound = [[NSCompoundPredicate alloc]initWithType:NSNotPredicateType subpredicates:arr];";
        [constructorArr addObject:model4];
      
        [_dataArray addObject:constructorArr];
        
        //Getting Information About a CompoundPredicate
        NSMutableArray *getArr = [NSMutableArray new];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"@property(readonly) NSCompoundPredicateType compoundPredicateType;";
        model5.secondName = @"接收方的谓词类型。\n例子：NSCompoundPredicateType compoundPredicateType=predicate.compoundPredicateType;";
        [getArr addObject:model5];
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"@property(readonly, copy) NSArray *subpredicates;";
        model6.secondName = @"接收机的subpredicates。\n例子：NSArray *arr2 = predicate.subpredicates;";
        [getArr addObject:model6];
        
        [_dataArray addObject:getArr];
        
        //Constants
        NSMutableArray *constantArr = [NSMutableArray new];
        
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"NSCompoundPredicateType";
        model7.secondName = @"这些常量描述了nscompound谓词的可能类型。\n例子：NSNotPredicateType:不一个逻辑谓词\nNSAndPredicateType:一个且逻辑谓词\nNSOrPredicateType:一个或逻辑谓词";
        [constantArr addObject:model7];
        
        [_dataArray addObject:constantArr];
        
        //Initializers
        NSMutableArray *initialArr = [NSMutableArray new];
        
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"- (instancetype)initWithCoder:(NSCoder *)coder;";
        model8.secondName = @"。\n例子： NSCompoundPredicate *com = [[NSCompoundPredicate alloc]initWithCoder:[NSCoder new]];";
        [initialArr addObject:model8];
       
        [_dataArray addObject:initialArr];
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
