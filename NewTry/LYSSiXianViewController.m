//
//  LYSSiXianViewController.m
//  NewTry
//
//  Created by lysongzi on 16/9/27.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSSiXianViewController.h"
#import "UIColorEX.h"

@interface LYSSiXianViewController ()

@property (weak, nonatomic) IBOutlet UILabel *text;
@property (weak, nonatomic) IBOutlet UIView *navBar;

@end

@implementation LYSSiXianViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.text.text = @"啊~太美啦 好想去北欧看星空跟极光啊~";
    self.navBar.backgroundColor = [UIColor colorWithRGBHexString:@"383838"];
}

- (IBAction)tapBackBtn:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
