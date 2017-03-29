//
//  NSDate+NGExtension.m
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import "NSDate+NGExtension.h"

@implementation NSDate (NGExtension)

- (NSString *)ng_dateFormat:(NSString *)dateFormat {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = dateFormat;
    
    return [formatter stringFromDate:self];
}


- (NSUInteger)ng_year       { return self.ng_dateComponents.year; }
- (NSUInteger)ng_month      { return self.ng_dateComponents.month; }
- (NSUInteger)ng_day        { return self.ng_dateComponents.day; }
- (NSUInteger)ng_hour       { return self.ng_dateComponents.hour; }
- (NSUInteger)ng_minute     { return self.ng_dateComponents.minute; }
- (NSUInteger)ng_second     { return self.ng_dateComponents.second; }

- (BOOL)ng_isThisYear       { return self.ng_year == [NSDate date].ng_year; }
- (BOOL)ng_isThisMonth      { return self.ng_month == [NSDate date].ng_month; }
- (BOOL)ng_isThisDay        { return self.ng_day == [NSDate date].ng_day; }

- (BOOL)ng_isToday          { return [self ng_equalYMDBetween:self with:[NSDate date]]; }
- (BOOL)ng_isYestoday       { return [self ng_equalYMDBetween:self with:[[NSDate date] dateByAddingTimeInterval:-24*60*60]];  }
- (BOOL)ng_isBeforeYestoday { return [self ng_equalYMDBetween:self with:[[NSDate date] dateByAddingTimeInterval:-(24*60*60)*2]];  }


#pragma mark - Tool

/**
 *  获取NSDate的：年、月、日、时、分、秒
 */
- (NSDateComponents *)ng_dateComponents {
    NSCalendar *calendar    = [NSCalendar currentCalendar];
    NSCalendarUnit unit     = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond ;
    return [calendar components:unit fromDate:self];
}

/**
 *  两个日期年月日均相等
 */
- (BOOL)ng_equalYMDBetween:(NSDate *)one with:(NSDate *)two {
    return (one.ng_year == two.ng_year) && (one.ng_month == two.ng_month) && (one.ng_day == two.ng_day);
}

@end
