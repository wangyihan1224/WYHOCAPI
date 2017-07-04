//
//  NSArrayViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/4.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSArrayViewController.h"

@interface NSArrayViewController ()
@property(nonatomic,strong)UIScrollView *wyhScrollView;
@property(nonatomic,strong)UIView *arrayView;
@property(nonatomic,strong)UIView *secondView;
@property(nonatomic,strong)UIView *threeView;
@end

@implementation NSArrayViewController
-(UIScrollView *)wyhScrollView{
    
    if (!_wyhScrollView) {
        _wyhScrollView = [[UIScrollView alloc]init];
        [_wyhScrollView sd_addSubviews:@[self.arrayView]];
        
        self.arrayView.sd_layout
        .topSpaceToView(_wyhScrollView, 10)
        .leftEqualToView(_wyhScrollView)
        .rightEqualToView(_wyhScrollView);
        
        
        [_wyhScrollView setupAutoContentSizeWithBottomView:self.arrayView bottomMargin:10];
    }
    return _wyhScrollView;
}
-(UIView *)arrayView{
    if (!_arrayView) {
        _arrayView = [UIView new];
        
        UILabel *titleLb = [UILabel new];
        titleLb.text = @"+ (instancetype)array;";
        [_arrayView addSubview:titleLb];
        titleLb.sd_layout
        .topEqualToView(_arrayView)
        .leftEqualToView(_arrayView)
        .autoHeightRatio(0);
        [titleLb setSd_maxWidth:@(SCREENMAINWIDTH)];
        
        
        UILabel *deslb = [UILabel new];
        deslb.text = @"创建并返回一个空数组。\n例子：NSArray *array = [NSArray array];";
        [_arrayView addSubview:deslb];
        deslb.sd_layout
        .topSpaceToView(titleLb, 10)
        .leftEqualToView(_arrayView)
        .autoHeightRatio(0);
        [deslb setSd_maxWidth:@(SCREENMAINWIDTH)];
        
        [_arrayView setupAutoHeightWithBottomView:deslb bottomMargin:10];
    }
    return _arrayView;
}
-(UIView *)secondView{
    if (!_secondView) {
        _secondView = [UIView new];
    }
    return _secondView;
}
-(UIView *)threeView{
    
    if (!_threeView) {
        _threeView = [UIView new];
    }
    return _threeView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.wyhScrollView];
    self.wyhScrollView.sd_layout.spaceToSuperView(UIEdgeInsetsZero);
    // Do any additional setup after loading the view.
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
