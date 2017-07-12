//
//  NSCoderViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/11.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSCoderViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
#import <CoreMedia/CoreMedia.h>
static NSString *templateCell = @"templateCell";
@interface NSCoderViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSCoderViewController

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
        [_titleArray addObject:@"Inspecting a Coder"];
        [_titleArray addObject:@"Encoding General Data"];
        [_titleArray addObject:@"Encoding Geometry-Based Data"];
        [_titleArray addObject:@"Encoding Core Media Time Structures"];
        [_titleArray addObject:@"Decoding General Data"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //Inspecting a Coder
        NSMutableArray *inspectArr = [NSMutableArray new];
        NSCoder *coder = [NSCoder new];
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"@property(readonly) BOOL allowsKeyedCoding;";
        model1.secondName = @"一个布尔值，表示接收方是否支持对象的键编码。\n例子：BOOL isAllow = coder.allowsKeyedCoding;";
        [inspectArr addObject:model1];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"- (BOOL)containsValueForKey:(NSString *)key;";
        model2.secondName = @"返回一个布尔值，该值表示字符串是否可用。\n例子：BOOL isContain = [coder containsValueForKey:@\"1\"];";
        [inspectArr addObject:model2];
        
        [_dataArray addObject:inspectArr];
        //Encoding General Data
        NSMutableArray *generalArr = [NSMutableArray new];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"- (void)encodeArrayOfObjCType:(const char *)type count:(NSUInteger)count at:(const void *)array;";
        model3.secondName = @"编码一个计数项的数组，它的objective-类型是由itemType提供的。\n例子： const char a;\nconst void *b = NULL;\n[coder encodeArrayOfObjCType:&a count:1 at:b];";
        [generalArr addObject:model3];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"- (void)encodeBool:(BOOL)boolv forKey:(NSString *)key;";
        model4.secondName = @"对布尔值进行编码并将其与字符串键关联起来。\n例子： BOOL a = false;\n[coder encodeBool:a forKey:@\"1\"];";
        [generalArr addObject:model4];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"- (void)encodeBycopyObject:(id)anObject;";
        model5.secondName = @"可以被子类覆盖，以便对对象进行编码，以便在解码时创建一个副本，而不是一个代理。\n例子：[coder encodeBycopyObject:@1];";
        [generalArr addObject:model5];
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"- (void)encodeByrefObject:(id)anObject;";
        model6.secondName = @"可以被子类覆盖，以便对对象进行编码，以便在解码时创建一个代理，而不是复制。\n例子：[coder encodeByrefObject:@1];";
        [generalArr addObject:model6];
        
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"- (void)encodeBytes:(const void *)byteaddr length:(NSUInteger)length;";
        model7.secondName = @"对数据的缓冲区进行编码，该缓冲区的类型是未知的。\n例子： const void *byteaddr = NULL;\n[coder encodeBytes:byteaddr length:5];";
        [generalArr addObject:model7];
       
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"- (void)encodeBytes:(const uint8_t *)bytesp length:(NSUInteger)lenv forKey:(NSString *)key;";
        model8.secondName = @"将数据的缓冲区编码为bytesp，它的长度由lenv指定，并将其与字符串键关联起来。\n例子： unsigned char a =0;\n[coder encodeBytes:&a length:2 forKey:@\"1\"];";
        [generalArr addObject:model8];
        
        WyhModel *model9 = [WyhModel new];
        model9.firstName = @"- (void)encodeConditionalObject:(id)object;";
        model9.secondName = @"可以被子类覆盖，以便有条件地对对象进行编码，保留对该对象的公共引用。\n例子： [coder encodeConditionalObject:@1];";
        [generalArr addObject:model9];
        
        WyhModel *model10 = [WyhModel new];
        model10.firstName = @"- (void)encodeConditionalObject:(id)objv forKey:(NSString *)key;";
        model10.secondName = @"有条件地编码对objv的引用，并将它与字符串键联系起来，只有当objv被无条件地编码为encodeObject:forKey:forKey:。\n例子：[coder encodeConditionalObject:@1 forKey:@\"1\"];";
        [generalArr addObject:model10];
        
        WyhModel *model11 = [WyhModel new];
        model11.firstName = @"- (void)encodeDataObject:(NSData *)data;";
        model11.secondName = @"编码一个给定的NSData对象。\n例子：[coder encodeDataObject:[NSData data]];";
        [generalArr addObject:model11];
        
        WyhModel *model12 = [WyhModel new];
        model12.firstName = @"- (void)encodeDouble:(double)realv forKey:(NSString *)key;";
        model12.secondName = @"对realv进行编码，并将其与字符串键关联起来。\n例子： [coder encodeDouble:5 forKey:@\"1\"];";
        [generalArr addObject:model12];
        
        WyhModel *model13 = [WyhModel new];
        model13.firstName = @"- (void)encodeFloat:(float)realv forKey:(NSString *)key;";
        model13.secondName = @"对realv进行编码并将其与字符串键关联起来。\n例子： [coder encodeFloat:5 forKey:@\"1\"];";
        [generalArr addObject:model13];
        
        WyhModel *model14 = [WyhModel new];
        model14.firstName = @"- (void)encodeInt:(int)intv forKey:(NSString *)key;";
        model14.secondName = @"对realv进行编码并将其与字符串键关联起来。\n例子： [coder encodeInt:5 forKey:@\"1\"];";
        [generalArr addObject:model14];
        
        WyhModel *model15 = [WyhModel new];
        model15.firstName = @"- (void)encodeInteger:(NSInteger)intv forKey:(NSString *)key;";
        model15.secondName = @"对给定的NSInteger进行编码并将其与给定的键关联起来。\n例子： [coder encodeInteger:5 forKey:@\"1\"];";
        [generalArr addObject:model15];
        
        WyhModel *model16 = [WyhModel new];
        model16.firstName = @"- (void)encodeInt32:(int32_t)intv forKey:(NSString *)key;";
        model16.secondName = @"在电视上对32位整数进行编码，并将其与字符串键关联起来。\n例子： [coder encodeInt32:5 forKey:@\"1\"];";
        [generalArr addObject:model16];
        
        WyhModel *model17 = [WyhModel new];
        model17.firstName = @"- (void)encodeInt64:(int64_t)intv forKey:(NSString *)key;";
        model17.secondName = @"在电视上编码64位整数，并将其与字符串键关联起来。\n例子： [coder encodeInt64:5 forKey:@\"1\"];";
        [generalArr addObject:model17];
        
        WyhModel *model18 = [WyhModel new];
        model18.firstName = @"- (void)encodeNXObject:(id)object;";
        model18.secondName = @"将旧式对象编码到编码器上。\n例子： [coder encodeNXObject:@5];";
        [generalArr addObject:model18];
        
        WyhModel *model19 = [WyhModel new];
        model19.firstName = @"- (void)encodeObject:(id)object;";
        model19.secondName = @"编码对象。\n例子： [coder encodeObject:@5];";
        [generalArr addObject:model19];
        
        WyhModel *model20 = [WyhModel new];
        model20.firstName = @"- (void)encodeObject:(id)objv forKey:(NSString *)key;";
        model20.secondName = @"对对象objv进行编码，并将其与字符串键关联起来。\n例子： [coder encodeObject:@5 forKey:@\"1\"];";
        [generalArr addObject:model20];
        
        WyhModel *model21 = [WyhModel new];
        model21.firstName = @"- (void)encodeRootObject:(id)rootObject;";
        model21.secondName = @"可以被子类覆盖，以便对一个相互关联的objective-objective-objective-对象进行编码，从rootObject开始。\n例子： [coder encodeRootObject:@5];";
        [generalArr addObject:model21];
    
        WyhModel *model22 = [WyhModel new];
        model22.firstName = @"- (void)encodeValueOfObjCType:(const char *)type at:(const void *)addr;";
        model22.secondName = @"必须被子类覆盖，以编码驻留在地址中的单一值，其objective-a类型由valueType给出。。\n例子： const char *a=NULL;\nconst void *b=NULL;\n[coder encodeValueOfObjCType:a at:b];";
        [generalArr addObject:model22];
        
        WyhModel *model23 = [WyhModel new];
        model23.firstName = @"- (void)encodeValuesOfObjCTypes:(const char *)types, ...;";
        model23.secondName = @"必须被子类覆盖，以编码驻留在地址中的单一值，其objective-a类型由valueType给出。。\n例子：   const char *a = NULL;\n[coder encodeValuesOfObjCTypes:a];";
        [generalArr addObject:model23];
      
        [_dataArray addObject:generalArr];
        
        //Encoding Geometry-Based Data
        NSMutableArray *geometryArr = [NSMutableArray new];
        
        WyhModel *model24 = [WyhModel new];
        model24.firstName = @"- (void)encodeCGPoint:(CGPoint)point forKey:(NSString *)key;";
        model24.secondName = @"编码一个点，并将其与接收者存档中的指定键关联起来。\n例子： [coder encodeCGPoint:CGPointMake(100, 100) forKey:@\"1\"];";
        [geometryArr addObject:model24];
        
        WyhModel *model25 = [WyhModel new];
        model25.firstName = @"- (void)encodeCGRect:(CGRect)rect forKey:(NSString *)key;";
        model25.secondName = @"对一个矩形进行编码并将其与接收者存档中的指定键关联起来。\n例子： [coder encodeCGRect:CGRectMake(10, 10, 100, 100) forKey:@\"1\"];";
        [geometryArr addObject:model25];
        
        WyhModel *model26 = [WyhModel new];
        model26.firstName = @"- (void)encodeCGSize:(CGSize)size forKey:(NSString *)key;";
        model26.secondName = @"编码大小信息并将其与接收者存档中的指定键关联起来。\n例子： [coder encodeCGSize:CGSizeMake(80, 80) forKey:@\"1\"];";
        [geometryArr addObject:model26];
       
        WyhModel *model27 = [WyhModel new];
        model27.firstName = @"- (void)encodeCGAffineTransform:(CGAffineTransform)transform forKey:(NSString *)key;";
        model27.secondName = @"对仿射转换进行编码，并将其与接收器存档中指定的键关联起来。。\n例子：[coder encodeCGAffineTransform:CGAffineTransformMake(10, 101, 10, 102, 10, 20) forKey:@\"1\"];";
        [geometryArr addObject:model27];
       
        WyhModel *model28 = [WyhModel new];
        model28.firstName = @"- (void)encodeUIEdgeInsets:(UIEdgeInsets)insets forKey:(NSString *)key;";
        model28.secondName = @"编码边缘inset数据，并将其与接收者存档中的指定键相关联。。\n例子：[coder encodeUIEdgeInsets:UIEdgeInsetsZero forKey:@\"1\"];";
        [geometryArr addObject:model28];
        
        WyhModel *model29 = [WyhModel new];
        model29.firstName = @"- (void)encodeUIOffset:(UIOffset)offset forKey:(NSString *)key;";
        model29.secondName = @"编码偏移量数据并将其与接收者存档中的指定键关联。\n例子：[coder encodeUIOffset:UIOffsetMake(100, 100) forKey:@\"1\"];";
        [geometryArr addObject:model29];
        
        WyhModel *model30 = [WyhModel new];
        model30.firstName = @"- (void)encodeCGVector:(CGVector)vector forKey:(NSString *)key;";
        model30.secondName = @"编码矢量数据并将其与编码器存档中的指定键关联起来。\n例子：[coder encodeCGVector:CGVectorMake(100, 100) forKey:@\"1\"];";
        [geometryArr addObject:model30];
        
        
        [_dataArray addObject:geometryArr];
        
        //Encoding Core Media Time Structures
        NSMutableArray *mediaArr = [NSMutableArray new];
        
        WyhModel *model31 = [WyhModel new];
        model31.firstName = @"- (void)encodeCMTime:(CMTime)time forKey:(NSString *)key;";
        model31.secondName = @"编码一个给定的CMTime结构，并将其与指定的键关联起来。\n例子：[coder encodeCMTime:CMTimeMake(3, 1) forKey:@\"1\"];(Core/Media)";
        [mediaArr addObject:model31];
        
        WyhModel *model32 = [WyhModel new];
        model32.firstName = @"- (void)encodeCMTimeRange:(CMTimeRange)timeRange forKey:(NSString *)key;";
        model32.secondName = @"对给定的CMTimeRange结构进行编码，并将其与指定的键关联起来。\n例子： CMTime start = CMTimeMake(10, 10);\nCMTime duration = CMTimeMake(202, 20);\n[coder encodeCMTimeRange:CMTimeRangeMake(start, duration) forKey:@\"1\"];(Core/Media)";
        [mediaArr addObject:model32];
       
        WyhModel *model33 = [WyhModel new];
        model33.firstName = @"- (void)encodeCMTimeMapping:(CMTimeMapping)timeMapping forKey:(NSString *)key;";
        model33.secondName = @"对给定的cmtimem说唱结构进行编码，并将其与指定的键关联起来。\n例子： CMTime start = CMTimeMake(10, 10);\nCMTime duration = CMTimeMake(202, 20);\n CMTimeRange source = CMTimeRangeMake(start, duration);\n CMTimeRange target = CMTimeRangeMake(start, duration);\n[coder encodeCMTimeMapping: CMTimeMappingMake(source, target) forKey:@\"1\"];(Core/Media)";
        [mediaArr addObject:model33];
    
        [_dataArray addObject:mediaArr];
        
        //Decoding General Data
        NSMutableArray *dataArr = [NSMutableArray new];
        
        WyhModel *model34 = [WyhModel new];
        model34.firstName = @"- (void)decodeArrayOfObjCType:(const char *)itemType count:(NSUInteger)count at:(void *)array;";
        model34.secondName = @"解码一组计数项，它的objective-类型是由itemType提供的。\n例子： const char * a = NULL;\nvoid *b = NULL;\n[coder decodeArrayOfObjCType:a count:1 at:b];";
        [dataArr addObject:model34];
        
        WyhModel *model35 = [WyhModel new];
        model35.firstName = @"- (BOOL)decodeBoolForKey:(NSString *)key;";
        model35.secondName = @"解码并返回一个布尔值，该值以前用encodeBool编码:forKey:并与字符串键相关联。\n例子： BOOL isDecode = [coder decodeBoolForKey:@\"1\"];";
        [dataArr addObject:model35];
        
        WyhModel *model36 = [WyhModel new];
        model36.firstName = @"- (const uint8_t *)decodeBytesForKey:(NSString *)key returnedLength:(NSUInteger *)lengthp;";
        model36.secondName = @"编码解码缓冲区的数据以前encodeBytes:长度:forKey:和与字符串相关的关键。\n例子： NSUInteger a = 10;\nconst unsigned char *b =  [coder decodeBytesForKey:@\"1\" returnedLength:&a];";
        [dataArr addObject:model36];
        
        WyhModel *model37 = [WyhModel new];
        model37.firstName = @"- (void *)decodeBytesWithReturnedLength:(NSUInteger *)lengthp;";
        model37.secondName = @"编码解码缓冲区的数据以前encodeBytes:长度:forKey:和与字符串相关的关键。\n例子： NSUInteger a = 1;\n[coder decodeBytesWithReturnedLength:&a];";
        [dataArr addObject:model37];
        
        WyhModel *model38 = [WyhModel new];
        model38.firstName = @"- (NSData *)decodeDataObject;";
        model38.secondName = @"解码并返回一个先前用encodeDataObject编码的NSData对象:。子类必须重写这个方法。\n例子： NSData *data = [coder decodeDataObject];";
        [dataArr addObject:model38];
        
        WyhModel *model39 = [WyhModel new];
        model39.firstName = @"- (double)decodeDoubleForKey:(NSString *)key;";
        model39.secondName = @"解码并返回之前编码的双重值:forKey:forKey:forKey:并与字符串键相关联。\n例子：double a = [coder decodeDoubleForKey:@\"1\"];";
        [dataArr addObject:model39];
        
        WyhModel *model40 = [WyhModel new];
        model40.firstName = @"- (float)decodeFloatForKey:(NSString *)key;";
        model40.secondName = @"解码并返回一个先前编码为编码的浮动值:forKey:forKey:forKey:并与字符串键相关联。\n例子：float a = [coder decodeFloatForKey:@\"1\"];";
        [dataArr addObject:model40];
        
        [_dataArray addObject:dataArr];
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
