//
//  ViewController.m
//  代理模式0329
//
//  Created by chiyz on 2019/3/28.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import "ViewController.h"
#import "ProxyViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)proxyButtonClick:(UIButton *)sender {
	ProxyViewController *proxy = [[ProxyViewController alloc] init];
	[self presentViewController:proxy animated:YES completion:nil];
}
- (IBAction)fasadeButtonClick:(UIButton *)sender {
	
}


@end
