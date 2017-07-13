//
//  ObjectiveCViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/4.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "ObjectiveCViewController.h"
#import "WyhModel.h"
#import "NSObjectViewController.h"
static NSString *nSObjectViewController=@"NSObjectViewController";
static NSString *templateCell = @"templateCell";
@interface ObjectiveCViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;

@end

@implementation ObjectiveCViewController

-(UITableView *)wyhTable{
    
    if (!_wyhTable) {
        _wyhTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREENMAINWIDTH, SCREENMAINHEIGHT) style:UITableViewStylePlain];
        _wyhTable.delegate = self;
        _wyhTable.dataSource = self;
        _wyhTable.sectionIndexBackgroundColor = CLEARCOLOR;
        _wyhTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_wyhTable registerClass:[UITableViewCell class] forCellReuseIdentifier:templateCell];
        
    }
    return _wyhTable;
}

-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        [_dataArray addObject:nSObjectViewController];
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
    
   
    return self.dataArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:templateCell];
 
    cell.textLabel.text = [NSString stringWithFormat:@"%ld、%@",(long)indexPath.row+1,self.dataArray[indexPath.row]];
    return cell;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *selecTitle = self.dataArray[indexPath.row];
    if ([selecTitle isEqualToString:nSObjectViewController]){
        NSObjectViewController *vc  = [NSObjectViewController new];
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
