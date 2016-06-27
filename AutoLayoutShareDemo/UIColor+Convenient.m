//
//  UIColor+Convenient.m
//  AutoLayoutShareDemo
//
//  Created by LYP on 16/6/27.
//  Copyright © 2016年 LYP. All rights reserved.
//

#import "UIColor+Convenient.h"

@implementation UIColor (Convenient)
+ (UIColor*)randomColor{
    
    return [UIColor colorWithRed:(random()%255)/ 255.f green:(random()%255)/ 255.f blue:(random()%255)/ 255.f alpha:1.f];
}
@end
