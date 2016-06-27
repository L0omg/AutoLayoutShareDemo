//
//  ContentPriorityViewController.m
//  AutoLayoutShareDemo
//
//  Created by LYP on 16/6/27.
//  Copyright © 2016年 LYP. All rights reserved.
//

#import "ContentPriorityViewController.h"
#import "LLView.h"

@interface ContentPriorityViewController ()
@property (nonatomic, strong) LLView *llView;
@end

@implementation ContentPriorityViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGFloat padding = 15;
    UILabel *leftLabel = ({
        
        UILabel *label = [[UILabel alloc] init];
        [self.view addSubview:label];
        
        label.backgroundColor = [UIColor redColor];
        label.text = @"左边的文字";
        [label setContentCompressionResistancePriority:UILayoutPriorityDefaultHigh + 10 forAxis:UILayoutConstraintAxisHorizontal];//抗压缩，越大越不容易被压缩，默认优先级为High
        [label setContentHuggingPriority:UILayoutPriorityDefaultLow + 10 forAxis:UILayoutConstraintAxisHorizontal];//抗拉伸，越大越不容易被拉伸，默认优先级为Low
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.leading.equalTo(self.view.mas_leading).offset(padding);
            make.top.equalTo(self.view.mas_top).offset(padding);
        }];
        
        label;
    });
    
    UILabel *centerLabel = ({
        
        UILabel *label = [[UILabel alloc] init];
        [self.view addSubview:label];
        
        label.backgroundColor = [UIColor greenColor];
        label.text = @"中间的文字很长很长很长很长很长很长很长很长很长很长很长很长！！！！！！";
        label.textAlignment = NSTextAlignmentCenter;
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.centerY.equalTo(leftLabel);
            make.leading.equalTo(leftLabel.mas_trailing);
        }];
        
        label;
    });
    
    UILabel *rightLabel = ({
        
        UILabel *label = [[UILabel alloc] init];
        [self.view addSubview:label];
        
        label.backgroundColor = [UIColor blueColor];
        label.text = @"右边的文字";
        [label setContentCompressionResistancePriority:UILayoutPriorityDefaultHigh + 9 forAxis:UILayoutConstraintAxisHorizontal];//抗压缩，越大越不容易被压缩，默认优先级为High
        [label setContentHuggingPriority:UILayoutPriorityDefaultLow + 9 forAxis:UILayoutConstraintAxisHorizontal];//抗拉伸，越大越不容易被拉伸，默认优先级为Low
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.centerY.equalTo(centerLabel);
            make.trailing.equalTo(self.view).offset(-padding);
            make.leading.equalTo(centerLabel.mas_trailing);
        }];
        
        label;
    });
    
    LLView *v1 = ({
        
        LLView *view = [[LLView alloc] init];
        [self.view addSubview:view];
        
        view.backgroundColor = [UIColor redColor];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {

            make.center.equalTo(self.view);
        }];
        
        view;
    });
    
    self.llView = v1;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    self.llView.contentSize = CGSizeApplyAffineTransform(self.llView.contentSize, CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1));
    [UIView animateWithDuration:0.3 animations:^{
       
        [self.view layoutIfNeeded];
    }];
}
@end
