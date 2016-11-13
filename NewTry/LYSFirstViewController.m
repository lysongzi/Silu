//
//  LYSFirstViewController.m
//  NewTry
//
//  Created by bingolin on 16/9/21.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSFirstViewController.h"
#import "LYSSiXianViewController.h"

#import "GlobalValue.h"

@interface LYSFirstViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UIView *sline;

@end

@implementation LYSFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"timeline"];
    CGFloat width = image.size.width;
    CGFloat height = image.size.height;
    CGFloat cWidth = [[UIScreen mainScreen] bounds].size.width;
    CGFloat cHeight = (height / width) * cWidth;
    
    CGRect imageRect = CGRectMake(0, -10, cWidth, cHeight);
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:imageRect];
    imageView.image = image;
    imageView.contentMode = UIViewContentModeScaleToFill;
    imageView.userInteractionEnabled = YES;
    [imageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(jumpToViewPhoto)]];
    
    [self.scrollView addSubview:imageView];
    
    self.scrollView.contentSize = CGSizeMake(cWidth, cHeight);
}

- (IBAction)tapPhoto:(id)sender
{
    
}

- (IBAction)addPhoto:(id)sender
{
    
}

- (void)jumpToViewPhoto
{
    LYSSiXianViewController *vc = [LYSSiXianViewController new];
    vc.hidesBottomBarWhenPushed = YES;
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end
