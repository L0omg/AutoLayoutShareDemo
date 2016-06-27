//
//  LLView.m
//  AutoLayoutShareDemo
//
//  Created by LYP on 16/6/27.
//  Copyright © 2016年 LYP. All rights reserved.
//

#import "LLView.h"

@implementation LLView

#pragma mark -LifeCycle
- (instancetype)init{
    
    self = [super init];
    if (self) {
        
        self.contentSize = CGSizeMake(100, 100);
    }
    return self;
}

#pragma mark -Override
- (CGSize)intrinsicContentSize{
    
    return self.contentSize;
}

+ (BOOL)requiresConstraintBasedLayout{
    
    return YES;
}

#pragma mark -Setter
- (void)setContentSize:(CGSize)contentSize{
    
    _contentSize = contentSize;
    [self invalidateIntrinsicContentSize];//通知layout systems它的intrinsic content size已经改变
}
@end
