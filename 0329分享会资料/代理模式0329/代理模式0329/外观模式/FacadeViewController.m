//
//  FacadeViewController.m
//  代理模式0329
//
//  Created by chiyz on 2019/3/28.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import "FacadeViewController.h"
#import "Stock.h"

#import "Fund.h"

@interface FacadeViewController ()

@end

@implementation FacadeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)backClick:(id)sender {
	[self dismissViewControllerAnimated:YES completion:nil];
	
}
- (IBAction)startBuyClick:(id)sender {
	NSLog(@"\n开始自己购买股票-----");
	Stock1 *gu1 = [[Stock1 alloc] init];
	Stock2 *gu2 = [[Stock2 alloc] init];
	Stock3 *gu3 = [[Stock3 alloc] init];
	
	NationalDebt1 *nd1 = [[NationalDebt1 alloc] init];
	Realty1 *rt1 = [[Realty1 alloc] init];
	
	[gu1 buy];
	[gu2 buy];
	[gu3 buy];
	[nd1 buy];
	[rt1 buy];
	
	[gu1 sell];
	[gu2 sell];
	[gu3 sell];
	[nd1 sell];
	[rt1 sell];
}
- (IBAction)starBuyFundClick:(id)sender {
	NSLog(@"\n开始购买基金-----");
	Fund *jijin = [[Fund alloc] init];
	// 基金购买
	[jijin buyFund];
	// 卖出基金
	[jijin sellFund];
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
