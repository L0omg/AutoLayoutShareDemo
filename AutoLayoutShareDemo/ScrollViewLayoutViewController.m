//
//  ScrollViewLayoutViewController.m
//  AutoLayoutShareDemo
//
//  Created by LYP on 16/6/27.
//  Copyright © 2016年 LYP. All rights reserved.
//

#import "ScrollViewLayoutViewController.h"
#import "ScrollContainerView.h"

@implementation ScrollViewLayoutViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGFloat padding = 15;
    CGSize size = CGSizeMake(80, 80);
    
    UIScrollView *scrollViewTop = ({
        
        UIScrollView *scrollView = [[UIScrollView alloc] init];
        [self.view addSubview:scrollView];
        
        scrollView.backgroundColor = [UIColor groupTableViewBackgroundColor];
        
        [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.leading.equalTo(self.view).offset(padding);
            make.top.equalTo(self.view).offset(padding);
            make.trailing.equalTo(self.view).offset(-padding);
            make.height.mas_equalTo(160);
        }];
        
        scrollView;
    });
    
    //subviews需要设置全部约束（上下左右以及宽高），ScrollView会根据设定的约束要计算contentSize，且设置的上下左右约束都是相对于contentSize的
    //Note：centerX和centerY是相对于ScrollView的frame的
    UIView *v1 = ({
        
        UIView *view = [[UIView alloc] init];
        [scrollViewTop addSubview:view];
        
        view.backgroundColor = [UIColor redColor];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.leading.equalTo(scrollViewTop);
            make.size.mas_equalTo(size);
        }];
        
        view;
    });
    
    UIView *v2 = ({
        
        UIView *view = [[UIView alloc] init];
        [scrollViewTop addSubview:view];
        
        view.backgroundColor = [UIColor yellowColor];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.leading.equalTo(v1.mas_trailing);
            make.bottom.equalTo(v1.mas_top);
            make.top.equalTo(scrollViewTop);
            make.size.mas_equalTo(size);
        }];
        
        view;
    });
    
    UIView *v3 = ({
        
        UIView *view = [[UIView alloc] init];
        [scrollViewTop addSubview:view];
        
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
        [scrollViewTop addSubview:view];
        
        view.backgroundColor = [UIColor purpleColor];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.leading.equalTo(v3.mas_trailing);
            make.top.equalTo(v3.mas_bottom);
            make.bottom.equalTo(scrollViewTop);
            make.size.mas_equalTo(size);
        }];
        
        view;
    });
    
    UIView *v5 = ({
        
        UIView *view = [[UIView alloc] init];
        [scrollViewTop addSubview:view];
        
        view.backgroundColor = [UIColor blueColor];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.leading.equalTo(v4.mas_trailing);
            make.bottom.equalTo(v4.mas_top);
            make.trailing.equalTo(scrollViewTop);
            make.size.mas_equalTo(size);
        }];
        
        view;
    });
    
//    UIView *v6 = ({
//        
//        UIView *view = [[UIView alloc] init];
//        [scrollViewTop addSubview:view];
//        
//        view.backgroundColor = [UIColor redColor];
//        
//        [view mas_makeConstraints:^(MASConstraintMaker *make) {
//           
//            make.center.equalTo(scrollViewTop);
//            make.size.mas_equalTo(CGSizeMake(60, 60));
//        }];
//        
//        view;
//    });
    
    
    //使用一个ContainerView封装布局逻辑
#pragma mark -推荐的ScrollView布局方式
    UIScrollView *scrollViewBottom = ({
        
        UIScrollView *scrollView = [[UIScrollView alloc] init];
        [self.view addSubview:scrollView];
        
        scrollView.backgroundColor = [UIColor lightGrayColor];
        
        [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.leading.equalTo(self.view).offset(padding);
            make.bottom.equalTo(self.view).offset(-padding);
            make.trailing.equalTo(self.view).offset(-padding);
            make.height.mas_equalTo(160);
        }];
        
        scrollView;
    });
    
    ScrollContainerView *containerV = ({
    
        ScrollContainerView *view = [[ScrollContainerView alloc] init];
        [scrollViewBottom addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.edges.equalTo(scrollViewBottom);
        }];
        
        view;
    });
}
@end
