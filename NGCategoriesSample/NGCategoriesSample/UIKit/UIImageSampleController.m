//
//  UIImageSampleController.m
//  NGCategoriesSample
//
//  Created by guojian on 2016/11/28.
//  Copyright © 2016年 http://naijoug.com. All rights reserved.
//

#import "UIImageSampleController.h"
#import "UIImage+NGQRCode.h"

@interface UIImageSampleController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation UIImageSampleController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

/**
 * 生成二维码图片
 */
- (IBAction)createQRCode:(id)sender {
    
    self.imageView.image = [UIImage ng_QRImageWithString:self.textField.text size:300];
    
}

/**
 * 解析二维码图片
 */
- (IBAction)parseQRCode:(id)sender {
    self.label.text = [self.imageView.image ng_QRString];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
