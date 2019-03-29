//
//  OriginatorRole.m
//  代理模式0329
//
//  Created by chiyz on 2019/3/29.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import "OriginatorRole.h"

@implementation OriginatorRole

- (RoleStateMemento *)saveStateMemento{
	return [RoleStateMemento MementoWith:self.vitality
								  attact:self.attact
								 defense:self.defense];
}

// 恢复角色状态
- (void)recoveryState:(RoleStateMemento *)rolestateMemento{
	self.vitality = rolestateMemento.vit;
	self.attact = rolestateMemento.atk;
	self.defense = rolestateMemento.def;
}

@end
