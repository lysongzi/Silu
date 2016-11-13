//
//  LYSTabBarController.m
//  NewTry
//
//  Created by lysongzi on 16/9/26.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSTabBarController.h"
#import "LYSLaunchViewController.h"

#import "GlobalValue.h"
#import "UIColorEX.h"

@interface LYSTabBarController ()

@property (strong, nonatomic) UIView *tabbarBkg;

@end

@implementation LYSTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBar.translucent = NO;
//    self.tabBar.backgroundColor = [UIColor colorWithWhite:1.0f alpha:1.0f];
//    [self.tabBar setClipsToBounds:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"launch"]) {
        LYSLaunchViewController *vc = [LYSLaunchViewController new];
        vc.hidesBottomBarWhenPushed = YES;
        [self.selectedViewController pushViewController:vc animated:NO];
    }
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    if (item.tag == LYSTabBarControllerTagThird)
    {
//        if (!self.tabbarBkg) {
//            self.tabbarBkg = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 49)];
//        }
//        
//        self.tabbarBkg.backgroundColor = [UIColor blackColor];;
//        [self.tabBar insertSubview:self.tabbarBkg atIndex:0];
//        self.tabBar.opaque = YES;
//        [self.tabBar setClipsToBounds:YES];
        
        CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
        UIGraphicsBeginImageContext(rect.size);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context, [[UIColor blackColor] CGColor]);
        CGContextFillRect(context, rect);
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        self.tabBar.backgroundImage = image;
    }
    else
    {
//        [self.tabbarBkg removeFromSuperview];
//        [self.tabBar setClipsToBounds:NO];
        
        CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
        UIGraphicsBeginImageContext(rect.size);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context, [[UIColor whiteColor] CGColor]);
        CGContextFillRect(context, rect);
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        self.tabBar.backgroundImage = image;
    }
}

@end
