//
//  UITextView+NGExtension.h
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (NGExtension)

- (void)ng_appendAttributedText:(NSAttributedString *)attributedText;
/**
 *  在光标位置追加 attributedText
 *
 *  @parma attributedText   追加的 attributedText
 *  @parma settingBlock     对 attributedText 设置额外的属性
 */
- (void)ng_appendAttributedText:(NSAttributedString *)attributedText settingBlock:(void (^)(NSMutableAttributedString *))settingBlock;


- (void)ng_insertAttributedText:(NSAttributedString *)attributedText index:(NSInteger)index;
/**
 *  在 index 位置插入 attributedText
 */
- (void)ng_insertAttributedText:(NSAttributedString *)attributedText index:(NSInteger)index settingBlock:(void (^)(NSMutableAttributedString *))settingBlock;


- (void)ng_replaceInRange:(NSRange)range attributedText:(NSAttributedString *)attributedText;
/**
 *  将 range 范围替换为 attributedText
 */
- (void)ng_replaceInRange:(NSRange)range attributedText:(NSAttributedString *)attributedText settingBlock:(void (^)(NSMutableAttributedString *))settingBlock;

@end
