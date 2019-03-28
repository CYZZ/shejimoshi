//
//  ProxyPerson.h
//  代理模式0329
//
//  Created by chiyz on 2019/3/28.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "PursuitViewController.h"
#import "SchoolGirl.h"
#import "protocol.h"

//NS_ASSUME_NONNULL_BEGIN

@interface ProxyPerson : NSObject<IGiveGift>
@property(nonatomic, copy) NSString *name;

@property(nonatomic, strong) SchoolGirl *girl;
/// 初始化
- (instancetype)initWithGirl:(SchoolGirl*)girl;

@end

//NS_ASSUME_NONNULL_END
