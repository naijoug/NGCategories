//
//  UIImage+NGQRCode.h
//  NGCategoriesSample
//
//  Created by guojian on 2017/4/17.
//  Copyright © 2017年 http://naijoug.com. All rights reserved.
//  二维码处理

#import <UIKit/UIKit.h>

@interface UIImage (NGQRCode)

/**
 * 生成二维码图片
 *
 * @param string    二维码的字符串
 * @param size      图片的宽高尺寸
 */
+ (UIImage *)ng_QRImageWithString:(NSString *)string size:(CGFloat)size;

/**
 * 解析二维码图片表示的字符串
 */
- (NSString *)ng_QRString;

@end
