//
//  ScrollContainerView.m
//  AutoLayoutShareDemo
//
//  Created by LYP on 16/6/27.
//  Copyright © 2016年 LYP. All rights reserved.
//

#import "ScrollContainerView.h"
#import <Masonry/Masonry.h>

@implementation ScrollContainerView
- (instancetype)init{
    
    self = [super init];
    if (self) {
        
        CGSize size = CGSizeMake(80, 80);
        
        UIView *v1 = ({
            
            UIView *view = [[UIView alloc] init];
            [self addSubview:view];
            
            view.backgroundColor = [UIColor redColor];
            
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.equalTo(self);
                make.size.mas_equalTo(size);
            }];
            
            view;
        });
        
        UIView *v2 = ({
            
            UIView *view = [[UIView alloc] init];
            [self addSubview:view];
            
            view.backgroundColor = [UIColor yellowColor];
            
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.equalTo(v1.mas_trailing);
                make.bottom.equalTo(v1.mas_top);
                make.top.equalTo(self);
                make.size.mas_equalTo(size);
            }];
            
            view;
        });
        
        UIView *v3 = ({
            
            UIView *view = [[UIView alloc] init];
            [self addSubview:view];
            
            view.backgroundColor = [UIColor greenColor];
            
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.equalTo(v2.mas_trailing);
                make.top.equalTo(v2.mas_bottom);
                make.size.mas_equalTo(size);
            }];
            
            view;
        });
        
        UIView *v4 = ({
            
            UIView *view = [[UIView alloc] init];
            [self addSubview:view];
            
            view.backgroundColor = [UIColor purpleColor];
            
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.equalTo(v3.mas_trailing);
                make.top.equalTo(v3.mas_bottom);
                make.bottom.equalTo(self);
                make.size.mas_equalTo(size);
            }];
            
            view;
        });
        
        UIView *v5 = ({
            
            UIView *view = [[UIView alloc] init];
            [self addSubview:view];
            
            view.backgroundColor = [UIColor blueColor];
            
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.equalTo(v4.mas_trailing);
                make.bottom.equalTo(v4.mas_top);
                make.trailing.equalTo(self);
                make.size.mas_equalTo(size);
            }];
            
            view;
        });
    }
    return self;
}
@end
