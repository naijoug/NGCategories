//
//  UIImage+NGQRCode.m
//  NGCategoriesSample
//
//  Created by guojian on 2017/4/17.
//  Copyright © 2017年 http://naijoug.com. All rights reserved.
//

#import "UIImage+NGQRCode.h"
#import <CoreImage/CoreImage.h>

@implementation UIImage (NGQRCode)

+ (UIImage *)ng_QRImageWithString:(NSString *)string size:(CGFloat)size {
    NSData *data        = [string dataUsingEncoding:NSUTF8StringEncoding];
    // 生成二维码
    CIFilter *filter    = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    [filter setValue:data forKey:@"inputMessage"];
    CIImage *ciImage    = filter.outputImage;
    
    // 创建图片
    CGRect extent       = CGRectIntegral(ciImage.extent);
    CGFloat scale       = MIN(size / CGRectGetWidth(extent), size / CGRectGetHeight(extent));
    size_t width        = CGRectGetWidth(extent) * scale;
    size_t height       = CGRectGetHeight(extent) * scale;
    
    CGContextRef bitmapRef  = CGBitmapContextCreate(nil, width, height, 8, 0, CGColorSpaceCreateDeviceGray(), (CGBitmapInfo)kCGImageAlphaNone);
    CIContext *context      = [CIContext contextWithOptions:nil];
    CGImageRef bitmapImage  = [context createCGImage:ciImage fromRect:extent];
    CGContextSetInterpolationQuality(bitmapRef, kCGInterpolationNone);
    CGContextScaleCTM(bitmapRef, scale, scale);
    CGContextDrawImage(bitmapRef, extent, bitmapImage);
    
    CGImageRef scaleImage   = CGBitmapContextCreateImage(bitmapRef);
    CGContextRelease(bitmapRef);
    CGImageRelease(bitmapImage);
    
    return [UIImage imageWithCGImage:scaleImage];
}

- (NSString *)ng_QRString {
    CIDetector *detector = [CIDetector detectorOfType:CIDetectorTypeQRCode
                                              context:nil
                                              options:@{ CIDetectorAccuracy : CIDetectorAccuracyHigh }];
    CIImage *ciImage    = [[CIImage alloc] initWithImage:self];
    NSArray *features   = [detector featuresInImage:ciImage];
    NSMutableString *mString = [NSMutableString string];
    for (CIQRCodeFeature *feature in features) {
        [mString appendString:feature.messageString];
    }
    return [mString copy];
}

@end
