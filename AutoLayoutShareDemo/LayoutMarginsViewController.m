//
//  LayoutMarginsViewController.m
//  AutoLayoutShareDemo
//
//  Created by LYP on 16/6/27.
//  Copyright © 2016年 LYP. All rights reserved.
//

#import "LayoutMarginsViewController.h"

@interface LayoutMarginsViewController ()

@end

@implementation LayoutMarginsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGFloat padding = 15;
    UIEdgeInsets layoutMargins = UIEdgeInsetsMake(padding, padding, padding, padding);
    self.view.layoutMargins = layoutMargins;
    
    UIView *v1 = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        view.layoutMargins = layoutMargins;
        view.backgroundColor = [UIColor randomColor];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.leading.equalTo(self.view.mas_leadingMargin);
            make.trailing.equalTo(self.view.mas_trailingMargin);
            make.top.equalTo(self.view.mas_topMargin);
            make.bottom.equalTo(self.view.mas_bottomMargin);
        }];
        
        view;
    });
    
    UIView *v2 = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        view.layoutMargins = layoutMargins;
        view.backgroundColor = [UIColor randomColor];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.leading.equalTo(v1.mas_leadingMargin);
            make.trailing.equalTo(v1.mas_trailingMargin);
            make.top.equalTo(v1.mas_topMargin);
            make.bottom.equalTo(v1.mas_bottomMargin);
        }];
        
        view;
    });
    
    UIView *v3 = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        view.layoutMargins = layoutMargins;
        view.backgroundColor = [UIColor randomColor];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.leading.equalTo(v2.mas_leadingMargin);
            make.trailing.equalTo(v2.mas_trailingMargin);
            make.top.equalTo(v2.mas_topMargin);
            make.bottom.equalTo(v2.mas_bottomMargin);
        }];
        
        view;
    });
    
    
    UIView *v4 = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        view.layoutMargins = UIEdgeInsetsMake(50, 50, 10, 10);
        view.backgroundColor = [UIColor randomColor];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.leading.equalTo(v3.mas_leadingMargin);
            make.trailing.equalTo(v3.mas_trailingMargin);
            make.top.equalTo(v3.mas_topMargin);
            make.bottom.equalTo(v3.mas_bottomMargin);
        }];
        
        view;
    });
    
    
    __unused UIView *v5 = ({
        
        UIView *view = [[UIView alloc] init];
        [self.view addSubview:view];
        
        view.backgroundColor = [UIColor randomColor];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.centerX.equalTo(v4.mas_centerXWithinMargins);
            make.centerY.equalTo(v4.mas_centerYWithinMargins);
            make.size.mas_equalTo(CGSizeMake(100, 100));
        }];
        
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
