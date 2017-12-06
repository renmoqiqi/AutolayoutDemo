//
//  IncreasingController.m
//  AutolayoutDemo
//
//  Created by penghe on 2017/12/5.
//  Copyright © 2017年 WondersGroup. All rights reserved.
//

#import "IncreasingController.h"

@interface IncreasingController ()
@property (weak, nonatomic) IBOutlet UILabel *greenLabel;
@property (weak, nonatomic) IBOutlet UIStackView *leftBgView;
@property (weak, nonatomic) IBOutlet UIView *greyView;
@property (weak, nonatomic) IBOutlet UIStackView *addLabelStackView;
@property (weak, nonatomic) IBOutlet UIStackView *bgStackView;
//space 间距
@property (assign, nonatomic) NSInteger space;

@end

@implementation IncreasingController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];


}
- (IBAction)addLabelAction:(UIButton *)sender
{
    

    UILabel *label = [UILabel new];
    label.text = @"Label";
    label.font = [UIFont systemFontOfSize:17];
    label.backgroundColor = [UIColor colorWithRed:255/255 green:150/255 blue:255/255 alpha:1.0];
    [self.addLabelStackView addArrangedSubview:label];
    //42 是Label 的宽度
    if (self.bgStackView.spacing - 42 >8)
    {
        self.bgStackView.spacing = self.bgStackView.spacing-42;
        
        [self.greyView layoutIfNeeded];
    }

}
- (IBAction)diminishingAction:(UIButton *)sender
{
    NSArray *tempArray = self.addLabelStackView.arrangedSubviews;
    if (tempArray.count>1)
    {

        [[tempArray lastObject] removeFromSuperview];



    }
    
}



@end
