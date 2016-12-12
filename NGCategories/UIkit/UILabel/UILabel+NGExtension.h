//
//  UILabel+NGExtension.h
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (NGExtension)

/** 左对齐label */
+ (UILabel *)ng_leftLabelWithTitle:(NSString *)title font:(CGFloat)font color:(UIColor *)color;
/** 中间label */
+ (UILabel *)ng_centerLabelWithTitle:(NSString *)title font:(CGFloat)font color:(UIColor *)color;
/** 右对齐label */
+ (UILabel *)ng_rightLabelWithTitle:(NSString *)title font:(CGFloat)font color:(UIColor *)color;

@end
