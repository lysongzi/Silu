//
//  GlobalValue.h
//  NewTry
//
//  Created by bingolin on 16/9/21.
//  Copyright © 2016年 bingolin. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifndef GlobalValue_h
#define GlobalValue_h

#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height

typedef NS_ENUM(NSUInteger, LYSTabBarControllerTag) {
    LYSTabBarControllerTagFirst = 0,
    LYSTabBarControllerTagSecond,
    LYSTabBarControllerTagThird,
    LYSTabBarControllerTagMe
};

#endif /* GlobalValue_h */
