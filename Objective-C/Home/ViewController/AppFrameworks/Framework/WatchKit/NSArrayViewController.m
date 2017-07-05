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
        
        BaseView *base1 = [BaseView oneLb:@"+ (instancetype)array;" twoLb:@"创建并返回一个空数组。\n例子：NSArray *array = [NSArray array];"];
        [_arrayView addSubview:base1];
        base1.sd_layout
        .topSpaceToView(_arrayView, 0)
        .leftEqualToView(_arrayView)
        .rightEqualToView(_arrayView);
        
        //............................................................................................
        
        BaseView *base2 = [BaseView oneLb: @"+ (instancetype)arrayWithArray:(NSArray<ObjectType> *)array;" twoLb:@"创建并返回包含在另一个给定数组中的对象的数组。\n例子：NSArray *array1 = [NSArray new];\nNSArray *array2 = [NSArray arrayWithArray:array1];"];
        [_arrayView addSubview:base2];
        base2.sd_layout
        .topSpaceToView(base1, 0)
        .leftEqualToView(_arrayView)
        .rightEqualToView(_arrayView);
        
        //............................................................................................
        
        BaseView *base3 = [BaseView oneLb:@"+ (NSArray<ObjectType> *)arrayWithContentsOfFile:(NSString *)path;" twoLb:@"创建并返回一个包含给定路径指定文件内容的数组。组。\n例子：NSString *nsarray = [[NSBundle mainBundle] pathForResource:@\"NSArrayEmple\" ofType:@\"plist\"];\nNSArray *arr = [NSArray arrayWithContentsOfFile:nsarray];"];
        [_arrayView addSubview:base3];
        base3.sd_layout
        .topSpaceToView(base2, 0)
        .leftEqualToView(_arrayView)
        .rightEqualToView(_arrayView);
        
        //............................................................................................
        
        BaseView *base4 = [BaseView oneLb:@"+ (NSArray<ObjectType> *)arrayWithContentsOfURL:(NSURL *)url;" twoLb:@"创建并返回一个包含给定URL指定内容的数组。\n例子： NSURL *arrurl = [[NSBundle mainBundle]URLForResource:@\"NSArrayEmple.plist\" withExtension:nil];\nNSArray *arr = [NSArray arrayWithContentsOfURL:arrurl];"];
        [_arrayView addSubview:base4];
        base4.sd_layout
        .topSpaceToView(base3, 0)
        .leftEqualToView(_arrayView)
        .rightEqualToView(_arrayView);
        
        //............................................................................................
        
       
        BaseView *base5 = [BaseView oneLb: @"+ (instancetype)arrayWithObject:(ObjectType)anObject;" twoLb:@"创建并返回包含给定对象的数组。\n例子：  NSArray *arr = [NSArray arrayWithObject:@\"1\"];"];
        [_arrayView addSubview:base5];
        base5.sd_layout
        .topSpaceToView(base4, 0)
        .leftEqualToView(_arrayView)
        .rightEqualToView(_arrayView);
        
        //............................................................................................
       
        BaseView *base6 = [BaseView oneLb:@"+ (instancetype)arrayWithObjects:(const ObjectType  _Nonnull [])objects count:(NSUInteger)cnt;" twoLb:@"创建并返回一个数组，其中包含给定的C数组中的给定数量的对象。\n例子： NSString *strings[3];\nstrings[0] = @\"first\";\nstrings[1]= @\"second\";\nstrings[2] = @\"three\";\nNSArray *arr2 = [NSArray arrayWithObjects: strings count:2];;"];
        [_arrayView addSubview:base6];
        base6.sd_layout
        .topSpaceToView(base5, 0)
        .leftEqualToView(_arrayView)
        .rightEqualToView(_arrayView);
        
         //............................................................................................
        
        BaseView *base7 = [BaseView oneLb:@"+ (instancetype)arrayWithObjects:(ObjectType)firstObj, ...;" twoLb:@"创建并返回包含参数列表中的对象的数组。\n例子： NSArray *arr = [NSArray arrayWithObjects:@\"first\",@\"second\", nil];"];
        [_arrayView addSubview:base7];
        base7.sd_layout
        .topSpaceToView(base6, 0)
        .leftEqualToView(_arrayView)
        .rightEqualToView(_arrayView);

        //............................................................................................
 

        
        [_arrayView setupAutoHeightWithBottomView:base7 bottomMargin:0];
    }
    return _arrayView;
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
