//
//  UIView+NGFrame.m
//  NGCategories
//
//  Created by guojian on 16/9/8.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import "UIView+NGFrame.h"

@implementation UIView (NGFrame)

#pragma mark - UIView原有
- (CGFloat)ng_x         {   return self.frame.origin.x;     }
- (CGFloat)ng_y         {   return self.frame.origin.y;     }
- (CGFloat)ng_width     {   return self.frame.size.width;   }
- (CGFloat)ng_height    {   return self.frame.size.width;   }
- (CGPoint)ng_origin    {   return self.frame.origin;       }
- (CGSize)ng_size       {   return self.frame.size;         }

- (void)setNg_x:(CGFloat)ng_x {
    CGRect frame        = self.frame;
    frame.origin.x      = ng_x;
    self.frame          = frame;
}
- (void)setNg_y:(CGFloat)ng_y {
    CGRect frame        = self.frame;
    frame.origin.y      = ng_y;
    self.frame          = frame;
}
- (void)setNg_width:(CGFloat)ng_width {
    CGRect frame        = self.frame;
    frame.size.width    = ng_width;
    self.frame          = frame;
}
- (void)setNg_height:(CGFloat)ng_height {
    CGRect frame        = self.frame;
    frame.size.height   = ng_height;
    self.frame          = frame;
}
- (void)setNg_origin:(CGPoint)ng_origin {
    CGRect frame        = self.frame;
    frame.origin        = ng_origin;
    self.frame          = frame;
}
- (void)setNg_size:(CGSize)ng_size {
    CGRect frame        = self.frame;
    frame.size          = ng_size;
    self.frame          = frame;
}


#pragma mark - UIView扩展
- (CGFloat)ng_left      {    return self.frame.origin.x;            }
- (CGFloat)ng_top       {    return self.frame.origin.y;            }
- (CGFloat)ng_right     {    return self.ng_x + self.ng_width;      }
- (CGFloat)ng_bottom    {    return self.ng_y + self.ng_height;     }
- (CGFloat)ng_centerX   {    return self.center.x;                  }
- (CGFloat)ng_centerY   {    return self.center.y;                  }

- (void)setNg_left:(CGFloat)ng_left {
    CGRect frame        = self.frame;
    frame.origin.x      = ng_left;
    self.frame          = frame;
}
- (void)setNg_top:(CGFloat)ng_top {
    CGRect frame        = self.frame;
    frame.origin.y      = ng_top;
    self.frame          = frame;
}
- (void)setNg_right:(CGFloat)ng_right {
    CGRect frame        = self.frame;
    frame.origin.x      = ng_right - self.ng_width;
    self.frame          = frame;
}
- (void)setNg_bottom:(CGFloat)ng_bottom {
    CGRect frame        = self.frame;
    frame.origin.y      = ng_bottom - self.ng_height;
    self.frame          = frame;
}
- (void)setNg_centerX:(CGFloat)ng_centerX {
    CGPoint center      = self.center;
    center.x            = ng_centerX;
    self.center         = center;
}
- (void)setNg_centerY:(CGFloat)ng_centerY {
    CGPoint center      = self.center;
    center.y            = ng_centerY;
    self.center         = center;
}


@end
