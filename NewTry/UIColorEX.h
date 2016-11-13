//
//  UIColorEX.h
//  NewTry
//
//  Created by bingolin on 16/9/27.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define LYS_DARK_GRAY          @"383838"
#define LYS_LIGHT_GRAY         @"BEBEBE"
#define LYS_LIGHT_GRAY_TEXT    @"8C8C8C"
#define LYS_DARK_GRAY_TEXT     @"595959"
#define LYS_SEPERATOR          @"DEDEDE"

@interface UIColor (EX)

+ (UIColor *)colorWithRGBHexString:(NSString *)rgbString;

+ (UIColor *)colorWithRGBHex: (unsigned int)hex;

@end
