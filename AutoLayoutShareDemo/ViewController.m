//
//  ViewController.m
//  AutoLayoutShareDemo
//
//  Created by LYP on 16/6/25.
//  Copyright © 2016年 LYP. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, copy) NSArray<NSString*> *datas;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.datas.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *identifier = @"TableViewCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%@", self.datas[indexPath.row]];
    
    return cell;
}

#pragma mark UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    Class cls = NSClassFromString([self.datas[indexPath.row] stringByAppendingString:@"ViewController"]);
    if (cls) {
        
        [self.navigationController pushViewController:cls.new animated:YES];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 60.f;
}

#pragma mark -Getter
- (NSArray*)datas{
    
    if (!_datas) {
        
        _datas = @[@"Autoresizing",
                   @"BasicAttribute",
                   @"LayoutMargins",
                   @"ContentPriority",
                   @"ScrollViewLayout",
                   @"StackViewDemo",
                   @"LayoutGuid",
                   @"LayoutAnchor"];
    }
    
    return _datas;
}

@end
