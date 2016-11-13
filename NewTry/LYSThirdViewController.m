//
//  LYSThirdViewController.m
//  NewTry
//
//  Created by bingolin on 16/9/21.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSThirdViewController.h"
#import "LYSSiXuViewController.h"
#import "LYSSiXuSkyViewController.h"
#import "LYSAddEmotionViewController.h"

#import "UIColorEX.h"

@interface LYSThirdViewController ()

@end

@implementation LYSThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)tapMeteor:(id)sender
{
    LYSSiXuViewController *vc = [LYSSiXuViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (IBAction)tapSky:(id)sender
{
    LYSSiXuSkyViewController *vc = [LYSSiXuSkyViewController new];
    vc.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)tapEmotion:(id)sender
{
    LYSAddEmotionViewController *vc = [LYSAddEmotionViewController new];
    vc.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end
