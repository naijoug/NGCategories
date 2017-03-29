//
//  NSString+NGPath.m
//  NGCategoriesSample
//
//  Created by guojian on 2017/3/20.
//  Copyright © 2017年 http://naijoug.com. All rights reserved.
//

#import "NSString+NGPath.h"

@implementation NSString (NGPath)

+ (NSString *)ng_documentPath {
    return NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
}
+ (NSString *)ng_cachePath {
    return NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject;
}
+ (NSString *)ng_tmpPath {
    return NSTemporaryDirectory();
}

@end
