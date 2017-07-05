//
//  NSArrayTableViewCell.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/5.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSArrayTableViewCell.h"
@interface NSArrayTableViewCell()
@property(nonatomic,strong)BaseView *baseview;
@end
@implementation NSArrayTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self  = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setup];
    }
    
    return self;
}

-(void)setup{

    
    self.baseview = [BaseView oneLb:@"title" twoLb:@"description"];
    [self.contentView addSubview:self.baseview];
    self.baseview.sd_layout
    .topSpaceToView(self.contentView, 0)
    .leftEqualToView(self.contentView)
    .rightEqualToView(self.contentView);
    
    [self setupAutoHeightWithBottomView:self.baseview bottomMargin:0];
}
-(void)setModel:(WyhModel *)model{

    _model = model;
    self.baseview.titleLb.text = model.firstName;
    self.baseview.descripLb.text = model.secondName;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
