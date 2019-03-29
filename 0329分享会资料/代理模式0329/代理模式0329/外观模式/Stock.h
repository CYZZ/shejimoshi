//
//  Stock.h
//  代理模式0329
//
//  Created by chiyz on 2019/3/29.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Stock : NSObject

/// 购买
- (void)buy;

/// 卖出
- (void)sell;

@end
/// 股票1
@interface Stock1 : Stock

@end
/// 股票2
@interface Stock2 : Stock

@end
/// 股票3
@interface Stock3 : Stock

@end

/// 国债1
@interface NationalDebt1 : Stock

@end

/// 房地产1
@interface Realty1 : Stock

@end

NS_ASSUME_NONNULL_END
