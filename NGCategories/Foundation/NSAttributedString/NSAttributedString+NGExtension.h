//
//  NSAttributedString+NGExtension.h
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSAttributedString (NGExtension)

#pragma mark - 文字
+ (instancetype)ng_attributedString:(NSString *)string font:(CGFloat)font color:(UIColor *)color;
+ (instancetype)ng_attributedString:(NSString *)string font:(CGFloat)font color:(UIColor *)color lineSpacing:(CGFloat)lineSpacing;
#pragma mark 文字 + 图片
+ (instancetype)ng_attributedString:(NSString *)string image:(NSString *)image font:(CGFloat)font color:(UIColor *)color;
/**
 *  文字 + 图片
 *
 *  @param string       文本
 *  @param image        图片名称
 *  @param font         字体大小
 *  @param color        字体颜色
 *  @param lineSpaling  行高
 *  @param margin       图片偏移量
 */
+ (instancetype)ng_attributedString:(NSString *)string image:(NSString *)image font:(CGFloat)font color:(UIColor *)color lineSpacing:(CGFloat)lineSpacing margin:(CGFloat)margin;

#pragma mark - 图片
+ (instancetype)ng_attributedImage:(NSString *)image font:(CGFloat)font;
+ (instancetype)ng_attributedImage:(NSString *)image font:(CGFloat)font margin:(CGFloat)margin;
#pragma mark 图片 + 文字
+ (instancetype)ng_attributedImage:(NSString *)image string:(NSString *)string font:(CGFloat)font color:(UIColor *)color;
/**
 *  图片 + 文字
 *
 *  @param image        图片名称
 *  @param string       文本
 *  @param font         字体大小
 *  @param color        字体颜色
 *  @param lineSpaling  行高
 *  @param margin       图片偏移量
 */
+ (instancetype)ng_attributedImage:(NSString *)image string:(NSString *)string font:(CGFloat)font color:(UIColor *)color lineSpacing:(CGFloat)lineSpacing margin:(CGFloat)margin;

@end
