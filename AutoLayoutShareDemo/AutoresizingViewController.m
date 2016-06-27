//
//  AutoresizingViewController.m
//  AutoLayoutShareDemo
//
//  Created by LYP on 16/6/25.
//  Copyright © 2016年 LYP. All rights reserved.
//

#import "AutoresizingViewController.h"

@interface AutoresizingViewController ()

@end

@implementation AutoresizingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *lbl = ({
    
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 15, 60, 40)];
        [self.view addSubview:label];
        
        //右边距和下边距可调整，其他固定
        label.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
        
        label.backgroundColor = [UIColor grayColor];
        label.text = @"账号";
        
        label;
    });
    
    UITextField *tf = ({
    
        UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(lbl.frame) + 5, CGRectGetMinY(lbl.frame), CGRectGetMaxX(self.view.bounds) - (CGRectGetMaxX(lbl.frame) + 5) - 15, CGRectGetHeight(lbl.frame))];
        [self.view addSubview:textField];
        
        //宽度和下边距可调整，其他固定
        textField.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
        
        textField.borderStyle = UITextBorderStyleRoundedRect;
        textField.placeholder = @"请输入账号";
        
        textField;
    });
    
    __unused UIView *v1 = ({
        
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetMinX(lbl.frame), CGRectGetMaxY(lbl.frame) + 10, CGRectGetMaxX(tf.frame) - CGRectGetMinX(lbl.frame), CGRectGetMaxY(self.view.bounds) - (CGRectGetMaxY(lbl.frame) + 10) - 15)];
        [self.view addSubview:view];
        
        //宽度和高度可调整，其他固定
        view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
        [view showPlaceHolderWithLineColor:[UIColor whiteColor]];
        view.backgroundColor = [UIColor redColor];
        
        view;
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
