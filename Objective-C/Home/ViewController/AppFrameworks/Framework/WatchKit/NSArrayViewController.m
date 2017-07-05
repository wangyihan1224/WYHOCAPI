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
@end

@implementation NSArrayViewController

-(UITableView *)wyhTable{
    
    if (!_wyhTable) {
        _wyhTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREENMAINWIDTH, SCREENMAINHEIGHT) style:UITableViewStylePlain];
        _wyhTable.delegate = self;
        _wyhTable.dataSource = self;
        _wyhTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_wyhTable registerClass:[NSArrayTableViewCell class] forCellReuseIdentifier:templateCell];
        
    }
    return _wyhTable;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
         //creating an array
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"+ (instancetype)array;";
        model1.secondName = @"创建并返回一个空数组。\n例子：NSArray *array = [NSArray array];";
        [_dataArray addObject:model1];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"+ (instancetype)arrayWithArray:(NSArray<ObjectType> *)array;";
        model2.secondName = @"创建并返回包含在另一个给定数组中的对象的数组。\n例子：NSArray *array1 = [NSArray new];\nNSArray *array2 = [NSArray arrayWithArray:array1];";
        [_dataArray addObject:model2];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"+ (NSArray<ObjectType> *)arrayWithContentsOfFile:(NSString *)path;";
        model3.secondName = @"创建并返回一个包含给定路径指定文件内容的数组。组。\n例子：NSString *nsarray = [[NSBundle mainBundle] pathForResource:@\"NSArrayEmple\" ofType:@\"plist\"];\nNSArray *arr = [NSArray arrayWithContentsOfFile:nsarray];";
        [_dataArray addObject:model3];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"+ (NSArray<ObjectType> *)arrayWithContentsOfURL:(NSURL *)url;";
        model4.secondName = @"创建并返回一个包含给定URL指定内容的数组。\n例子： NSURL *arrurl = [[NSBundle mainBundle]URLForResource:@\"NSArrayEmple.plist\" withExtension:nil];\nNSArray *arr = [NSArray arrayWithContentsOfURL:arrurl];";
        [_dataArray addObject:model4];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"+ (instancetype)arrayWithObject:(ObjectType)anObject;";
        model5.secondName = @"创建并返回包含给定对象的数组。\n例子：  NSArray *arr = [NSArray arrayWithObject:@\"1\"];";
        [_dataArray addObject:model5];
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"+ (instancetype)arrayWithObjects:(const ObjectType  _Nonnull [])objects count:(NSUInteger)cnt;";
        model6.secondName = @"创建并返回一个数组，其中包含给定的C数组中的给定数量的对象。\n例子： NSString *strings[3];\nstrings[0] = @\"first\";\nstrings[1]= @\"second\";\nstrings[2] = @\"three\";\nNSArray *arr2 = [NSArray arrayWithObjects: strings count:2];";
        [_dataArray addObject:model6];
        
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"+ (instancetype)arrayWithObjects:(ObjectType)firstObj, ...;";
        model7.secondName = @"创建并返回包含参数列表中的对象的数组。\n例子： NSArray *arr = [NSArray arrayWithObjects:@\"first\",@\"second\", nil];";
        [_dataArray addObject:model7];
        
        //initializing an array
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"- (instancetype)init;";
        model8.secondName = @"初始化一个新分配的数组。\n例子： NSArray *arr = [[NSArray alloc]init];";
        [_dataArray addObject:model8];
        
        WyhModel *model9 = [WyhModel new];
        model9.firstName = @"- (instancetype)initWithArray:(NSArray<ObjectType> *)array;";
        model9.secondName = @"初始化一个新分配的数组，将数组中的对象放在一个给定数组中。\n例子：   NSArray *arr1 =@[@\"fit\",@\"hit\",@\"eit\"];\nNSArray *arr = [[NSArray alloc]initWithArray:arr1];";
        [_dataArray addObject:model9];
        
        WyhModel *model10 = [WyhModel new];
        model10.firstName = @"- (instancetype)initWithArray:(NSArray<ObjectType> *)array copyItems:(BOOL)flag;";
        model10.secondName = @"初始化一个新分配的数组，使用anArray作为数组的数据对象的源。\n例子：  NSArray *arr = @[@\"1\",@\"2\",@\"3\"];\nNSArray *arr1 = [[NSArray alloc]initWithArray:arr copyItems:YES];";
        [_dataArray addObject:model10];
        
        WyhModel *model11 = [WyhModel new];
        model11.firstName = @"- (NSArray<ObjectType> *)initWithContentsOfFile:(NSString *)path;";
        model11.secondName = @"初始化一个新分配的数组，其中有指定路径指定的文件的内容。\n例子： NSString *path = [[NSBundle mainBundle] pathForResource:@\"NSArrayEmple\" ofType:@\"plist\"];\nNSArray *arr = [[NSArray alloc]initWithContentsOfFile:path];";
        [_dataArray addObject:model11];
        
        WyhModel *model12 = [WyhModel new];
        model12.firstName = @"- (NSArray<ObjectType> *)initWithContentsOfURL:(NSURL *)url;";
        model12.secondName = @"初始化一个新分配的数组，并使用指定URL指定的位置的内容。\n例子：NSURL *arrurl = [[NSBundle mainBundle]URLForResource:@\"NSArrayEmple.plist\" withExtension:nil];\nNSArray *arr =  [[NSArray alloc]initWithContentsOfURL:arrurl];";
        [_dataArray addObject:model12];
        
        WyhModel *model13 = [WyhModel new];
        model13.firstName = @"- (instancetype)initWithObjects:(ObjectType)firstObj, ...;";
        model13.secondName = @"通过在参数列表中放置对象来初始化一个新分配的数组。\n例子： NSArray *arr = [[NSArray alloc]initWithObjects:@\"1\",@\"2\", nil];";
        [_dataArray addObject:model13];
       
        WyhModel *model14 = [WyhModel new];
        model14.firstName = @"- (instancetype)initWithObjects:(ObjectType  _Nonnull const *)objects count:(NSUInteger)cnt;";
        model14.secondName = @"初始化一个新分配的数组，以包含给定的C数组中的给定数量的对象。\n例子： NSString *strings[3];\nstrings[0] = @\"first\";\nstrings[1]= @\"second\";\nstrings[2] = @\"three\";\n NSArray *arr = [[NSArray alloc]initWithObjects:strings count:2];";
        [_dataArray addObject:model14];
        
        //querying an array
        
       
    }
    return _dataArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.wyhTable];
    // Do any additional setup after loading the view.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.dataArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArrayTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:templateCell];
    cell.model = self.dataArray[indexPath.row];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return [tableView cellHeightForIndexPath:indexPath model:self.dataArray[indexPath.row] keyPath:@"model" cellClass:[NSArrayTableViewCell class] contentViewWidth:SCREENMAINWIDTH];
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
