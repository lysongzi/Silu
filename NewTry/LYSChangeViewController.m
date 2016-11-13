//
//  LYSChangeViewController.m
//  NewTry
//
//  Created by lysongzi on 16/9/27.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSChangeViewController.h"

@interface LYSChangeViewController ()
@property (weak, nonatomic) IBOutlet UIView *headView;

@end

@implementation LYSChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.headView.backgroundColor = [UIColor whiteColor];
}

- (IBAction)tapBackBtn:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
