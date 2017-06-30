//
//  UILabelController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/6/14.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "UILabelController.h"

@interface UILabelController ()
@property(nonatomic,strong)UIView *textView;
@property(nonatomic,strong)UIView *attributedTextView;
@end

@implementation UILabelController{
    
    UIScrollView *mainScrollView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self makeMainContent];
}

#pragma mark- 组件布局
-(void)makeMainContent{
    

    
    mainScrollView = [[UIScrollView alloc] init];
    [self.view addSubview:mainScrollView];
    
    //添加到mainScrollView
    [mainScrollView sd_addSubviews:@[self.textView,self.attributedTextView]];
    
    //布局
    mainScrollView.sd_layout.spaceToSuperView(UIEdgeInsetsZero);
    
    //子视布局
    self.textView.sd_layout.topSpaceToView(mainScrollView,0).leftSpaceToView(mainScrollView,0).rightSpaceToView(mainScrollView,0);
    
     self.attributedTextView.sd_layout.topSpaceToView(self.textView,10).leftSpaceToView(mainScrollView,0).rightSpaceToView(mainScrollView,0);
    
    
    // scrollview自动contentsize
    [mainScrollView setupAutoContentSizeWithBottomView:self.attributedTextView bottomMargin:0];
    
    
    
}
-(UIView *)textView{
    
    if (!_textView) {
        _textView = [UIView new];
        
        UILabel *declarationlb = [UILabel new];
        [_textView addSubview:declarationlb];
        declarationlb.sd_layout
        .topEqualToView(_textView)
        .leftEqualToView(_textView)
        .autoHeightRatio(0);
        [declarationlb setSd_maxWidth:@(SCREENMAINWIDTH)];
        declarationlb.font = [UIFont systemFontOfSize:16];
        declarationlb.text = @"@property(nonatomic, copy) NSString *text;";
        
        
        UILabel *discussionlb = [UILabel new];
        [_textView addSubview:discussionlb];
        discussionlb.sd_layout
        .topSpaceToView(declarationlb, 10)
        .leftEqualToView(_textView)
        .autoHeightRatio(0);
        [discussionlb setSd_maxWidth:@(SCREENMAINWIDTH)];
        discussionlb.font = [UIFont systemFontOfSize:16];
        discussionlb.text = @"该属性赋值NSString ,就能在UILabel上显示出NSString的内容。";
        
        [_textView setupAutoHeightWithBottomView:discussionlb bottomMargin:0];
    }
    return _textView;
}

