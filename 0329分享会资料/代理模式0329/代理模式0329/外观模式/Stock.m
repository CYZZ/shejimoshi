//
//  Stock.m
//  代理模式0329
//
//  Created by chiyz on 2019/3/29.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import "Stock.h"

@implementation Stock
- (void)buy{
	
}
- (void)sell{
	
}
@end

@implementation Stock1
- (void)buy{
	NSLog(@"购买股票1");
}

- (void)sell{
	NSLog(@"卖出股票1");
}
@end

@implementation Stock2
- (void)buy{
	NSLog(@"购买股票2");
}
- (void)sell{
	NSLog(@"卖出股票2");
}
@end

@implementation Stock3
- (void)buy{
	NSLog(@"购买股票3");
}
- (void)sell{
	NSLog(@"卖出股票3");
}
@end

@implementation NationalDebt1
- (void)buy{
	NSLog(@"购买国债1");
}
- (void)sell{
	NSLog(@"卖出国债1");
}
@end

@implementation Realty1
- (void)buy{
	NSLog(@"购买房地产1");
}
- (void)sell{
	NSLog(@"卖出房地产1");
}
@end
