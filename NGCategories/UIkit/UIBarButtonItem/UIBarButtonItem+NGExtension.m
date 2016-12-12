//
//  UIBarButtonItem+NGExtension.m
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import "UIBarButtonItem+NGExtension.h"

@implementation UIBarButtonItem (NGExtension)

+ (instancetype)ng_itemWithTitle:(NSString *)title target:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithTitle:title
                                            style:UIBarButtonItemStylePlain
                                           target:target action:action];
}

+ (instancetype)ng_itemWithImage:(NSString *)image target:(id)target action:(SEL)action {
    return [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                            style:UIBarButtonItemStylePlain
                                           target:target action:action];
}

@end
