//
//  NSBundleResourceRequestViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/10.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSBundleResourceRequestViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSBundleResourceRequestViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSBundleResourceRequestViewController

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
        [_titleArray addObject:@"NSBundleResourceRequest"];
        [_titleArray addObject:@"Initializing a Resource Request"];
        [_titleArray addObject:@"Accessing the Configuration"];
        [_titleArray addObject:@"Requesting Resources"];
        [_titleArray addObject:@"Setting the Download Priority"];
        [_titleArray addObject:@"Tracking Progress"];
        [_titleArray addObject:@"Constants"];
        [_titleArray addObject:@"Notifications"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //NSBundleResourceRequest
        NSMutableArray *titlarr = [NSMutableArray new];
        
        WyhModel *model = [WyhModel new];
        model.firstName = @"NSBundleResourceRequest";
        model.secondName = @"一个NSBundleResourceRequest对象管理随需应变资源的可用性。按需资源是app Store上的应用程序内容，只有在你需要的时候才会下载";
        [titlarr addObject:model];
        
        [_dataArray addObject:titlarr];
        
        //Initializing a Resource Request
        NSMutableArray *initArr = [NSMutableArray new];
        
         NSBundleResourceRequest *bundleRequest = [[NSBundleResourceRequest alloc]initWithTags:[NSSet setWithObject:@1] bundle:[NSBundle mainBundle]];
        
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"- (instancetype)initWithTags:(NSSet<NSString *> *)tags;";
        model1.secondName = @"初始化资源请求，管理按指定标记的任何一组标记的按需资源。托管资源加载到主包中。\n例子：  NSBundleResourceRequest *bundleRequest = [[NSBundleResourceRequest alloc]initWithTags:[NSSet setWithObject:@1]];";
        [initArr addObject:model1];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"- (instancetype)initWithTags:(NSSet<NSString *> *)tags bundle:(NSBundle *)bundle;";
        model2.secondName = @"初始化资源请求，管理按指定标记的任何一组标记的按需资源。被管理的资源被加载到指定的包中。\n例子：  NSBundleResourceRequest *bundleRequest = [[NSBundleResourceRequest alloc]initWithTags:[NSSet setWithObject:@1] bundle:[NSBundle mainBundle]];";
        [initArr addObject:model2];
      
        [_dataArray addObject:initArr];
        
        //Accessing the Configuration
        NSMutableArray *accessArr = [NSMutableArray new];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"@property(readonly, strong) NSBundle *bundle;";
        model3.secondName = @"用于存储下载资源的包的引用。（只读）。\n例子：  NSBundleResourceRequest *bundleRequest = [[NSBundleResourceRequest alloc]initWithTags:[NSSet setWithObject:@1] bundle:[NSBundle mainBundle]];\nNSBundle *bundle = bundleRequest.bundle";
        [accessArr addObject:model3];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"@property(readonly, copy) NSSet<NSString *> *tags;";
        model4.secondName = @"一组字符串，每个字符串指定一个标记，用于标记请求管理的按需资源。（只读）。\n例子：  NSBundleResourceRequest *bundleRequest = [[NSBundleResourceRequest alloc]initWithTags:[NSSet setWithObject:@1] bundle:[NSBundle mainBundle]];\nNSSet *set = bundleRequest.tags";
        [accessArr addObject:model4];
        
        [_dataArray addObject:accessArr];
        
        //Requesting Resources
        NSMutableArray *requestArr = [NSMutableArray new];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"- (void)beginAccessingResourcesWithCompletionHandler:(void (^)(NSError *error))completionHandler;";
        model5.secondName = @"请求访问标记为托管标记的资源。如果任何资源不在设备上，则请求来自应用程序商店。\n例子：  NSBundleResourceRequest *bundleRequest = [[NSBundleResourceRequest alloc]initWithTags:[NSSet setWithObject:@1] bundle:[NSBundle mainBundle]];\n [bundleRequest beginAccessingResourcesWithCompletionHandler:^(NSError * _Nullable error) {\n}];";
        [requestArr addObject:model5];
       
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"- (void)conditionallyBeginAccessingResourcesWithCompletionHandler:(void (^)(BOOL resourcesAvailable))completionHandler;";
        model6.secondName = @"检查由请求管理的标记标记的资源是否已经在设备上。如果所有资源都在设备上，则可以开始访问这些资源。\n例子：  NSBundleResourceRequest *bundleRequest = [[NSBundleResourceRequest alloc]initWithTags:[NSSet setWithObject:@1] bundle:[NSBundle mainBundle]];\n  [bundleRequest conditionallyBeginAccessingResourcesWithCompletionHandler:^(BOOL resourcesAvailable) {\n}];";
        [requestArr addObject:model6];
        
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"- (void)endAccessingResources;";
        model7.secondName = @"通知系统您已经访问了由请求管理的标记标记的资源。\n例子：  NSBundleResourceRequest *bundleRequest = [[NSBundleResourceRequest alloc]initWithTags:[NSSet setWithObject:@1] bundle:[NSBundle mainBundle]];\n  [bundleRequest endAccessingResources];";
        [requestArr addObject:model7];
       
        [_dataArray addObject:requestArr];
        
        //Setting the Download Priority
        NSMutableArray *setArr = [NSMutableArray new];
        
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"@property double loadingPriority;";
        model8.secondName = @"对资源请求的相对优先级的系统的提示。\n例子：  NSBundleResourceRequest *bundleRequest = [[NSBundleResourceRequest alloc]initWithTags:[NSSet setWithObject:@1] bundle:[NSBundle mainBundle]];\n  double lp = bundleRequest.loadingPriority;";
        [setArr addObject:model8];
        
        [_dataArray addObject:setArr];
        
        //Tracking Progress
        NSMutableArray *trackArr = [NSMutableArray new];
        
        WyhModel *model9 = [WyhModel new];
        model9.firstName = @"@property(readonly, strong) NSProgress *progress;";
        model9.secondName = @"与指定资源请求相关联的进度对象的引用。（只读）。\n例子：  NSBundleResourceRequest *bundleRequest = [[NSBundleResourceRequest alloc]initWithTags:[NSSet setWithObject:@1] bundle:[NSBundle mainBundle]];\n    NSProgress *progeress = bundleRequest.progress;";
        [trackArr addObject:model9];
      
        [_dataArray addObject:trackArr];
        
        //Constants
        NSMutableArray *constantArr = [NSMutableArray new];
        
        WyhModel *model10 = [WyhModel new];
        model10.firstName = @"Download Priority Constants";
        model10.secondName = @"为loadingpriority属性的可能值。\n例子：  NSBundleResourceRequestLoadingPriorityUrgent:加载优先级的特殊值，通知系统，直到下载由请求管理的标记的资源被下载时，用户才能继续。系统将贡献最大容量来完成资源请求";
        [constantArr addObject:model10];
        
        WyhModel *model11 = [WyhModel new];
        model11.firstName = @"Resource Request Error Constants";
        model11.secondName = @"对nserror对象传递到completionhandler为beginaccessingresourceswithcompletionhandler的error.code属性的可能值：。\n例子：  NSBundleOnDemandResourceOutOfSpaceError:没有足够的空间下载请求的随需应变资源\nNSBundleOnDemandResourceExceededMaximumSizeError:访问资源将超过使用随需应变资源的最大内存\nNSBundleOnDemandResourceInvalidTagError:该请求包含一个或多个无效标记";
        [constantArr addObject:model11];
        
        [_dataArray addObject:constantArr];
        
        //Notifications
        NSMutableArray *notiArr = [NSMutableArray new];
        
        WyhModel *model12 = [WyhModel new];
        model12.firstName = @"NSBundleResourceRequestLowDiskSpaceNotification";
        model12.secondName = @"在系统检测到可用磁盘空间的数量越来越少后，发布。通知被发布到默认通知中心。\n例子：  NSBundleResourceRequestLowDiskSpaceNotification:在系统检测到可用磁盘空间的数量越来越少后，发布。通知被发布到默认通知中心";
        [notiArr addObject:model12];
        
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
