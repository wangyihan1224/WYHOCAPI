//
//  NSAttributedStringViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/7.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSAttributedStringViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSAttributedStringViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSAttributedStringViewController

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
        [_titleArray addObject:@"Creating an NSAttributedString Object"];
        [_titleArray addObject:@"Retrieving Character Information"];
        [_titleArray addObject:@"Retrieving Attriute Information"];
        [_titleArray addObject:@"Comparing Attributed Strings"];
        [_titleArray addObject:@"Extracting a Substring"];
        [_titleArray addObject:@"Enumerating over Attributes in a String"];
        [_titleArray addObject:@"Generating Data"];
        [_titleArray addObject:@"Drawing the String"];
        [_titleArray addObject:@"Gettting Metrics for the String"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //Creating an NSAttributedString Object
        NSMutableArray *creatArr =  [NSMutableArray new];
        NSAttributedString *string = [NSAttributedString new];
      
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"- (instancetype)initWithString:(NSString *)str;";
        model1.secondName = @"返回一个NSAttributedString对象，该对象用给定字符串的字符进行初始化，而没有属性信息。\n例子： NSAttributedString *string = [[NSAttributedString alloc]initWithString:@\"属性字符串\"];";
        [creatArr addObject:model1];
        
    
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"- (instancetype)initWithString:(NSString *)str attributes:(NSDictionary<NSString *,id> *)attrs;";
        model2.secondName = @"返回使用给定字符串和属性初始化的NSAttributedString对象。\n例子：NSAttributedString *string = [[NSAttributedString alloc]initWithString:@\"123\" attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]}];";
        [creatArr addObject:model2];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"- (instancetype)initWithAttributedString:(NSAttributedString *)attrStr;";
        model3.secondName = @"返回一个NSAttributedString对象，该对象由另一个给定属性字符串的字符和属性初始化。\n例子： NSAttributedString *string = [[NSAttributedString alloc]init];\nNSAttributedString *string2 = [[NSAttributedString alloc]initWithAttributedString:string];";
        [creatArr addObject:model3];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"- (instancetype)initWithData:(NSData *)data options:(NSDictionary<NSString *,id> *)options documentAttributes:(NSDictionary<NSString *,id> * _Nullable *)dict error:(NSError * _Nullable *)error;";
        model4.secondName = @"初始化并从给定数据对象中包含的数据返回一个新的带属性字符串对象。\n例子： NSString *html = @\"<bold>Wow!</bold> Now <em>iOS</em> can create <h3>NSAttributedString</h3> from HTMLs!\";\nNSData * data = [html dataUsingEncoding:NSUTF8StringEncoding];\nNSDictionary *options = @{NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType};\nNSAttributedString *attrString = [[NSAttributedString alloc] initWithData:data options:options documentAttributes:nil error:nil];";
        [creatArr addObject:model4];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"- (instancetype)initWithDocFormat:(NSData *)data documentAttributes:(NSDictionary<NSString *,id> * _Nullable *)dict;";
        model5.secondName = @"初始化并返回一个新的NSAttributedString对象，它来自于给定的NSData对象中包含的Microsoft Word格式数据。\n例子： NSString *html = @\"<bold>Wow!</bold> Now <em>iOS</em> can create <h3>NSAttributedString</h3> from HTMLs!\";\nNSData * data = [html dataUsingEncoding:NSUTF8StringEncoding];\nNSAttributedString *attrString = [[NSAttributedString alloc] initWithDocFormat:data documentAttributes:nil];";
        [creatArr addObject:model5];
        
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"- (instancetype)initWithHTML:(NSData *)data documentAttributes:(NSDictionary<NSString *,id> * _Nullable *)dict;";
        model6.secondName = @"初始化并从给定数据对象中包含的HTML返回一个新的NSAttributedString对象。\n例子： NSString *html = @\"<bold>Wow!</bold> Now <em>iOS</em> can create <h3>NSAttributedString</h3> from HTMLs!\";\nNSData * data = [html dataUsingEncoding:NSUTF8StringEncoding];\nNSAttributedString *attrString = [[NSAttributedString alloc] initWithHTML:data documentAttributes:nil];";
        [creatArr addObject:model6];
        
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"- (instancetype)initWithHTML:(NSData *)data baseURL:(NSURL *)base documentAttributes:(NSDictionary<NSString *,id> * _Nullable *)dict;";
        model7.secondName = @"初始化并返回一个新的NSAttributedString对象，从给定对象和基本URL中包含的HTML中返回。\n例子： NSString *html = @\"<bold>Wow!</bold> Now <em>iOS</em> can create <h3>NSAttributedString</h3> from HTMLs!\";\nNSData * data = [html dataUsingEncoding:NSUTF8StringEncoding];\nNSAttributedString *attrString = [[NSAttributedString alloc] initWithHTML:data baseURL:nil documentAttributes:nil];";
        [creatArr addObject:model7];
        
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"- (instancetype)initWithHTML:(NSData *)data options:(NSDictionary *)options documentAttributes:(NSDictionary<NSString *,id> * _Nullable *)dict;";
        model8.secondName = @"初始化并从给定数据对象中包含的HTML返回一个新的带属性字符串对象。\n例子： NSString *html = @\"<bold>Wow!</bold> Now <em>iOS</em> can create <h3>NSAttributedString</h3> from HTMLs!\";\nNSData * data = [html dataUsingEncoding:NSUTF8StringEncoding];\nNSAttributedString *attrString = [[NSAttributedString alloc] initWithHTML:data options:nil documentAttributes:nil];";
        [creatArr addObject:model8];
        
        WyhModel *model9 = [WyhModel new];
        model9.firstName = @"- (instancetype)initWithRTF:(NSData *)data documentAttributes:(NSDictionary<NSString *,id> * _Nullable *)dict;";
        model9.secondName = @"通过解码在给定数据对象中包含的RTF命令和数据，来初始化一个新的带属性字符串对象。\n例子： NSString *html = @\"<bold>Wow!</bold> Now <em>iOS</em> can create <h3>NSAttributedString</h3> from HTMLs!\";\nNSData * data = [html dataUsingEncoding:NSUTF8StringEncoding];\nNSAttributedString *attrString = [[NSAttributedString alloc] initWithRTF:data  documentAttributes:nil];";
        [creatArr addObject:model9];
        
        WyhModel *model10 = [WyhModel new];
        model10.firstName = @"- (instancetype)initWithRTFD:(NSData *)data documentAttributes:(NSDictionary<NSString *,id> * _Nullable *)dict;";
        model10.secondName = @"通过解码给定数据对象中包含的RTFD命令和数据，初始化一个新的带属性字符串对象。\n例子： NSString *html = @\"<bold>Wow!</bold> Now <em>iOS</em> can create <h3>NSAttributedString</h3> from HTMLs!\";\nNSData * data = [html dataUsingEncoding:NSUTF8StringEncoding];\nNSAttributedString *attrString = [[NSAttributedString alloc] initWithRTFD:data  documentAttributes:nil];";
        [creatArr addObject:model10];
        
        WyhModel *model11 = [WyhModel new];
        model11.firstName = @"- (instancetype)initWithRTFDFileWrapper:(NSFileWrapper *)wrapper documentAttributes:(NSDictionary<NSString *,id> * _Nullable *)dict;";
        model11.secondName = @"从包含一个RTFD文档的指定文件包装器初始化一个新的带属性字符串对象。\n例子： NSString *html = @\"<bold>Wow!</bold> Now <em>iOS</em> can create <h3>NSAttributedString</h3> from HTMLs!\";\nNSData * data = [html dataUsingEncoding:NSUTF8StringEncoding];\nNSFileWrapper *wrapper = [[NSFileWrapper alloc]initRegularFileWithContents:data];\nNSAttributedString *attrString = [[NSAttributedString alloc] initWithRTFDFileWrapper:wrapper  documentAttributes:nil];";
        [creatArr addObject:model11];
        
        WyhModel *model12 = [WyhModel new];
        model12.firstName = @"- (instancetype)initWithURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options documentAttributes:(NSDictionary<NSString *,id> * _Nullable *)dict error:(NSError * _Nullable *)error;";
        model12.secondName = @"从给定URL的内容初始化一个新的NSAttributedString对象。\n例子：NSURL *url = [[NSBundle mainBundle]URLForResource:@\"NSArrayEmple.plist\" withExtension:nil];\nNSAttributedString *attrString = [[NSAttributedString alloc] initWithURL:url options:nil  documentAttributes:nil error:nil];";
        [creatArr addObject:model12];
        
        WyhModel *model13 = [WyhModel new];
        model13.firstName = @"+ (NSAttributedString *)attributedStringWithAttachment:(NSTextAttachment *)attachment;";
        model13.secondName = @"创建带有附件的带属性字符串。\n例子：  NSTextAttachment *attachment = [[NSTextAttachment alloc]initWithData:nil ofType:nil];\nNSAttributedString *attrString = [NSAttributedString attributedStringWithAttachment:attachment];";
        [creatArr addObject:model13];
      
        [_dataArray addObject:creatArr];
        
        //Retrieving Character Information
        NSMutableArray *retrievingArr = [NSMutableArray new];
        
        WyhModel *model14 = [WyhModel new];
        model14.firstName = @"@property(readonly, copy) NSString *string;";
        model14.secondName = @"接收者的字符内容作为NSString对象。\n例子： NSString *string = [NSAttributedString new].string;";
        [retrievingArr addObject:model14];
        
        WyhModel *model15 = [WyhModel new];
        model15.firstName = @"@property(readonly) NSUInteger length;";
        model15.secondName = @"接收方的字符串对象的长度。\n例子：  NSUInteger length = [NSAttributedString new].length;";
        [retrievingArr addObject:model15];
        
       
        
        [_dataArray addObject:retrievingArr];
        //Retrieving Attriute Information
        NSMutableArray *attArr = [NSMutableArray new];
        
        WyhModel *model16 = [WyhModel new];
        model16.firstName = @"- (NSDictionary<NSString *,id> *)attributesAtIndex:(NSUInteger)location effectiveRange:(NSRangePointer)range;";
        model16.secondName = @"返回给定索引中的字符的属性。\n例子： NSAttributedString *string = [NSAttributedString new];\nNSRange rang = NSMakeRange(0, 1);\nNSRangePointer pointer = &rang;\nNSDictionary *dict = [string attributesAtIndex:1 effectiveRange:pointer];";
        [attArr addObject:model16];
        
        WyhModel *model17 = [WyhModel new];
        model17.firstName = @"- (NSDictionary<NSString *,id> *)attributesAtIndex:(NSUInteger)location longestEffectiveRange:(NSRangePointer)range inRange:(NSRange)rangeLimit;";
        model17.secondName = @"在给定的索引中返回该字符的属性，并引用属性应用的范围。\n例子： NSAttributedString *string = [NSAttributedString new];\nNSRange rang = NSMakeRange(0, 1);\nNSRangePointer pointer = &rang;\nNSDictionary *dict = [string attributesAtIndex:1 longestEffectiveRange:pointer inRange:rang];";
        [attArr addObject:model17];
        
        WyhModel *model18 = [WyhModel new];
        model18.firstName = @"- (id)attribute:(NSString *)attrName atIndex:(NSUInteger)location effectiveRange:(NSRangePointer)range;";
        model18.secondName = @"返回给定索引中给定名称的给定名称的属性的值，并引用该属性应用的范围。\n例子： NSAttributedString *string = [NSAttributedString new];\nNSRange rang = NSMakeRange(0, 1);\nNSRangePointer pointer = &rang;\nid attributeValue = [string attribute:@\"NSFontAttributeName\" atIndex:1 effectiveRange:pointer];";
        [attArr addObject:model18];
        
        WyhModel *model19 = [WyhModel new];
        model19.firstName = @"- (id)attribute:(NSString *)attrName atIndex:(NSUInteger)location longestEffectiveRange:(NSRangePointer)range inRange:(NSRange)rangeLimit;";
        model19.secondName = @"在给定的索引中使用给定名称的给定名称的属性返回该属性的值，并引用该属性应用的范围。\n例子： NSAttributedString *string = [NSAttributedString new];\nNSRange rang = NSMakeRange(0, 1);\nNSRangePointer pointer = &rang;\nid attributeValue = [string attribute:@\"NSFontAttributeName\" atIndex:1 longestEffectiveRange:pointer inRange:rang];";
        [attArr addObject:model19];
        
        [_dataArray addObject:attArr];
        
        //Comparing Attributed Strings
        NSMutableArray *comArr = [NSMutableArray new];
        
        WyhModel *model20 = [WyhModel new];
        model20.firstName = @"- (BOOL)isEqualToAttributedString:(NSAttributedString *)other;";
        model20.secondName = @"返回一个布尔值，该值表示接收方是否等于另一个给定的属性字符串。\n例子： NSAttributedString *string = [NSAttributedString new];\n  NSAttributedString *string2 = [NSAttributedString new];\nBOOL isEqual = [string2 isEqualToAttributedString:string];";
        [comArr addObject:model20];
        
      
        
      
        [_dataArray addObject: comArr];
        
        //Extracting a Substring
        NSMutableArray *subArr = [NSMutableArray new];
        
        WyhModel *model21 = [WyhModel new];
        model21.firstName = @"- (NSAttributedString *)attributedSubstringFromRange:(NSRange)range;";
        model21.secondName = @"返回一个布尔值，该值表示接收方是否等于另一个给定的属性字符串。\n例子： NSAttributedString *string = [NSAttributedString new];\n NSAttributedString *string2 = [string attributedSubstringFromRange:NSMakeRange(0, 1)];";
        [subArr addObject:model21];
        
        
        [_dataArray addObject:subArr];
        
        //Enumerating over Attributes in a String
        NSMutableArray *enumeratingArr = [NSMutableArray new];
        
        WyhModel *model22 = [WyhModel new];
        model22.firstName = @"- (void)enumerateAttribute:(NSString *)attrName inRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void (^)(id value, NSRange range, BOOL *stop))block;";
        model22.secondName = @"在指定的范围中执行指定的属性的块。\n例子： [string enumerateAttribute:@\"NSFontAttributeName\" inRange:NSMakeRange(0, 2) options:NSAttributedStringEnumerationReverse usingBlock:^(id  _Nullable value, NSRange range, BOOL * _Nonnull stop) {\n}];";
        [enumeratingArr addObject:model22];
        
        WyhModel *model23 = [WyhModel new];
        model23.firstName = @"- (void)enumerateAttributesInRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void (^)(NSDictionary<NSString *,id> *attrs, NSRange range, BOOL *stop))block;";
        model23.secondName = @"在范围内执行每个属性的块。\n例子： [string enumerateAttributesInRange:NSMakeRange(0, 2) options:NSAttributedStringEnumerationLongestEffectiveRangeNotRequired usingBlock:^(id  _Nullable value, NSRange range, BOOL * _Nonnull stop) {\n}];";
        [enumeratingArr addObject:model23];
       
        [_dataArray addObject:enumeratingArr];
        
       //Generating Data
        NSMutableArray *generatingArr = [NSMutableArray new];
        
        WyhModel *model24 = [WyhModel new];
        model24.firstName = @"- (NSData *)dataFromRange:(NSRange)range documentAttributes:(NSDictionary<NSString *,id> *)dict error:(NSError * _Nullable *)error;";
        model24.secondName = @"返回一个包含文本流的数据对象，该对象与给定范围内的字符和属性相对应。\n例子：NSData *data = [string dataFromRange:NSMakeRange(0, 1) documentAttributes:@{} error:nil];";
        [generatingArr addObject:model24];
        
        WyhModel *model25 = [WyhModel new];
        model25.firstName = @"- (NSFileWrapper *)fileWrapperFromRange:(NSRange)range documentAttributes:(NSDictionary<NSString *,id> *)dict error:(NSError * _Nullable *)error;";
        model25.secondName = @"返回一个nsfile封装器对象，该对象包含与给定范围内的字符和属性相对应的文本流。\n例子： NSFileWrapper *wrapper = [string fileWrapperFromRange:NSMakeRange(0, 1) documentAttributes:@{} error:nil];";
        [generatingArr addObject:model25];
       
        [_dataArray addObject:generatingArr];
        
        //Drawing the String
        NSMutableArray *drawArr = [NSMutableArray new];
        
        WyhModel *model26 = [WyhModel new];
        model26.firstName = @"- (void)drawAtPoint:(CGPoint)point;";
        model26.secondName = @"在当前的图形环境中，从指定的点开始绘制带属性的字符串。\n例子： [string drawAtPoint:CGPointMake(200, 200)];";
        [drawArr addObject:model26];
       
        WyhModel *model27 = [WyhModel new];
        model27.firstName = @"- (void)drawInRect:(CGRect)rect;";
        model27.secondName = @"在当前的图形环境中，在指定的边界矩形中绘制属性字符串。\n例子：[string drawInRect:CGRectMake(0, 100, 100, 100)];";
        [drawArr addObject:model27];
        
        WyhModel *model28 = [WyhModel new];
        model28.firstName = @"- (void)drawWithRect:(CGRect)rect options:(NSStringDrawingOptions)options context:(NSStringDrawingContext *)context;";
        model28.secondName = @"使用所提供的选项来绘制指定的边界矩形中的带属性字符串。\n例子：[string drawWithRect:CGRectMake(0, 100, 100, 100) options:NSStringDrawingUsesLineFragmentOrigin context:nil];";
        [drawArr addObject:model28];
        
        [_dataArray addObject:drawArr];
        
        //Gettting Metrics for the String
        NSMutableArray *getArr = [NSMutableArray new];
        
        WyhModel *model29 = [WyhModel new];
        model29.firstName = @"- (CGSize)size;";
        model29.secondName = @"返回绘制字符串所需的大小。\n例子：CGSize size = string.size;";
        [getArr addObject:model29];
        
        [_dataArray addObject:getArr];
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
