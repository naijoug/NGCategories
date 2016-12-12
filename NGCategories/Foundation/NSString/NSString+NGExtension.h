//
//  NSString+NGExtension.h
//  NGCategories
//
//  Created by guojian on 2016/11/25.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (NGExtension)

/**
 *  字符串是否为空 (nil || "")
 */
+ (BOOL)ng_isEmptyString:(NSString *)str;

/**
 *  是否包含子串str
 */
- (BOOL)ng_isContainString:(NSString *)str;

/**
 *  返回有效json(替换 ' 为 " )
 */
- (NSString *)ng_jsonString;

@end
