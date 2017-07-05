//
//  BaseView.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/5.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView

+(BaseView *)oneLb:(NSString *)onetitle twoLb:(NSString *)twotitle{
    BaseView *baseView = [BaseView new];
    
    UILabel *titleLb5 = [UILabel new];
    titleLb5.text = onetitle;
    [baseView addSubview:titleLb5];
    titleLb5.sd_layout
    .topSpaceToView(baseView, 10)
    .leftEqualToView(baseView)
    .autoHeightRatio(0);
    [titleLb5 setSd_maxWidth:@(SCREENMAINWIDTH)];
    
    
    
    UILabel *deslb5 = [UILabel new];
    deslb5.text = twotitle;
    [baseView addSubview:deslb5];
    deslb5.sd_layout
    .topSpaceToView(titleLb5, 10)
    .leftEqualToView(baseView)
    .autoHeightRatio(0);
    [deslb5 setSd_maxWidth:@(SCREENMAINWIDTH)];
    
    UIView *line5 = [UIView new];
    line5.backgroundColor = REDCOLOR;
    [baseView addSubview:line5];
    line5.sd_layout
    .leftEqualToView(baseView)
    .rightEqualToView(baseView)
    .heightIs(1)
    .topSpaceToView(deslb5, 10);
    
    [baseView setupAutoHeightWithBottomView:line5 bottomMargin:10];
    return baseView;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
