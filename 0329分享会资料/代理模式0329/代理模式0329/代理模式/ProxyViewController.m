//
//  ProxyViewController.m
//  代理模式0329
//
//  Created by chiyz on 2019/3/28.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import "ProxyViewController.h"
#import "PursuitViewController.h"

@interface ProxyViewController ()

@property(nonatomic, strong)PursuitViewController *pursuit;

@end

@implementation ProxyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	SchoolGirl *girl = [[SchoolGirl alloc] init];
	girl.name = @"李娇娇";
	
	self.pursuit = [[PursuitViewController alloc] initWithGirl:girl];
}


- (IBAction)giveDollsClick:(UIButton *)sender {
	[self.pursuit giveDolls];
}
- (IBAction)giveFlowersClick:(UIButton *)sender {
	[self.pursuit giveFlowers];
}
- (IBAction)giveChocolateClick:(UIButton *)sender {
	[self.pursuit giveChocolate];
}

- (IBAction)backtoHomeClick:(UIButton *)sender {
	[self dismissViewControllerAnimated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