-(UIView *)attributedTextView{
    if (!_attributedTextView) {
        _attributedTextView = [UIView new];
        UILabel *declarationlb = [UILabel new];
        [_attributedTextView addSubview:declarationlb];
        declarationlb.sd_layout
        .topEqualToView(_attributedTextView)
        .leftEqualToView(_attributedTextView)
        .autoHeightRatio(0);
        [declarationlb setSd_maxWidth:@(SCREENMAINWIDTH)];
        declarationlb.font = [UIFont systemFontOfSize:16];
        declarationlb.text = @"@property(nonatomic, copy) NSAttributedString *attributedText;";
        
        
        /*
         * API: Character Attributes , NSAttributedString 共有21个属性*
         * 1. NSFontAttributeName ->设置字体属性，默认值：字体：Helvetica(Neue) 字号：12
         * 2. NSParagraphStyleAttributeName ->设置文本段落排版格式，取值为 NSParagraphStyle 对象(详情见下面的API说明)
         * 3. NSForegroundColorAttributeName ->设置字体颜色，取值为 UIColor对象，默认值为黑色
         * 4. NSBackgroundColorAttributeName ->设置字体所在区域背景颜色，取值为 UIColor对象，默认值为nil, 透明色
         * 5. NSLigatureAttributeName ->设置连体属性，取值为NSNumber 对象(整数)，0 表示没有连体字符，1 表示使用默认的连体字符
         * 6. NSKernAttributeName ->设置字符间距，取值为 NSNumber 对象（整数），正值间距加宽，负值间距变窄
         * 7. NSStrikethroughStyleAttributeName ->设置删除线，取值为 NSNumber 对象（整数）
         * 8. NSStrikethroughColorAttributeName ->设置删除线颜色，取值为 UIColor 对象，默认值为黑色
         * 9. NSUnderlineStyleAttributeName ->设置下划线，取值为 NSNumber 对象（整数），枚举常量 NSUnderlineStyle中的值，与删除线类似
         * 10. NSUnderlineColorAttributeName ->设置下划线颜色，取值为 UIColor 对象，默认值为黑色
         * 11. NSStrokeWidthAttributeName ->设置笔画宽度(粗细)，取值为 NSNumber 对象（整数），负值填充效果，正值中空效果
         * 12. NSStrokeColorAttributeName ->填充部分颜色，不是字体颜色，取值为 UIColor 对象
         * 13. NSShadowAttributeName ->设置阴影属性，取值为 NSShadow 对象
         * 14. NSTextEffectAttributeName ->设置文本特殊效果，取值为 NSString 对象，目前只有图版印刷效果可用
         * 15. NSBaselineOffsetAttributeName ->设置基线偏移值，取值为 NSNumber （float）,正值上偏，负值下偏
         * 16. NSObliquenessAttributeName ->设置字形倾斜度，取值为 NSNumber （float）,正值右倾，负值左倾
         * 17. NSExpansionAttributeName ->设置文本横向拉伸属性，取值为 NSNumber （float）,正值横向拉伸文本，负值横向压缩文本
         * 18. NSWritingDirectionAttributeName ->设置文字书写方向，从左向右书写或者从右向左书写
         * 19. NSVerticalGlyphFormAttributeName ->设置文字排版方向，取值为 NSNumber 对象(整数)，0 表示横排文本，1 表示竖排文本
         * 20. NSLinkAttributeName ->设置链接属性，点击后调用浏览器打开指定URL地址
         * 21. NSAttachmentAttributeName ->设置文本附件,取值为NSTextAttachment对象,常用于文字图片混排
         */
        
        UILabel *discussionlb = [UILabel new];
        [_attributedTextView addSubview:discussionlb];
        discussionlb.sd_layout
        .topSpaceToView(declarationlb, 10)
        .leftEqualToView(_attributedTextView)
        .autoHeightRatio(0);
        [discussionlb setSd_maxWidth:@(SCREENMAINWIDTH)];
        discussionlb.font = [UIFont systemFontOfSize:16];
        discussionlb.isAttributedContent = YES;
        NSMutableAttributedString *attribuString = [[NSMutableAttributedString alloc]initWithString:@"该属性赋值NSAttributedString(属性字符串，可以设置各种属性，如颜色，大小等) ,就能在UILabel上显示出NSAttributedString的内容。"];
        discussionlb.attributedText = attribuString;
        
        
        UILabel *fontAttributeNamelb = [UILabel new];
        [_attributedTextView addSubview:fontAttributeNamelb];
        fontAttributeNamelb.sd_layout
        .topSpaceToView(discussionlb, 10)
        .leftEqualToView(_attributedTextView)
        .autoHeightRatio(0);
        [fontAttributeNamelb setSd_maxWidth:@(SCREENMAINWIDTH)];
        fontAttributeNamelb.isAttributedContent = YES;
        NSMutableAttributedString *fontAttributeNamelbString = [[NSMutableAttributedString alloc]initWithString:@"NSFontAttributeName:字号:\n我是12号，我是20号，我是32号。"];
        [fontAttributeNamelbString addAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12]} range:NSMakeRange(24, 5)];//字号
        [fontAttributeNamelbString addAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20]} range:NSMakeRange(30, 5)];//字号
        [fontAttributeNamelbString addAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:32]} range:NSMakeRange(36, 5)];//字号
         fontAttributeNamelb.attributedText = fontAttributeNamelbString;
        
        
        UILabel *foregroundColorAttributeNamelb = [UILabel new];
        [_attributedTextView addSubview:foregroundColorAttributeNamelb];
        foregroundColorAttributeNamelb.sd_layout
        .topSpaceToView(fontAttributeNamelb, 10)
        .leftEqualToView(_attributedTextView)
        .autoHeightRatio(0);
        [foregroundColorAttributeNamelb setSd_maxWidth:@(SCREENMAINWIDTH)];
        foregroundColorAttributeNamelb.isAttributedContent = YES;
        NSMutableAttributedString *foregroundColorAttributeNamelbString = [[NSMutableAttributedString alloc]initWithString:@"NSForegroundColorAttributeName:字体颜色:\n我是红色，我是黄色，我是蓝色。"];
        [foregroundColorAttributeNamelbString addAttributes:@{NSForegroundColorAttributeName:REDCOLOR} range:NSMakeRange(37, 4)];//字体颜色
          [foregroundColorAttributeNamelbString addAttributes:@{NSForegroundColorAttributeName:YELLOWCOLOR} range:NSMakeRange(42, 4)];//字体颜色
          [foregroundColorAttributeNamelbString addAttributes:@{NSForegroundColorAttributeName:BLUECOLOR} range:NSMakeRange(47, 4)];//字体颜色
        foregroundColorAttributeNamelb.attributedText = foregroundColorAttributeNamelbString;


        UILabel *backgroundColorAttributeNamelb = [UILabel new];
        [_attributedTextView addSubview:backgroundColorAttributeNamelb];
        backgroundColorAttributeNamelb.sd_layout
        .topSpaceToView(foregroundColorAttributeNamelb, 10)
        .leftEqualToView(_attributedTextView)
        .autoHeightRatio(0);
        [backgroundColorAttributeNamelb setSd_maxWidth:@(SCREENMAINWIDTH)];
        backgroundColorAttributeNamelb.isAttributedContent = YES;
        NSMutableAttributedString *backgroundColorAttributeNamelbString = [[NSMutableAttributedString alloc]initWithString:@"NSBackgroundColorAttributeName:背景颜色:\n我是红色，我是黄色，我是蓝色。"];
        [backgroundColorAttributeNamelbString addAttributes:@{NSBackgroundColorAttributeName:REDCOLOR} range:NSMakeRange(37, 4)];//背景颜色
          [backgroundColorAttributeNamelbString addAttributes:@{NSBackgroundColorAttributeName:YELLOWCOLOR} range:NSMakeRange(42, 4)];//背景颜色
          [backgroundColorAttributeNamelbString addAttributes:@{NSBackgroundColorAttributeName:BLUECOLOR} range:NSMakeRange(47, 4)];//背景颜色
        backgroundColorAttributeNamelb.attributedText = backgroundColorAttributeNamelbString;
        
        UILabel *paragraphStyleAttributeNamelb = [UILabel new];
        [_attributedTextView addSubview:paragraphStyleAttributeNamelb];
        paragraphStyleAttributeNamelb.sd_layout
        .topSpaceToView(backgroundColorAttributeNamelb, 10)
        .leftEqualToView(_attributedTextView)
        .autoHeightRatio(0);
        [paragraphStyleAttributeNamelb setSd_maxWidth:@(SCREENMAINWIDTH)];
        paragraphStyleAttributeNamelb.isAttributedContent = YES;
        //段落样式
        NSMutableParagraphStyle*paragraph = [[NSMutableParagraphStyle alloc]init] ;
        paragraph.alignment=NSTextAlignmentJustified;//对齐方式
        paragraph.firstLineHeadIndent = 50.0;//段落没段落开头空格多少距离
        paragraph.paragraphSpacingBefore = 50.0;//段落使用了换行符后，与换行符之前的行的行距。
        paragraph.lineSpacing=20.0;//段落每行的行距。
        paragraph.hyphenationFactor = 1.0;//断字连接符
        
        NSAttributedString *paragraphStyleAttributeNamelbString = [[NSAttributedString alloc]initWithString:@"NSParagraphStyleAttributeName:段落样式:\n我是一个段落的开头，然后开头到中间的内容，然后中间一直继续，一直继续，继续，继续，我继续，然后继续完了，我要准备结尾了，我是一个段落的结尾。" attributes:@{NSParagraphStyleAttributeName:paragraph,NSBaselineOffsetAttributeName:@(0)}];
        
        paragraphStyleAttributeNamelb.attributedText = paragraphStyleAttributeNamelbString;

      
        UILabel *ligatureAttributeNamelb = [UILabel new];
        [_attributedTextView addSubview:ligatureAttributeNamelb];
        ligatureAttributeNamelb.sd_layout
        .topSpaceToView(paragraphStyleAttributeNamelb, 10)
        .leftEqualToView(_attributedTextView)
        .autoHeightRatio(0);
        [ligatureAttributeNamelb setSd_maxWidth:@(SCREENMAINWIDTH)];
        ligatureAttributeNamelb.isAttributedContent = YES;
        NSAttributedString *ligatureAttributeNamelbString = [[NSAttributedString alloc]initWithString:@"NSLigatureAttributeName:连字符:我是连字符abcdefghijklmnopqrstuvwxyz。" attributes:@{NSLigatureAttributeName:@(1),NSBaselineOffsetAttributeName:@(0)}];//连字符
    
        ligatureAttributeNamelb.attributedText = ligatureAttributeNamelbString;
        
        
        UILabel *kernAttributeNamelb = [UILabel new];
        [_attributedTextView addSubview:kernAttributeNamelb];
        kernAttributeNamelb.sd_layout
        .topSpaceToView(ligatureAttributeNamelb, 10)
        .leftEqualToView(_attributedTextView)
        .autoHeightRatio(0);
        [kernAttributeNamelb setSd_maxWidth:@(SCREENMAINWIDTH)];
        kernAttributeNamelb.isAttributedContent = YES;
        NSAttributedString *kernAttributeNamelbString = [[NSAttributedString alloc]initWithString:@"NSKernAttributeName:字间距:我是字间距abcdefghijklmnopqrstuvwxyz。" attributes:@{NSKernAttributeName:@(20)}];//字间距
        
        kernAttributeNamelb.attributedText = kernAttributeNamelbString;

        
        UILabel *strikethroughStyleAttributeNamelb = [UILabel new];
        [_attributedTextView addSubview:strikethroughStyleAttributeNamelb];
        strikethroughStyleAttributeNamelb.sd_layout
        .topSpaceToView(kernAttributeNamelb, 10)
        .leftEqualToView(_attributedTextView)
        .autoHeightRatio(0);
        [strikethroughStyleAttributeNamelb setSd_maxWidth:@(SCREENMAINWIDTH)];
        strikethroughStyleAttributeNamelb.isAttributedContent = YES;
        NSMutableAttributedString *strikethroughStyleAttributeNamelbString = [[NSMutableAttributedString alloc]initWithString:@"NSStrikethroughStyleAttributeName:删除线:我是删除线abcdefghijklmnopqrstuvwxyz。"];//删除线
        [strikethroughStyleAttributeNamelbString addAttributes:@{NSStrikethroughStyleAttributeName:@(NSUnderlineStyleSingle),NSBaselineOffsetAttributeName:@(0),NSStrikethroughColorAttributeName:REDCOLOR} range:NSMakeRange(43, 5)];
        [strikethroughStyleAttributeNamelbString addAttributes:@{NSStrikethroughStyleAttributeName:@(NSUnderlineStyleThick),NSBaselineOffsetAttributeName:@(0),NSStrikethroughColorAttributeName:BLUECOLOR} range:NSMakeRange(48, 5)];
        [strikethroughStyleAttributeNamelbString addAttributes:@{NSStrikethroughStyleAttributeName:@(NSUnderlineStyleDouble),NSBaselineOffsetAttributeName:@(0),NSStrikethroughColorAttributeName:YELLOWCOLOR} range:NSMakeRange(53, 5)];
