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
 *  @param cls 控制器的类名
 */
- (void)ng_pushController:(Class)cls;


/**
 *  删除导航堆栈中cls类型的控制器
 */
- (void)ng_removeController:(Class)cls;

/**
 *  删除导航堆栈中clss数组中类型的控制器
 */
- (void)ng_removeControllers:(NSArray *)clss;


@end
