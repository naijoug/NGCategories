//
//  UIView+NGExtension.h
//  NGCategories
//
//  Created by guojian on 2016/11/25.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (NGExtension)

/** View的层级xml */
- (NSString *)ng_xmlComponent;

/** View的截屏图片 */
- (UIImage *)ng_snapshotImage;

@end
