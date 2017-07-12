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
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
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
        [_titleArray addObject:@"Decoding Geometry-Based Data"];
        [_titleArray addObject:@"Decoding Core Media Time Structures"];
        [_titleArray addObject:@"Secure Coding"];
        [_titleArray addObject:@"Getting Version Information"];
        [_titleArray addObject:@"Managing Zones"];
        [_titleArray addObject:@"Instance Properties"];
        [_titleArray addObject:@"Instance Methods"];
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
        
        WyhModel *model41 = [WyhModel new];
        model41.firstName = @"- (int)decodeIntForKey:(NSString *)key;";
        model41.secondName = @"解码并返回一个之前编码为encodeInt的int值:forKey:forKey:forKey:forKey:forKey:forKey:forKey:并与字符串键相关联。\n例子：int a = [coder decodeIntForKey:@\"1\"];";
        [dataArr addObject:model41];
      
        WyhModel *model42 = [WyhModel new];
        model42.firstName = @"- (NSInteger)decodeIntegerForKey:(NSString *)key;";
        model42.secondName = @"解码并返回一个以前编码为encodeInt的NSInteger值:forKey:forKey:forKey:forKey:forKey:forKey:forKey:并与字符串密钥相关联的值:forKey:forKey:forKey:forKey:forKey:forKey:forKey:forKey:forKey:forKey:forKey:forKey:forKey:forKey:forKey:forKey:forKey。\n例子：NSInteger a = [coder decodeIntegerForKey:@\"1\"];";
        [dataArr addObject:model42];
        
        WyhModel *model43 = [WyhModel new];
        model43.firstName = @"- (int32_t)decodeInt32ForKey:(NSString *)key;";
        model43.secondName = @"解码并返回一个32位的整型值，之前用encodeInt编码:forKey:forKey:forKey:forKey:forKey:forKey:forKey:并与字符串键相关联。\n例子：int a = [coder decodeInt32ForKey:@\"1\"];";
        [dataArr addObject:model43];
        
        WyhModel *model44 = [WyhModel new];
        model44.firstName = @"- (int64_t)decodeInt64ForKey:(NSString *)key;";
        model44.secondName = @"解码并返回一个32位的整型值，之前用encodeInt编码:forKey:forKey:forKey:forKey:forKey:forKey:forKey:并与字符串键相关联。\n例子：long long a = [coder decodeInt64ForKey:@\"1\"];";
        [dataArr addObject:model44];
        
        WyhModel *model45 = [WyhModel new];
        model45.firstName = @"- (id)decodeObject;";
        model45.secondName = @"解码一个之前被编码的objective-编码的objective-对象:方法。\n例子： id a = [coder decodeObject];";
        [dataArr addObject:model45];
       
        WyhModel *model46 = [WyhModel new];
        model46.firstName = @"- (id)decodeObjectForKey:(NSString *)key;";
        model46.secondName = @"编码解码并返回一个objective - c对象以前encodeObject:forKey:或encodeConditionalObject:forKey:和与字符串相关的关键。\n例子： id a = [coder decodeObjectForKey:@\"1\"];";
        [dataArr addObject:model46];
        
        WyhModel *model47 = [WyhModel new];
        model47.firstName = @"- (void)decodeValueOfObjCType:(const char *)type at:(void *)data;";
        model47.secondName = @"解码一个值，它的objective-e类型由valueType给出。\n例子： const char *a = NULL;\nvoid *b = NULL;\n[coder decodeValueOfObjCType:a at:b];";
        [dataArr addObject:model47];
       
        WyhModel *model48 = [WyhModel new];
        model48.firstName = @"- (void)decodeValuesOfObjCTypes:(const char *)types, ...;";
        model48.secondName = @"解码一系列可能不同的objective-a类型。\n例子： const char *a = NULL;\nvoid *b = NULL;\n[coder decodeValuesOfObjCTypes:a];";
        [dataArr addObject:model48];
        
        WyhModel *model49 = [WyhModel new];
        model49.firstName = @"- (id)decodeObjectOfClass:(Class)aClass forKey:(NSString *)key;";
        model49.secondName = @"为键解码一个对象，限制为指定的类。\n例子： id a = [coder decodeObjectOfClass:[NSArray class] forKey:@\"1\"];";
        [dataArr addObject:model49];
       
        WyhModel *model50 = [WyhModel new];
        model50.firstName = @"- (id)decodeObjectOfClasses:(NSSet<Class> *)classes forKey:(NSString *)key;";
        model50.secondName = @"为键解码一个对象，限制为指定的类。\n例子：NSArray *arr = @[[NSArray class],[NSString class]];\nNSSet *set = [NSSet setWithArray:arr];\nid a = [coder decodeObjectOfClasses:set forKey:@\"1\"];";
        [dataArr addObject:model50];
        
        WyhModel *model51 = [WyhModel new];
        model51.firstName = @"- (id)decodePropertyListForKey:(NSString *)key;";
        model51.secondName = @"为键解码一个对象，限制为指定的类。\n例子：id a = [coder decodePropertyListForKey:@\"1\"];";
        [dataArr addObject:model51];
        
        [_dataArray addObject:dataArr];
        
        //Decoding Geometry-Based Data
        NSMutableArray *gemeterydataArr = [NSMutableArray new];
        
        WyhModel *model52 = [WyhModel new];
        model52.firstName = @"- (CGPoint)decodeCGPointForKey:(NSString *)key;";
        model52.secondName = @"解码并返回与接收方存档中指定键相关联的CGPoint结构。\n例子：CGPoint point = [coder decodeCGPointForKey:@\"1\"];";
        [gemeterydataArr addObject:model52];
        
        WyhModel *model53 = [WyhModel new];
        model53.firstName = @"- (CGRect)decodeCGRectForKey:(NSString *)key;";
        model53.secondName = @"解码并返回与接收方存档中指定键相关联的CGRect结构。\n例子：CGRect rect = [coder decodeCGRectForKey:@\"1\"];";
        [gemeterydataArr addObject:model53];
        
        WyhModel *model54 = [WyhModel new];
        model54.firstName = @"- (CGSize)decodeCGSizeForKey:(NSString *)key;";
        model54.secondName = @"解码并返回与接收方存档中指定键相关联的CGSize结构。\n例子：CGSize size = [coder decodeCGSizeForKey:@\"1\"];";
        [gemeterydataArr addObject:model54];
        
        WyhModel *model55 = [WyhModel new];
        model55.firstName = @"- (CGAffineTransform)decodeCGAffineTransformForKey:(NSString *)key;";
        model55.secondName = @"解码并返回与接收方存档中指定键相关联的CGAffineTransform结构。\n例子： CGAffineTransform transform = [coder decodeCGAffineTransformForKey:@\"1\"];";
        [gemeterydataArr addObject:model55];
       
        WyhModel *model56 = [WyhModel new];
        model56.firstName = @"- (UIEdgeInsets)decodeUIEdgeInsetsForKey:(NSString *)key;";
        model56.secondName = @"解码并返回与接收者存档中指定的键相关联的ui刀刃集结构。\n例子： UIEdgeInsets inset = [coder decodeUIEdgeInsetsForKey:@\"1\"];";
        [gemeterydataArr addObject:model56];
       
        WyhModel *model57 = [WyhModel new];
        model57.firstName = @"- (UIOffset)decodeUIOffsetForKey:(NSString *)key;";
        model57.secondName = @"解码并返回与接收方存档中指定键相关联的ui偏移结构。\n例子： UIOffset offset = [coder decodeUIOffsetForKey:@\"1\"];";
        [gemeterydataArr addObject:model57];
       
        WyhModel *model58 = [WyhModel new];
        model58.firstName = @"- (CGVector)decodeCGVectorForKey:(NSString *)key;";
        model58.secondName = @"解码并返回与编码器存档中指定的键相关联的cg矢量数据。\n例子：CGVector vector = [coder decodeCGVectorForKey:@\"1\"];";
        [gemeterydataArr addObject:model58];
        
        [_dataArray addObject:gemeterydataArr];
        //Decoding Core Media Time Structures
        NSMutableArray *coreMediaArr = [NSMutableArray new];
        
        WyhModel *model59 = [WyhModel new];
        model59.firstName = @"- (CMTime)decodeCMTimeForKey:(NSString *)key;";
        model59.secondName = @"返回与给定键关联的CMTime结构。\n例子：CMTime time = [coder decodeCMTimeForKey:@\"1\"];";
        [coreMediaArr addObject:model59];
        
        WyhModel *model60 = [WyhModel new];
        model60.firstName = @"- (CMTimeRange)decodeCMTimeRangeForKey:(NSString *)key;";
        model60.secondName = @"返回与给定键相关联的CMTimeRange结构。\n例子：CMTimeRange rang = [coder decodeCMTimeRangeForKey:@\"1\"];";
        [coreMediaArr addObject:model60];
        
        WyhModel *model61 = [WyhModel new];
        model61.firstName = @"- (CMTimeMapping)decodeCMTimeMappingForKey:(NSString *)key;";
        model61.secondName = @"返回与给定键相关联的cmtimem说唱结构。\n例子：CMTimeMapping maooing = [coder decodeCMTimeMappingForKey:@\"1\"];";
        [coreMediaArr addObject:model61];
      
        [_dataArray addObject:coreMediaArr];
        
        //Secure Coding
        NSMutableArray *secureArr = [NSMutableArray new];
        
        WyhModel *model62 = [WyhModel new];
        model62.firstName = @"@property(readonly) BOOL requiresSecureCoding;";
        model62.secondName = @"布尔值，表示程序员是否需要安全编码。\n例子： BOOL requiresSecureCoding = coder.requiresSecureCoding;";
        [secureArr addObject:model62];
        
        WyhModel *model63 = [WyhModel new];
        model63.firstName = @"@property(readonly, copy) NSSet<Class> *allowedClasses;";
        model63.secondName = @"一组编码的类允许进行安全编码。\n例子：NSSet *set = coder.allowedClasses;";
        [secureArr addObject:model63];
        
        [_dataArray addObject:secureArr];
        
        //Getting Version Information
        NSMutableArray *versionArr = [NSMutableArray new];
        
        WyhModel *model64 = [WyhModel new];
        model64.firstName = @"@property(readonly) unsigned int systemVersion;";
        model64.secondName = @"一组编码的类允许进行安全编码。\n例子：unsigned int s = coder.systemVersion;";
        [versionArr addObject:model64];
        
        WyhModel *model65 = [WyhModel new];
        model65.firstName = @"- (NSInteger)versionForClassName:(NSString *)className;";
        model65.secondName = @"这种方法是出于历史原因的，并且不用于键控的档案。\n例子：NSInteger s = [coder versionForClassName:@\"1\"];";
        [versionArr addObject:model65];
        
        [_dataArray addObject:versionArr];
        
        //Managing Zones
        NSMutableArray *zonesArr = [NSMutableArray new];
        
        WyhModel *model66 = [WyhModel new];
        model66.firstName = @"- (NSZone *)objectZone;";
        model66.secondName = @"这种方法是由于历史原因而产生的，没有效果。\n例子：";
        [zonesArr addObject:model66];
        
        
        
        WyhModel *model67 = [WyhModel new];
        model67.firstName = @"- (void)setObjectZone:(NSZone *)zone;";
        model67.secondName = @"这种方法是由于历史原因而产生的，没有效果。\n例子：";
        [zonesArr addObject:model67];
        
        [_dataArray addObject:zonesArr];
        
        //Instance Properties
        NSMutableArray *instanceArr = [NSMutableArray new];
        
        WyhModel *model68 = [WyhModel new];
        model68.firstName = @"@property(readonly) NSDecodingFailurePolicy decodingFailurePolicy;";
        model68.secondName = @"。\n例子：NSDecodingFailurePolicy decodingFailurePolicy = coder.decodingFailurePolicy;";
        [instanceArr addObject:model68];
        
        WyhModel *model69 = [WyhModel new];
        model69.firstName = @"@property(readonly, copy) NSError *error;";
        model69.secondName = @"。\n例子：NSError *error = coder.error;";
        [instanceArr addObject:model69];
        
        [_dataArray addObject:instanceArr];
        
        //Instance Methods
        NSMutableArray *methArr = [NSMutableArray new];
        
        WyhModel *model70 = [WyhModel new];
        model70.firstName = @"- (void)failWithError:(NSError *)error;";
        model70.secondName = @"。\n例子：[coder failWithError:nil];";
        [methArr addObject:model70];
        
        WyhModel *model71 = [WyhModel new];
        model71.firstName = @"- (id)decodeTopLevelObjectAndReturnError:(NSError * _Nullable *)error;";
        model71.secondName = @"。\n例子：id ojo = [coder decodeTopLevelObjectAndReturnError:nil];";
        [methArr addObject:model71];
        
        WyhModel *model72 = [WyhModel new];
        model72.firstName = @"- (id)decodeTopLevelObjectForKey:(NSString *)key error:(NSError * _Nullable *)error;";
        model72.secondName = @"。\n例子：id ojo = [coder decodeTopLevelObjectForKey:@\"1\" error:nil];";
        [methArr addObject:model72];
        
        WyhModel *model73 = [WyhModel new];
        model73.firstName = @"- (id)decodeTopLevelObjectOfClass:(Class)aClass forKey:(NSString *)key error:(NSError * _Nullable *)error;";
        model73.secondName = @"。\n例子：id ojo = [coder decodeTopLevelObjectOfClass:[NSArray class] forKey:@\"1\" error:nil];";
        [methArr addObject:model73];
        
        WyhModel *model74 = [WyhModel new];
        model74.firstName = @"- (id)decodeTopLevelObjectOfClasses:(NSSet<Class> *)classes forKey:(NSString *)key error:(NSError * _Nullable *)error;";
        model74.secondName = @"。\n例子：NSArray *arr = @[[NSArray class],[NSString class]];\nNSSet *set = [NSSet setWithArray:arr];\n[coder decodeTopLevelObjectOfClasses:set forKey:@\"1\" error:nil];";
        [methArr addObject:model74];
        
        [_dataArray addObject:methArr];
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
