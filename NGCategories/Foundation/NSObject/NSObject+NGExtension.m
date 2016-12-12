//
//  NSObject+NGExtension.m
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import "NSObject+NGExtension.h"

@implementation NSObject (NGExtension)

- (BOOL)ng_isString    { return [self isKindOfClass:[NSString class]]; }
- (BOOL)ng_isNumber    { return [self isKindOfClass:[NSNumber class]]; }
- (BOOL)ng_isArray     { return [self isKindOfClass:[NSArray class]];  }


- (void)ng_delayBlock:(void (^)(void))block {
    [self ng_performAfterDelay:0.5 block:^{
        block();
    }];
}
- (void)ng_performAfterDelay:(NSTimeInterval)delay block:(void (^)(void))block {
    [self performSelector:@selector(ng_blockAction:) withObject:block afterDelay:delay];
}
- (void)ng_blockAction:(void (^)(void))block {
    block();
}


+ (void)ng_delayBlock:(void (^)(void))block {
    [self ng_dispatchAfterDelay:0.5 block:^{
        block();
    }];
}
+ (void)ng_dispatchAfterDelay:(NSTimeInterval)delay block:(void (^)(void))block {
    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay*NSEC_PER_SEC));
    dispatch_after(time, dispatch_get_main_queue(), ^{
        block();
    });
}


@end
