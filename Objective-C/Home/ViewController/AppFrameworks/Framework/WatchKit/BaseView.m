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
    
    baseView.titleLb = [UILabel new];
    baseView.titleLb.text = onetitle;
    [baseView addSubview:baseView.titleLb];
    baseView.titleLb.sd_layout
    .topSpaceToView(baseView, 10)
    .leftEqualToView(baseView)
    .autoHeightRatio(0);
    [baseView.titleLb setSd_maxWidth:@(SCREENMAINWIDTH)];
    
    
    
    baseView.descripLb = [UILabel new];
     baseView.descripLb.text = twotitle;
    [baseView addSubview: baseView.descripLb];
     baseView.descripLb.sd_layout
    .topSpaceToView(baseView.titleLb, 10)
    .leftEqualToView(baseView)
    .autoHeightRatio(0);
    [ baseView.descripLb setSd_maxWidth:@(SCREENMAINWIDTH)];
    
    UIView *line = [UIView new];
    line.backgroundColor = REDCOLOR;
    [baseView addSubview:line];
    line.sd_layout
    .topSpaceToView(baseView.descripLb, 10)
    .leftEqualToView(baseView)
    .rightEqualToView(baseView)
    .heightIs(1);
    
    [baseView setupAutoHeightWithBottomView:line bottomMargin:0];
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
