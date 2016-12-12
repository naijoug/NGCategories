//
//  NSAttributedString+NGExtension.m
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import "NSAttributedString+NGExtension.h"

@implementation NSAttributedString (NGExtension)

#pragma mark - 文字
+ (instancetype)ng_attributedString:(NSString *)string font:(CGFloat)font color:(UIColor *)color {
    return [self ng_attributedString:string font:font color:color lineSpacing:0];
}
+ (instancetype)ng_attributedString:(NSString *)string font:(CGFloat)font color:(UIColor *)color lineSpacing:(CGFloat)lineSpacing {
    NSMutableDictionary *attributes     = [NSMutableDictionary dictionary];
    [attributes setObject:[UIFont systemFontOfSize:font] forKey:NSFontAttributeName];
    [attributes setObject:color forKey:NSForegroundColorAttributeName];
    if (lineSpacing > 0) {
        NSMutableParagraphStyle *style  = [[NSMutableParagraphStyle alloc] init];
        style.lineSpacing               = lineSpacing;
        [attributes setObject:style forKey:NSParagraphStyleAttributeName];
    }
    
    return [[self alloc] initWithString:string attributes:attributes];
}
+ (instancetype)ng_attributedString:(NSString *)string image:(NSString *)image font:(CGFloat)font color:(UIColor *)color {
    return [self ng_attributedString:string image:image font:font color:color lineSpacing:0 margin:0];
}
+ (instancetype)ng_attributedString:(NSString *)string image:(NSString *)image font:(CGFloat)font color:(UIColor *)color lineSpacing:(CGFloat)lineSpacing margin:(CGFloat)margin {
    NSMutableAttributedString *mAttri = [[NSMutableAttributedString alloc] init];
    if (string) {
        [mAttri appendAttributedString:[self ng_attributedString:string font:font color:color lineSpacing:lineSpacing]];
    }
    if (image) {
        [mAttri appendAttributedString:[self ng_attributedImage:image font:font margin:margin]];
    }
    return mAttri;
}

#pragma mark - 图片
+ (instancetype)ng_attributedImage:(NSString *)image font:(CGFloat)font {
    return [self ng_attributedImage:image font:font margin:0];
}
+ (instancetype)ng_attributedImage:(NSString *)image font:(CGFloat)font margin:(CGFloat)margin {
    UIImage *attachImage    = [UIImage imageNamed:image];
    CGFloat attachW         = attachImage.size.width;
    CGFloat attachH         = attachImage.size.height;
    if (font > 0) {
        UIFont *textFont = [UIFont systemFontOfSize:font];
        CGFloat fontH       = textFont.lineHeight;
        if (attachH > fontH) { // 图片高度 > 字体高度，缩小为字体高度
            attachH         = fontH;
            attachW         = (attachImage.size.width / attachImage.size.height) * attachH;
        } else { // 图片高度 < 字体高度， 计算偏移量
            margin          = (fontH - attachH)/2;
        }
    }
    
    NSTextAttachment *attachment    = [[NSTextAttachment alloc] init];
    attachment.bounds               = CGRectMake(0, - margin, attachW, attachH);
    attachment.image                = attachImage;
    
    return [self attributedStringWithAttachment:attachment];
}
+ (instancetype)ng_attributedImage:(NSString *)image string:(NSString *)string font:(CGFloat)font color:(UIColor *)color {
    return [self ng_attributedImage:image string:string font:font color:color lineSpacing:0 margin:0];
}
+ (instancetype)ng_attributedImage:(NSString *)image string:(NSString *)string font:(CGFloat)font color:(UIColor *)color lineSpacing:(CGFloat)lineSpacing margin:(CGFloat)margin {
    NSMutableAttributedString *mAttri = [[NSMutableAttributedString alloc] init];
    if (image) {
        [mAttri appendAttributedString:[self ng_attributedImage:image font:font margin:margin]];
    }
    if (string) {
        [mAttri appendAttributedString:[self ng_attributedString:string font:font color:color lineSpacing:lineSpacing]];
    }
    return mAttri;
}


@end
