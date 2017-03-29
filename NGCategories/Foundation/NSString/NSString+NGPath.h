//
//  NSString+NGPath.h
//  NGCategoriesSample
//
//  Created by guojian on 2017/3/20.
//  Copyright © 2017年 http://naijoug.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (NGPath)

/** 文档路径 */
+ (NSString *)ng_documentPath;

+ (NSString *)ng_cachePath;

+ (NSString *)ng_tmpPath;

@end
