//
//  UINavigationController+NGFullScreenPopGesture.h
//  NGCategories
//
//  Created by guojian on 2017/3/20.
//  Copyright © 2017年 http://naijoug.com. All rights reserved.
//
//  学习完 sunnyxx 的练手
//  blog : [一个丝滑的全屏滑动返回手势](http://blog.sunnyxx.com/2015/06/07/fullscreen-pop-gesture/)
//  完善的解决方案 : [FDFullscreenPopGesture](https://github.com/forkingdog/FDFullscreenPopGesture)

#import <UIKit/UIKit.h>

@interface UINavigationController (NGFullScreenPopGesture)

/** pop侧滑手势 */
@property (nonatomic,strong,readonly) UIPanGestureRecognizer *ng_popGestureRecognizer;

@end
