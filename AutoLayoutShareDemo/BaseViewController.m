//
//  BaseViewController.m
//  AutoLayoutShareDemo
//
//  Created by LYP on 16/6/25.
//  Copyright © 2016年 LYP. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"%s %@", __func__, NSStringFromCGRect(self.view.bounds));
}

- (void)viewWillLayoutSubviews{
    
    [super viewWillLayoutSubviews];
    
    NSLog(@"%s %@", __func__, NSStringFromCGRect(self.view.bounds));
}

- (void)viewDidLayoutSubviews{
    
    [super viewDidLayoutSubviews];
    
    NSLog(@"%s %@", __func__, NSStringFromCGRect(self.view.bounds));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#ifdef __IPHONE_7_0
- (UIRectEdge)edgesForExtendedLayout{
    
    return UIRectEdgeNone;
}
#endif

@end
