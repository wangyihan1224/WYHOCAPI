//
//  NSCharacterSetViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/11.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSCharacterSetViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSCharacterSetViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSCharacterSetViewController

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
        [_titleArray addObject:@"Creating a Standard Character Set"];
        [_titleArray addObject:@"Creating a Character Set for URL Encoding"];
        [_titleArray addObject:@"Creating a Custom Character Set"];
        [_titleArray addObject:@"Creating and Managing Character Sets as Bitmap Repres"];
        [_titleArray addObject:@"Testing Set Membership"];
        [_titleArray addObject:@"Constants"];
        [_titleArray addObject:@"Initializers"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //Creating a Standard Character Set
        NSMutableArray *creatArr = [NSMutableArray new];
        NSCharacterSet *set = [NSCharacterSet alphanumericCharacterSet];
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"@property(readonly, class, copy) NSCharacterSet *alphanumericCharacterSet;";
        model1.secondName = @"返回一个包含字符的字符集，其中包含了Unicode一般类别的L、M和N。\n例子：NSCharacterSet *set = [NSCharacterSet alphanumericCharacterSet];";
        [creatArr addObject:model1];

        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"@property(readonly, class, copy) NSCharacterSet *capitalizedLetterCharacterSet;";
        model2.secondName = @"返回一个包含Unicode General类别中将字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet capitalizedLetterCharacterSet];";
        [creatArr addObject:model2];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"@property(readonly, class, copy) NSCharacterSet *controlCharacterSet;";
        model3.secondName = @"返回一个包含Unicode一般类别Cc和Cf的字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet controlCharacterSet];";
        [creatArr addObject:model3];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"@property(readonly, class, copy) NSCharacterSet *decimalDigitCharacterSet;";
        model4.secondName = @"返回一个包含十进制数的字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet decimalDigitCharacterSet];";
        [creatArr addObject:model4];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"@property(readonly, class, copy) NSCharacterSet *decomposableCharacterSet;";
        model5.secondName = @"返回一个包含Unicode字符的字符集，这些字符也可以表示为组合字符序列(比如带有重音的字符)，由Unicode字符编码标准的3.2版本的“标准分解”定义。\n例子：NSCharacterSet *set = [NSCharacterSet decomposableCharacterSet];";
        [creatArr addObject:model5];
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"@property(readonly, class, copy) NSCharacterSet *illegalCharacterSet;";
        model6.secondName = @"返回在非字符类别中包含值的字符集，或者在Unicode标准版本3.2中尚未定义的值。\n例子：NSCharacterSet *set = [NSCharacterSet illegalCharacterSet];";
        [creatArr addObject:model6];
        
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"@property(readonly, class, copy) NSCharacterSet *letterCharacterSet;";
        model7.secondName = @"返回一个包含Unicode一般类别L&M的字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet letterCharacterSet];";
        [creatArr addObject:model7];
        
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"@property(readonly, class, copy) NSCharacterSet *lowercaseLetterCharacterSet;";
        model8.secondName = @"返回一个包含Unicode通用类别Ll中的字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet lowercaseLetterCharacterSet];";
        [creatArr addObject:model8];
        
        WyhModel *model9 = [WyhModel new];
        model9.firstName = @"@property(readonly, class, copy) NSCharacterSet *newlineCharacterSet;";
        model9.secondName = @"返回一个包含新行字符的字符集(U+000个U+000 D，U+0085，U+2028，U+2029)。\n例子：NSCharacterSet *set = [NSCharacterSet newlineCharacterSet];";
        [creatArr addObject:model9];
        
        WyhModel *model10 = [WyhModel new];
        model10.firstName = @"@property(readonly, class, copy) NSCharacterSet *nonBaseCharacterSet;";
        model10.secondName = @"返回包含Unicode一般类别M中的字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet nonBaseCharacterSet];";
        [creatArr addObject:model10];
        
        WyhModel *model11 = [WyhModel new];
        model11.firstName = @"@property(readonly, class, copy) NSCharacterSet *punctuationCharacterSet;";
        model11.secondName = @"返回一个包含Unicode通用类别P中的字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet punctuationCharacterSet];";
        [creatArr addObject:model11];
        
        WyhModel *model12 = [WyhModel new];
        model12.firstName = @"@property(readonly, class, copy) NSCharacterSet *symbolCharacterSet;";
        model12.secondName = @"返回一个包含Unicode一般类别S中的字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet symbolCharacterSet];";
        [creatArr addObject:model12];
        
        WyhModel *model13 = [WyhModel new];
        model13.firstName = @"@property(readonly, class, copy) NSCharacterSet *uppercaseLetterCharacterSet;";
        model13.secondName = @"返回一个包含字符的字符集，其中包含了Unicode通用类中的字符。\n例子：NSCharacterSet *set = [NSCharacterSet uppercaseLetterCharacterSet];";
        [creatArr addObject:model13];
        
        WyhModel *model14 = [WyhModel new];
        model14.firstName = @"@property(readonly, class, copy) NSCharacterSet *whitespaceAndNewlineCharacterSet;";
        model14.secondName = @"返回一个包含字符的字符集，其中包含Unicode一般的Z、U+000和U+0085的字符。\n例子：NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];";
        [creatArr addObject:model14];
        
        WyhModel *model15 = [WyhModel new];
        model15.firstName = @"@property(readonly, class, copy) NSCharacterSet *whitespaceCharacterSet;";
        model15.secondName = @"返回一个包含Unicode一般类别z和字符表(U+0009)字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet whitespaceCharacterSet];";
        [creatArr addObject:model15];
        
        [_dataArray addObject:creatArr];
        
        //Creating a Character Set for URL Encoding
        NSMutableArray *creatsetArr = [NSMutableArray new];
        
        WyhModel *model16 = [WyhModel new];
        model16.firstName = @"@property(class, readonly, copy) NSCharacterSet *URLFragmentAllowedCharacterSet;";
        model16.secondName = @"返回片段URL组件中允许的字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet URLFragmentAllowedCharacterSet];";
        [creatsetArr addObject:model16];
        
        WyhModel *model17 = [WyhModel new];
        model17.firstName = @"@property(class, readonly, copy) NSCharacterSet *URLHostAllowedCharacterSet;";
        model17.secondName = @"返回主机URL子组件中允许的字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet URLHostAllowedCharacterSet];";
        [creatsetArr addObject:model17];
        
        WyhModel *model18 = [WyhModel new];
        model18.firstName = @"@property(class, readonly, copy) NSCharacterSet *URLPasswordAllowedCharacterSet;";
        model18.secondName = @"返回密码URL子组件中允许的字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet URLPasswordAllowedCharacterSet];";
        [creatsetArr addObject:model18];
        
        WyhModel *model19 = [WyhModel new];
        model19.firstName = @"@property(class, readonly, copy) NSCharacterSet *URLPathAllowedCharacterSet;";
        model19.secondName = @"返回路径URL组件中允许的字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet URLPathAllowedCharacterSet];";
        [creatsetArr addObject:model19];
        
        WyhModel *model20 = [WyhModel new];
        model20.firstName = @"@property(class, readonly, copy) NSCharacterSet *URLQueryAllowedCharacterSet;";
        model20.secondName = @"返回查询URL组件中允许的字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet URLQueryAllowedCharacterSet];";
        [creatsetArr addObject:model20];
        
        WyhModel *model21 = [WyhModel new];
        model21.firstName = @"@property(class, readonly, copy) NSCharacterSet *URLUserAllowedCharacterSet;";
        model21.secondName = @"返回用户URL子组件中允许的字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet URLUserAllowedCharacterSet];";
        [creatsetArr addObject:model21];
        
        [_dataArray addObject:creatsetArr];
        
        //Creating a Custom Character Set
        NSMutableArray *customArr = [NSMutableArray new];
        
        WyhModel *model22 = [WyhModel new];
        model22.firstName = @"+ (NSCharacterSet *)characterSetWithCharactersInString:(NSString *)aString;";
        model22.secondName = @"返回一个包含给定字符串中的字符的字符集。\n例子：NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@\"1\"];";
        [customArr addObject:model22];
        
        WyhModel *model23 = [WyhModel new];
        model23.firstName = @"+ (NSCharacterSet *)characterSetWithRange:(NSRange)aRange;";
        model23.secondName = @"返回一个字符集，其中包含一个给定范围内的Unicode值的字符。\n例子：NSCharacterSet *set = [NSCharacterSet characterSetWithRange:NSMakeRange(0, 2)];";
        [customArr addObject:model23];
        
        WyhModel *model24 = [WyhModel new];
        model24.firstName = @"@property(readonly, copy) NSCharacterSet *invertedSet;";
        model24.secondName = @"一个字符集，只包含在接收者中不存在的字符。。\n例子：NSCharacterSet *ch  = set.invertedSet;";
        [customArr addObject:model24];
        
        [_dataArray addObject:customArr];
        
        //Creating and Managing Character Sets as Bitmap Repres
        NSMutableArray *bitArr = [NSMutableArray new];
        
        WyhModel *model25 = [WyhModel new];
        model25.firstName = @"+ (NSCharacterSet *)characterSetWithBitmapRepresentation:(NSData *)data;";
        model25.secondName = @"返回一个包含由给定位图表示所决定的字符的字符集。\n例子：NSCharacterSet *ch  = [NSCharacterSet characterSetWithBitmapRepresentation:[NSData data]];";
        [bitArr addObject:model25];
        
        WyhModel *model26 = [WyhModel new];
        model26.firstName = @"+ (NSCharacterSet *)characterSetWithContentsOfFile:(NSString *)fName;";
        model26.secondName = @"返回一个字符集，该字符集是从文件中存储的位图表示中读取的。\n例子：NSCharacterSet *ch  = [NSCharacterSet characterSetWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@\"111\" ofType:@\"plist\"]];";
        [bitArr addObject:model26];
        
        WyhModel *model27 = [WyhModel new];
        model27.firstName = @"@property(readonly, copy) NSData *bitmapRepresentation;";
        model27.secondName = @"NSData对象以二进制格式编码接收方。\n例子：NSData *data = set.bitmapRepresentation;";
        [bitArr addObject:model27];
        
        [_dataArray addObject:bitArr];
        
        //Testing Set Membership
        NSMutableArray *membershipArr = [NSMutableArray new];
        
        WyhModel *model28 = [WyhModel new];
        model28.firstName = @"- (BOOL)characterIsMember:(unichar)aCharacter;";
        model28.secondName = @"返回一个布尔值，表示给定字符是否在接收方中。\n例子：unsigned short a = 0;\nBOOL ismember = [set characterIsMember:a];";
        [membershipArr addObject:model28];
        
        WyhModel *model29 = [WyhModel new];
        model29.firstName = @"- (BOOL)hasMemberInPlane:(uint8_t)thePlane;";
        model29.secondName = @"返回一个布尔值，该值表示接收方是否在给定字符平面内至少有一个成员。\n例子： unsigned char a = '\0';\nBOOL isHas = [set hasMemberInPlane:a];";
        [membershipArr addObject:model29];
        
        WyhModel *model30 = [WyhModel new];
        model30.firstName = @"- (BOOL)isSupersetOfSet:(NSCharacterSet *)theOtherSet;";
        model30.secondName = @"返回一个布尔值，表示接收方是否为另一个给定字符集的超集。\n例子： BOOL sisuper = [set isSupersetOfSet:[NSCharacterSet new]];";
        [membershipArr addObject:model30];
       
        WyhModel *model31 = [WyhModel new];
        model31.firstName = @"- (BOOL)longCharacterIsMember:(UTF32Char)theLongChar;";
        model31.secondName = @"返回一个布尔值，表示给定的长字符是否为接收方的成员。\n例子： UInt32 a = 0;\nBOOL ismember = [set longCharacterIsMember:a];";
        [membershipArr addObject:model31];
       
        [_dataArray addObject:membershipArr];
        
        //Constants
        NSMutableArray *constantArr = [NSMutableArray new];
        
        WyhModel *model32 = [WyhModel new];
        model32.firstName = @"NSOpenStepUnicodeReservedBase";
        model32.secondName = @"指定用于苹果公司使用的Unicode字符范围的下限。\n例子：NSOpenStepUnicodeReservedBase:指定用于苹果公司使用的Unicode字符范围的下限(范围是0xf400-0xf8ff)";
        [constantArr addObject:model32];
        
        [_dataArray addObject:constantArr];
        
        //Initializers
        NSMutableArray *initArr = [NSMutableArray new];
        
        WyhModel *model33 = [WyhModel new];
        model33.firstName = @"- (instancetype)initWithCoder:(NSCoder *)aDecoder;";
        model33.secondName = @"初始化。\n例子： NSCharacterSet *set1 = [[NSCharacterSet alloc]initWithCoder:[NSCoder new]];";
        [initArr addObject:model33];
       
        [_dataArray addObject:initArr];
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
