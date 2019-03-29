//
//  RoleStateMemento.m
//  代理模式0329
//
//  Created by chiyz on 2019/3/29.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import "RoleStateMemento.h"

@implementation RoleStateMemento

+ (instancetype)MementoWith:(NSInteger)vit
					 attact:(NSInteger)atk
					defense:(NSInteger)def{
	RoleStateMemento *memento = [[self alloc] init];
	if (memento) {
		memento.vit = vit;
		memento.atk = atk;
		memento.def = def;
	}
	return memento;
}

@end
