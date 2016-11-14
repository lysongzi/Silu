//
//  LYSMeViewController.m
//  NewTry
//
//  Created by bingolin on 16/9/21.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSMeViewController.h"
#import "LYSSettingViewController.h"
#import "LYSChangeViewController.h"
#import "MemoryViewController.h"

@interface LYSMeViewController ()

@property (weak, nonatomic) IBOutlet UIButton *bookBtn;
@property (weak, nonatomic) IBOutlet UIButton *changeBtn;
@property (weak, nonatomic) IBOutlet UIButton *settingBtn;

@end

@implementation LYSMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)tapBook:(id)sender
{
    MemoryViewController *vc = [MemoryViewController new];
    vc.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)tapChange:(id)sender
{
    LYSChangeViewController *vc = [LYSChangeViewController new];
    vc.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)tapSettings:(id)sender
{
    LYSSettingViewController *vc = [LYSSettingViewController new];
    vc.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end
