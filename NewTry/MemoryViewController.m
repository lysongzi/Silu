//
//  MemoryViewController.m
//  NewTry
//
//  Created by bingolin on 2016/11/14.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "MemoryViewController.h"
#import "LogoShowViewController.h"

@interface MemoryViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollview;
@property (strong, nonatomic) NSArray *images;

@end

@implementation MemoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"memory"];
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
    
    [self.scrollview addSubview:imageView];
    
    self.scrollview.contentSize = CGSizeMake(cWidth, cHeight);
    
    [self.scrollview addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(jumpToViewPhoto)]];
}

- (NSArray *)getImageArray
{
    if (!self.images) {
        self.images = @[@"logo_0", @"logo_1", @"logo_2"];
    }
    return self.images;
}

- (void)jumpToViewPhoto
{
    NSInteger index = random() * 1000 % 3;
    NSString *imageName = [self getImageArray][index];
    
    LogoShowViewController *logo = [[LogoShowViewController alloc] initWithImageName:imageName showBtn:NO];
    [self.view addSubview:logo];
}

- (IBAction)backClick:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