//         [strikethroughStyleAttributeNamelbString addAttributes:@{NSStrikethroughStyleAttributeName:@(NSUnderlinePatternSolid),NSBaselineOffsetAttributeName:@(0)} range:NSMakeRange(58, 5)];
//         [strikethroughStyleAttributeNamelbString addAttributes:@{NSStrikethroughStyleAttributeName:@(NSUnderlinePatternDot),NSBaselineOffsetAttributeName:@(0)} range:NSMakeRange(63, 5)];
//       NSAttributedString *strikethroughStyleAttributeNamelbString = [[NSAttributedString alloc]initWithString:@"NSStrikethroughStyleAttributeName:删除线:我是删除线abcdefghijklmnopqrstuvwxyz。" attributes:@{NSStrikethroughStyleAttributeName:@(NSUnderlineStyleThick),NSBaselineOffsetAttributeName:@(0)}];//删除线
        strikethroughStyleAttributeNamelb.attributedText = strikethroughStyleAttributeNamelbString;
        
        
        UILabel *underlineStyleAttributeNamelb = [UILabel new];
        [_attributedTextView addSubview:underlineStyleAttributeNamelb];
        underlineStyleAttributeNamelb.sd_layout
        .topSpaceToView(strikethroughStyleAttributeNamelb, 10)
        .leftEqualToView(_attributedTextView)
        .autoHeightRatio(0);
        [underlineStyleAttributeNamelb setSd_maxWidth:@(SCREENMAINWIDTH)];
        underlineStyleAttributeNamelb.isAttributedContent = YES;
        NSMutableAttributedString *underlineStyleAttributeNamelbString = [[NSMutableAttributedString alloc]initWithString:@"NSUnderlineStyleAttributeName:下划线:我是下划线abcdefghijklmnopqrstuvwxyz。"];//下划线
        [underlineStyleAttributeNamelbString addAttributes:@{NSUnderlineStyleAttributeName:@(NSUnderlineStyleSingle),NSBaselineOffsetAttributeName:@(0),NSUnderlineColorAttributeName:YELLOWCOLOR} range:NSMakeRange(43, 5)];
        [underlineStyleAttributeNamelbString addAttributes:@{NSUnderlineStyleAttributeName:@(NSUnderlineStyleThick),NSBaselineOffsetAttributeName:@(0),NSUnderlineColorAttributeName:REDCOLOR} range:NSMakeRange(48, 5)];
        [underlineStyleAttributeNamelbString addAttributes:@{NSUnderlineStyleAttributeName:@(NSUnderlineStyleDouble),NSBaselineOffsetAttributeName:@(0)} range:NSMakeRange(53, 5)];
    
        underlineStyleAttributeNamelb.attributedText = underlineStyleAttributeNamelbString;

        UILabel *strokeColorAttributeNameb = [UILabel new];
        [_attributedTextView addSubview:strokeColorAttributeNameb];
        strokeColorAttributeNameb.sd_layout
        .topSpaceToView(underlineStyleAttributeNamelb, 10)
        .leftEqualToView(_attributedTextView)
        .autoHeightRatio(0);
        [strokeColorAttributeNameb setSd_maxWidth:@(SCREENMAINWIDTH)];
        strokeColorAttributeNameb.isAttributedContent = YES;
        NSMutableAttributedString *strokeColorAttributeNamebString = [[NSMutableAttributedString alloc]initWithString:@"NSStrokeColorAttributeName:边线颜色:我是边线颜色abcdefghijklmnopqrstuvwxyz。"];//边线颜色
        [strokeColorAttributeNamebString addAttributes:@{NSStrokeWidthAttributeName:@(-3.0),NSStrokeColorAttributeName:BLUECOLOR} range:NSMakeRange(43, 5)];
        [strokeColorAttributeNamebString addAttributes:@{NSStrokeWidthAttributeName:@(3.0),NSStrokeColorAttributeName:REDCOLOR} range:NSMakeRange(48, 5)];
        [strokeColorAttributeNamebString addAttributes:@{NSStrokeWidthAttributeName:@(3.0),NSStrokeColorAttributeName:YELLOWCOLOR} range:NSMakeRange(53, 5)];
        
        strokeColorAttributeNameb.attributedText = strokeColorAttributeNamebString;
        
        
        UILabel *shadowAttributeNameb = [UILabel new];
        [_attributedTextView addSubview:shadowAttributeNameb];
        shadowAttributeNameb.sd_layout
        .topSpaceToView(strokeColorAttributeNameb, 10)
        .leftEqualToView(_attributedTextView)
        .autoHeightRatio(0);
        [shadowAttributeNameb setSd_maxWidth:@(SCREENMAINWIDTH)];
        shadowAttributeNameb.isAttributedContent = YES;
        
        NSMutableAttributedString *shadowAttributeNamebString = [[NSMutableAttributedString alloc]initWithString:@"NSShadowAttributeName:设置阴影:我是设置阴影abcdefghijklmnopqrstuvwxyz。"];//设置阴影
        NSShadow *shadow = [[NSShadow alloc]init];
        shadow.shadowBlurRadius = 5;//模糊度
        shadow.shadowColor = BLUECOLOR;
        shadow.shadowOffset = CGSizeMake(1, 3);
        
        [shadowAttributeNamebString addAttributes:@{NSShadowAttributeName:shadow,NSVerticalGlyphFormAttributeName:@0} range:NSMakeRange(43, 5)];
      
        
        NSShadow *shadow2 = [[NSShadow alloc]init];
        shadow2.shadowBlurRadius = 3;//模糊度
        shadow2.shadowColor = REDCOLOR;
        shadow2.shadowOffset = CGSizeMake(3, 1);
        
        [shadowAttributeNamebString addAttributes:@{NSShadowAttributeName:shadow2,NSVerticalGlyphFormAttributeName:@0} range:NSMakeRange(48, 5)];
        
        shadowAttributeNameb.attributedText = shadowAttributeNamebString;
        
        
//
//
//
//
//
//
//         NSTextEffectAttributeName
//        NSAttachmentAttributeName        NSLinkAttributeName
//        NSBaselineOffsetAttributeName
//
//       NSObliquenessAttributeName
//       NSExpansionAttributeName
//        NSWritingDirectionAttributeName
//        
//         NSVerticalGlyphFormAttributeName
     
        
        [_attributedTextView setupAutoHeightWithBottomView:shadowAttributeNameb bottomMargin:0];
    }
    return _attributedTextView;
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
