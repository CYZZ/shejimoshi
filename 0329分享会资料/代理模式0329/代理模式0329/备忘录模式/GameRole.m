//
//  GameRole.m
//  代理模式0329
//
//  Created by chiyz on 2019/3/29.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import "GameRole.h"

@implementation GameRole

- (void)StateDisplay{
	NSLog(@"当前角色状态：");
	NSLog(@"生命力：%ld",(long)self.vitality);
	NSLog(@"攻击力：%ld",(long)self.attact);
	NSLog(@"防御力：%ld",(long)self.defense);
	NSLog(@"\n");
}

- (void)setInitState{
	self.vitality = 100;
	self.attact = 100;
	self.defense = 100;
}

// 战斗
- (void)fight{
	self.vitality = 0;
	self.attact = 0;
	self.defense = 0;
}

@end
