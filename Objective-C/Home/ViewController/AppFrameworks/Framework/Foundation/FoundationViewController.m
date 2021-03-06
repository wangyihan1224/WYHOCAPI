//
//  FoundationViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/4.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "FoundationViewController.h"

#import "NSDataViewController.h"
#import "NSCountedSetViewController.h"
#import "NSConditionLockViewController.h"
#import "NSConditionViewController.h"
#import "NSCompoundPredicateViewController.h"
#import "NSComparisonPredicateViewController.h"
#import "NSCoderViewController.h"
#import "NSCharacterSetViewController.h"
#import "NSCalendarViewController.h"
#import "NSCachedURLResponseViewController.h"
#import "NSCacheViewController.h"
#import "NSByteCountFormatterViewController.h"
#import "NSBundleResourceRequestViewController.h"
#import "NSBundleViewController.h"
#import "NSBlockOperationViewController.h"
#import "NSAutoreleasePoolViewController.h"
#import "NSAttributedStringViewController.h"
#import "NSArrayViewController.h"
#import "NSAssertionHandlerViewController.h"
static NSString *nSDataViewController=@"NSDataViewController";
static NSString *nSCountedSetViewController=@"NSCountedSetViewController";
static NSString *nSConditionLockViewController=@"NSConditionLockViewController";
static NSString *nSConditionViewController=@"NSConditionViewController";
static NSString *nSCompoundPredicateViewController=@"NSCompoundPredicateViewController";
static NSString *nSComparisonPredicateViewController=@"NSComparisonPredicateViewController";
static NSString *nSCoderViewController=@"NSCoderViewController";
static NSString *nSCharacterSetViewController=@"NSCharacterSetViewController";
static NSString *nSCalendarViewController=@"NSCalendarViewController";
static NSString *nSCachedURLResponseViewController=@"NSCachedURLResponseViewController";
static NSString *nSCacheViewController=@"NSCacheViewController";
static NSString *nSByteCountFormatterViewController=@"NSByteCountFormatterViewController";
static NSString *nSBundleResourceRequestViewController=@"NSBundleResourceRequestViewController";
static NSString *nSBundleViewController=@"NSBundleViewController";
static NSString *nSBlockOperationViewController=@"NSBlockOperationViewController";
static NSString *nSAutoreleasePoolViewController=@"NSAutoreleasePoolViewController";
static NSString *nSAttributedStringViewController=@"NSAttributedStringViewController";
static NSString *nSAssertionHandlerViewController=@"NSAssertionHandlerViewController";
static NSString *nSArrayViewController=@"NSArrayViewController";
static NSString *templateCell = @"templateCell";
@interface FoundationViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@end

@implementation FoundationViewController

-(UITableView *)wyhTable{
    
    if (!_wyhTable) {
        _wyhTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREENMAINWIDTH, SCREENMAINHEIGHT) style:UITableViewStylePlain];
        _wyhTable.delegate = self;
        _wyhTable.dataSource = self;
        _wyhTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_wyhTable registerClass:[UITableViewCell class] forCellReuseIdentifier:templateCell];
        
    }
    return _wyhTable;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        [_dataArray addObject:nSArrayViewController];
        [_dataArray addObject:nSAssertionHandlerViewController];
        [_dataArray addObject:nSAttributedStringViewController];
        [_dataArray addObject:nSAutoreleasePoolViewController];
        [_dataArray addObject:nSBlockOperationViewController];
        [_dataArray addObject:nSBundleViewController];
        [_dataArray addObject:nSBundleResourceRequestViewController];
        [_dataArray addObject:nSByteCountFormatterViewController];
        [_dataArray addObject:nSCacheViewController];
        [_dataArray addObject:nSCachedURLResponseViewController];
        [_dataArray addObject:nSCalendarViewController];
        [_dataArray addObject:nSCharacterSetViewController];
        [_dataArray addObject:nSCoderViewController];
        [_dataArray addObject:nSComparisonPredicateViewController];
        [_dataArray addObject:nSCompoundPredicateViewController];
        [_dataArray addObject:nSConditionViewController];
        [_dataArray addObject:nSConditionLockViewController];
        [_dataArray addObject:nSCountedSetViewController];
        [_dataArray addObject:nSDataViewController];
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:templateCell];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld、%@",(long)indexPath.row+1,self.dataArray[indexPath.row]];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *selecTitle = self.dataArray[indexPath.row];
    if ([selecTitle isEqualToString:nSArrayViewController]){
        NSArrayViewController *vc  = [NSArrayViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSAssertionHandlerViewController]){
        NSAssertionHandlerViewController *vc  = [NSAssertionHandlerViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSAttributedStringViewController]){
        NSAttributedStringViewController *vc  = [NSAttributedStringViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSAutoreleasePoolViewController]){
        NSAutoreleasePoolViewController *vc  = [NSAutoreleasePoolViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSBlockOperationViewController]){
        NSBlockOperationViewController *vc  = [NSBlockOperationViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSBundleViewController]){
        NSBundleViewController *vc  = [NSBundleViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSBundleResourceRequestViewController]){
        NSBundleResourceRequestViewController *vc  = [NSBundleResourceRequestViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSByteCountFormatterViewController]){
        NSByteCountFormatterViewController *vc  = [NSByteCountFormatterViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSCacheViewController]){
        NSCacheViewController *vc  = [NSCacheViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSCachedURLResponseViewController]){
        NSCachedURLResponseViewController *vc  = [NSCachedURLResponseViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSCalendarViewController]){
        NSCalendarViewController *vc  = [NSCalendarViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSCharacterSetViewController]){
        NSCharacterSetViewController *vc  = [NSCharacterSetViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSCoderViewController]){
        NSCoderViewController *vc  = [NSCoderViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSComparisonPredicateViewController]){
        NSComparisonPredicateViewController *vc  = [NSComparisonPredicateViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSCompoundPredicateViewController]){
        NSCompoundPredicateViewController *vc  = [NSCompoundPredicateViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSConditionViewController]){
        NSConditionViewController *vc  = [NSConditionViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSConditionLockViewController]){
        NSConditionLockViewController *vc  = [NSConditionLockViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSCountedSetViewController]){
        NSCountedSetViewController *vc  = [NSCountedSetViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([selecTitle isEqualToString:nSDataViewController]){
        NSDataViewController *vc  = [NSDataViewController new];
        vc.title = selecTitle;
        [self.navigationController pushViewController:vc animated:YES];
    }

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
