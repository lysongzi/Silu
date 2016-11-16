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

@interface LYSFirstViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *dateimage;

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
    self.scrollView.delegate = self;
    
    CGFloat contentY = cHeight * 1748 / 2852.5;
    self.scrollView.contentOffset = CGPointMake(0, contentY);
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

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat height = self.scrollView.contentSize.height;
    CGFloat nowY = self.scrollView.contentOffset.y;
    CGFloat divide = nowY / height;
    int index = 0;
    if (divide >= 5/6.0) {
        index = 5;
    }
    else if (divide >= 4/6.0){
        index = 4;
    }
    else if (divide >= 3/6.0){
        index = 3;
    }
    else if (divide >= 2/6.0){
        index = 2;
    }
    else if (divide >= 1/6.0){
        index = 1;
    }
    else{
        index = 0;
    }
    self.dateimage.image = [UIImage imageNamed:[NSString stringWithFormat:@"date%d", index + 1]];
}

@end
