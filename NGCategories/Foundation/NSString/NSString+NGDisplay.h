//
//  NSString+NGDisplay.h
//  NGCategories
//
//  Created by guojian on 2017/3/23.
//  Copyright © 2017年 http://naijoug.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (NGDisplay)

#pragma mark - String

/**
 *  string ? string : "";
 */
+ (instancetype)ng_stringWithString:(NSString *)string;
/**
 *  string ? string : placeholder;
 */
+ (instancetype)ng_stringWithString:(NSString *)string placeholder:(NSString *)placeholder;

#pragma mark - Number
+ (instancetype)ng_stringWithNumber:(NSNumber *)number;
+ (instancetype)ng_stringWithNumber:(NSNumber *)number digit:(int)digit;
+ (instancetype)ng_stringWithNumber:(NSNumber *)number digit:(int)digit round:(BOOL)round;

+ (instancetype)ng_precentStringWithNumber:(NSNumber *)number;
+ (instancetype)ng_precentStringWithNumber:(NSNumber *)number digit:(int)digit;
+ (instancetype)ng_precentStringWithNumber:(NSNumber *)number digit:(int)digit round:(BOOL)round;

+ (instancetype)ng_stringWithFloat:(float)number;
+ (instancetype)ng_stringWithFloat:(float)number digit:(int)digit;
+ (instancetype)ng_stringWithFloat:(float)number digit:(int)digit round:(BOOL)round;



#pragma mark - Error
/**
 *  error信息
 */
+ (NSString *)ng_stringWithError:(NSError *)error;


@end
