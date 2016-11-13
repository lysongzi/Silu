//
//  LYSAddEmotionViewController.m
//  NewTry
//
//  Created by lysongzi on 16/9/27.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSAddEmotionViewController.h"
#import "UIColorEX.h"

@interface LYSAddEmotionViewController () <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UIView *headView;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation LYSAddEmotionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textView.delegate = self;
    self.headView.backgroundColor = [UIColor colorWithRGBHexString:LYS_DARK_GRAY];
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (IBAction)tapBackBtn:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)tapAdd:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString*)text
{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}

@end
