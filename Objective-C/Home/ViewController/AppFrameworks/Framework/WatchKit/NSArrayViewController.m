//
//  NSArrayViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/4.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSArrayViewController.h"
#import "WyhModel.h"
#import "NSArrayTableViewCell.h"
static NSString *templateCell = @"templateCell";
@interface NSArrayViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSArrayViewController

-(UITableView *)wyhTable{
    
    if (!_wyhTable) {
        _wyhTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREENMAINWIDTH, SCREENMAINHEIGHT) style:UITableViewStyleGrouped];
        _wyhTable.delegate = self;
        _wyhTable.dataSource = self;
        _wyhTable.sectionIndexBackgroundColor = CLEARCOLOR;
        _wyhTable.separatorStyle = UITableViewCellSelectionStyleBlue;
        [_wyhTable registerClass:[NSArrayTableViewCell class] forCellReuseIdentifier:templateCell];
        
    }
    return _wyhTable;
}
-(NSMutableArray *)titleArray{
    if (!_titleArray) {
        _titleArray = [NSMutableArray new];
        [_titleArray addObject:@"Creating an Array"];
        [_titleArray addObject:@"Initializing an Array"];
        [_titleArray addObject:@"Querying an Array"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        
         //creating an array
        NSMutableArray *creatingArr = [NSMutableArray new];
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"+ (instancetype)array;";
        model1.secondName = @"创建并返回一个空数组。\n例子：NSArray *array = [NSArray array];";
        [creatingArr addObject:model1];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"+ (instancetype)arrayWithArray:(NSArray<ObjectType> *)array;";
        model2.secondName = @"创建并返回包含在另一个给定数组中的对象的数组。\n例子：NSArray *array1 = [NSArray new];\nNSArray *array2 = [NSArray arrayWithArray:array1];";
        [creatingArr addObject:model2];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"+ (NSArray<ObjectType> *)arrayWithContentsOfFile:(NSString *)path;";
        model3.secondName = @"创建并返回一个包含给定路径指定文件内容的数组。组。\n例子：NSString *nsarray = [[NSBundle mainBundle] pathForResource:@\"NSArrayEmple\" ofType:@\"plist\"];\nNSArray *arr = [NSArray arrayWithContentsOfFile:nsarray];";
        [creatingArr addObject:model3];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"+ (NSArray<ObjectType> *)arrayWithContentsOfURL:(NSURL *)url;";
        model4.secondName = @"创建并返回一个包含给定URL指定内容的数组。\n例子： NSURL *arrurl = [[NSBundle mainBundle]URLForResource:@\"NSArrayEmple.plist\" withExtension:nil];\nNSArray *arr = [NSArray arrayWithContentsOfURL:arrurl];";
        [creatingArr addObject:model4];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"+ (instancetype)arrayWithObject:(ObjectType)anObject;";
        model5.secondName = @"创建并返回包含给定对象的数组。\n例子：  NSArray *arr = [NSArray arrayWithObject:@\"1\"];";
        [creatingArr addObject:model5];
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"+ (instancetype)arrayWithObjects:(const ObjectType  _Nonnull [])objects count:(NSUInteger)cnt;";
        model6.secondName = @"创建并返回一个数组，其中包含给定的C数组中的给定数量的对象。\n例子： NSString *strings[3];\nstrings[0] = @\"first\";\nstrings[1]= @\"second\";\nstrings[2] = @\"three\";\nNSArray *arr2 = [NSArray arrayWithObjects: strings count:2];";
        [creatingArr addObject:model6];
        
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"+ (instancetype)arrayWithObjects:(ObjectType)firstObj, ...;";
        model7.secondName = @"创建并返回包含参数列表中的对象的数组。\n例子： NSArray *arr = [NSArray arrayWithObjects:@\"first\",@\"second\", nil];";
        [creatingArr addObject:model7];
        
        //initializing an array
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"- (instancetype)init;";
        model8.secondName = @"初始化一个新分配的数组。\n例子： NSArray *arr = [[NSArray alloc]init];";
        [creatingArr addObject:model8];
        
        WyhModel *model9 = [WyhModel new];
        model9.firstName = @"- (instancetype)initWithArray:(NSArray<ObjectType> *)array;";
        model9.secondName = @"初始化一个新分配的数组，将数组中的对象放在一个给定数组中。\n例子：   NSArray *arr1 =@[@\"fit\",@\"hit\",@\"eit\"];\nNSArray *arr = [[NSArray alloc]initWithArray:arr1];";
        [creatingArr addObject:model9];
        
        WyhModel *model10 = [WyhModel new];
        model10.firstName = @"- (instancetype)initWithArray:(NSArray<ObjectType> *)array copyItems:(BOOL)flag;";
        model10.secondName = @"初始化一个新分配的数组，使用anArray作为数组的数据对象的源。\n例子：  NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\nNSArray *arr1 = [[NSArray alloc]initWithArray:arr copyItems:YES];";
        [creatingArr addObject:model10];
        
        WyhModel *model11 = [WyhModel new];
        model11.firstName = @"- (NSArray<ObjectType> *)initWithContentsOfFile:(NSString *)path;";
        model11.secondName = @"初始化一个新分配的数组，其中有指定路径指定的文件的内容。\n例子： NSString *path = [[NSBundle mainBundle] pathForResource:@\"NSArrayEmple\" ofType:@\"plist\"];\nNSArray *arr = [[NSArray alloc]initWithContentsOfFile:path];";
        [creatingArr addObject:model11];
        
        WyhModel *model12 = [WyhModel new];
        model12.firstName = @"- (NSArray<ObjectType> *)initWithContentsOfURL:(NSURL *)url;";
        model12.secondName = @"初始化一个新分配的数组，并使用指定URL指定的位置的内容。\n例子：NSURL *arrurl = [[NSBundle mainBundle]URLForResource:@\"NSArrayEmple.plist\" withExtension:nil];\nNSArray *arr =  [[NSArray alloc]initWithContentsOfURL:arrurl];";
        [creatingArr addObject:model12];
        
        WyhModel *model13 = [WyhModel new];
        model13.firstName = @"- (instancetype)initWithObjects:(ObjectType)firstObj, ...;";
        model13.secondName = @"通过在参数列表中放置对象来初始化一个新分配的数组。\n例子： NSArray *arr = [[NSArray alloc]initWithObjects:@\"1\",@\"2\", nil];";
        [creatingArr addObject:model13];
       
        WyhModel *model14 = [WyhModel new];
        model14.firstName = @"- (instancetype)initWithObjects:(ObjectType  _Nonnull const *)objects count:(NSUInteger)cnt;";
        model14.secondName = @"初始化一个新分配的数组，以包含给定的C数组中的给定数量的对象。\n例子： NSString *strings[3];\nstrings[0] = @\"first\";\nstrings[1]= @\"second\";\nstrings[2] = @\"three\";\n NSArray *arr = [[NSArray alloc]initWithObjects:strings count:2];";
        [creatingArr addObject:model14];
        
        [_dataArray addObject:creatingArr];
        //querying an array
        NSMutableArray *queryingArr = [NSMutableArray new];
        WyhModel *model15 = [WyhModel new];
        model15.firstName = @"- (BOOL)containsObject:(ObjectType)anObject;";
        model15.secondName = @"返回一个布尔值，表示给定对象是否存在于数组中。\n例子：  NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\nBOOL isHas = [arr containsObject:@\"1\"];";
        [queryingArr addObject:model15];
        
        WyhModel *model16 = [WyhModel new];
        model16.firstName = @"@property(readonly) NSUInteger count;";
        model16.secondName = @"数组中对象的数量。\n例子：  NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n NSUInteger arrCount = arr.count;";
        [queryingArr addObject:model16];
       
        WyhModel *model17 = [WyhModel new];
        model17.firstName = @"- (void)getObjects:(ObjectType  _Nonnull [])objects;";
        model17.secondName = @"将数组中包含的所有对象复制到aBuffer中。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\nid objects;\nobjects = malloc(sizeof(id) * arr.count);\n[arr getObjects:objects];";
        [queryingArr addObject:model17];
        
        WyhModel *model18 = [WyhModel new];
        model18.firstName = @"- (void)getObjects:(ObjectType  _Nonnull [])objects range:(NSRange)range;";
        model18.secondName = @"将包含在指定范围内的数组中的对象复制到aBuffer中。\n例子：  NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\nid objects;\nobjects = malloc(sizeof(idn) * arr.count);\n  NSRange range = NSMakeRange(1, 5);\n[arr getObjects:objects range:range];";
        [queryingArr addObject:model18];
        
        WyhModel *model19 = [WyhModel new];
        model19.firstName = @"@property(nonatomic, readonly) ObjectType firstObject;";
        model19.secondName = @"数组中的第一个对象。\n例子：  NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\nid fitst  = arr.firstObject;";
        [queryingArr addObject:model19];
        
        WyhModel *model20 = [WyhModel new];
        model20.firstName = @"@property(nonatomic, readonly) ObjectType lastObject;";
        model20.secondName = @"数组中的最后一个对象。\n例子：  NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\nid fitst  = arr.lastObject;";
        [queryingArr addObject:model20];
        
        WyhModel *model21 = [WyhModel new];
        model21.firstName = @"- (ObjectType)objectAtIndex:(NSUInteger)index;";
        model21.secondName = @"返回位于指定索引的对象。\n例子：  NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\nid fitst  = [arr objectAtIndex:0];";
        [queryingArr addObject:model21];
        
        WyhModel *model22 = [WyhModel new];
        model22.firstName = @"- (ObjectType)objectAtIndexedSubscript:(NSUInteger)idx;";
        model22.secondName = @"在指定的索引中返回对象。\n例子：  NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\nid fitst  = [arr objectAtIndexedSubscript:0];";
        [queryingArr addObject:model22];
       
        WyhModel *model23 = [WyhModel new];
        model23.firstName = @"- (NSArray<ObjectType> *)objectsAtIndexes:(NSIndexSet *)indexes;";
        model23.secondName = @"返回一个数组，其中包含给定索引集指定的索引中数组中的对象。\n例子：  NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n NSIndexSet *set  = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, 2)];\nNSArray *arr1 = [arr objectsAtIndexes:set];";
        [queryingArr addObject:model23];
    
        WyhModel *model24 = [WyhModel new];
        model24.firstName = @"- (NSEnumerator<ObjectType> *)objectEnumerator;";
        model24.secondName = @"返回一个枚举器对象，它允许您访问数组中的每个对象。\n例子： NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n NSEnumerator *enu = [arr objectEnumerator];";
        [queryingArr addObject:model24];
      
        WyhModel *model25 = [WyhModel new];
        model25.firstName = @"- (NSEnumerator<ObjectType> *)reverseObjectEnumerator;";
        model25.secondName = @"返回一个枚举器对象，该对象允许您以相反的顺序访问数组中的每个对象。\n例子： NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n NSEnumerator *enu = [arr reverseObjectEnumerator];";
        [queryingArr addObject:model25];
        
        [_dataArray addObject:queryingArr];
        //finding objects in an array
        NSMutableArray *findingArr = [NSMutableArray new];
        WyhModel *model26 = [WyhModel new];
        model26.firstName = @"- (NSUInteger)indexOfObject:(ObjectType)anObject;";
        model26.secondName = @"返回对应的数组值等于给定对象的最低索引。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n   NSUInteger index = [arr indexOfObject:@\"1\"];";
        [findingArr addObject:model26];
        
        [_dataArray addObject:findingArr];
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
