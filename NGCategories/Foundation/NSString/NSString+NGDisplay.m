//
//  NSString+NGDisplay.m
//  NGCategories
//
//  Created by guojian on 2017/3/23.
//  Copyright © 2017年 http://naijoug.com. All rights reserved.
//

#import "NSString+NGDisplay.h"

@implementation NSString (NGDisplay)

#pragma mark - String

+ (instancetype)ng_stringWithString:(NSString *)string {
    return string ?: @"";
}
+ (instancetype)ng_stringWithString:(NSString *)string placeholder:(NSString *)placeholder {
    return string ?: placeholder;
}

#pragma mark - Number
+ (instancetype)ng_stringWithNumber:(NSNumber *)number {
    return number ? [self ng_stringWithNumber:number digit:0] : @"";
}
+ (instancetype)ng_stringWithNumber:(NSNumber *)number digit:(int)digit {
    return number ? [self ng_stringWithNumber:number digit:digit round:YES] : @"";
}
+ (instancetype)ng_stringWithNumber:(NSNumber *)number digit:(int)digit round:(BOOL)round {
    return number ? [self ng_stringWithFloat:number.floatValue digit:digit round:round] : @"";
}

+ (instancetype)ng_precentStringWithNumber:(NSNumber *)number {
    return number ? [self ng_precentStringWithNumber:number digit:0] : @"";
}
+ (instancetype)ng_precentStringWithNumber:(NSNumber *)number digit:(int)digit {
    return number ? [self ng_precentStringWithNumber:number digit:digit round:YES] : @"";
}
+ (instancetype)ng_precentStringWithNumber:(NSNumber *)number digit:(int)digit round:(BOOL)round {
    return number ? [self ng_precentStringWithFloat:number.floatValue digit:digit round:round] : @"";
}

+ (instancetype)ng_precentStringWithFloat:(float)number {
    return [self ng_precentStringWithFloat:number digit:0];
}
+ (instancetype)ng_precentStringWithFloat:(float)number digit:(int)digit {
    return [self ng_precentStringWithFloat:number digit:digit round:YES];
}
+ (instancetype)ng_precentStringWithFloat:(float)number digit:(int)digit round:(BOOL)round {
    return [[self ng_stringWithFloat:( number * 100 ) digit:digit round:round] stringByAppendingString:@"%"];
}

+ (instancetype)ng_stringWithFloat:(float)number {
    return [self ng_stringWithFloat:number digit:0];
}
+ (instancetype)ng_stringWithFloat:(float)number digit:(int)digit {
    return [self ng_stringWithFloat:number digit:digit round:YES];
}
+ (instancetype)ng_stringWithFloat:(float)number digit:(int)digit round:(BOOL)round {
    if (fabsf(number) < 0.00001f) {
        number = 0;
    }

    float floatNumber = number;
    if (!round) { // 不需要四舍五入 ( NSRoundDown : 截断，不进行四舍五入 )
        NSDecimalNumberHandler *behavior = [NSDecimalNumberHandler
                                            decimalNumberHandlerWithRoundingMode:NSRoundDown
                                            scale:digit
                                            raiseOnExactness:NO
                                            raiseOnOverflow:NO
                                            raiseOnUnderflow:NO
                                            raiseOnDivideByZero:NO];
        NSDecimalNumber *roundNumber = [[NSDecimalNumber alloc] initWithFloat:number];
        floatNumber = [roundNumber decimalNumberByRoundingAccordingToBehavior:behavior].floatValue;
    }
    
    switch (digit) {
            case 0:     return [NSString stringWithFormat:@"%.0f", floatNumber]; break;
            case 1:     return [NSString stringWithFormat:@"%.1f", floatNumber]; break;
            case 2:     return [NSString stringWithFormat:@"%.2f", floatNumber]; break;
            case 3:     return [NSString stringWithFormat:@"%.3f", floatNumber]; break;
            case 4:     return [NSString stringWithFormat:@"%.4f", floatNumber]; break;
            default:    return [NSString stringWithFormat:@"%f", floatNumber];   break;
    }
}



#pragma mark - Error
/**
 *  error信息
 */
+ (NSString *)ng_stringWithError:(NSError *)error {
    if (error && error.userInfo) {
        NSMutableString *message = [NSMutableString string];
        [message appendFormat:@"Error Code : %ld\n", error.code];
        if ([error.userInfo objectForKey:NSLocalizedDescriptionKey]) {
            [message appendFormat:@"%@\n", [error.userInfo objectForKey:NSLocalizedDescriptionKey]];
        }
        if ([error.userInfo objectForKey:NSLocalizedFailureReasonErrorKey]) {
            [message appendFormat:@"%@\n", [error.userInfo objectForKey:NSLocalizedFailureReasonErrorKey]];
        }
        
        return message;
    }
    return nil;
}

@end
