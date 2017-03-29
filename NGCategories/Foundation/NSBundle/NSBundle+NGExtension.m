//
//  NSBundle+NGExtension.m
//  NGCategoriesSample
//
//  Created by guojian on 2017/3/20.
//  Copyright © 2017年 http://naijoug.com. All rights reserved.
//

#import "NSBundle+NGExtension.h"

@implementation NSBundle (NGExtension)

+ (NSString *)ng_bundleVersion {
    return [[NSBundle mainBundle].infoDictionary objectForKey:(NSString *)kCFBundleVersionKey];
}

@end
