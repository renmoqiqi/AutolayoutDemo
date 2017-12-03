//
//  StackViewAllHeightCell.m
//  AutolayoutDemo
//
//  Created by penghe on 2017/12/3.
//  Copyright © 2017年 WondersGroup. All rights reserved.
//

#import "StackViewAllHeightCell.h"



@implementation StackViewAllHeightCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code


}


- (void)setStairTitles:(NSArray <NSString *> *)titles
{
    NSArray *tempArray = [titles copy];
    [tempArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIStackView *tempStackView = [UIStackView new];

        //属性
        // 子视图间隔
        tempStackView.spacing = 2;
        // 布局方向 (默认横向布局)
        tempStackView.axis = UILayoutConstraintAxisHorizontal;
        // 子视图对齐方式 (枚举值
        tempStackView.alignment = UIStackViewAlignmentFill;
        // 子视图分部方式 (枚举值)
        tempStackView.distribution = UIStackViewDistributionFill;
        //方法
        for (int i = 0;i<titles.count; i++)
        {
            UILabel *label = [UILabel new];
            label.text = titles[i];
            label.font = [UIFont systemFontOfSize:12];
            label.layer.borderColor = [UIColor lightGrayColor].CGColor;
            label.layer.borderWidth = 1.0f / [UIScreen mainScreen].scale;
            label.backgroundColor = [UIColor greenColor];
            label.numberOfLines = 0;
            label.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width/titles.count;
            [self addSubview:label];
            // 将子视图，添加到 stackView 的 arrangedSubviews列表中
            [tempStackView addArrangedSubview:label];
        }

        [self.bgStackView addArrangedSubview:tempStackView];


    }];
    [self.bgStackView layoutIfNeeded];

}

@end
