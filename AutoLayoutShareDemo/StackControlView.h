//
//  StackControlView.h
//  AutoLayoutShareDemo
//
//  Created by LYP on 16/6/27.
//  Copyright © 2016年 LYP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StackControlView : UIView

@property (weak, nonatomic) IBOutlet UISegmentedControl *axisCtrl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *distributionCtrl;
@property (weak, nonatomic) IBOutlet UISegmentedControl *alignmentCtrl;
@property (weak, nonatomic) IBOutlet UISlider *spacingSlider;

@end
