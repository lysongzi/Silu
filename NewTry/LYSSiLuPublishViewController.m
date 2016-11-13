//
//  LYSSiLuPublishViewController.m
//  NewTry
//
//  Created by bingolin on 16/9/28.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSSiLuPublishViewController.h"

@interface LYSSiLuPublishViewController () <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation LYSSiLuPublishViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textView.delegate = self;
}

- (IBAction)tapBackBtn:(id)sender
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
