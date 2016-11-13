//
//  LYSSiXuEmotionViewController.m
//  NewTry
//
//  Created by bingolin on 16/9/27.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSSiXuEmotionViewController.h"
#import "UIColorEX.h"

@interface LYSSiXuEmotionViewController ()
@property (weak, nonatomic) IBOutlet UIView *headView;
@property (weak, nonatomic) IBOutlet UIView *seperator;

@end

@implementation LYSSiXuEmotionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.headView.backgroundColor = [UIColor colorWithRGBHexString:LYS_DARK_GRAY];
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
