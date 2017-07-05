//
//  BaseView.h
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/5.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseView : UIView
@property(nonatomic,strong)UILabel *titleLb;
@property(nonatomic,strong)UILabel *descripLb;
+(BaseView *)oneLb:(NSString *)onetitle twoLb:(NSString *)twotitle;
@end
