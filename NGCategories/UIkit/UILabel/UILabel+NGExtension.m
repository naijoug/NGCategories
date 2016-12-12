//
//  UILabel+NGExtension.m
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import "UILabel+NGExtension.h"

@implementation UILabel (NGExtension)

+ (UILabel *)ng_leftLabelWithTitle:(NSString *)title font:(CGFloat)font color:(UIColor *)color {
    return [self ng_labelWithTitle:title font:font color:color alignment:NSTextAlignmentLeft];
}

+ (UILabel *)ng_centerLabelWithTitle:(NSString *)title font:(CGFloat)font color:(UIColor *)color {
    return [self ng_labelWithTitle:title font:font color:color alignment:NSTextAlignmentCenter];
}
+ (UILabel *)ng_rightLabelWithTitle:(NSString *)title font:(CGFloat)font color:(UIColor *)color {
    return [self ng_labelWithTitle:title font:font color:color alignment:NSTextAlignmentRight];
}

#pragma mark - Tool
+ (UILabel *)ng_labelWithTitle:(NSString *)title font:(CGFloat)font color:(UIColor *)color alignment:(NSTextAlignment)alignment
{
    UILabel *label          = [[UILabel alloc] init];
    label.text              = title;
    label.textColor         = color;
    label.font              = [UIFont systemFontOfSize:font];
    label.textAlignment     = alignment;
    label.backgroundColor   = [UIColor clearColor];
    [label sizeToFit];
    return label;
}

@end
