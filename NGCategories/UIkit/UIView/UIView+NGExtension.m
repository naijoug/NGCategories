//
//  UIView+NGExtension.m
//  NGCategories
//
//  Created by guojian on 2016/11/25.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import "UIView+NGExtension.h"

@implementation UIView (NGExtension)

- (NSString *)ng_xmlComponent
{
    if ([self isKindOfClass:[UITableViewCell class]]) return @"";
    
    
    NSMutableString *xml = [NSMutableString string];
    
    // 标签开头
    [xml appendFormat:@"<%@ frame=\"%@\"", self.class, NSStringFromCGRect(self.frame)];
    if (!CGPointEqualToPoint(self.bounds.origin, CGPointZero)) {
        [xml appendFormat:@" bounds=\"%@\"", NSStringFromCGRect(self.bounds)];
    }
    
    if ([self isKindOfClass:[UIScrollView class]]) {
        UIScrollView *scroll = (UIScrollView *)self;
        if (!UIEdgeInsetsEqualToEdgeInsets(UIEdgeInsetsZero, scroll.contentInset)) {
            [xml appendFormat:@" contentInset=\"%@\"", NSStringFromUIEdgeInsets(scroll.contentInset)];
        }
    }
    
    // 判断是否要结束
    if (self.subviews.count == 0) {
        [xml appendString:@" />"];
        return xml;
    } else {
        [xml appendString:@">"];
    }
    
    // 遍历所有的子控件
    for (UIView *child in self.subviews) {
        NSString *childXml = [child ng_xmlComponent];
        [xml appendString:childXml];
    }
    
    // 标签结尾
    [xml appendFormat:@"</%@>", self.class];
    
    return xml;
}

- (UIImage *)ng_snapshotImage
{
    //开启图片上下文
    UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, 0.0);
    //获得当前上下文
    CGContextRef ctx    = UIGraphicsGetCurrentContext();
    //把layer渲染到当前上下文
    [self.layer renderInContext:ctx];
    //从图片上下文取出图片
    UIImage *image      = UIGraphicsGetImageFromCurrentImageContext();
    //关闭图片上下文
    UIGraphicsEndImageContext();
    
    return image;
}

@end
