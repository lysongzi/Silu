//
//  LYSSecondViewController.m
//  NewTry
//
//  Created by bingolin on 16/9/21.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSSecondViewController.h"
#import "LYSCameraViewController.h"
#import "GlobalValue.h"

@interface LYSSecondViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIView *downView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *leftImageView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (weak, nonatomic) IBOutlet UIView *mengView;

@property (assign, nonatomic) CGRect downRect;
@property (assign, nonatomic) CGRect downHideRect;

@property (assign, nonatomic) BOOL isShowPhoto;
@property (weak, nonatomic) IBOutlet UIImageView *camera;

@end

@implementation LYSSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.downView.hidden = YES;
    self.mengView.hidden = YES;
    self.camera.hidden = YES;
    self.mengView.userInteractionEnabled = NO;
    
    self.camera.userInteractionEnabled = YES;
    [self.camera addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapCamera)]];
    
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(hidePhoto)];
    [swipe setDirection:UISwipeGestureRecognizerDirectionUp];
    [self.downView addGestureRecognizer:swipe];
    
    CGFloat cheight = (SCREEN_WIDTH / 750.f) * 444;
    
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.pagingEnabled = YES;
    self.scrollView.bounces = NO;
    self.scrollView.delegate = self;
    
    self.scrollView.contentSize = CGSizeMake(3 * SCREEN_WIDTH, cheight);
    
    self.downRect = CGRectMake(0, 24, SCREEN_WIDTH, cheight);
    self.downHideRect = CGRectMake(0, 24 - cheight, SCREEN_WIDTH, cheight);
    
    for (int i = 0; i < 3; i++) {
        NSString *imageName = [NSString stringWithFormat:@"silu_page_%d", i];
        UIImage *image = [UIImage imageNamed:imageName];
        
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        imageView.frame = CGRectMake(i * SCREEN_WIDTH, 0, SCREEN_WIDTH, cheight);
        [self.scrollView addSubview:imageView];
    }
}

- (IBAction)tapBtn:(id)sender
{
    if (!self.isShowPhoto) {
        //弹出下拉滑动
        self.downView.frame = self.downHideRect;
        self.downView.hidden = YES;
        
        __weak typeof(self) weakSelf = self;
        [UIView animateWithDuration:.2f animations:^{
            weakSelf.mengView.hidden = NO;
            weakSelf.camera.hidden = NO;
            weakSelf.downView.frame = self.downRect;
            weakSelf.downView.hidden = NO;
        } completion:^(BOOL finished) {
            weakSelf.isShowPhoto = YES;
        }];
    }
}

- (void)hidePhoto
{
    if (self.isShowPhoto) {
        __weak typeof(self) weakSelf = self;
        [UIView animateWithDuration:.2f animations:^{
            weakSelf.mengView.hidden = YES;
            weakSelf.camera.hidden = YES;
            weakSelf.downView.frame = self.downHideRect;
        } completion:^(BOOL finished) {
            weakSelf.isShowPhoto = NO;
            weakSelf.downView.hidden = YES;
        }];
    }
}

- (void)tapCamera
{
    LYSCameraViewController *vc = [LYSCameraViewController new];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    int page = (self.scrollView.contentOffset.x + 50) / SCREEN_WIDTH;
    
    NSString *leftImageName = [NSString stringWithFormat:@"silu_left_%d", page];
    UIImage *image = [UIImage imageNamed:leftImageName];
    self.leftImageView.image = image;
    
    self.pageControl.currentPage = page;
}

@end
