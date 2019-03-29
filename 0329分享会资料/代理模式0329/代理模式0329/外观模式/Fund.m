//
//  Fund.m
//  代理模式0329
//
//  Created by chiyz on 2019/3/29.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import "Fund.h"

@implementation Fund
- (instancetype)init{
	if (self = [super init]) {
		self.gu1 = [[Stock1 alloc] init];
		self.gu2 = [[Stock2 alloc] init];
		self.gu3 = [[Stock3 alloc] init];
		self.nd1 = [[NationalDebt1 alloc] init];
		self.rt1 = [[Realty1 alloc] init];
	}
	return self;
}

- (void)buyFund{
	[self.gu1 buy];
	[self.gu2 buy];
	[self.gu3 buy];
	[self.nd1 buy];
	[self.rt1 buy];
}

- (void)sellFund{
	[self.gu1 sell];
	[self.gu2 sell];
	[self.gu3 sell];
	[self.nd1 sell];
	[self.rt1 sell];
}
@end
