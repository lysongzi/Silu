//
//  LogoShowViewController.m
//  NewTry
//
//  Created by bingolin on 2016/11/14.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LogoShowViewController.h"
#import "LYSSiXuSkyViewController.h"

@interface LogoShowViewController ()

@property (nonatomic, assign) BOOL showBtn;

@end

@implementation LogoShowViewController

- (instancetype)initWithImageName:(NSString *)imagePath showBtn:(BOOL)showBtn
{
    self = [super init];
    if (self) {
        self.showBtn = showBtn;
        CGFloat width = [UIScreen mainScreen].bounds.size.width;
        CGFloat height = [UIScreen mainScreen].bounds.size.height;
        CGFloat picWidth = width - 20;
        CGFloat picHeight = picWidth * 888 / 702;
        CGFloat picMarginTop = 75;
        
        self.frame = CGRectMake(0, 0, width, height);
        self.backgroundColor = [[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:0.8f];
        
        if (showBtn) {
            UIImageView *closeBtn = [[UIImageView alloc] initWithFrame:CGRectMake((width - 20)/2, picHeight + 75 + 30, 36, 37)];
            closeBtn.image = [UIImage imageNamed:@"close"];
            closeBtn.userInteractionEnabled = YES;
            [closeBtn addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(close)]];
            [self addSubview:closeBtn];
        }else{
            picMarginTop = 110;
            self.userInteractionEnabled = YES;
            [self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(close)]];
        }
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake((width - picWidth) / 2, picMarginTop, picWidth, picHeight)];
        imageView.image = [UIImage imageNamed:imagePath];
        [self addSubview:imageView];
    }
    return self;
}

- (void)close
{
    if (self.showBtn && self.ctr) {
        LYSSiXuSkyViewController *vc = [LYSSiXuSkyViewController new];
        vc.hidesBottomBarWhenPushed = YES;
        
        [self.ctr pushViewController:vc animated:YES];
    }
    [self removeFromSuperview];
}

@end
