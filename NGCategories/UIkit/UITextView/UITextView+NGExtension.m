//
//  UITextView+NGExtension.m
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import "UITextView+NGExtension.h"

@implementation UITextView (NGExtension)

- (void)ng_appendAttributedText:(NSAttributedString *)attributedText {
    [self ng_appendAttributedText:attributedText settingBlock:nil];
}
- (void)ng_appendAttributedText:(NSAttributedString *)attributedText settingBlock:(void (^)(NSMutableAttributedString *))settingBlock {
    NSMutableAttributedString *mAttri = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    //取出之前光标位置
    NSUInteger location = self.selectedRange.location;
    
    // 在光标位置追加文本
    [mAttri replaceCharactersInRange:self.selectedRange withAttributedString:attributedText];
    if (settingBlock) { // 额外设置属性
        settingBlock(mAttri);
    }
    
    self.attributedText = [mAttri copy];
    
    //调整光标位置
    self.selectedRange = NSMakeRange(location + 1, 0);
}


- (void)ng_insertAttributedText:(NSAttributedString *)attributedText index:(NSInteger)index {
    [self ng_insertAttributedText:attributedText index:index settingBlock:nil];
}
- (void)ng_insertAttributedText:(NSAttributedString *)attributedText index:(NSInteger)index settingBlock:(void (^)(NSMutableAttributedString *))settingBlock {
    NSMutableAttributedString *mAttri = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    [mAttri insertAttributedString:attributedText atIndex:index];
    if (settingBlock) {
        settingBlock(mAttri);
    }
    
    self.attributedText = [mAttri copy];
}


- (void)ng_replaceInRange:(NSRange)range attributedText:(NSAttributedString *)attributedText {
    [self ng_replaceInRange:range attributedText:attributedText settingBlock:nil];
}
- (void)ng_replaceInRange:(NSRange)range attributedText:(NSAttributedString *)attributedText settingBlock:(void (^)(NSMutableAttributedString *))settingBlock {
    NSMutableAttributedString *mAttri = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    [mAttri replaceCharactersInRange:range withAttributedString:attributedText];
    if (settingBlock) {
        settingBlock(mAttri);
    }
    
    self.attributedText = [mAttri copy];
}

@end
