//
//  NGBaseSampleController.m
//  NGCategoriesSample
//
//  Created by guojian on 2017/3/21.
//  Copyright © 2017年 http://naijoug.com. All rights reserved.
//

#import "NGBaseSampleController.h"
#import "UIImageSampleController.h"

@interface NGBaseSampleController ()

@end

@implementation NGBaseSampleController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"NSSampleCell"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.sampleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell   = [tableView dequeueReusableCellWithIdentifier:@"NSSampleCell" forIndexPath:indexPath];
    cell.textLabel.text     = [self.sampleArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSString *sample                = [self.sampleArray objectAtIndex:indexPath.row];
    NSString *controllerString      = [NSString stringWithFormat:@"%@SampleController", sample];
    UIViewController *controller    = nil;
    
    @try {  // 先使用xib初始化，不是xib再使用其它方式初始化
        controller = [[NSClassFromString(controllerString) alloc] initWithNibName:controllerString bundle:nil];
    } @catch (NSException *exception) {
        NSLog(@"控制器初始化异常 : \n%@", exception);
    } @finally {
        if (!controller) {
            controller = [[NSClassFromString(controllerString) alloc] init];
        }
    }
    
    if (controller) {
        controller.title            = sample;
        [self.navigationController pushViewController:controller animated:YES];
    }
}

@end
