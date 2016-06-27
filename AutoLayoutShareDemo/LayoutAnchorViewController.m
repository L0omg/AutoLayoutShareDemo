//
//  LayoutAnchorViewController.m
//  AutoLayoutShareDemo
//
//  Created by LYP on 16/6/27.
//  Copyright © 2016年 LYP. All rights reserved.
//

#import "LayoutAnchorViewController.h"

@interface LayoutAnchorViewController ()

@end

@implementation LayoutAnchorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CGFloat padding = 15;
    CGSize size = CGSizeMake(100, 100);
    
    __unused UIView *lefttop = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        [view.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:padding].active = YES;
        [view.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:padding].active = YES;
        [view.widthAnchor constraintEqualToConstant:size.width].active = YES;
        [view.heightAnchor constraintEqualToConstant:size.height].active = YES;
        
        view.translatesAutoresizingMaskIntoConstraints = NO;
        view.backgroundColor = [UIColor redColor];
        
        view;
    });
    
    __unused UIView *righttop = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        [view.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-padding].active = YES;
        [view.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:padding].active = YES;
        [view.widthAnchor constraintEqualToConstant:size.width].active = YES;
        [view.heightAnchor constraintEqualToConstant:size.height].active = YES;
        
        view.translatesAutoresizingMaskIntoConstraints = NO;
        view.backgroundColor = [UIColor redColor];
        
        view;
    });
    
    __unused UIView *leftbottom = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        [view.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:padding].active = YES;
        [view.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-padding].active = YES;
        [view.widthAnchor constraintEqualToConstant:size.width].active = YES;
        [view.heightAnchor constraintEqualToConstant:size.height].active = YES;
        
        view.translatesAutoresizingMaskIntoConstraints = NO;
        view.backgroundColor = [UIColor redColor];
        
        view;
    });
    
    __unused UIView *rightbottom = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        [view.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-padding].active = YES;
        [view.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-padding].active = YES;
        [view.widthAnchor constraintEqualToConstant:size.width].active = YES;
        [view.heightAnchor constraintEqualToConstant:size.height].active = YES;
        
        view.translatesAutoresizingMaskIntoConstraints = NO;
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
        label.translatesAutoresizingMaskIntoConstraints = NO;
        
        [label.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
        [label.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
        
        label;
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
