//
//  LYSSiXuSkyViewController.m
//  NewTry
//
//  Created by bingolin on 16/9/27.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSSiXuSkyViewController.h"
#import "LYSSiXuEmotionViewController.h"
#import "UIColorEX.h"

@interface LYSSiXuSkyViewController ()
@property (weak, nonatomic) IBOutlet UIView *headView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *seperator;

@end

@implementation LYSSiXuSkyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.headView.backgroundColor = [UIColor colorWithRGBHexString:LYS_DARK_GRAY];
    
    UIImage *image = [UIImage imageNamed:@"skyline"];
    CGFloat width = image.size.width;
    CGFloat height = image.size.height;
    CGFloat cWidth = [[UIScreen mainScreen] bounds].size.width;
    CGFloat cHeight = (height / width) * cWidth;
    
    CGRect imageRect = CGRectMake(0, 0, cWidth, cHeight);
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:imageRect];
    imageView.image = image;
    imageView.contentMode = UIViewContentModeScaleToFill;
    imageView.userInteractionEnabled = YES;
    [imageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(jumpToViewPhoto)]];
    
    [self.scrollView addSubview:imageView];
    self.scrollView.backgroundColor = [UIColor colorWithRGBHexString:LYS_DARK_GRAY_TEXT];
    self.scrollView.contentSize = CGSizeMake(cWidth, cHeight);
    self.scrollView.bounces = NO;
}

- (void)jumpToViewPhoto
{
    LYSSiXuEmotionViewController *vc = [LYSSiXuEmotionViewController new];
    [self.navigationController pushViewController:vc animated:YES];
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
