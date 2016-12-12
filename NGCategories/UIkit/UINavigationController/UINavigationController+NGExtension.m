//
//  UINavigationController+NGExtension.m
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import "UINavigationController+NGExtension.h"

@implementation UINavigationController (NGExtension)

- (void)ng_pushController:(Class)controller {
    [self pushViewController:[[controller alloc] init] animated:YES];
}

@end
