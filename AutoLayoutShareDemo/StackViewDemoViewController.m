//
//  StackViewDemoViewController.m
//  AutoLayoutShareDemo
//
//  Created by LYP on 16/6/27.
//  Copyright © 2016年 LYP. All rights reserved.
//

#import "StackViewDemoViewController.h"
#import "StackControlView.h"

@interface StackViewDemoViewController ()
@property (nonatomic, strong) UIStackView *stackView;
@end

@implementation StackViewDemoViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.stackView = ({
    
        UIStackView *stackView = [[UIStackView alloc] init];
        [self.view addSubview:stackView];
        
        [stackView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.view).offset(15);
            make.leading.equalTo(self.view).offset(15);
            make.trailing.equalTo(self.view).offset(-15);
        }];
        
        stackView;
    });
    
    for (NSUInteger i = 0; i < 5; i++) {
        
        UILabel *label = [[UILabel alloc] init];
        label.backgroundColor = [UIColor randomColor];
        label.text = @(i).stringValue;
        label.font = [UIFont boldSystemFontOfSize:30];
        label.textColor = [UIColor whiteColor];
        label.textAlignment = NSTextAlignmentCenter;
        
        [self.stackView addArrangedSubview:label];
    }
    
    StackControlView *controlView = ({
    
        StackControlView *view = [[[NSBundle mainBundle] loadNibNamed:@"StackControlView" owner:nil options:nil] lastObject];
        [self.view addSubview:view];
        
        [view.axisCtrl addTarget:self action:@selector(axisChanged:) forControlEvents:UIControlEventValueChanged];
        [view.distributionCtrl addTarget:self action:@selector(distributionOptionsChanged:) forControlEvents:UIControlEventValueChanged];
        [view.alignmentCtrl addTarget:self action:@selector(alignmentOptionsChanged:) forControlEvents:UIControlEventValueChanged];
        [view.spacingSlider addTarget:self action:@selector(spacingValueChanged:) forControlEvents:UIControlEventValueChanged];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.leading.trailing.bottom.equalTo(self.view);
            make.top.equalTo(self.stackView.mas_bottom);
            make.height.mas_equalTo(150);
        }];
        
        view;
    });
}

- (void)axisChanged:(UISegmentedControl*) ctrl{
    
    self.stackView.axis = ctrl.selectedSegmentIndex;
}

- (void)distributionOptionsChanged:(UISegmentedControl*) ctrl{
    
    self.stackView.distribution = ctrl.selectedSegmentIndex;
}

- (void)alignmentOptionsChanged:(UISegmentedControl*) ctrl{
    
    self.stackView.alignment = ctrl.selectedSegmentIndex;
}

- (void)spacingValueChanged:(UISlider*) ctrl{
    
    self.stackView.spacing = ctrl.value;
}

@end
