//
//  FoundationViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/4.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "FoundationViewController.h"

#import "NSBundleResourceRequestViewController.h"
#import "NSBundleViewController.h"
#import "NSBlockOperationViewController.h"
#import "NSAutoreleasePoolViewController.h"
#import "NSAttributedStringViewController.h"
#import "NSArrayViewController.h"
#import "NSAssertionHandlerViewController.h"
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
    cell.textLabel.text = self.dataArray[indexPath.row];
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
