//
//  OriginatorRole.h
//  代理模式0329
//
//  Created by chiyz on 2019/3/29.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RoleStateMemento.h"
#import "GameRole.h"

NS_ASSUME_NONNULL_BEGIN

@interface OriginatorRole : GameRole


/**
 保存角色信息

 @return 角色信息
 */
- (RoleStateMemento *)saveStateMemento;

/**
 恢复角色信息

 @param rolestateMemento 角色信息
 */
- (void)recoveryState:(RoleStateMemento *)rolestateMemento;

@end

NS_ASSUME_NONNULL_END
