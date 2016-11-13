//
//  UIColorEX.m
//  NewTry
//
//  Created by bingolin on 16/9/27.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import "UIColorEX.h"

@implementation UIColor (EX)

+ (UIColor *)colorWithRGBHexString:(NSString *)rgbString
{
    //支持FFFFFF、#FFFFFF、0xFFFFFF三种格式
    if ([rgbString length] == 0) {
        return nil;
    }
    
    NSScanner *scanner = [NSScanner scannerWithString:rgbString];
    if ([rgbString hasPrefix:@"#"]) {
        scanner.scanLocation = 1;
    }
    else if (rgbString.length >= 2 && [[[rgbString substringToIndex:2] lowercaseString] isEqualToString:@"0x"]) {
        scanner.scanLocation = 2;
    }
    
    unsigned int value = 0;
    [scanner scanHexInt:&value];
    
    return [self colorWithRGBHex:value];
}

+ (UIColor *)colorWithRGBHex: (unsigned int)hex
{
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;
    
    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:1.0f];
}

@end
