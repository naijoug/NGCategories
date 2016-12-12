//
//  NSString+NGExtension.m
//  NGCategories
//
//  Created by guojian on 2016/11/25.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import "NSString+NGExtension.h"

@implementation NSString (NGExtension)


+ (BOOL)ng_isEmptyString:(NSString *)str {
    return !str || [str isEqualToString:@""];
}
- (BOOL)ng_isContainString:(NSString *)str {
    return [self rangeOfString:str].length;
}
- (NSString *)ng_jsonString {
    NSString *json = [NSString stringWithString:self];
    [json stringByReplacingOccurrencesOfString:@"\'" withString:@"\""];
    return json;
}

@end
