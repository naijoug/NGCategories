//
//  UIColor+NGExtension.h
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (NGExtension)

/**
 *  通过16进制字符串("#...... | 0x......")创建颜色
 */
+ (instancetype)ng_colorWithHexString:(NSString *)hex;
/**
 *  通过16进制字符串("#...... | 0x......")创建颜色
 *
 *  @param hex 16进制字符串
 *  @param alpha 透明度
 */
+ (instancetype)ng_colorWithHexString:(NSString *)hex alpha:(CGFloat)alpha;


/**
 *  随机颜色
 */
+ (instancetype)ng_randomColor;

@end
