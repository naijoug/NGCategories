//
//  NSDate+NGExtension.h
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (NGExtension)

- (NSUInteger)ng_year;      // 年
- (NSUInteger)ng_month;     // 月
- (NSUInteger)ng_day;       // 日
- (NSUInteger)ng_hour;      // 时
- (NSUInteger)ng_minute;    // 分
- (NSUInteger)ng_second;    // 秒

- (BOOL)ng_isThisYear;      // 今年
- (BOOL)ng_isThisMonth;     // 当前月
- (BOOL)ng_isThisDay;       // 当前日

- (BOOL)ng_isToday;         // 今天
- (BOOL)ng_isYestoday;      // 昨天
- (BOOL)ng_isBeforeYestoday;// 前天

@end
