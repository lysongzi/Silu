//
//  LYSCameraViewController.m
//  NewTry
//
//  Created by bingolin on 16/9/28.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSCameraViewController.h"
#import "LYSSiLuPublishViewController.h"

#import "UIColorEX.h"
#import "GlobalValue.h"

@interface LYSCameraViewController ()

@property (weak, nonatomic) IBOutlet UIView *statusBar;
@property (weak, nonatomic) IBOutlet UIView *photoZone;
@property (weak, nonatomic) IBOutlet UIImageView *imageZone;
@property (weak, nonatomic) IBOutlet UIImageView *prompt;

@property (weak, nonatomic) IBOutlet UIView *modeSelector;
@property (weak, nonatomic) IBOutlet UIImageView *mode1;
@property (weak, nonatomic) IBOutlet UIImageView *mode2;
@property (weak, nonatomic) IBOutlet UIImageView *mode3;

@property (weak, nonatomic) IBOutlet UIView *startBar;
@property (weak, nonatomic) IBOutlet UIImageView *takePhoto;
@property (weak, nonatomic) IBOutlet UIImageView *backBtn;
@property (weak, nonatomic) IBOutlet UIImageView *openMode;

@property (weak, nonatomic) IBOutlet UIView *endBar;
@property (weak, nonatomic) IBOutlet UIImageView *bbackBtn;

@property (assign, nonatomic) BOOL isStart;
@property (assign, nonatomic) BOOL isOpenMode;

@end

@implementation LYSCameraViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.statusBar.backgroundColor = [UIColor colorWithRGBHexString:LYS_DARK_GRAY];
    self.startBar.backgroundColor = [UIColor colorWithRGBHexString:LYS_DARK_GRAY];
    self.endBar.backgroundColor = [UIColor colorWithRGBHexString:LYS_DARK_GRAY];
    
    self.isStart = YES;
    self.isOpenMode = NO;
    self.startBar.hidden = NO;
    self.endBar.hidden = YES;
    self.prompt.alpha = 0.0f;
    self.modeSelector.alpha = 0.0f;
 
    [self.takePhoto addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(takePhotoClick)]];
    [self.openMode addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(openModeClick)]];
    
    [self.bbackBtn addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(turnToTakePhoto)]];
    
    self.mode1.userInteractionEnabled = YES;
    [self.mode1 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapMode)]];
    self.mode2.userInteractionEnabled = YES;
    [self.mode2 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapMode)]];
    self.mode3.userInteractionEnabled = YES;
    [self.mode3 addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapMode)]];
}

- (IBAction)save:(id)sender
{
    //暂时没操作
}

- (IBAction)publish:(id)sender
{
    LYSSiLuPublishViewController *vc = [LYSSiLuPublishViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)tapMode
{
    [self closeModeSelector];
    
    //点击模式的处理
    UIImage *image1 = [UIImage imageNamed:@"silu_photo_1"];
    UIImage *image2 = [UIImage imageNamed:@"silu_photo_2"];
    
    self.imageZone.image = image1;
    
    __weak typeof(self) weakSelf = self;
    self.prompt.alpha = 1.0f;
    [UIView animateWithDuration:3.f animations:^{
        weakSelf.imageZone.image = image2;
    }];
}

- (void)closeModeSelector
{
    if (self.isOpenMode) {
        __weak typeof(self) weakSelf = self;
        self.modeSelector.alpha = 1.0f;
        [UIView animateWithDuration:0.2f animations:^{
            weakSelf.modeSelector.alpha = 0.0f;
        } completion:^(BOOL finished) {
            weakSelf.isOpenMode = NO;
        }];
    }
}

- (void)turnToTakePhoto
{
    [self closeModeSelector];
    
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:0.2f animations:^{
        weakSelf.endBar.hidden = YES;
        weakSelf.startBar.hidden = NO;
    } completion:^(BOOL finished) {
        weakSelf.imageZone.image = nil;
        weakSelf.imageZone.backgroundColor = [UIColor blackColor];
    }];
}

- (void)openModeClick
{
    if (self.isOpenMode) {
        [self closeModeSelector];
    }else{
        __weak typeof(self) weakSelf = self;
        self.modeSelector.alpha = 0.0f;
        [UIView animateWithDuration:0.2f animations:^{
            weakSelf.modeSelector.alpha = 1.0f;
        } completion:^(BOOL finished) {
            weakSelf.isOpenMode = YES;
        }];
    }
}

- (void)takePhotoClick
{
    [self closeModeSelector];
    
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:0.2f animations:^{
        weakSelf.endBar.hidden = NO;
        weakSelf.startBar.hidden = YES;
        weakSelf.prompt.alpha = 0.0f;
    } completion:^(BOOL finished) {
        weakSelf.imageZone.image = [UIImage imageNamed:@"silu_photo_3"];
    }];
}

- (IBAction)backClick:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
