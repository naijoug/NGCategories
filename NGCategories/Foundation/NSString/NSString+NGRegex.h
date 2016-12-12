//
//  NSString+NGRegex.h
//  NGCategories
//
//  Created by guojian on 2016/11/26.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (NGRegex)

/**
 *  是否有效昵称 (YES:无效)
 */
- (BOOL)ng_isInvalidNickName;
/**
 *  是否有效昵称 (YES:无效)
 */
- (BOOL)ng_isInvalidEmail;
/**
 *  是否有效手机号 (YES:无效)
 */
- (BOOL)ng_isInvalidPhoneNumber;
/**
 *  是否有效身份证号码 (YES:无效)
 */
- (BOOL)ng_isInvalidIDCard;
/**
 *  是否有效银行卡号 (YES:无效)
 */
- (BOOL)ng_isInvalidBankCard;

@end
