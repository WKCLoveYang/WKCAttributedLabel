//
//  WKCAttributedTextView.m
//  AACD
//
//  Created by wkcloveYang on 2020/5/28.
//  Copyright © 2020 wkcloveYang. All rights reserved.
//

#import "WKCAttributedTextView.h"

@interface WKCAttributedTextView() <UITextViewDelegate>

@property (nonatomic, strong) NSMutableAttributedString * attributedString;

@end

@implementation WKCAttributedTextView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.editable = NO;
        self.delegate = self;
        self.dataDetectorTypes = UIDataDetectorTypeLink;
    }
    
    return self;
}

- (void)setText:(NSString *)text
{
    [super setText:text];
    
    _attributedString = [[NSMutableAttributedString alloc] initWithString:text];
}

- (void)addAttributedType:(WKCAttributedType)type
                    value:(id)value
{
    [self addAttributedType:type
                      value:value
                  subString:self.text];
}

- (void)addAttributedType:(WKCAttributedType)type
                    value:(id)value
                subString:(NSString *)subString
{
    if (!self.text) {
        NSLog(@"!!!错误, 需要先设置text!!!");
        return;
    }
    
    NSRange range = [self.text rangeOfString:subString];
    
    if (type == WKCAttributedTypeFont) {
        if ([value isKindOfClass:UIFont.class]) {
            [_attributedString addAttribute:NSFontAttributeName
                                      value:value
                                      range:range];
        } else {
            NSLog(@"!!!错误, font类型错误!!!");
        }
    } else if (type == WKCAttributedTypeColor) {
        if ([value isKindOfClass:UIColor.class]) {
            [_attributedString addAttribute:NSForegroundColorAttributeName
                                      value:value
                                      range:range];
        } else {
            NSLog(@"!!!错误, 字体color类型错误!!!");
        }
    } else if (type == WKCAttributedTypeKern) {
        if ([value isKindOfClass:NSNumber.class]) {
            [_attributedString addAttribute:NSKernAttributeName
                                      value:value
                                      range:range];
        } else {
            NSLog(@"!!!错误, 字间距类型错误!!!");
        }
    } else if (type == WKCAttributedTypeLinespace) {
        if ([value isKindOfClass:NSNumber.class]) {
            NSMutableParagraphStyle * lineSpaceStyle = [[NSMutableParagraphStyle alloc] init];
            lineSpaceStyle.lineSpacing = [value floatValue];
            [_attributedString addAttribute:NSParagraphStyleAttributeName
                                      value:lineSpaceStyle
                                      range:range];
        } else {
            NSLog(@"!!!错误, 行间距类型错误!!!");
        }
    } else if (type == WKCAttributedTypeStrikeline) {
        if ([value isKindOfClass:NSNumber.class]) {
            [_attributedString addAttribute:NSStrikethroughStyleAttributeName
                              value:value
                              range:range];
        } else {
            NSLog(@"!!!错误, 删除线类型错误!!!");
        }
    } else if (type == WKCAttributedTypeStrikecolor) {
        if ([value isKindOfClass:UIColor.class]) {
            [_attributedString addAttribute:NSStrikethroughColorAttributeName
                              value:value
                              range:range];
        } else {
            NSLog(@"!!!错误, 删除线颜色类型错误!!!");
        }
    } else if (type == WKCAttributedTypeUnderline) {
        if ([value isKindOfClass:NSNumber.class]) {
            [_attributedString addAttribute:NSUnderlineStyleAttributeName
                                      value:value
                                      range:range];
        } else {
            NSLog(@"!!!错误, 下划线类型错误!!!");
        }
    } else if (type == WKCAttributedTypeUnderlinecolor) {
        if ([value isKindOfClass:UIColor.class]) {
            [_attributedString addAttribute:NSUnderlineColorAttributeName
                                      value:value
                                      range:range];
        } else {
            NSLog(@"!!!错误, 下划线颜色类型错误!!!");
        }
    } else if (type == WKCAttributedTypeStrokewidth) {
        if ([value isKindOfClass:NSNumber.class]) {
            [_attributedString addAttribute:NSStrokeWidthAttributeName
                                      value:value
                                      range:range];
        } else {
            NSLog(@"!!!错误, 描边类型错误!!!");
        }
    } else if (type == WKCAttributedTypeStrokcolor) {
        if ([value isKindOfClass:UIColor.class]) {
            [_attributedString addAttribute:NSStrokeColorAttributeName
                                      value:value
                                      range:range];
        } else {
            NSLog(@"!!!错误, 描边颜色类型错误!!!");
        }
    } else if (type == WKCAttributedTypeShadow) {
        if ([value isKindOfClass:NSShadow.class]) {
            [_attributedString addAttribute:NSShadowAttributeName
                                      value:value
                                      range:range];
        } else {
            NSLog(@"!!!错误, 阴影类型错误!!!");
        }
    } else if (type == WKCAttributedTypeObliqueness) {
        if ([value isKindOfClass:NSNumber.class]) {
            [_attributedString addAttribute:NSObliquenessAttributeName
                                      value:value
                                      range:range];
        } else {
            NSLog(@"!!!错误, 斜体类型错误!!!");
        }
    } else if (type == WKCAttributedTypeExpansion) {
        if ([value isKindOfClass:NSNumber.class]) {
            [_attributedString addAttribute:NSExpansionAttributeName
                                      value:value
                                      range:range];
        } else {
            NSLog(@"!!!错误, 扁平类型错误!!!");
        }
    } else if (type == WKCAttributedTypeUrlLink) {
        if ([value isKindOfClass:NSURL.class] || [value isKindOfClass:NSString.class]) {
            [_attributedString addAttribute:NSLinkAttributeName
                                      value:value
                                      range:range];
        } else {
            NSLog(@"!!!错误, 超链接类型错误!!!");
        }
    }
    
    self.attributedText = _attributedString;
}

- (void)reloadAttributeds
{
    _attributedString = [[NSMutableAttributedString alloc] initWithString:self.text];
}


#pragma mark -UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction
{
    return true;
}

@end
