//
//  Fund.h
//  代理模式0329
//
//  Created by chiyz on 2019/3/29.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stock.h"

NS_ASSUME_NONNULL_BEGIN

@interface Fund : NSObject

@property(nonatomic, strong)Stock1 *gu1;
@property(nonatomic, strong)Stock2 *gu2;
@property(nonatomic, strong)Stock3 *gu3;
@property(nonatomic, strong)NationalDebt1 *nd1;
@property(nonatomic, strong)Realty1 *rt1;

/// 购买基金
-(void)buyFund;

/// 卖出基金
- (void)sellFund;

@end

NS_ASSUME_NONNULL_END
