//
//  SwitchController.m
//  AutolayoutDemo
//
//  Created by penghe on 2017/11/29.
//  Copyright © 2017年 WondersGroup. All rights reserved.
//

#import "SwitchController.h"

@interface SwitchController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageOne;
@property (weak, nonatomic) IBOutlet UIImageView *towImage;
@property (weak, nonatomic) IBOutlet UIImageView *threeImage;
@property (weak, nonatomic) IBOutlet UIImageView *fourImage;

@end

@implementation SwitchController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)switchOneChange:(UISwitch *)sender
{
    [UIView animateWithDuration:0.5 animations:^{
        [self.imageOne setHidden:!self.imageOne.hidden];
    }];
}
- (IBAction)switchTowChange:(UISwitch *)sender
{
    [UIView animateWithDuration:0.5 animations:^{
        [self.towImage setHidden:!self.towImage.hidden];
    }];
}
- (IBAction)switchThreeChange:(UISwitch *)sender
{
    [UIView animateWithDuration:0.5 animations:^{
        [self.threeImage setHidden:!self.threeImage.hidden];
    }];
}
- (IBAction)switchFourChange:(UISwitch *)sender
{
    [UIView animateWithDuration:0.5 animations:^{
        [self.fourImage setHidden:!self.fourImage.hidden];
    }];
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
