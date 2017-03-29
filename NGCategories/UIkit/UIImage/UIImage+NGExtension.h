//
//  UIImage+NGExtension.h
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (NGExtension)

/**
 *  无渲染图片
 */
- (UIImage *)ng_originalImageNamed:(NSString *)name;

/**
 *  裁剪为圆形图片
 */
- (UIImage *)ng_circleImage;

/**
 *  将图片缩放到指定尺寸
 */
- (UIImage *)ng_imageScaleToSize:(CGSize)size;
/**
 *  将图片缩放到指定的限定范围内(min ~ max)
 */
- (UIImage *)ng_imageScaleToMax:(CGFloat)max min:(CGFloat)min;


#pragma mark - 颜色图片
/**
 *  1*1 的纯色图片
 */
+ (UIImage *)ng_imageWithColor:(UIColor *)color;
/**
 *  指定尺寸纯色图片
 */
+ (UIImage *)ng_imageWithColor:(UIColor *)color size:(CGSize)size;

#pragma mark - 文字图片
/**
 *  文字图片
 */
+ (UIImage *)ng_imageWithTitle:(NSString *)title font:(CGFloat)font color:(UIColor *)color;


@end
