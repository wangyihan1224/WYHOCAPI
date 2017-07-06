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
        _wyhTable.separatorStyle = UITableViewCellSelectionStyleNone;
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
        [_titleArray addObject:@"Finding Objects in an Array"];
        [_titleArray addObject:@"Sending Messages to Elements"];
        [_titleArray addObject:@"Comparing Arrays"];
        [_titleArray addObject:@"Deriving New Arrays"];
        [_titleArray addObject:@"Sorting"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        NSArray *arr = [NSArray new];
        
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
        
        [_dataArray addObject:creatingArr];
        //initializing an array
        NSMutableArray *initArr = [NSMutableArray new];
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"- (instancetype)init;";
        model8.secondName = @"初始化一个新分配的数组。\n例子： NSArray *arr = [[NSArray alloc]init];";
        [initArr addObject:model8];
        
        WyhModel *model9 = [WyhModel new];
        model9.firstName = @"- (instancetype)initWithArray:(NSArray<ObjectType> *)array;";
        model9.secondName = @"初始化一个新分配的数组，将数组中的对象放在一个给定数组中。\n例子：   NSArray *arr1 =@[@\"fit\",@\"hit\",@\"eit\"];\nNSArray *arr = [[NSArray alloc]initWithArray:arr1];";
        [initArr addObject:model9];
        
        WyhModel *model10 = [WyhModel new];
        model10.firstName = @"- (instancetype)initWithArray:(NSArray<ObjectType> *)array copyItems:(BOOL)flag;";
        model10.secondName = @"初始化一个新分配的数组，使用anArray作为数组的数据对象的源。\n例子：  NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\nNSArray *arr1 = [[NSArray alloc]initWithArray:arr copyItems:YES];";
        [initArr addObject:model10];
        
        WyhModel *model11 = [WyhModel new];
        model11.firstName = @"- (NSArray<ObjectType> *)initWithContentsOfFile:(NSString *)path;";
        model11.secondName = @"初始化一个新分配的数组，其中有指定路径指定的文件的内容。\n例子： NSString *path = [[NSBundle mainBundle] pathForResource:@\"NSArrayEmple\" ofType:@\"plist\"];\nNSArray *arr = [[NSArray alloc]initWithContentsOfFile:path];";
        [initArr addObject:model11];
        
        WyhModel *model12 = [WyhModel new];
        model12.firstName = @"- (NSArray<ObjectType> *)initWithContentsOfURL:(NSURL *)url;";
        model12.secondName = @"初始化一个新分配的数组，并使用指定URL指定的位置的内容。\n例子：NSURL *arrurl = [[NSBundle mainBundle]URLForResource:@\"NSArrayEmple.plist\" withExtension:nil];\nNSArray *arr =  [[NSArray alloc]initWithContentsOfURL:arrurl];";
        [initArr addObject:model12];
        
        WyhModel *model13 = [WyhModel new];
        model13.firstName = @"- (instancetype)initWithObjects:(ObjectType)firstObj, ...;";
        model13.secondName = @"通过在参数列表中放置对象来初始化一个新分配的数组。\n例子： NSArray *arr = [[NSArray alloc]initWithObjects:@\"1\",@\"2\", nil];";
        [initArr addObject:model13];
       
        WyhModel *model14 = [WyhModel new];
        model14.firstName = @"- (instancetype)initWithObjects:(ObjectType  _Nonnull const *)objects count:(NSUInteger)cnt;";
        model14.secondName = @"初始化一个新分配的数组，以包含给定的C数组中的给定数量的对象。\n例子： NSString *strings[3];\nstrings[0] = @\"first\";\nstrings[1]= @\"second\";\nstrings[2] = @\"three\";\n NSArray *arr = [[NSArray alloc]initWithObjects:strings count:2];";
        [initArr addObject:model14];
        
        [_dataArray addObject:initArr];
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
        
       
        WyhModel *model27 = [WyhModel new];
        model27.firstName = @"- (NSUInteger)indexOfObject:(ObjectType)anObject inRange:(NSRange)range;";
        model27.secondName = @"返回在指定范围内的最低索引，其对应的数组值等于给定的对象。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n    NSRange rang = NSMakeRange(0, 2);\nNSUInteger index = [arr indexOfObject:@\"1\" inRange:rang];";
        [findingArr addObject:model27];
       
        WyhModel *model28 = [WyhModel new];
        model28.firstName = @"- (NSUInteger)indexOfObjectIdenticalTo:(ObjectType)anObject;";
        model28.secondName = @"返回对应的数组值与给定对象相同的最低索引。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n    NSUInteger index = [arr indexOfObjectIdenticalTo:@\"1\"];";
        [findingArr addObject:model28];
        
        WyhModel *model29 = [WyhModel new];
        model29.firstName = @"- (NSUInteger)indexOfObjectIdenticalTo:(ObjectType)anObject inRange:(NSRange)range;";
        model29.secondName = @"返回在指定范围内的最低索引，其对应的数组值等于给定的对象。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n   NSRange rang = NSMakeRange(0, 2);\nNSUInteger index = [arr indexOfObjectIdenticalTo:@\"1\" inRange:rang];";
        [findingArr addObject:model29];
        
        WyhModel *model30 = [WyhModel new];
        model30.firstName = @"- (NSUInteger)indexOfObjectPassingTest:(BOOL (^)(ObjectType obj, NSUInteger idx, BOOL *stop))predicate;";
        model30.secondName = @"返回在给定块中通过测试的数组中的第一个对象的索引。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n     NSUInteger index = [arr indexOfObjectPassingTest:^BOOL(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) { \nreturn YES; \n}];";
        [findingArr addObject:model30];
    
        WyhModel *model31 = [WyhModel new];
        model31.firstName = @"- (NSUInteger)indexOfObjectWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL (^)(ObjectType obj, NSUInteger idx, BOOL *stop))predicate;";
        model31.secondName = @"返回数组中的一个对象的索引，该数组在给定的块中为给定的枚举选项进行测试。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n       NSUInteger index = [arr indexOfObjectWithOptions:NSEnumerationConcurrent passingTest:^BOOL(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {\nreturn YES;\n}];";
        [findingArr addObject:model31];
    
        
        WyhModel *model32 = [WyhModel new];
        model32.firstName = @"- (NSUInteger)indexOfObjectAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(BOOL (^)(ObjectType obj, NSUInteger idx, BOOL *stop))predicate;";
        model32.secondName = @"从给定的一组索引中返回索引，该数组中的第一个对象将为给定的枚举选项集在给定的块中传递一个测试。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n NSIndexSet *set  = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, 2)];\n  [arr indexOfObjectAtIndexes:set options:NSEnumerationConcurrent passingTest:^BOOL(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {\nreturn YES;\n}];";
        [findingArr addObject:model32];
        
        WyhModel *model33 = [WyhModel new];
        model33.firstName = @"- (NSIndexSet *)indexesOfObjectsPassingTest:(BOOL (^)(ObjectType obj, NSUInteger idx, BOOL *stop))predicate;";
        model33.secondName = @"返回在给定块中通过测试的数组中的对象的索引。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n  NSIndexSet *set =   [arr indexesOfObjectsPassingTest:^BOOL(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {\nreturn YES;\n}];";
        [findingArr addObject:model33];
    
        WyhModel *model34 = [WyhModel new];
        model34.firstName = @"- (NSIndexSet *)indexesOfObjectsWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL (^)(ObjectType obj, NSUInteger idx, BOOL *stop))predicate;";
        model34.secondName = @"返回数组中的对象的索引，在给定的块中通过一个给定的枚举选项的测试。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n   NSIndexSet *set = [arr indexesOfObjectsWithOptions:NSEnumerationConcurrent passingTest:^BOOL(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {\nreturn YES;\n}];";
        [findingArr addObject:model34];
        
        WyhModel *model35 = [WyhModel new];
        model35.firstName = @"- (NSIndexSet *)indexesOfObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(BOOL (^)(ObjectType obj, NSUInteger idx, BOOL *stop))predicate;";
        model35.secondName = @"从给定的一组索引中返回索引，该数组中的对象会在给定的一组枚举选项中对给定的块进行测试。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n   NSIndexSet *set  = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, 2)];\nNSIndexSet *set2 = [arr indexesOfObjectsAtIndexes:set options:NSEnumerationConcurrent passingTest:^BOOL(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {\nreturn YES;\n}];";
        [findingArr addObject:model35];
    
        WyhModel *model36 = [WyhModel new];
        model36.firstName = @"- (NSUInteger)indexOfObject:(ObjectType)obj inSortedRange:(NSRange)r options:(NSBinarySearchingOptions)opts usingComparator:(NSComparator)cmp;";
        model36.secondName = @"使用给定的NSComparator块与数组中的元素相比较，在指定范围内返回一个对象的索引。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n  NSUInteger index = [arr indexOfObject:@\"1\" inSortedRange:NSMakeRange(0, 2) options:NSBinarySearchingFirstEqual usingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {\nreturn NSOrderedAscending;\n}];";
        [findingArr addObject:model36];
        
        [_dataArray addObject:findingArr];
        //Sending Messages to Elements
        NSMutableArray *sendArr = [NSMutableArray new];
       
        WyhModel *model37 = [WyhModel new];
        model37.firstName = @"- (void)makeObjectsPerformSelector:(SEL)aSelector;";
        model37.secondName = @"发送给数组中的每一个对象，一个给定的选择器所标识的消息，从第一个对象开始，并通过数组一直到最后一个对象。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n   [arr makeObjectsPerformSelector:@selector(logtest)];";
        [sendArr addObject:model37];
        
        WyhModel *model38 = [WyhModel new];
        model38.firstName = @"- (void)makeObjectsPerformSelector:(SEL)aSelector withObject:(id)argument;";
        model38.secondName = @"将as选举人消息发送到数组中的每个对象，从第一个对象开始，并通过数组一直传递到最后一个对象。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n  [arr makeObjectsPerformSelector:@selector(logwith:) withObject:@\"3\"];";
        [sendArr addObject:model38];
      
        WyhModel *model39 = [WyhModel new];
        model39.firstName = @"- (void)enumerateObjectsUsingBlock:(void (^)(ObjectType obj, NSUInteger idx, BOOL *stop))block;";
        model39.secondName = @"使用数组中的每个对象执行一个给定的块，从第一个对象开始，并通过数组一直到最后一个对象。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n  [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {\n}];";
        [sendArr addObject:model39];
       
        
        WyhModel *model40 = [WyhModel new];
        model40.firstName = @"- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(ObjectType obj, NSUInteger idx, BOOL *stop))block;";
        model40.secondName = @"使用数组中的每个对象执行一个给定的块。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n   [arr enumerateObjectsWithOptions:NSEnumerationConcurrent usingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {\n}];";
        [sendArr addObject:model40];
        
        WyhModel *model41 = [WyhModel new];
        model41.firstName = @"- (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void (^)(ObjectType obj, NSUInteger idx, BOOL *stop))block;";
        model41.secondName = @"使用指定索引中的数组中的对象执行给定的块。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n   NSIndexSet *set  = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, 2)];\n[arr enumerateObjectsAtIndexes:set options:NSEnumerationConcurrent usingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {\n}];";
        [sendArr addObject:model41];
        
       
       
        [_dataArray addObject:sendArr];
        
         //Comparing Arrays
        NSMutableArray *comparingArr = [NSMutableArray new];
        
        WyhModel *model42 = [WyhModel new];
        model42.firstName = @"- (ObjectType)firstObjectCommonWithArray:(NSArray<ObjectType> *)otherArray;";
        model42.secondName = @"返回接收数组中包含的第一个对象，该数组等于另一个给定数组中的对象。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n    NSArray *arr2 = [NSArray new];\n[arr firstObjectCommonWithArray:arr2];";
        [comparingArr addObject:model42];
       
        
        
        WyhModel *model43 = [WyhModel new];
        model43.firstName = @"- (BOOL)isEqualToArray:(NSArray<ObjectType> *)otherArray;";
        model43.secondName = @"将接收数组与另一个数组进行比较。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n     NSArray *arr2 = [NSArray new];\nBOOL isEqualArr = [arr isEqualToArray:arr2];";
        [comparingArr addObject:model43];
        
       
       
        [_dataArray addObject:comparingArr];
        
         //Deriving New Arrays
        
        NSMutableArray *derivingArr = [NSMutableArray new];
        
        WyhModel *model44 = [WyhModel new];
        model44.firstName = @"- (NSArray<ObjectType> *)arrayByAddingObject:(ObjectType)anObject;";
        model44.secondName = @"返回一个新的数组，该数组是接收数组的副本，其中添加了一个给定对象。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n   NSArray *arr2 = [arr arrayByAddingObject:@\"4\"];";
        [derivingArr addObject:model44];
        
       
        WyhModel *model45 = [WyhModel new];
        model45.firstName = @"- (NSArray<ObjectType> *)arrayByAddingObjectsFromArray:(NSArray<ObjectType> *)otherArray;";
        model45.secondName = @"返回一个新的数组，该数组是接收数组的副本，其中包含在另一个数组中包含的对象。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n   NSArray *arr2 = [arr arrayByAddingObjectsFromArray:arr];";
        [derivingArr addObject:model45];
        
        WyhModel *model46 = [WyhModel new];
        model46.firstName = @"- (NSArray<ObjectType> *)filteredArrayUsingPredicate:(NSPredicate *)predicate;";
        model46.secondName = @"对接收数组中的每个对象进行一个给定的谓词，并返回一个包含谓词返回true的对象的新数组。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n     NSArray *arr2 = @[@\"1\",@\"2\"];\nNSPredicate *predicate = [NSPredicate predicateWithFormat:@\"NOT (SELF in %@)\",arr2];\nNSArray *arr3 = [arr filteredArrayUsingPredicate:predicate];";
        [derivingArr addObject:model46];
        
        WyhModel *model47 = [WyhModel new];
        model47.firstName = @"- (NSArray<ObjectType> *)subarrayWithRange:(NSRange)range;";
        model47.secondName = @"返回一个包含接收数组元素的新数组，该数组的元素位于给定范围指定的范围内。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n      NSArray *arr2 = [arr subarrayWithRange:NSMakeRange(0, 2)];";
        [derivingArr addObject:model47];
       
      
        [_dataArray addObject:derivingArr];
        
        //Sorting
        NSMutableArray *sortingArr = [NSMutableArray new];
        
        WyhModel *model48 = [WyhModel new];
        model48.firstName = @"@property(readonly, copy) NSData *sortedArrayHint;";
        model48.secondName = @"分析这个数组并返回一个“提示”，当提示被提供给数组时，它将加速数组的排序。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\nNSData *data = arr.sortedArrayHint;";
        [sortingArr addObject:model48];
        
        WyhModel *model49 = [WyhModel new];
        model49.firstName = @"- (NSArray<ObjectType> *)sortedArrayUsingFunction:(NSInteger (*)(ObjectType, ObjectType, void *))comparator context:(void *)context;";
        model49.secondName = @"返回一个新的数组，该数组按照比较函数比较器的定义，以升序排列接收数组的元素。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n NSArray *arr2 = [arr sortedArrayUsingFunction:intSort context:nil];";
        [sortingArr addObject:model49];
       
        WyhModel *model50 = [WyhModel new];
        model50.firstName = @"- (NSArray<ObjectType> *)sortedArrayUsingFunction:(NSInteger (*)(ObjectType, ObjectType, void *))comparator context:(void *)context hint:(NSData *)hint;";
        model50.secondName = @"返回一个新的数组，该数组按照比较函数比较器的定义，以升序排列接收数组的元素。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n NSData *data = arr.sortedArrayHint;\nNSArray *arr2 = [arr sortedArrayUsingFunction:intSort context:nil hint:data];";
        [sortingArr addObject:model50];
       
        WyhModel *model51 = [WyhModel new];
        model51.firstName = @"- (NSArray<ObjectType> *)sortedArrayUsingDescriptors:(NSArray<NSSortDescriptor *> *)sortDescriptors;";
        model51.secondName = @"返回一个由排序描述符指定数组指定的接收数组的副本。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\n  NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@\"intValue\" ascending:YES];\nNSArray *arr2 = [arr sortedArrayUsingDescriptors:@[descriptor]];";
        [sortingArr addObject:model51];
        
        WyhModel *model52 = [WyhModel new];
        model52.firstName = @"- (NSArray<ObjectType> *)sortedArrayUsingSelector:(SEL)comparator;";
        model52.secondName = @"返回一个数组，该数组按升序排列接收数组的元素，由给定选择器指定的比较方法确定。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\nNSArray *arr2 = [arr sortedArrayUsingSelector:@selector(compare:)];";
        [sortingArr addObject:model52];
        
        WyhModel *model53 = [WyhModel new];
        model53.firstName = @"- (NSArray<ObjectType> *)sortedArrayUsingComparator:(NSComparator)cmptr;";
        model53.secondName = @"返回一个数组，该数组以升序列出接收数组的元素，由一个给定的NSComparator块指定的比较方法确定。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\nNSArray *arr2 = [arr sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {\nint value1 = [obj1 intValue];\nint value2 = [obj2 intValue];\nif (value1 > value2) {\nreturn NSOrderedDescending;\n}else if (value1 == value2){\nreturn NSOrderedSame;\n}else{\nreturn NSOrderedAscending;\n}\n}];";
        [sortingArr addObject:model53];
    
        WyhModel *model54 = [WyhModel new];
        model54.firstName = @"- (NSArray<ObjectType> *)sortedArrayWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr;";
        model54.secondName = @"返回一个数组，该数组按升序排列接收数组的元素，由给定的NSComparator块指定的比较方法确定。\n例子：NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\nNSArray *arr2 = [arr sortedArrayWithOptions:NSSortConcurrent usingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {\nint value1 = [obj1 intValue];\nint value2 = [obj2 intValue];\nif (value1 > value2) {\nreturn NSOrderedDescending;\n}else if (value1 == value2){\nreturn NSOrderedSame;\n}else{\nreturn NSOrderedAscending;\n}\n}];";
        [sortingArr addObject:model54];
       
        //Working with String Elements
        
        [_dataArray addObject:sortingArr];
    }
    return _dataArray;
}

NSInteger intSort(id num1,id mu2,void *context){
    int v1 = [num1 intValue];
    int v2 = [mu2 intValue];
    if (v1<v2) {
        return NSOrderedAscending;
    }else if (v1>v2){
        return NSOrderedDescending;
    }
    
    return NSOrderedSame;
}

-(void)logtest{
    NSLog(@"log log log...");
}

-(void)logwith:(NSString *)text{

    NSLog(@"log log with %@",text);
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
