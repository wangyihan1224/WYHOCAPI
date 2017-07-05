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
        
        UIView *line = [UIView new];
        line.backgroundColor = REDCOLOR;
        [_arrayView addSubview:line];
        line.sd_layout
        .leftEqualToView(_arrayView)
        .rightEqualToView(_arrayView)
        .heightIs(1)
        .topSpaceToView(deslb, 10);
      //............................................................................................
        UILabel *titleLb2 = [UILabel new];
        titleLb2.text = @"+ (instancetype)arrayWithArray:(NSArray<ObjectType> *)array;";
        [_arrayView addSubview:titleLb2];
        titleLb2.sd_layout
        .topSpaceToView(line, 10)
        .leftEqualToView(_arrayView)
        .autoHeightRatio(0);
        [titleLb2 setSd_maxWidth:@(SCREENMAINWIDTH)];
        
       
        
        UILabel *deslb2 = [UILabel new];
        deslb2.text = @"创建并返回包含在另一个给定数组中的对象的数组。\n例子：NSArray *array1 = [NSArray new];\nNSArray *array2 = [NSArray arrayWithArray:array1];";
        [_arrayView addSubview:deslb2];
        deslb2.sd_layout
        .topSpaceToView(titleLb2, 10)
        .leftEqualToView(_arrayView)
        .autoHeightRatio(0);
        [deslb2 setSd_maxWidth:@(SCREENMAINWIDTH)];
        
        UIView *line2 = [UIView new];
        line2.backgroundColor = REDCOLOR;
        [_arrayView addSubview:line2];
        line2.sd_layout
        .leftEqualToView(_arrayView)
        .rightEqualToView(_arrayView)
        .heightIs(1)
        .topSpaceToView(deslb2, 10);
        //............................................................................................
        UILabel *titleLb3 = [UILabel new];
        titleLb3.text = @"+ (NSArray<ObjectType> *)arrayWithContentsOfFile:(NSString *)path;";
        [_arrayView addSubview:titleLb3];
        titleLb3.sd_layout
        .topSpaceToView(line2, 10)
        .leftEqualToView(_arrayView)
        .autoHeightRatio(0);
        [titleLb3 setSd_maxWidth:@(SCREENMAINWIDTH)];
        
        
        
        UILabel *deslb3 = [UILabel new];
        deslb3.text = @"创建并返回一个包含给定路径指定文件内容的数组。组。\n例子：NSString *nsarray = [[NSBundle mainBundle] pathForResource:@\"NSArrayEmple\" ofType:@\"plist\"];\nNSArray *arr = [NSArray arrayWithContentsOfFile:nsarray];";
        [_arrayView addSubview:deslb3];
        deslb3.sd_layout
        .topSpaceToView(titleLb3, 10)
        .leftEqualToView(_arrayView)
        .autoHeightRatio(0);
        [deslb3 setSd_maxWidth:@(SCREENMAINWIDTH)];
        
        UIView *line3 = [UIView new];
        line3.backgroundColor = REDCOLOR;
        [_arrayView addSubview:line3];
        line3.sd_layout
        .leftEqualToView(_arrayView)
        .rightEqualToView(_arrayView)
        .heightIs(1)
        .topSpaceToView(deslb3, 10);
        
         //............................................................................................
        
        [_arrayView setupAutoHeightWithBottomView:line3 bottomMargin:10];
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
