//
//  UIBarButtonItem+NGExtension.h
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (NGExtension)

/**
 *  导航栏文字item
 */
+ (instancetype)ng_itemWithTitle:(NSString *)title target:(id)target action:(SEL)action;

/**
 *  导航栏图片item
 */
+ (instancetype)ng_itemWithImage:(NSString *)image target:(id)target action:(SEL)action;

@end
