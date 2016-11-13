//
//  LYSLaunchViewController.m
//  NewTry
//
//  Created by bingolin on 16/9/27.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSLaunchViewController.h"
#import "GlobalValue.h"

@interface LYSLaunchViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation LYSLaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //隐藏状态条
    
    
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.pagingEnabled = YES;
    self.scrollView.contentSize = CGSizeMake(4 * SCREEN_WIDTH, SCREEN_HEIGHT);
    self.scrollView.bounces = NO;
    
    for (int i = 0; i < 4; i++) {
        CGRect rect = CGRectMake(i * SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:rect];
        NSString *imageName = [NSString stringWithFormat:@"launch_%d", i];
        imageView.image = [UIImage imageNamed:imageName];
        
        if (i == 3) {
            imageView.userInteractionEnabled = YES;
            [imageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(jumpToMain:)]];
        }
        [self.scrollView addSubview:imageView];
    }
}

- (void)jumpToMain:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"launch"];
    [self.navigationController popViewControllerAnimated:YES];
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
