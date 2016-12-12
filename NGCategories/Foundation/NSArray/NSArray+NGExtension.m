//
//  NSArray+NGExtension.m
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import "NSArray+NGExtension.h"

@implementation NSArray (NGExtension)

- (id)ng_parseIndex:(NSInteger)index {
    return (index < self.count) ? [self objectAtIndex:index] : nil;
}
- (NSString *)ng_stringAtIndex:(NSInteger)index {
    NSString *str = [self ng_parseIndex:index];
    return [str isKindOfClass:[NSString class]] ? str : nil;
}
- (NSNumber *)ng_numberAtIndex:(NSInteger)index {
    NSNumber *num = [self ng_parseIndex:index];
    return [num isKindOfClass:[NSNumber class]] ? num : nil;
}
- (NSArray *)ng_arrayAtIndex:(NSInteger)index {
    NSArray *arr = [self ng_parseIndex:index];
    return [arr isKindOfClass:[NSArray class]] ? arr : nil;
}

@end


@implementation NSArray (NGLog)

- (NSString *)ng_log {
    NSMutableString *mStr = [NSMutableString stringWithString:@"[\n"];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:[NSArray class]]) {
            [obj appendFormat:@"\t%@,\n", [(NSArray *)obj ng_log]];
        }else {
            [obj appendFormat:@"\t%@,\n", obj];
        }
    }];
    [mStr appendString:@"]"];
    return [mStr copy];
}

@end
