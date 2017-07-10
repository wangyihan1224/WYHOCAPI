//
//  NSBundleViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/7.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSBundleViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSBundleViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSBundleViewController

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
        [_titleArray addObject:@"Getting Standard Bundle Objects"];
        [_titleArray addObject:@"Creating and Initializing a Bundle"];
        [_titleArray addObject:@"Loading Nib Files"];
        [_titleArray addObject:@"Finding Resource Files"];
        [_titleArray addObject:@"Fetching Localized Strings"];
        [_titleArray addObject:@"Getting the Standard Bundle Directories"];
        [_titleArray addObject:@"Getting Bundle Information"];
        [_titleArray addObject:@"Getting Localization Information"];
        [_titleArray addObject:@"Managing Preservation Priority for On Demand Resources"];
        [_titleArray addObject:@"Getting Classes from a Bundle"];
        [_titleArray addObject:@"Loading Code from a Bundle"];
        [_titleArray addObject:@"Constants"];
        [_titleArray addObject:@"Notifications"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //Getting Standard Bundle Objects
        NSMutableArray *getArr = [NSMutableArray new];
         NSBundle *bundle = [NSBundle mainBundle];
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"@property(class, readonly, strong) NSBundle *mainBundle;";
        model1.secondName = @"返回包含当前可执行文件的bundle对象。\n例子： NSBundle *bundle = [NSBundle mainBundle];";
        [getArr addObject:model1];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"@property(class, readonly, copy) NSArray<NSBundle *> *allFrameworks;";
        model2.secondName = @"返回代表框架的所有应用程序包的数组。\n例子：NSArray *arr =  [NSBundle allFrameworks];";
        [getArr addObject:model2];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"@property(class, readonly, copy) NSArray<NSBundle *> *allBundles;";
        model3.secondName = @"返回所有应用程序的非框架包的数组。\n例子： NSArray *arr = [NSBundle allBundles];";
        [getArr addObject:model3];
       
        [_dataArray addObject:getArr];
        
        //Creating and Initializing a Bundle
        NSMutableArray *creatArr =[NSMutableArray new];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"+ (instancetype)bundleWithURL:(NSURL *)url;";
        model4.secondName = @"返回一个与指定文件URL对应的NSBundle对象。\n例子： NSBundle *bundle1 = [NSBundle bundleWithURL:[NSURL URLWithString:@\"www.baidu.com\"]];";
        [creatArr addObject:model4];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"+ (instancetype)bundleWithPath:(NSString *)path;";
        model5.secondName = @"返回一个与指定目录相对应的NSBundle对象。\n例子： NSString *path = [[NSBundle mainBundle]pathForResource:@\"NSArrayEmple\" ofType:@\"plist\"];\nNSBundle *bundle1 = [NSBundle bundleWithPath:path];";
        [creatArr addObject:model5];
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"+ (NSBundle *)bundleForClass:(Class)aClass;";
        model6.secondName = @"返回指定类关联的NSBundle对象。\n例子： NSBundle *bundle1 = [NSBundle bundleForClass:[NSBundleViewController class]];";
        [creatArr addObject:model6];
        
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"+ (NSBundle *)bundleWithIdentifier:(NSString *)identifier;";
        model7.secondName = @"返回具有指定的bundle标识符的NSBundle实例。\n例子：NSBundle *bundle1 = [NSBundle bundleWithIdentifier:@\"identifier\"];";
        [creatArr addObject:model7];
        
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"- (instancetype)initWithURL:(NSURL *)url;";
        model8.secondName = @"返回一个初始化的NSBundle对象，以对应指定的文件URL。\n例子： NSBundle *bundle1 = [[NSBundle alloc]initWithURL:[NSURL URLWithString:@\"111\"]];";
        [creatArr addObject:model8];
        
        WyhModel *model9 = [WyhModel new];
        model9.firstName = @"- (instancetype)initWithPath:(NSString *)path;";
        model9.secondName = @"返回一个初始化的NSBundle对象，以与指定的目录相对应。\n例子： NSString *path = [[NSBundle mainBundle]pathForResource:@\"NSArrayEmple\" ofType:@\"plist\"];\nNSBundle *bundle1 = [[NSBundle alloc]initWithPath:path];";
        [creatArr addObject:model9];
       
       
        [_dataArray addObject:creatArr];
        
         //Loading Nib Files
        NSMutableArray *loadArr = [NSMutableArray new];
        
        WyhModel *model10 = [WyhModel new];
        model10.firstName = @"- (NSArray *)loadNibNamed:(NSString *)name owner:(id)owner options:(NSDictionary *)options;";
        model10.secondName = @"将位于接收方包中的nib文件的内容解出。\n例子： NSArray *arr = [[NSBundle mainBundle] loadNibNamed:@\"NSBundleNibViewController\" owner:self options:nil];";
        [loadArr addObject:model10];
        
       
        [_dataArray addObject:loadArr];
        
        //Finding Resource Files
        NSMutableArray *findArr = [NSMutableArray new];
        
        WyhModel *model11 = [WyhModel new];
        model11.firstName = @"- (NSURL *)URLForResource:(NSString *)name withExtension:(NSString *)ext subdirectory:(NSString *)subpath;";
        model11.secondName = @"返回指定的名称和扩展所标识的资源文件的文件URL，并驻留在给定的包目录中。\n例子：NSURL *url = [bundle URLForResource:@\"NSArrayEmple\" withExtension:@\"plist\" subdirectory:nil];";
        [findArr addObject:model11];
        
        WyhModel *model12 = [WyhModel new];
        model12.firstName = @"- (NSURL *)URLForResource:(NSString *)name withExtension:(NSString *)ext;";
        model12.secondName = @"返回指定名称和文件扩展所标识的资源的文件URL。\n例子：NSURL *url = [bundle URLForResource:@\"NSArrayEmple\" withExtension:@\"plist\"];";
        [findArr addObject:model12];
        
        WyhModel *model13= [WyhModel new];
        model13.firstName = @"- (NSArray<NSURL *> *)URLsForResourcesWithExtension:(NSString *)ext subdirectory:(NSString *)subpath;";
        model13.secondName = @"返回指定文件扩展所标识的所有资源的文件url数组，并位于指定的bundle子目录中。\n例子：NSArray *arr = [bundle URLsForResourcesWithExtension:@\"plist\" subdirectory:nil];";
        [findArr addObject:model13];
        
        WyhModel *model14= [WyhModel new];
        model14.firstName = @"- (NSURL *)URLForResource:(NSString *)name withExtension:(NSString *)ext subdirectory:(NSString *)subpath localization:(NSString *)localizationName;";
        model14.secondName = @"返回指定的名称和文件扩展所标识的资源的文件URL，位于指定的bundle子目录中，并且仅限于全局资源和与指定的本地化相关的资源。\n例子： NSURL *url = [bundle URLForResource:@\"NSArrayEmple\" withExtension:@\"plist\" subdirectory:nil localization:nil];";
        [findArr addObject:model14];
        
        WyhModel *model15= [WyhModel new];
        model15.firstName = @"- (NSArray<NSURL *> *)URLsForResourcesWithExtension:(NSString *)ext subdirectory:(NSString *)subpath localization:(NSString *)localizationName;";
        model15.secondName = @"返回指定的名称和文件扩展所标识的资源的文件URL，位于指定的bundle子目录中，并且仅限于全局资源和与指定的本地化相关的资源。\n例子： NSArray *arr = [bundle URLsForResourcesWithExtension:@\"plist\" subdirectory:nil localization:nil];";
        [findArr addObject:model15];
        
        WyhModel *model16= [WyhModel new];
        model16.firstName = @"+ (NSURL *)URLForResource:(NSString *)name withExtension:(NSString *)ext subdirectory:(NSString *)subpath inBundleWithURL:(NSURL *)bundleURL;";
        model16.secondName = @"创建并返回指定的包中指定的名称和扩展的资源的文件URL。\n例子：NSURL *url = [bundle URLForResource:@\"NSArrayEmple\" withExtension:@\"plist\" subdirectory:nil localization:nil];\nNSURL *url2 = [NSBundle URLForResource:@\"NSArrayEmple\" withExtension:@\"plist\" subdirectory:nil inBundleWithURL:url];";
        [findArr addObject:model16];
        
        WyhModel *model17= [WyhModel new];
        model17.firstName = @"+ (NSArray<NSURL *> *)URLsForResourcesWithExtension:(NSString *)ext subdirectory:(NSString *)subpath inBundleWithURL:(NSURL *)bundleURL;";
        model17.secondName = @"创建并返回指定的包中指定的名称和扩展的资源的文件URL。\n例子：NSURL *url = [bundle URLForResource:@\"NSArrayEmple\" withExtension:@\"plist\" subdirectory:nil localization:nil];\nNSArray *arr = [NSBundle URLsForResourcesWithExtension:@\"plist\" subdirectory:nil inBundleWithURL:url];";
        [findArr addObject:model17];
        
        WyhModel *model18= [WyhModel new];
        model18.firstName = @"- (NSString *)pathForResource:(NSString *)name ofType:(NSString *)ext;";
        model18.secondName = @"返回指定名称和文件扩展名标识的资源的完整路径名。\n例子：NSURL *url = [bundle pathForResource:@\"NSArrayEmple\" ofType:@\"plist\"];";
        [findArr addObject:model18];
        
        WyhModel *model19= [WyhModel new];
        model19.firstName = @"- (NSString *)pathForResource:(NSString *)name ofType:(NSString *)ext inDirectory:(NSString *)subpath;";
        model19.secondName = @"返回指定名称和文件扩展名标识的资源的完整路径名，并位于指定的bundle子目录中。\n例子：NSURL *url = [bundle pathForResource:@\"NSArrayEmple\" ofType:@\"plist\" inDirectory:nil];";
        [findArr addObject:model19];
       
        WyhModel *model20= [WyhModel new];
        model20.firstName = @"- (NSString *)pathForResource:(NSString *)name ofType:(NSString *)ext inDirectory:(NSString *)subpath forLocalization:(NSString *)localizationName;";
        model20.secondName = @"返回指定的名称和文件扩展名所标识的资源的完整路径名，该资源位于指定的bundle子目录中，并且仅限于全局资源和与指定的本地化相关的资源。\n例子：NSURL *url = [bundle pathForResource:@\"NSArrayEmple\" ofType:@\"plist\" inDirectory:nil forLocalization:nil];";
        [findArr addObject:model20];
        
        WyhModel *model21= [WyhModel new];
        model21.firstName = @"- (NSArray<NSString *> *)pathsForResourcesOfType:(NSString *)ext inDirectory:(NSString *)subpath;";
        model21.secondName = @"返回包含指定文件名扩展名的所有bundle资源的路径名，并驻留在资源子目录中。\n例子：NSArray *arr = [bundle pathsForResourcesOfType:@\"plist\" inDirectory:nil];";
        [findArr addObject:model21];
        
        WyhModel *model22= [WyhModel new];
        model22.firstName = @"- (NSArray<NSString *> *)pathsForResourcesOfType:(NSString *)ext inDirectory:(NSString *)subpath forLocalization:(NSString *)localizationName;";
        model22.secondName = @"返回一个包含文件的数组，其中包含指定的文件名扩展名，驻留在指定的资源子目录中，并且仅限于全局资源和与指定的本地化相关的资源。\n例子：NSArray *arr = [bundle pathsForResourcesOfType:@\"plist\" inDirectory:nil forLocalization:nil];";
        [findArr addObject:model22];
        
        WyhModel *model23= [WyhModel new];
        model23.firstName = @"+ (NSString *)pathForResource:(NSString *)name ofType:(NSString *)ext inDirectory:(NSString *)bundlePath;";
        model23.secondName = @"返回指定名称和扩展标识的资源文件的完整路径名，并驻留在给定的包目录中。。\n例子：NSArray *arr = [NSBundle pathForResource:@\"NSArrayEmple\" ofType:@\"plist\" inDirectory:nil];";
        [findArr addObject:model23];
        
        WyhModel *model24= [WyhModel new];
        model24.firstName = @"+ (NSArray<NSString *> *)pathsForResourcesOfType:(NSString *)ext inDirectory:(NSString *)bundlePath;";
        model24.secondName = @"返回指定名称和扩展标识的资源文件的完整路径名，并驻留在给定的包目录中。。\n例子：NSURL *url = [NSBundle pathsForResourcesOfType:@\"plist\" inDirectory:nil];";
        [findArr addObject:model24];
        
        [_dataArray addObject:findArr];
        
        //Fetching Localized Strings
        NSMutableArray *imagearr = [NSMutableArray new];
        
        WyhModel *model25= [WyhModel new];
        model25.firstName = @"- (NSString *)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName;";
        model25.secondName = @"返回指定键指定的字符串的本地化版本，并驻留在指定的表中。\n例子：NSString *string = [bundle localizedStringForKey:@\"1\" value:@\"2\" table:@\"tableName\"];";
        [imagearr addObject:model25];
        
        [_dataArray addObject:imagearr];
        
        //Getting the Standard Bundle Directories
        NSMutableArray *standArr = [NSMutableArray new];
        
        WyhModel *model26= [WyhModel new];
        model26.firstName = @"@property(readonly, copy) NSURL *resourceURL;";
        model26.secondName = @"包含资源文件的包的子目录的文件URL。\n例子：NSURL *url = bundle.resourceURL;";
        [standArr addObject:model26];
        
        WyhModel *model27= [WyhModel new];
        model27.firstName = @"@property(readonly, copy) NSURL *executableURL;";
        model27.secondName = @"接收者可执行文件的文件URL。\n例子：NSURL *url = bundle.executableURL;";
        [standArr addObject:model27];
        
        WyhModel *model28= [WyhModel new];
        model28.firstName = @"@property(readonly, copy) NSURL *privateFrameworksURL;";
        model28.secondName = @"包含私有框架的包的子目录的文件URL。\n例子：NSURL *url = bundle.privateFrameworksURL;";
        [standArr addObject:model28];
        
        WyhModel *model29= [WyhModel new];
        model29.firstName = @"@property(readonly, copy) NSURL *sharedFrameworksURL;";
        model29.secondName = @"包含共享框架的接收器的子目录的文件URL。\n例子：NSURL *url = bundle.sharedFrameworksURL;";
        [standArr addObject:model29];
        
        WyhModel *model30= [WyhModel new];
        model30.firstName = @"@property(readonly, copy) NSURL *builtInPlugInsURL;";
        model30.secondName = @"接收者的子目录包含插件的文件URL。\n例子：NSURL *url = bundle.builtInPlugInsURL;";
        [standArr addObject:model30];
        
        WyhModel *model31= [WyhModel new];
        model31.firstName = @"- (NSURL *)URLForAuxiliaryExecutable:(NSString *)executableName;";
        model31.secondName = @"将可执行文件的文件URL返回到接收者的包中指定的名称。\n例子：NSURL *url = [bundle URLForAuxiliaryExecutable:@\"指定的名称\"];";
        [standArr addObject:model31];
        
        WyhModel *model32= [WyhModel new];
        model32.firstName = @"@property(readonly, copy) NSURL *sharedSupportURL;";
        model32.secondName = @"包含共享支持文件的包的子目录的文件URL。\n例子：NSURL *url = bundle.sharedSupportURL;";
        [standArr addObject:model32];
        
        WyhModel *model33= [WyhModel new];
        model33.firstName = @"@property(readonly, copy) NSURL *appStoreReceiptURL;";
        model33.secondName = @"绑定包的应用程序商店收据的文件URL。\n例子：NSURL *url = bundle.appStoreReceiptURL;";
        [standArr addObject:model33];
        
        WyhModel *model34= [WyhModel new];
        model34.firstName = @"@property(readonly, copy) NSString *resourcePath;";
        model34.secondName = @"包含资源的包的子目录的完整路径名。\n例子：NSString *string = bundle.resourcePath;";
        [standArr addObject:model34];
        
        WyhModel *model35= [WyhModel new];
        model35.firstName = @"@property(readonly, copy) NSString *executablePath;";
        model35.secondName = @"接收者可执行文件的完整路径名。\n例子：NSString *string = bundle.executablePath;";
        [standArr addObject:model35];
        
        WyhModel *model36= [WyhModel new];
        model36.firstName = @"@property(readonly, copy) NSString *privateFrameworksPath;";
        model36.secondName = @"包含私有框架的包的子目录的完整路径名。\n例子：NSString *string = bundle.privateFrameworksPath;";
        [standArr addObject:model36];
        
        WyhModel *model37= [WyhModel new];
        model37.firstName = @"@property(readonly, copy) NSString *sharedFrameworksPath;";
        model37.secondName = @"包含共享框架的包的子目录的完整路径名。\n例子：NSString *string = bundle.sharedFrameworksPath;";
        [standArr addObject:model37];
        
        WyhModel *model38= [WyhModel new];
        model38.firstName = @"@property(readonly, copy) NSString *builtInPlugInsPath;";
        model38.secondName = @"接收者的子目录包含插件的完整路径名。\n例子：NSString *string = bundle.builtInPlugInsPath;";
        [standArr addObject:model38];
        
        WyhModel *model39= [WyhModel new];
        model39.firstName = @"- (NSString *)pathForAuxiliaryExecutable:(NSString *)executableName;";
        model39.secondName = @"将可执行文件的完整路径名返回到接收者的包中指定的名称。\n例子：NSString *string = [bundle pathForAuxiliaryExecutable:@\"executableName\"];";
        [standArr addObject:model39];
        
        WyhModel *model40= [WyhModel new];
        model40.firstName = @"@property(readonly, copy) NSString *sharedSupportPath;";
        model40.secondName = @"包含共享支持文件的包的子目录的完整路径名。\n例子：NSString *string = bundle.sharedSupportPath;";
        [standArr addObject:model40];
        
        [_dataArray addObject:standArr];
        
  
        //Getting Bundle Information
        NSMutableArray *soundArr = [NSMutableArray new];
        
        WyhModel *model41= [WyhModel new];
        model41.firstName = @"@property(readonly, copy) NSURL *bundleURL;";
        model41.secondName = @"接收方的bundle目录的完整URL。\n例子：NSURL *url = bundle.bundleURL;";
        [soundArr addObject:model41];
        
        WyhModel *model42= [WyhModel new];
        model42.firstName = @"@property(readonly, copy) NSString *bundlePath;";
        model42.secondName = @"接收者的bundle目录的完整路径名。\n例子：NSString *string = bundle.bundlePath;";
        [soundArr addObject:model42];
        
        WyhModel *model43= [WyhModel new];
        model43.firstName = @"@property(readonly, copy) NSString *bundleIdentifier;";
        model43.secondName = @"接收机的包标识符。\n例子：NSString *string = bundle.bundleIdentifier;";
        [soundArr addObject:model43];
        
        WyhModel *model44= [WyhModel new];
        model44.firstName = @"@property(readonly, copy) NSDictionary<NSString *,id> *infoDictionary;";
        model44.secondName = @"一个字典，由这个包的信息构成。plist文件包含关于接收者的信息。\n例子：NSDictionary *dict = bundle.infoDictionary;";
        [soundArr addObject:model44];
        
        WyhModel *model45= [WyhModel new];
        model45.firstName = @"- (id)objectForInfoDictionaryKey:(NSString *)key;";
        model45.secondName = @"在接收者的信息属性列表中返回与指定键相关联的值。\n例子：id value = [bundle objectForInfoDictionaryKey:@\"key\"];";
        [soundArr addObject:model45];
        
        [_dataArray addObject:soundArr];
        
        //Getting Localization Information
        NSMutableArray *localiArr = [NSMutableArray new];
        
        WyhModel *model46= [WyhModel new];
        model46.firstName = @"@property(readonly, copy) NSArray<NSString *> *localizations;";
        model46.secondName = @"包中包含的所有本地化的列表。\n例子：NSArray *arr = bundle.localizations;";
        [localiArr addObject:model46];
        
        WyhModel *model47= [WyhModel new];
        model47.firstName = @"@property(readonly, copy) NSArray<NSString *> *preferredLocalizations;";
        model47.secondName = @"包中包含的一个有序的本地化包列表。\n例子：NSArray *arr = bundle.preferredLocalizations;";
        [localiArr addObject:model47];
        
        WyhModel *model48= [WyhModel new];
        model48.firstName = @"@property(readonly, copy) NSString *developmentLocalization;";
        model48.secondName = @"开发语言的本地化。\n例子：NSString *string = bundle.developmentLocalization;";
        [localiArr addObject:model48];
        
        WyhModel *model49= [WyhModel new];
        model49.firstName = @"@property(readonly, copy) NSDictionary<NSString *,id> *localizedInfoDictionary;";
        model49.secondName = @"带有来自bundle的本地化属性列表的键的字典。\n例子：NSDictionary *dict = bundle.localizedInfoDictionary;";
        [localiArr addObject:model49];
        
        WyhModel *model50= [WyhModel new];
        model50.firstName = @"+ (NSArray<NSString *> *)preferredLocalizationsFromArray:(NSArray<NSString *> *)localizationsArray;";
        model50.secondName = @"返回一个或多个来自指定列表的本地化，该列表将用于为当前用户定位资源。\n例子：NSArray *arr = [NSBundle preferredLocalizationsFromArray:nil];";
        [localiArr addObject:model50];
        
        WyhModel *model51= [WyhModel new];
        model51.firstName = @"+ (NSArray<NSString *> *)preferredLocalizationsFromArray:(NSArray<NSString *> *)localizationsArray forPreferences:(NSArray<NSString *> *)preferencesArray;";
        model51.secondName = @"返回一个捆绑包对象所喜欢的本地化，考虑到指定的包和用户的语言首选项。\n例子：NSArray *arr = [NSBundle preferredLocalizationsFromArray:nil forPreferences:nil];";
        [localiArr addObject:model51];
        
        [_dataArray addObject:localiArr];
        
        //Managing Preservation Priority for On Demand Resources
        NSMutableArray *demandArr = [NSMutableArray new];
        
        WyhModel *model52= [WyhModel new];
        model52.firstName = @"- (void)setPreservationPriority:(double)priority forTags:(NSSet<NSString *> *)tags;";
        model52.secondName = @"对该包中清除标记集的相对顺序的一个提示。\n例子：NSSet *set = [NSSet setWithObjects:@1,@2,@3,@4,@4,nil];\n[bundle setPreservationPriority:2.0 forTags:set];";
        [demandArr addObject:model52];
        
        WyhModel *model53= [WyhModel new];
        model53.firstName = @"- (double)preservationPriorityForTag:(NSString *)tag;";
        model53.secondName = @"返回指定标签的当前保存优先级。\n例子：[bundle preservationPriorityForTag:@\"1\"];";
        [demandArr addObject:model53];
        
        [_dataArray addObject:demandArr];
        
        //Getting Classes from a Bundle
        NSMutableArray *classArr = [NSMutableArray new];
        
        WyhModel *model54= [WyhModel new];
        model54.firstName = @"- (Class)classNamed:(NSString *)className;";
        model54.secondName = @"返回指定名称的类对象。\n例子：Class class = [bundle classNamed:@\"NSArray\"];";
        [classArr addObject:model54];
        
        WyhModel *model55= [WyhModel new];
        model55.firstName = @"@property(readonly) Class principalClass;";
        model55.secondName = @"包的主要类。\n例子：Class class = bundle.principalClass;";
        [classArr addObject:model55];
        
        [_dataArray addObject:classArr];
        
        //Loading Code from a Bundle
        NSMutableArray *codeArr = [NSMutableArray new];
        
        WyhModel *model56= [WyhModel new];
        model56.firstName = @"@property(readonly, copy) NSArray<NSNumber *> *executableArchitectures;";
        model56.secondName = @"一组数字表示由bundle的可执行文件支持的体系结构类型。\n例子：NSArray *arr = bundle.executableArchitectures;";
        [codeArr addObject:model56];
        
        WyhModel *model57= [WyhModel new];
        model57.firstName = @"- (BOOL)preflightAndReturnError:(NSError * _Nullable *)error;";
        model57.secondName = @"返回一个布尔值，指示该bundle的可执行代码是否可以成功加载。\n例子：BOOL isSuccessLoad = [bundle preflightAndReturnError:nil];";
        [codeArr addObject:model57];
        
        WyhModel *model58= [WyhModel new];
        model58.firstName = @"- (BOOL)load;";
        model58.secondName = @"如果代码还没有加载，那么可以动态地将bundle的可执行代码加载到一个正在运行的程序中。\n例子：BOOL isSuccessLoad = [bundle load];";
        [codeArr addObject:model58];
        
        WyhModel *model59= [WyhModel new];
        model59.firstName = @"- (BOOL)loadAndReturnError:(NSError * _Nullable *)error;";
        model59.secondName = @"加载bundle的可执行代码并返回任何错误。\n例子：BOOL isSuccessLoad = [bundle loadAndReturnError:nil];";
        [codeArr addObject:model59];
        
        WyhModel *model60= [WyhModel new];
        model60.firstName = @"- (BOOL)unload;";
        model60.secondName = @"卸载与接收方相关联的代码。\n例子：BOOL isSuccessLoad = [bundle unload];";
        [codeArr addObject:model60];
        
        WyhModel *model61= [WyhModel new];
        model61.firstName = @"@property(readonly, getter=isLoaded) BOOL loaded;";
        model61.secondName = @"一个包的负载状态。\n例子：BOOL isSuccessLoad = bundle.loaded;";
        [codeArr addObject:model61];
        
        [_dataArray addObject:codeArr];
        //Constants
        NSMutableArray *constantArr =[NSMutableArray new];
        
        WyhModel *model62= [WyhModel new];
        model62.firstName = @"Mach-O Architecture";
        model62.secondName = @"这些常量描述了一个bundle的可执行代码可能支持的CPU类型。\n例子：NSBundleExecutableArchitectureI386:指定32位Intel架构\nNSBundleExecutableArchitecturePPC:指定32位PowerPC架构\nNSBundleExecutableArchitectureX86_64:指定64位Intel架构\nNSBundleExecutableArchitecturePPC64:指定64位PowerPC体系结构";
        [constantArr addObject:model62];
        
        WyhModel *model63= [WyhModel new];
        model63.firstName = @"UIKit Nib Loading Options";
        model63.secondName = @"可以在nib加载期间指定的选项。\n例子：UINibExternalObjects:在nib文件中替换任何代理对象。这个键的值是一个NSDictionary对象。字典的键是nib文件中任何代理对象的名称，每个键的值是用来代替代理的实际对象\nUINibProxiedObjectsKey:在iOS 2。这个键的值是一个字典，它包含了在nib文件中使用的任何代理对象的运行时替换对象。在这个字典中，键是与代理对象相关联的名称，而值是应该在其位置使用的代码中的实际对象";
        [constantArr addObject:model63];
        
        WyhModel *model64= [WyhModel new];
        model64.firstName = @"NSLoadedClasses";
        model64.secondName = @"这个常数中提供了用户信息的字典NSBundleDidLoadNotification通知。\n例子：NSLoadedClasses:一个NSArray对象，其中包含加载的每个类的名称(作为NSString对象)";
        [constantArr addObject:model64];
        
        [_dataArray addObject:constantArr];
        
        //Notifications
        NSMutableArray *notiArr = [NSMutableArray new];
        
        WyhModel *model65= [WyhModel new];
        model65.firstName = @"NSBundleDidLoadNotification";
        model65.secondName = @"NSBundle帖子NSBundleDidLoadNotification通知观察者哪些类和类别动态加载的。\n例子：NSBundleDidLoadNotification:NSBundle帖子NSBundleDidLoadNotification通知观察者哪些类和类别动态加载的";
        [notiArr addObject:model65];
        
        [_dataArray addObject:notiArr];
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
