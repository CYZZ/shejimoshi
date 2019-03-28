//
//  PursuitViewController.m
//  代理模式0329
//
//  Created by chiyz on 2019/3/28.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import "PursuitViewController.h"

@interface PursuitViewController ()
@property(nonatomic, strong) ProxyPerson *person;

@end

@implementation PursuitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (instancetype)initWithGirl:(SchoolGirl *)girl{
	if (self = [super init]) {
		self.name = @"卓贾易";
		self.person = [[ProxyPerson alloc] initWithGirl:girl];
		self.delegate = self.person;
		
	}
	return self;
}

- (void)giveDolls{
	if (self.delegate && [self.delegate respondsToSelector:@selector(giveDolls)]) {
		[self.delegate giveDolls];
	}
}

- (void)giveFlowers{
	if (self.delegate && [self.delegate respondsToSelector:@selector(giveDolls)]) {
		[self.delegate giveFlowers];
	}
//	[self showAlerView:@"收到了说服者的鲜花"];
}
- (void)giveChocolate{
	if (self.delegate && [self.delegate respondsToSelector:@selector(giveChocolate)]) {
		[self.delegate giveChocolate];
	}
//	[self showAlerView:@"收到了说服者的巧克力"];
}


- (void)dealloc{
	NSLog(@"func ===%s",__func__);
}

@end
