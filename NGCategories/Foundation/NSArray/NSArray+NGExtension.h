//
//  NSArray+NGExtension.h
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (NGExtension)

/** 获取索引为index下值,index超过数组长度返回nil */
- (id)ng_parseIndex:(NSInteger)index;
/** index下字符串, 若不是字符串返回nil */
- (NSString *)ng_stringAtIndex:(NSInteger)index;
/** index下NSNumber, 若不是NSNumber返回nil */
- (NSNumber *)ng_numberAtIndex:(NSInteger)index;
/** index下NSArray, 若不是NSArray返回nil */
- (NSArray *)ng_arrayAtIndex:(NSInteger)index;

@end

@interface NSArray (NGLog)

/**
 *  显示array的log
 */
- (NSString *)ng_log;

@end
