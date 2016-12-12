//
//  UIView+NGFrame.h
//  NGCategories
//
//  Created by guojian on 16/9/8.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (NGFrame)

#pragma mark - UIView原有
@property (nonatomic,assign) CGFloat ng_x;
@property (nonatomic,assign) CGFloat ng_y;
@property (nonatomic,assign) CGFloat ng_width;
@property (nonatomic,assign) CGFloat ng_height;
@property (nonatomic,assign) CGPoint ng_origin;
@property (nonatomic,assign) CGSize  ng_size;

#pragma mark - UIView扩展
@property (nonatomic,assign) CGFloat ng_left;
@property (nonatomic,assign) CGFloat ng_top;
@property (nonatomic,assign) CGFloat ng_right;
@property (nonatomic,assign) CGFloat ng_bottom;
@property (nonatomic,assign) CGFloat ng_centerX;
@property (nonatomic,assign) CGFloat ng_centerY;

@end
