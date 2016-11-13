//
//  LYSBookViewController.m
//  NewTry
//
//  Created by lysongzi on 16/9/28.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "LYSBookViewController.h"
#import "LYSBookDetailViewController.h"

@interface LYSBookViewController ()
@property (weak, nonatomic) IBOutlet UIView *headView;
@property (weak, nonatomic) IBOutlet UIImageView *first;
@property (weak, nonatomic) IBOutlet UIImageView *third;
@property (weak, nonatomic) IBOutlet UIImageView *second;

@end

@implementation LYSBookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.first.userInteractionEnabled = YES;
    self.second.userInteractionEnabled = YES;
    self.third.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *ges1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(jumpToDetailBook)];
    UITapGestureRecognizer *ges2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(jumpToDetailBook)];
    UITapGestureRecognizer *ges3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(jumpToDetailBook)];
    
    [self.first addGestureRecognizer:ges1];
    [self.second addGestureRecognizer:ges2];
    [self.third addGestureRecognizer:ges3];
}

- (void)jumpToDetailBook
{
    LYSBookDetailViewController *vc = [LYSBookDetailViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)tapBackBtn:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
