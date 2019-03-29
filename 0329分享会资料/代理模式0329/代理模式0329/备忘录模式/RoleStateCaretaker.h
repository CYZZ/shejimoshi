//
//  RoleStateCaretaker.h
//  代理模式0329
//
//  Created by chiyz on 2019/3/29.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RoleStateMemento.h"

NS_ASSUME_NONNULL_BEGIN
/// 角色状态管理者
@interface RoleStateCaretaker : NSObject

@property(nonatomic, strong) RoleStateMemento *rolestateMemento;

@end

NS_ASSUME_NONNULL_END
