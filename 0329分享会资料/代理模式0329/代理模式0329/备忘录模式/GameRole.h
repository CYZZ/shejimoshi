//
//  GameRole.h
//  代理模式0329
//
//  Created by chiyz on 2019/3/29.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameRole : NSObject
/// 生命力
@property(nonatomic, assign) NSInteger vitality;
/// 攻击力
@property(nonatomic, assign) NSInteger attact;
/// 防御力
@property(nonatomic, assign) NSInteger defense;

/**
 显示状态
 */
- (void)StateDisplay;
/**
 设置初始状态
 */
- (void)setInitState;

/// 开始战斗
-(void)fight;

@end

NS_ASSUME_NONNULL_END
