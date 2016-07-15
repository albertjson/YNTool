//
//  YNTool.h
//  ToolTest
//
//  Created by 宋 子初 on 13-8-20.
//  Copyright (c) 2013年 宋 子初. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


#define IS_IPHONE5  ([UIScreen mainScreen].bounds.size.height == 568)

#define SCREEN_FRAME (CGRectMake(0, 0, 320, UIScreen mainScreen].bounds.size.height - 20))

#define PHONE_SCREEN_SIZE [[UIScreen mainScreen] bounds]

@interface YNTool : NSObject

+ (UIImage*)convertViewToImage:(UIView*)aView;

+ (void)alertWithTitle:(NSString *)title andMessage:(NSString *)message;
@end
