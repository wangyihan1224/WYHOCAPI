//
//  NSArrayTableViewCell.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/5.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSArrayTableViewCell.h"
@interface NSArrayTableViewCell()

@property(nonatomic,strong)UILabel *titleLb;
@property(nonatomic,strong)UILabel *descripLb;
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

    
//    self.self = [self oneLb:@"title" twoLb:@"description"];
//    [self.contentView addSubview:self.self];
//    self.self.sd_layout
//    .topSpaceToView(self.contentView, 0)
//    .leftEqualToView(self.contentView)
//    .rightEqualToView(self.contentView);
    
  
    
    self.titleLb = [UILabel new];
    self.titleLb.textColor = [BLUECOLOR colorWithAlphaComponent:0.5];
    self.titleLb.text = @" ";
    [self.contentView addSubview:self.titleLb];
    self.titleLb.sd_layout
    .topSpaceToView(self.contentView, 10)
    .leftEqualToView(self.contentView)
    .autoHeightRatio(0);
    [self.titleLb setSd_maxWidth:@(SCREENMAINWIDTH)];
    
    
    
    self.descripLb = [UILabel new];
    self.descripLb.textColor = [BLUECOLOR colorWithAlphaComponent:0.5];
    self.descripLb.text = @" ";
    [self.contentView addSubview: self.descripLb];
    self.descripLb.sd_layout
    .topSpaceToView(self.titleLb, 10)
    .leftEqualToView(self.contentView)
    .autoHeightRatio(0);
    [ self.descripLb setSd_maxWidth:@(SCREENMAINWIDTH)];
    
    UIView *line = [UIView new];
    line.backgroundColor = REDCOLOR;
    [self.contentView addSubview:line];
    line.sd_layout
    .topSpaceToView(self.descripLb, 10)
    .leftEqualToView(self.contentView)
    .rightEqualToView(self.contentView)
    .heightIs(1);
    
    [self setupAutoHeightWithBottomView:line bottomMargin:0];
}
-(void)setModel:(WyhModel *)model{

    _model = model;
    self.titleLb.text = model.firstName;
   self.descripLb.text = model.secondName;
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
