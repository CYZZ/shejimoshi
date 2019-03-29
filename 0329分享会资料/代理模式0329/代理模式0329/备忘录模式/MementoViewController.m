//
//  MementoViewController.m
//  代理模式0329
//
//  Created by chiyz on 2019/3/29.
//  Copyright © 2019年 chiyz. All rights reserved.
//

#import "MementoViewController.h"
#import "GameRole.h"

#import "OriginatorRole.h"
#import "RoleStateMemento.h"
#import "RoleStateCaretaker.h"

@interface MementoViewController ()
@property(nonatomic, strong) GameRole *lixiaoyao;

@end

@implementation MementoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	self.lixiaoyao = [[GameRole alloc] init];
}
- (IBAction)backClick:(UIButton *)sender {
	[self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)showRole:(id)sender {
	NSLog(@"/n====方法1====");
	GameRole *lixiaoyao = [[GameRole alloc] init];
	
	[lixiaoyao setInitState];
	[lixiaoyao StateDisplay];
	
	// 保存进度
	GameRole *backup = [[GameRole alloc] init];
	backup.vitality = lixiaoyao.vitality;
	backup.attact = lixiaoyao.attact;
	backup.defense = lixiaoyao.defense;
	
	// 打boss，损耗严重
	[lixiaoyao fight];
	[lixiaoyao StateDisplay];
	
	// 恢复之前爆粗你的进度
	lixiaoyao.vitality = backup.vitality;
	lixiaoyao.attact = backup.attact;
	lixiaoyao.defense = backup.defense;
	
	[lixiaoyao StateDisplay];
	
}
- (IBAction)method2Click:(id)sender {
	NSLog(@"/n====方法2====");
	OriginatorRole *lixiaoyao = [[OriginatorRole alloc] init];
	/// 初始值都为100
	[lixiaoyao setInitState];
	[lixiaoyao StateDisplay];
	
	// 保存进度
	RoleStateCaretaker *caretaker = [[RoleStateCaretaker alloc] init];
	caretaker.rolestateMemento = [lixiaoyao saveStateMemento];
	
	// 大战boss，损耗严重
	[lixiaoyao fight];
	[lixiaoyao StateDisplay];
	
	// 恢复之前的状态
	[lixiaoyao recoveryState:caretaker.rolestateMemento];
	[lixiaoyao StateDisplay];
	
	
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
