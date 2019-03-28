//
//  protocol.h
//  代理模式0329
//
//  Created by chiyz on 2019/3/28.
//  Copyright © 2019年 chiyz. All rights reserved.
//
#import <Foundation/Foundation.h>

@protocol IGiveGift <NSObject>
/// 送玩偶
- (void)giveDolls;
/// 送鲜花
- (void)giveFlowers;
/// 送巧克力
- (void)giveChocolate;

@end
