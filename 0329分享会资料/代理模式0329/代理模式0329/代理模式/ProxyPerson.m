//
//  ProxyPerson.m
//  代理模式0329
//
//  Created by chiyz on 2019/3/28.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import "ProxyPerson.h"
#import <UIKit/UIKit.h>

@implementation ProxyPerson

- (instancetype)initWithGirl:(SchoolGirl *)girl{
	if (self = [super init]) {
		self.name = @"戴力";
		self.girl = girl;
	}
	return self;
}

- (void)giveDolls{
	[self showAlerView:[NSString stringWithFormat: @"卓贾易送玩偶给%@",self.girl.name]];
}

- (void)giveFlowers{
	[self showAlerView:[NSString stringWithFormat: @"卓贾易送鲜花给%@",self.girl.name]];
}

- (void)giveChocolate{
	[self showAlerView:[NSString stringWithFormat: @"卓贾易送巧克力给%@",self.girl.name]];
}

- (void)showAlerView:(NSString *)message{
//	UIAlertController *alerController = [UIAlertController alertControllerWithTitle:@"结果"
//																			message:message preferredStyle:UIAlertControllerStyleAlert];
//	[[[UIApplication sharedApplication] keyWindow].rootViewController presentViewController:alerController animated:YES completion:nil];
	UIAlertView *alerview = [[UIAlertView alloc] initWithTitle:@"结果"
													   message:message
													  delegate:nil
											 cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
	[alerview show];
}

@end
