//
//  AppDelegate.m
//  NewTry
//
//  Created by bingolin on 16/9/21.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "AppDelegate.h"

#import "LYSTabBarController.h"
#import "LYSFirstViewController.h"
#import "LYSSecondViewController.h"
#import "LYSThirdViewController.h"
#import "LYSMeViewController.h"

#import "GlobalValue.h"

#define LYSTABBR_INSECT (4)

@interface AppDelegate ()

@end

@implementation AppDelegate

#pragma mark - UI

- (void)intiUI
{
    LYSTabBarController *tabBarController = [LYSTabBarController new];
    
    //First
    LYSFirstViewController *firstVC = [LYSFirstViewController new];
    UITabBarItem *firstTabbar = [[UITabBarItem alloc] initWithTitle:@""
                                                              image:[UIImage imageNamed:@"sixian_normal"]
                                                      selectedImage:[[UIImage imageNamed:@"sixian_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    firstTabbar.tag = LYSTabBarControllerTagFirst;
    firstTabbar.imageInsets = UIEdgeInsetsMake(LYSTABBR_INSECT, 0, -LYSTABBR_INSECT, 0);
    UINavigationController *firstNav = [[UINavigationController alloc] initWithRootViewController:firstVC];
    firstNav.tabBarItem = firstTabbar;
    firstNav.hidesBottomBarWhenPushed = YES;
    firstNav.navigationBarHidden = YES;
    
    //Second
    LYSSecondViewController *secondVC = [LYSSecondViewController new];
    UITabBarItem *secondTabbar = [[UITabBarItem alloc] initWithTitle:@""
                                                               image:[UIImage imageNamed:@"silu_normal"]
                                                       selectedImage:[[UIImage imageNamed:@"silu_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    secondTabbar.tag = LYSTabBarControllerTagSecond;
    secondTabbar.imageInsets = UIEdgeInsetsMake(LYSTABBR_INSECT, 0, -LYSTABBR_INSECT, 0);
    UINavigationController *secondNav = [[UINavigationController alloc] initWithRootViewController:secondVC];
    secondNav.tabBarItem = secondTabbar;
    secondNav.hidesBottomBarWhenPushed = YES;
    secondNav.navigationBarHidden = YES;
    
    //Third
    LYSThirdViewController *thirdVC = [LYSThirdViewController new];
    UITabBarItem *thirdTabbar = [[UITabBarItem alloc] initWithTitle:@""
                                                              image:[UIImage imageNamed:@"sixu_selected"]
                                                      selectedImage:[[UIImage imageNamed:@"sixu_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    thirdTabbar.tag = LYSTabBarControllerTagThird;
    thirdTabbar.imageInsets = UIEdgeInsetsMake(LYSTABBR_INSECT, 0, -LYSTABBR_INSECT, 0);
    UINavigationController *thirdNav = [[UINavigationController alloc] initWithRootViewController:thirdVC];
    thirdNav.tabBarItem = thirdTabbar;
    thirdNav.hidesBottomBarWhenPushed = YES;
    thirdNav.navigationBarHidden = YES;
    
    //Me
    LYSMeViewController *meVC = [LYSMeViewController new];
    UITabBarItem *meTabbar = [[UITabBarItem alloc] initWithTitle:@""
                                                           image:[UIImage imageNamed:@"me_normal"]
                                                   selectedImage:[[UIImage imageNamed:@"me_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    meTabbar.tag = LYSTabBarControllerTagMe;
    meTabbar.imageInsets = UIEdgeInsetsMake(LYSTABBR_INSECT, 0, -LYSTABBR_INSECT, 0);
    UINavigationController *meNav = [[UINavigationController alloc] initWithRootViewController:meVC];
    meNav.tabBarItem = meTabbar;
    meNav.hidesBottomBarWhenPushed = YES;
    meNav.navigationBarHidden = YES;
    
    [tabBarController setViewControllers:@[firstNav, secondNav, thirdNav, meNav]];
    self.window.rootViewController = tabBarController;
}

#pragma mark - UIApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [NSThread sleepForTimeInterval:1.5f];
    
    [self intiUI];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
