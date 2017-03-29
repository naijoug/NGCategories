//
//  UIColor+NGExtension.m
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import "UIColor+NGExtension.h"

@implementation UIColor (NGExtension)

+ (instancetype)ng_colorWithHexString:(NSString *)hex {
    return [self ng_colorWithHexString:hex alpha:1.0];
}
+ (instancetype)ng_colorWithHexString:(NSString *)hex alpha:(CGFloat)alpha
{
    //去除空格换行符，并转化为大写字母
    NSString *colorStr = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    if ( colorStr.length<6 ) {
        return nil;
    }
    
    //除去16进制前缀“#”|@“0X”
    if ([colorStr hasPrefix:@"0X"]) colorStr = [colorStr substringFromIndex:2];
    if ([colorStr hasPrefix:@"#"]) colorStr = [colorStr substringFromIndex:1];
    
    //如果字符长度不是6则不是正确16进制颜色
    if (colorStr.length!=6) {
        return nil;
    }
    
    //去除rgb颜色
    NSString *rStr = [colorStr substringWithRange:NSMakeRange(0, 2)];
    NSString *gStr = [colorStr substringWithRange:NSMakeRange(2, 2)];
    NSString *bStr = [colorStr substringWithRange:NSMakeRange(4, 2)];
    //转化为对应10进制
    unsigned int r,g,b;
    [[NSScanner scannerWithString:rStr] scanHexInt:&r];
    [[NSScanner scannerWithString:gStr] scanHexInt:&g];
    [[NSScanner scannerWithString:bStr] scanHexInt:&b];
    
    return [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:alpha];
}

+ (instancetype)ng_randomColor {
    
    CGFloat red     = arc4random() / 255.0f;
    CGFloat green   = arc4random() / 255.0f;
    CGFloat blue    = arc4random() / 255.0f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
}

@end
