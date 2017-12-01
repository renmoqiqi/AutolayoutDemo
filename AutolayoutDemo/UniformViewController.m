//
//  UniformViewController.m
//  AutolayoutDemo
//
//  Created by penghe on 2017/12/1.
//  Copyright © 2017年 WondersGroup. All rights reserved.
//

#import "UniformViewController.h"

@interface UniformViewController ()

@property (weak, nonatomic) IBOutlet UIStackView *stackView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *iconWidthConstraint;

@end

@implementation UniformViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    //方法一
    CGFloat space = (self.view.bounds.size.width-(self.iconWidthConstraint.constant*3))/4;
    self.stackView.spacing = space;
    [self.view layoutIfNeeded];
    
    //方法二 UILayoutGuide 虚拟视图 自动布局时候参与计算
    
    //方法三 一些第三方布局框架直接有相应方法设置间隔等
    
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
