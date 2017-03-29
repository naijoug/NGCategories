//
//  UINavigationController+NGFullScreenPopGesture.m
//  NGCategories
//
//  Created by guojian on 2017/3/20.
//  Copyright © 2017年 http://naijoug.com. All rights reserved.
//

#import "UINavigationController+NGFullScreenPopGesture.h"
#import <objc/runtime.h>


@interface UINavigationController (_NGFullScreenPopGesture)<UIGestureRecognizerDelegate>

@end
@implementation UINavigationController (_NGFullScreenPopGesture)

- (UIPanGestureRecognizer *)_ng_popGestureRecognizer {
    UIPanGestureRecognizer *panGestureRecognizer = objc_getAssociatedObject(self, _cmd);
    if (!panGestureRecognizer) {
        id target   = self.interactivePopGestureRecognizer.delegate;
        SEL action  = NSSelectorFromString(@"handleNavigationTransition:");
        
        panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:target action:action];
        panGestureRecognizer.maximumNumberOfTouches = 1;
        panGestureRecognizer.delegate = self;
    }
    return panGestureRecognizer;
}

#pragma mark - UIGestureRecognizerDelegate
- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer {
    
    // 根控制器
    if (self.viewControllers.count <= 1) {
        return NO;
    }
    
    // 正在进行push、pop
    if ([[self valueForKey:@"_isTransitioning"] boolValue]) {
        return NO;
    }
    
    // 左滑动，坐标为负
    if ([gestureRecognizer translationInView:gestureRecognizer.view].x <= 0 ) {
        return NO;
    }
    
    return YES;
}

@end



@implementation UINavigationController (NGFullScreenPopGesture) 

+ (void)load {
    
    SEL originalSelector    = @selector(pushViewController:animated:);
    SEL swizzledSelector    = @selector(ng_pushViewController:animated:);
    
    Method originalMethod   = class_getInstanceMethod(self, originalSelector);
    Method swizzledMethod   = class_getInstanceMethod(self, swizzledSelector);
    method_exchangeImplementations(originalMethod, swizzledMethod);
    
}

- (void)ng_pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (![self.interactivePopGestureRecognizer.view.gestureRecognizers containsObject:self.ng_popGestureRecognizer]) {
        
        [self.interactivePopGestureRecognizer.view addGestureRecognizer:self.ng_popGestureRecognizer];
        
        self.interactivePopGestureRecognizer.enabled = NO;
    }
    
    if (![self.viewControllers containsObject:viewController]) {
        [self ng_pushViewController:viewController animated:animated];
    }
}

- (UIPanGestureRecognizer *)ng_popGestureRecognizer {
    return [self _ng_popGestureRecognizer];
}


@end
