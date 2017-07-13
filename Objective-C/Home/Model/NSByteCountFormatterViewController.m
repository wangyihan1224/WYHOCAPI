//
//  NSByteCountFormatterViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/10.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSByteCountFormatterViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSByteCountFormatterViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSByteCountFormatterViewController

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
        [_titleArray addObject:@"NSByteCountFormatter"];
        [_titleArray addObject:@"Creating Strings from Byte Count"];
        [_titleArray addObject:@"Setting Formatting Styles"];
        [_titleArray addObject:@"Constants"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //NSByteCountFormatter
        NSMutableArray *titlarr = [NSMutableArray new];
        
        WyhModel *model = [WyhModel new];
        model.firstName = @"NSByteCountFormatter";
        model.secondName = @"NSByteCountFormatter类将一个字节计数值转换为一个本地化的描述，该描述使用适当的字节修饰符(KB、MB、GB等)进行格式化";
        [titlarr addObject:model];
        
        [_dataArray addObject:titlarr];
        
        //Creating Strings from Byte Count
        NSMutableArray *creatArr = [NSMutableArray new];
        NSByteCountFormatter *byteCount = [NSByteCountFormatter new];
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"+ (NSString *)stringFromByteCount:(long long)byteCount countStyle:(NSByteCountFormatterCountStyle)countStyle;";
        model1.secondName = @"将一个字节数为指定的字符串格式不创建一个NSNumber对象。\n例子：  NSString *byteCout = [NSByteCountFormatter stringFromByteCount:1314520 countStyle:NSByteCountFormatterCountStyleFile];";
        [creatArr addObject:model1];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"- (NSString *)stringFromByteCount:(long long)byteCount;";
        model2.secondName = @"将一个字节计数为一个字符串不创建一个NSNumber对象。\n例子： NSString *string = [byteCount stringFromByteCount:1314520];";
        [creatArr addObject:model2];
       
        [_dataArray addObject:creatArr];
        
        //Setting Formatting Styles
        NSMutableArray *setArr = [NSMutableArray new];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"@property NSFormattingContext formattingContext;";
        model3.secondName = @"指定格式化字符串的格式化上下文。\n例子：NSFormattingContext context = byteCount.formattingContext;";
        [setArr addObject:model3];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"@property NSByteCountFormatterCountStyle countStyle;";
        model4.secondName = @"指定用于字节的字节数。\n例子：NSByteCountFormatterCountStyle style = byteCount.countStyle;";
        [setArr addObject:model4];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"@property BOOL allowsNonnumericFormatting;";
        model5.secondName = @"确定是否允许更自然地显示某些值。\n例子： BOOL isNonnumeric = byteCount.allowsNonnumericFormatting;";
        [setArr addObject:model5];
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"@property BOOL includesActualByteCount;";
        model6.secondName = @"确定是否包含格式化字符串之后的字节数。\n例子： BOOL isNonnumeric = byteCount.includesActualByteCount;";
        [setArr addObject:model6];
       
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"@property(getter=isAdaptive) BOOL adaptive;";
        model7.secondName = @"确定大小表示的显示样式。\n例子： BOOL isNonnumeric = byteCount.adaptive;";
        [setArr addObject:model7];
        
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"@property NSByteCountFormatterUnits allowedUnits;";
        model8.secondName = @"指定可以在输出中使用的单元。\n例子： NSByteCountFormatterUnits units = byteCount.allowedUnits;";
        [setArr addObject:model8];
        
        WyhModel *model9 = [WyhModel new];
        model9.firstName = @"@property BOOL includesCount;";
        model9.secondName = @"确定是否将计数包含在生成的格式化字符串中。\n例子：BOOL isInclude = byteCount.includesCount;";
        [setArr addObject:model9];
        
        WyhModel *model10 = [WyhModel new];
        model10.firstName = @"@property BOOL includesUnit;";
        model10.secondName = @"确定是否包含生成格式化字符串中的单元。\n例子：BOOL isInclude = byteCount.includesUnit;";
        [setArr addObject:model10];
        
        WyhModel *model11 = [WyhModel new];
        model11.firstName = @"@property BOOL zeroPadsFractionDigits;";
        model11.secondName = @"确定是否为零垫分数数字，因此在一个表示中显示一致的字符数。\n例子：BOOL isInclude = byteCount.zeroPadsFractionDigits;";
        [setArr addObject:model11];
        
        [_dataArray addObject:setArr];
        
        //Constants
        NSMutableArray *constantArr = [NSMutableArray new];
        
        WyhModel *model12 = [WyhModel new];
        model12.firstName = @"NSByteCountFormatterUnits";
        model12.secondName = @"指定单位appropriate for the格式显示。任何单位明确表示原因只是那些单位to be used in showing the number。\n例子：NSByteCountFormatterUseDefault:这将导致适合于使用的平台的默认单元。这是默认值\nNSByteCountFormatterUseBytes:在格式化程序内容显示字节\nNSByteCountFormatterUseKB:在格式化程序内容显示字节\nNSByteCountFormatterUseMB:在格式化程序内容显示兆\nNSByteCountFormatterUseGB:在格式化程序内容显示千兆\nNSByteCountFormatterUseTB:在格式化的内容显示百万兆字节字节\nNSByteCountFormatterUsePB:在格式化程序内容显示字节\nNSByteCountFormatterUseEB:在格式化的内容显示艾字节\nNSByteCountFormatterUseZB:在格式化的内容显示泽字节\nNSByteCountFormatterUseYBOrHigher:在格式化的内容显示尧它字节\nNSByteCountFormatterUseAll:可以使用任何单位在格式化的内容";
        [constantArr addObject:model12];
        
        WyhModel *model13 = [WyhModel new];
        model13.firstName = @"NSByteCountFormatterCountStyle";
        model13.secondName = @"指定文件或存储字节计数的显示。显示样式是特定于平台的。\n例子：NSByteCountFormatterCountStyleFile:指定文件字节计数的显示。对此的实际行为是特定于平台的；在OS X 10.8中，它使用十进制样式，但随着时间的推移可能会发生变化\nNSByteCountFormatterCountStyleMemory:指定内存字节计数的显示。对此的实际行为是特定于平台的；在OS X 10.8中，它使用二进制样式，但随着时间的推移可能会发生变化\nNSByteCountFormatterCountStyleDecimal:使1000字节显示为1 KB。这是更好地使用nsbytecountformattercountstylefile或nsbytecountformattercountstylememory在大多数情况下\nNSByteCountFormatterCountStyleBinary:使1024字节显示为1 KB。这是更好地使用nsbytecountformattercountstylefile或nsbytecountformattercountstylememory在大多数情况下";
        [constantArr addObject:model13];
        
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
