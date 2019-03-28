//
//  PursuitViewController.h
//  代理模式0329
//
//  Created by chiyz on 2019/3/28.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SchoolGirl.h"
#import "ProxyPerson.h"
#import "protocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface PursuitViewController : UIViewController<IGiveGift>
@property(nonatomic, copy) NSString *name;
@property(nonatomic, weak) id<IGiveGift> delegate;
- (instancetype)initWithGirl:(SchoolGirl*)girl;

@end

NS_ASSUME_NONNULL_END
