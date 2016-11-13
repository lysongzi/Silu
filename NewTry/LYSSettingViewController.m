//
//  LYSSettingViewController.m
//  NewTry
//
//  Created by lysongzi on 16/9/27.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSSettingViewController.h"

@interface LYSSettingViewController ()
@property (weak, nonatomic) IBOutlet UIView *headView;

@end

@implementation LYSSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.headView.backgroundColor = [UIColor whiteColor];
}

- (IBAction)tapBackBtn:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}



@end
