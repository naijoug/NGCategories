//
//  UIImage+NGExtension.m
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import "UIImage+NGExtension.h"

@implementation UIImage (NGExtension)

- (UIImage *)ng_originalImageNamed:(NSString *)name {
    return [[UIImage imageNamed:name] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

- (UIImage *)ng_circleImage {
    CGFloat width   = self.size.width;
    CGFloat height  = self.size.height;
    //开启图片上下文
    UIGraphicsBeginImageContext(self.size);
    //绘制图片
    [self drawInRect:CGRectMake(0, 0, width, height)];
    //图片中心圆截取
    CGRect clipRect = (width > height) ? CGRectMake((width - height)/2, 0, height, height) : CGRectMake(0, (height - width)/2, width, width);
    UIBezierPath *clipPath = [UIBezierPath bezierPathWithOvalInRect:clipRect];
    [clipPath addClip];
    
    UIImage *image  = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (UIImage *)ng_imageScaleToSize:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (UIImage *)ng_imageScaleToMax:(CGFloat)max min:(CGFloat)min {
    //图片原始宽高
    CGFloat oWidth = self.size.width;
    CGFloat oHeight = self.size.height;
    
    //1. 宽高都小于最大尺寸，不需要缩放
    if (oWidth <= max && oHeight <= max) {
        return self;
    }
    //2. 需要缩放
    //缩放后的宽高
    CGFloat sWidth = 0.0f;
    CGFloat sHeight = 0.0f;
    if (oWidth > oHeight) {//宽度 > 高度
        if (oWidth > max) {//以宽度缩放
            sWidth = max;
            sHeight = oHeight * (sWidth / oWidth);
            
            if (sHeight < min) {//横向长图，
                sHeight = min;
                sWidth  = oWidth * (sHeight / oHeight);
            }
        }
    } else {//高度 > 宽度
        if (oHeight > max) {//以高度缩放
            sHeight = max;
            sWidth = oWidth * (sHeight / oHeight);
            
            if (sWidth < min) {//纵向长图
                sWidth = min;
                sHeight = oHeight * (sWidth / oWidth);
            }
        }
    }
    
    //缩放到对应尺寸
    return [self ng_imageScaleToSize:CGSizeMake(sWidth, sHeight)];
}

+ (UIImage *)ng_imageWithColor:(UIColor *)color {
    return [self ng_imageWithColor:color size:CGSizeMake(1, 1)];
}

+ (UIImage *)ng_imageWithColor:(UIColor *)color size:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    [color set];
    UIRectFill(CGRectMake(0, 0, size.width, size.height));
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)ng_imageWithTitle:(NSString *)title font:(CGFloat)font color:(UIColor *)color {
    
    NSDictionary *attributes = @{NSFontAttributeName : [UIFont systemFontOfSize:font],
                                 NSForegroundColorAttributeName : color};
    CGSize size = [title sizeWithAttributes:attributes];
    
    UIGraphicsBeginImageContext(size);
    [title drawInRect:CGRectMake(0, 0, size.width, size.height) withAttributes:attributes];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}


@end
