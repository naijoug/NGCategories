//
//  UINavigationController+NGExtension.m
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import "UINavigationController+NGExtension.h"

@implementation UINavigationController (NGExtension)

- (void)ng_pushController:(Class)cls {
    [self pushViewController:[[cls alloc] init] animated:YES];
}

- (void)ng_removeController:(Class)cls {
    [self ng_removeControllers:@[cls]];
}
- (void)ng_removeControllers:(NSArray *)clss {
    // 删除多个,需要倒序删除
    NSMutableArray *mArr = [NSMutableArray arrayWithArray:self.self.viewControllers];
    [[mArr reverseObjectEnumerator].allObjects enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        for (Class cls in clss) {
            if ([obj isKindOfClass:cls]) {
                [mArr removeObject:obj];
            }
        }
    }];
    self.viewControllers = [mArr copy];
}

@end
