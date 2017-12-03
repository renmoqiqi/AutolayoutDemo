//
//  StackViewAllHeightCell.h
//  AutolayoutDemo
//
//  Created by penghe on 2017/12/3.
//  Copyright © 2017年 WondersGroup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StackViewAllHeightCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIStackView *bgStackView;

- (void)setStairTitles:(NSArray <NSString *> *)titles;

@end