//
//  NSObject+NGExtension.h
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (NGExtension)

- (BOOL)ng_isString;    // NSString类型
- (BOOL)ng_isNumber;    // NSNumber类型
- (BOOL)ng_isArray;     // NSArray类型


/** 延迟0.5秒执行block */
- (void)ng_delayBlock:(void (^)(void))block;
/**
 *  perform延迟加载
 *
 *  @param delay 延迟时间
 *  @param block 要执行的block
 */
- (void)ng_performAfterDelay:(NSTimeInterval)delay block:(void (^)(void))block;


/** 延迟0.5秒执行block */
+ (void)ng_delayBlock:(void (^)(void))block;
/**
 *  dispatch延迟加载
 *
 *  @param delay 延迟时间
 *  @param block 要执行的block
 */
+ (void)ng_dispatchAfterDelay:(NSTimeInterval)delay block:(void (^)(void))block;


@end
