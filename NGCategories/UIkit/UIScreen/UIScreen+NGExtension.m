//
//  UIScreen+NGExtension.m
//  NGCategoriesSample
//
//  Created by guojian on 2017/3/20.
//  Copyright © 2017年 http://naijoug.com. All rights reserved.
//

#import "UIScreen+NGExtension.h"

@implementation UIScreen (NGExtension)

+ (CGSize)ng_size       { return [UIScreen mainScreen].bounds.size; }
+ (CGFloat)ng_width     { return [self ng_size].width; }
+ (CGFloat)ng_height    { return [self ng_size].height; }

@end
