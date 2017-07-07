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
        [_titleArray addObject:@"Deprecated Methods"];
        [_titleArray addObject:@"Constants"];
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
        
        WyhModel *model30 = [WyhModel new];
        model30.firstName = @"- (CGRect)boundingRectWithSize:(CGSize)size options:(NSStringDrawingOptions)options context:(NSStringDrawingContext *)context;";
        model30.secondName = @"返回绘制字符串所需的边界矩形。\n例子：CGRect rect = [string boundingRectWithSize:CGSizeZero options:NSStringDrawingUsesFontLeading context:nil];";
        [getArr addObject:model30];
        
        WyhModel *model31 = [WyhModel new];
        model31.firstName = @"- (BOOL)containsAttachmentsInRange:(NSRange)range;";
        model31.secondName = @"返回一个布尔值，表示该属性字符串是否包含在指定范围内配置的属性。\n例子：  BOOL isContain = [string containsAttachmentsInRange:NSMakeRange(0, 2)];";
        [getArr addObject:model31];
    
        [_dataArray addObject:getArr];
        
        //Deprecated Methods
        NSMutableArray *deprecatArr = [NSMutableArray new];
        
        WyhModel *model32 = [WyhModel new];
        model32.firstName = @"- (instancetype)initWithFileURL:(NSURL *)url options:(NSDictionary *)options documentAttributes:(NSDictionary * _Nullable *)dict error:(NSError * _Nullable *)error;";
        model32.secondName = @"从给定URL中的数据初始化一个新的带属性字符串对象。\n例子： NSAttributedString *strin2 = [[NSAttributedString alloc]initWithFileURL:[NSURL URLWithString:@\"www.baidu.com\"] options:nil documentAttributes:nil error:nil];";
        [deprecatArr addObject:model32];
       
        [_dataArray addObject:deprecatArr];
        
        //Constants
        NSMutableArray *constantArr = [NSMutableArray new];
        
        WyhModel *model33 = [WyhModel new];
        model33.firstName = @"NSAttributedStringEnumerationOptions";
        model33.secondName = @"这些常量描述了可供选择的选项enumerateAttribute:inRange:options:usingBlock: and enumerateAttributesInRange:options:usingBlock: methods。\n例子： NSAttributedStringEnumerationReverse:导致枚举发生相反的情况\nNSAttributedStringEnumerationLongestEffectiveRangeNotRequired:如果提供NSAttributedStringEnumerationLongestEffectiveRangeNotRequired选项,那么最长有效范围计算不是执行;连续属性的块调用运行相同的值";
        [constantArr addObject:model33];
        
        WyhModel *model34 = [WyhModel new];
        model34.firstName = @"NSUnderlineStyle";
        model34.secondName = @"常量用于指定NSUnderlineStyleAttributeName和NSStrikethroughStyleAttributeName带属性字符串的属性。\n例子： NSUnderlineStyleNone:不要画线\nNSUnderlineStyleSingle:画一行\nNSUnderlineStyleThick:画一个粗线\nNSUnderlineStyleDouble:画一个双线\nNSUnderlinePatternSolid:画一个实线\nNSUnderlinePatternDot:画出一条线\nNSUnderlinePatternDash:划一条划线\nNSUnderlinePatternDashDot:画一条交错的横线和点\nNSUnderlinePatternDashDotDot:画一条交错的横线和两个点\nNSUnderlineByWord:只在下面或通过文字，而不是空格";
        [constantArr addObject:model34];
        
        WyhModel *model35 = [WyhModel new];
        model35.firstName = @"NSWritingDirectionFormatType";
        model35.secondName = @"选项用于指定用于NSWritingDirectionAttributeName写作方向。\n例子： NSWritingDirectionEmbedding:文本在文本中嵌入另一个写作方向。例如，在一个阿拉伯语句子中间的一个英语引语可以被标记为嵌入从左到右的文本\nNSWritingDirectionOverride:在特殊情况下，可以使具有固有方向的字符类型被覆盖，例如由混合英语、数字和希伯来字母组成的部分数字，从右向左写";
        [constantArr addObject:model35];
        
        WyhModel *model36 = [WyhModel new];
        model36.firstName = @"Character Attributes";
        model36.secondName = @"可以将属性应用到一个带属性字符串中。\n例子： NSAttachmentAttributeName:这个属性的值是一个nstext附件对象。该属性的缺省值为nil，表示没有附件\nNSBackgroundColorAttributeName:这个属性的值是一个UIColor对象。使用这个属性来指定文本背后的背景区域的颜色。如果你没有指定这个属性，就不会绘制背景色\nNSBaselineOffsetAttributeName:这个属性的值是一个NSNumber对象，它包含一个浮点值，表示该字符在点上的偏移量。默认值为0\nNSCursorAttributeName:这个属性的值是一个nobject对象。默认值是ibeam游标方法返回的游标\nNSExpansionAttributeName:这个属性的值是一个NSNumber对象，它包含一个浮点值，表示要应用到符号的扩展因子的日志。默认值为0，表示没有展开\nNSFontAttributeName:这个属性的值是一个UIFont对象。使用这个属性来改变文本的字体。如果您没有指定该属性，那么该字符串默认使用12点Helvetica(Neue)字体\nNSForegroundColorAttributeName:这个属性的值是一个UIColor对象。使用该属性在呈现时指定文本的颜色。如果您没有指定该属性，那么文本将以黑色呈现\nNSKernAttributeName:这个属性的值是一个包含浮点值的NSNumber对象。这个值指定用来调整n-2字符的点的数量。Kerning可以防止在特定字符之间出现不需要的空间，并且依赖于字体。值0意味着禁用了kerning。该属性的默认值为0\nNSLigatureAttributeName:这个属性的值是一个包含一个整数的NSNumber对象。通过使用一个对应于这些字符的定制符号来呈现特定的字符组合。值0表示没有连接。值1表示默认的连接的使用。值2表示所有连接的使用。这个属性的默认值是1。(值2在iOS上是不支持的。)\nNSLinkAttributeName:这个属性的值是一个NSURL对象(首选)或一个NSString对象。该属性的默认值为nil，表示没有链接\nNSMarkedClauseSegmentAttributeName:该属性的值是一个包含一个整数的NSNumber对象，作为标记的文本表示子句段的索引\nNSObliquenessAttributeName:这个属性的值是一个NSNumber对象，它包含一个浮点值，表示将应用到符号上。默认值为0，表示没有歪斜\nNSParagraphStyleAttributeName:这个属性的值是一个NSParagraphStyle对象。使用该属性将多个属性应用到一系列文本中。如果您没有指定这个属性，那么字符串将使用默认的段落属性，这是由NSParagraphStyle的default段落hstyle方法返回的\nNSShadowAttributeName:这个属性的值是一个ns影子对象。该属性的默认值为nil\nNSStrikethroughColorAttributeName:这个属性的值是一个UIColor对象。默认值为nil，表示与前台颜色相同\nNSStrikethroughStyleAttributeName:这个属性的值是一个包含一个整数的NSNumber对象。这个值表示文本是否有一行，并对应于nslin线型中描述的一个常量。这个属性的默认值是nsunderlinlenone\nNSStrokeColorAttributeName:这个参数的值是一个UIColor对象。如果没有定义(默认情况),那么它将被认为是一样的价值NSForegroundColorAttributeName;否则,它描述了轮廓的颜色。要了解更多细节，请参阅被填充和抚摸的带属性字符串\nNSStrokeWidthAttributeName:这个属性的值是一个包含浮点值的NSNumber对象。这个值表示改变描边宽度的值，并指定为字体点大小的百分比。指定0(缺省值)，不进行任何更改。指定积极的值来改变中风的宽度。为描边指定负值，并填充文本。例如，概括文本的一个典型值是3.0\nNSTextEffectAttributeName:这个属性的值是一个NSString对象。使用这个属性来指定一个文本效果,比如NSTextEffectLetterpressStyle。该属性的默认值为nil，表示没有文本效果\nNSUnderlineColorAttributeName:这个属性的值是一个UIColor对象。默认值为nil，表示与前台颜色相同\nNSUnderlineStyleAttributeName:这个属性的值是一个包含一个整数的NSNumber对象。这个值表示文本是否被下划线，并对应于ns下划线中所描述的一个常量。这个属性的默认值是nsunderlinlenone\nNSVerticalGlyphFormAttributeName:这个属性的值是一个包含一个整数的NSNumber对象。值0表示水平文本。值1表示垂直文本。在iOS中，水平文本总是被使用并且指定不同的值是未定义的\nNSWritingDirectionAttributeName:这个属性的值是一个NSArray对象，它包含NSNumber对象，表示从最外层到最内层的写方向重写的嵌套级别。这个属性提供了一种方法来覆盖默认的双向文本算法，它相当于使用Unicode bidi控制字符LRE、RLE、LRO或RLO与PDF相匹配，但是作为一个高级属性。(请参阅Unicode标准附录9，了解Unicode bidi格式代码的信息。)NSWritingDirectionAttributeName常数是一个字符级属性,它提供了一个更高级别的选择包含显式的双向控制字符的文本。它是使用bdo元素与dir属性使用bdo元素的NSAttributedString。NSNumber对象的值应该是0,1,2,3,LRE,RLE,LRO,或RLO分别和组合NSWritingDirectionLeftToRight和NSWritingDirectionRightToLeft NSTextWritingDirectionEmbedding或NSTextWritingDirectionOverride,如表1所示。";
        [constantArr addObject:model36];
        
        WyhModel *model37 = [WyhModel new];
        model37.firstName = @"Document Types";
        model37.secondName = @"可以返回以下值中的NSDocumentTypeDocumentAttribute关键文档属性字典。\n例子： NSPlainTextDocumentType:纯文本文档。\nNSRTFTextDocumentType:富文本格式的文档\nNSRTFDTextDocumentType:带有附件文档的富文本格式\nNSHTMLTextDocumentType:超文本标记语言(HTML)文档";
        [constantArr addObject:model37];
        
        WyhModel *model38 = [WyhModel new];
        model38.firstName = @"Document Attributes";
        model38.secondName = @"初始化…方法可以返回一个包含以下文档范围属性的字典(macOS 10.4和后面的属性标识符;对早期系统使用实际的字符串值键):。\n例子： NSBackgroundColorDocumentAttribute:这个属性的值是一个NSColor对象，它代表了文档范围的页面背景颜色。\nNSCharacterEncodingDocumentAttribute:这个属性的值是一个NSNumber对象，它包含为文件指定nsstringen编码的整数;默认的文本是默认的编码。选项中的这个键可以指定用于读取数据的字符串编码。返回时，文档属性可以包含实际使用的编码。对于编写方法，该值用于生成纯文本数据\nNSDefaultAttributesDocumentAttribute:这个属性的值是一个NSDictionary对象，该对象包含要应用于普通文件的属性。读者所使用的方法。选项中的这个键可以指定应用于整个文档内容的默认属性。返回时，文档属性可以包含这个表示实际使用的属性的键。@“DefaultAttributes”\nNSDefaultTabIntervalDocumentAttribute:这个属性的值是一个包含浮点数的NSNumber对象。表示文档范围的默认选项卡停止间隔\nNSDocumentTypeDocumentAttribute:该属性的值是文档类型中声明的文档类型之一。对于读者方法，选项中的键可以指定解释内容的文档类型。返回时，文档属性可以包含这个键，用于指示用于读取内容的实际格式。对于写方法，这个键指定生成数据的格式。@“DocumentType”\nNSHyphenationFactorDocumentAttribute:这个属性的值是一个包含浮点数的NSNumber对象;0=off，1=完整的字符\nNSPaperMarginDocumentAttribute:这个属性的值是一个包含uiedge的NSValue对象。OS X v103和更早的字符串常量是@\"paper保证金\"\nNSPaperSizeDocumentAttribute:这个属性的值是一个包含NSSize的NSValue对象\nNSReadOnlyDocumentAttribute:这个属性的值是一个包含一个整数的NSNumber对象。如果缺失，0或负，不读，1或更多，只读\nNSTextLayoutSectionsAttribute:包含NSDictionary对象的NSArray，每个字典描述一个布局导向部分。字典可以有两个属性:NSTextLayoutSectionOrientation NSTextLayoutSectionRange。当有差距部分,它假定NSTextLayoutOrientationHorizontal。\nNSViewModeDocumentAttribute:这个属性的值是一个NSValue对象，它包含一个int;0=正常;1=页面布局(使用@“PaperSize”)\nNSViewSizeDocumentAttribute:这个属性的值是一个包含NSSize的NSValue对象\nNSViewZoomDocumentAttribute:这个属性的值是一个包含浮点数的NSValue对象。100 = 100%缩放";
        [constantArr addObject:model38];
        
        WyhModel *model39 = [WyhModel new];
        model39.firstName = @"Text Layout Sections Attribute";
        model39.secondName = @"使用这些常量NSTextLayoutSectionsAttribute。\n例子： NSTextLayoutSectionOrientation:一个NSNumber对象，其中包含一个nstextlayout的值。默认值是NSTextLayoutOrientationHorizontal。\nNSTextLayoutSectionRange:一个NSValue对象，它包含一个表示字符范围的NSRange。默认值是覆盖整个字符串的范围";
        [constantArr addObject:model39];
        
        WyhModel *model40 = [WyhModel new];
        model40.firstName = @"Text Effect Attribute";
        model40.secondName = @"这个常数是由NSTextEffectAttributeName使用。\n例子： NSTextEffectLetterpressStyle:一种图形文字效果，赋予字形印刷的外观，在这种形式下，印刷在纸上";
        [constantArr addObject:model40];
        
        WyhModel *model41 = [WyhModel new];
        model41.firstName = @"NSTextWritingDirection";
        model41.secondName = @"用于NSWritingDirectionAttributeName选项用于指定文本的写作方向。\n例子： NSTextWritingDirectionOverride:在特殊情况下，可以使具有固有方向的字符类型被覆盖，例如由混合英语、数字和希伯来字母组成的部分数字，从右向左写。而是使用NSWritingDirectionOverride常数\nNSTextWritingDirectionEmbedding:文本在文本中嵌入另一个写作方向。例如，在阿拉伯语句子中间的一个英语引语可以被标记为嵌入从左到右的文本。而是使用NSWritingDirectionEmbedding常数";
        [constantArr addObject:model41];
        
      
        
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
