//
//  LayoutGuidViewController.m
//  AutoLayoutShareDemo
//
//  Created by LYP on 16/6/27.
//  Copyright © 2016年 LYP. All rights reserved.
//

#import "LayoutGuidViewController.h"

@interface LayoutGuidViewController ()

@end

@implementation LayoutGuidViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILayoutGuide *spac1 = [[UILayoutGuide alloc] init];
    [self.view addLayoutGuide:spac1];
    
    UILayoutGuide *spac2 = [[UILayoutGuide alloc] init];
    [self.view addLayoutGuide:spac2];
    
    [spac1.widthAnchor constraintEqualToAnchor:spac2.widthAnchor].active = YES;
    
    UIView *v1 = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        view.translatesAutoresizingMaskIntoConstraints = NO;
        view.backgroundColor = [UIColor redColor];
        
        [view.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:15].active = YES;;
        [view.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
        [view.trailingAnchor constraintEqualToAnchor:spac1.leadingAnchor].active = YES;
        [view.heightAnchor constraintEqualToConstant:100].active = YES;
        [view.widthAnchor constraintEqualToAnchor:view.heightAnchor].active = YES;
        
        view;
    });
    
    UIView *v2 = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        view.backgroundColor = [UIColor blueColor];
        view.translatesAutoresizingMaskIntoConstraints = NO;
        
        [view.leadingAnchor constraintEqualToAnchor:spac1.trailingAnchor constant:15].active = YES;;
        [view.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
        [view.trailingAnchor constraintEqualToAnchor:spac2.leadingAnchor].active = YES;
        [view.heightAnchor constraintEqualToConstant:80].active = YES;
        [view.widthAnchor constraintEqualToAnchor:view.heightAnchor].active = YES;
        
        view;
    });
    
    UIView *v3 = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        view.backgroundColor = [UIColor greenColor];
        view.translatesAutoresizingMaskIntoConstraints = NO;
        
        [view.leadingAnchor constraintEqualToAnchor:spac2.trailingAnchor].active = YES;;
        [view.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
        [view.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-15].active = YES;
        [view.heightAnchor constraintEqualToConstant:50].active = YES;
        [view.widthAnchor constraintEqualToAnchor:view.heightAnchor].active = YES;
        
        view;
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
