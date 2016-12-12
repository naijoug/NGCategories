//
//  UINavigationController+NGExtension.h
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (NGExtension)

/**
 *  push无参的控制器
 *
 *  @param controller 控制器的类名
 */
- (void)ng_pushController:(Class)controller;

@end
