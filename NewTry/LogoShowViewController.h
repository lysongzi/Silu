//
//  LogoShowViewController.h
//  NewTry
//
//  Created by bingolin on 2016/11/14.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LogoShowViewController : UIView

@property (nonatomic, weak) UINavigationController *ctr;

- (instancetype)initWithImageName:(NSString *)imagePath showBtn:(BOOL)showBtn;

@end
