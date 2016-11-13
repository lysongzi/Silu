//
//  LYSBookDetailViewController.m
//  NewTry
//
//  Created by lysongzi on 16/9/28.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSBookDetailViewController.h"

@interface LYSBookDetailViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation LYSBookDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"book_long"];
    CGFloat width = image.size.width;
    CGFloat height = image.size.height;
    CGFloat cWidth = [[UIScreen mainScreen] bounds].size.width;
    CGFloat cHeight = (height / width) * cWidth;
    
    CGRect imageRect = CGRectMake(0, 0, cWidth, cHeight);
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:imageRect];
    imageView.image = image;
    imageView.contentMode = UIViewContentModeScaleToFill;
    imageView.userInteractionEnabled = YES;
    
    [self.scrollView addSubview:imageView];
    
    self.scrollView.contentSize = CGSizeMake(cWidth, cHeight);
}

- (IBAction)tapBackBtn:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
