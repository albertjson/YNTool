//
//  YNTool.m
//  ToolTest
//
//  Created by 宋 子初 on 13-8-20.
//  Copyright (c) 2013年 宋 子初. All rights reserved.
//

#import "YNTool.h"
#import <QuartzCore/QuartzCore.h>

@implementation YNTool

+ (UIImage*)convertViewToImage:(UIView*)aView
{
    CGSize size = aView.bounds.size;
    // 下面方法，第一个参数表示区域大小。第二个参数表示是否是非透明的。如果需要显示半透明效果，需要传NO，否则传YES。第三个参数就是屏幕密度了
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    [aView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage*image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
+ (void)alertWithTitle:(NSString *)title andMessage:(NSString *)message
{
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:title
                              message:message
                              delegate:nil
                              cancelButtonTitle:@"确定"
                              otherButtonTitles:nil];
    [alertView show];
}

@end
