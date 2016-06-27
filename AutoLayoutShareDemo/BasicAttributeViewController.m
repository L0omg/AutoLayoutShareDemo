//
//  BasicAttributeViewController.m
//  AutoLayoutShareDemo
//
//  Created by LYP on 16/6/25.
//  Copyright © 2016年 LYP. All rights reserved.
//

#import "BasicAttributeViewController.h"

@interface BasicAttributeViewController ()

@end

@implementation BasicAttributeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGSize size = CGSizeMake(50, 50);
    CGFloat padding = 15;
    
    __unused UIView *lefttop = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.leading.equalTo(self.view).offset(padding);
            make.top.equalTo(self.view).offset(padding);

            make.size.mas_equalTo(size);
//            or
//            make.width.mas_equalTo(size.width);
//            make.height.mas_equalTo(size.height);
        }];
        
        view.backgroundColor = [UIColor redColor];
        
        view;
    });
    
    __unused UIView *righttop = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.trailing.equalTo(self.view).offset(-padding);
            make.top.equalTo(self.view).offset(padding);
            make.size.mas_equalTo(size);
        }];
        
        view.backgroundColor = [UIColor redColor];
        
        view;
    });
    
    __unused UIView *leftbottom = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.leading.equalTo(self.view).offset(padding);
            make.bottom.equalTo(self.view).offset(-padding);
            make.size.mas_equalTo(size);
        }];
        
        view.backgroundColor = [UIColor redColor];
        
        view;
    });
    
    __unused UIView *rightbottom = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.trailing.equalTo(self.view).offset(-padding);
            make.bottom.equalTo(self.view).offset(-padding);
            make.size.mas_equalTo(size);
        }];
        
        view.backgroundColor = [UIColor redColor];
        
        view;
    });
    
    UILabel *centerLabel = ({
        
        UILabel *label = [[UILabel alloc] init];
        [self.view addSubview:label];
        
        label.backgroundColor = [UIColor redColor];
        label.text = @"这是一个多行的文本！！！\n这是一个多行的文本！！！";
        label.numberOfLines = 0;
        label.preferredMaxLayoutWidth = size.width;
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.center.equalTo(self.view);
        }];
        
        label;
    });
    
    __unused UIView *firstBaseLineView = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        view.backgroundColor = [UIColor redColor];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.trailing.equalTo(centerLabel.mas_leading);
            make.bottom.equalTo(centerLabel.mas_firstBaseline);
            make.size.mas_equalTo(size).sizeOffset(CGSizeMake(25, 25));
        }];
        
        view;
    });
    
    __unused UIView *lastBaseLineView = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        view.backgroundColor = [UIColor redColor];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.trailing.equalTo(centerLabel.mas_leading);
            make.top.equalTo(centerLabel.mas_lastBaseline);
            make.size.mas_equalTo(size).sizeOffset(CGSizeMake(25, 25));
        }];
        
        view;
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
