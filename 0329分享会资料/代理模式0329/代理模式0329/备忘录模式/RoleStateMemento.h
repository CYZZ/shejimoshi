//
//  RoleStateMemento.h
//  代理模式0329
//
//  Created by chiyz on 2019/3/29.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RoleStateMemento : NSObject
/// 生命力
@property(nonatomic, assign) NSInteger vit;
/// 攻击力
@property(nonatomic, assign) NSInteger atk;
/// 防御力
@property(nonatomic, assign) NSInteger def;

+ (instancetype)MementoWith:(NSInteger)vit
					 attact:(NSInteger)atk
					defense:(NSInteger)def;

@end

NS_ASSUME_NONNULL_END
