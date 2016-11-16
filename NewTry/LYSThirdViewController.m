//
//  LYSThirdViewController.m
//  NewTry
//
//  Created by bingolin on 16/9/21.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSThirdViewController.h"
#import "LYSSiXuViewController.h"
#import "LYSAddEmotionViewController.h"
#import "LogoShowViewController.h"

#import "UIColorEX.h"

@interface LYSThirdViewController ()

@property (strong, nonatomic) NSArray *images;

@end

@implementation LYSThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (NSArray *)getImageArray
{
    if (!self.images) {
        self.images = @[@"logo_0", @"logo_1", @"logo_2", ];
    }
    return self.images;
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
    LogoShowViewController *logo = [[LogoShowViewController alloc] initWithImageName:@"start500" showBtn:YES];
    [self.view addSubview:logo];
    logo.ctr = self.navigationController;
    [logo show];
}

- (IBAction)tapEmotion:(id)sender
{
    LYSAddEmotionViewController *vc = [LYSAddEmotionViewController new];
    vc.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end
