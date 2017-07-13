//
//  NSComparisonPredicateViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/12.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSComparisonPredicateViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSComparisonPredicateViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSComparisonPredicateViewController

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
        [_titleArray addObject:@"NSComparisonPredicate"];
        [_titleArray addObject:@"Creating Comparison Predicates"];
        [_titleArray addObject:@"Getting Information About a Comparison Predicate"];
        [_titleArray addObject:@"Constants"];
        [_titleArray addObject:@"Initializers"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //NSComparisonPredicate
        NSMutableArray *titlarr = [NSMutableArray new];
        
        WyhModel *model = [WyhModel new];
        model.firstName = @"NSComparisonPredicate";
        model.secondName = @"nscompare on谓词是NSPredicate的一个子类，用来比较表达式。";
        [titlarr addObject:model];
        
        [_dataArray addObject:titlarr];
        
        //Creating Comparison Predicates
        NSMutableArray *creaArr = [NSMutableArray new];
        NSExpression *pressiong = [NSExpression expressionForAnyKey];
        NSExpression *pressiong2 = [NSExpression expressionForAnyKey];
        NSComparisonPredicate *comparingsonPredicate = [NSComparisonPredicate predicateWithLeftExpression:pressiong rightExpression:pressiong2 customSelector:@selector(exceptionlog)];
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"+ (NSComparisonPredicate *)predicateWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs customSelector:(SEL)selector;";
        model1.secondName = @"返回一个新的谓词，通过使用给定的选择器组合左和右表达式。\n例子： NSExpression *pressiong = [NSExpression expressionForAnyKey];\nNSExpression *pressiong2 = [NSExpression expressionForAnyKey];\nNSComparisonPredicate *comparingsonPredicate = [NSComparisonPredicate predicateWithLeftExpression:pressiong rightExpression:pressiong2 customSelector:@selector(exceptionlog)];";
        [creaArr addObject:model1];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"+ (NSComparisonPredicate *)predicateWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs modifier:(NSComparisonPredicateModifier)modifier type:(NSPredicateOperatorType)type options:(NSComparisonPredicateOptions)options;";
        model2.secondName = @"创建并返回给定类型的谓词，通过使用给定的修饰符和选项组合给定的左和右表达式。\n例子： NSExpression *pressiong = [NSExpression expressionForAnyKey];\nNSExpression *pressiong2 = [NSExpression expressionForAnyKey];\nNSComparisonPredicate *comparisonPredicate2 = [NSComparisonPredicate predicateWithLeftExpression:pressiong rightExpression:pressiong2 modifier:NSDirectPredicateModifier type:NSLessThanPredicateOperatorType options:NSCaseInsensitivePredicateOption];";
        [creaArr addObject:model2];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"- (instancetype)initWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs customSelector:(SEL)selector;";
        model3.secondName = @"初始化一个谓词，使用给定的选择器将给定的左和右表达式组合在一起。\n例子： NSComparisonPredicate *comparisonPredicate2 = [[NSComparisonPredicate alloc]initWithLeftExpression:pressiong rightExpression:pressiong2 customSelector:@selector(exceptionlog)];";
        [creaArr addObject:model3];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"- (instancetype)initWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs modifier:(NSComparisonPredicateModifier)modifier type:(NSPredicateOperatorType)type options:(NSComparisonPredicateOptions)options;";
        model4.secondName = @"初始化一个谓词，使用给定的选择器将给定的左和右表达式组合在一起。\n例子： NSComparisonPredicate *comparisonPredicate2 = [[NSComparisonPredicate alloc]initWithLeftExpression:pressiong rightExpression:pressiong2 modifier:NSAllPredicateModifier type:NSLessThanOrEqualToPredicateOperatorType options:NSDiacriticInsensitivePredicateOption];";
        [creaArr addObject:model4];
        
        [_dataArray addObject:creaArr];
        
        //Getting Information About a Comparison Predicate
        NSMutableArray *getArr = [NSMutableArray new];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"@property(readonly) NSComparisonPredicateModifier comparisonPredicateModifier;";
        model5.secondName = @"接收者的比较谓词修饰符。\n例子： NSComparisonPredicateModifier comparisonPredicateModifier = comparingsonPredicate.comparisonPredicateModifier;";
        [getArr addObject:model5];
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"@property(readonly) SEL customSelector;";
        model6.secondName = @"接收机的选择器。\n例子：SEL customSelector = comparingsonPredicate.customSelector;";
        [getArr addObject:model6];
        
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"@property(readonly, retain) NSExpression *rightExpression;";
        model7.secondName = @"接收方的正确表达式。\n例子：NSExpression *rightExpression = comparingsonPredicate.rightExpression;";
        [getArr addObject:model7];
        
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"@property(readonly, retain) NSExpression *leftExpression;";
        model8.secondName = @"接收器的左表达式。\n例子：NSExpression *leftExpression = comparingsonPredicate.leftExpression;";
        [getArr addObject:model8];
        
        WyhModel *model9 = [WyhModel new];
        model9.firstName = @"@property(readonly) NSComparisonPredicateOptions options;";
        model9.secondName = @"为接收方设置的选项.\n例子： NSComparisonPredicateOptions options = comparingsonPredicate.options;";
        [getArr addObject:model9];
        
        WyhModel *model10 = [WyhModel new];
        model10.firstName = @"@property(readonly) NSPredicateOperatorType predicateOperatorType;";
        model10.secondName = @"为接收方设置的选项.\n例子： NSComparisonPredicateOptions options = comparingsonPredicate.options;";
        [getArr addObject:model10];
       
        [_dataArray addObject:getArr];
        
        //Constants
        NSMutableArray *constantArr = [NSMutableArray new];
        
        WyhModel *model11 = [WyhModel new];
        model11.firstName = @"NSComparisonPredicateModifier";
        model11.secondName = @"这些常量描述了ns对比on谓词的可能类型.\n例子：NSDirectPredicateModifier:一种直接比较左右两边的谓词\nNSAllPredicateModifier:一个谓词，用来比较一个到许多关系的目的地的所有条目\nNSAnyPredicateModifier:一个谓词，用于匹配一个到许多关系的目的地的任何条目";
        [constantArr addObject:model11];
        
        WyhModel *model12 = [WyhModel new];
        model12.firstName = @"NSComparisonPredicateOptions";
        model12.secondName = @"这些常量描述了ns可比on谓词的字符串比较的可能类型。这些选项是支持的，就像所有的equalit/比较运算符一样.\n例子：NSCaseInsensitivePredicateOption:以不区分大小写的谓词\nNSDiacriticInsensitivePredicateOption:diacritic-insensitive谓词\nNSNormalizedPredicateOption:表示要比较的字符串是经过预处理的\nNSLocaleSensitivePredicateOption:表示使用小于、小于=、=、=、=应该进行比较的字符串应该以本地识别的方式进行处理";
        [constantArr addObject:model12];
        
        WyhModel *model13 = [WyhModel new];
        model13.firstName = @"NSPredicateOperatorType";
        model13.secondName = @"定义了ns可比on谓词的比较类型.\n例子：NSLessThanPredicateOperatorType:小于谓词\nNSLessThanOrEqualToPredicateOperatorType:一个小于或等于谓词\nNSGreaterThanPredicateOperatorType:一个大于谓词\nNSGreaterThanOrEqualToPredicateOperatorType:大于或等于谓词\nNSEqualToPredicateOperatorType:一个等于谓词\nNSNotEqualToPredicateOperatorType:不等于谓词\nNSMatchesPredicateOperatorType:一个完整正则表达式匹配谓词\nNSLikePredicateOperatorType:匹配谓词的一个简单子集，类似于SQL的行为\nNSBeginsWithPredicateOperatorType:始于谓词\nNSEndsWithPredicateOperatorType:一个以谓词。\nNSInPredicateOperatorType:判断左手边是否在右手边的一个谓词\nNSCustomSelectorPredicateOperatorType:一个谓词，它使用一个定制的选择器，它接受一个参数并返回一个BOOL值\nNSContainsPredicateOperatorType:判断左手边是否包含右手边的谓词\nNSBetweenPredicateOperatorType:判断左手边是否位于右手边指定的边界的一个谓词";
        [constantArr addObject:model13];
        
        
        [_dataArray addObject:constantArr];
        
        //Initializers
        NSMutableArray *linitializrArr = [NSMutableArray new];
        
        WyhModel *model14 = [WyhModel new];
        model14.firstName = @"- (instancetype)initWithCoder:(NSCoder *)coder;";
        model14.secondName = @"定义了ns可比on谓词的比较类型.\n例子：NSComparisonPredicate *cate = [[NSComparisonPredicate alloc]initWithCoder:[NSCoder new]];";
        [linitializrArr addObject:model14];
        
        [_dataArray addObject:linitializrArr];
    }
    return _dataArray;
}
-(void)exceptionlog{

    NSLog(@"exceptionlog exceptionlog exceptionlog");
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
