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
    
    //删掉之前创建的元素
    NSArray *tempBgStackViewArray = self.bgStackView.arrangedSubviews;
    [tempBgStackViewArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIStackView *tempStackView = (UIStackView *)obj;
        NSArray *tempStackViewArray = tempStackView.arrangedSubviews;
        [tempStackViewArray makeObjectsPerformSelector:@selector(removeFromSuperview)];

    }];
    [tempBgStackViewArray makeObjectsPerformSelector:@selector(removeFromSuperview)];

    //创建新的必要的元素
    NSArray *tempArray = [titles copy];
    [tempArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        //创建一个新的stackView
        UIStackView *tempStackView = [UIStackView new];

        //属性
        // 子视图间隔
        tempStackView.spacing = 2;
        // 布局方向 (默认横向布局)
        tempStackView.axis = UILayoutConstraintAxisHorizontal;
        // 子视图对齐方式 (枚举值
        tempStackView.alignment = UIStackViewAlignmentFill;
        // 子视图分部方式 (枚举值)
        tempStackView.distribution = UIStackViewDistributionFillEqually;
        //方法
        for (int i = 0;i<titles.count; i++)
        {

                        if (i == idx)
                        {
                            UILabel *label = [UILabel new];
                            label.text = titles[idx];
                            label.font = [UIFont systemFontOfSize:12];
                            label.layer.borderColor = [UIColor lightGrayColor].CGColor;
                            label.layer.borderWidth = 1.0f / [UIScreen mainScreen].scale;
                            label.numberOfLines = 0;
                            label.textAlignment = NSTextAlignmentCenter;
                            label.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width/titles.count;
                            [tempStackView addArrangedSubview:label];

                        }
                        else
                        {
                            UIView *layoutGuide = [UIView new];
                            [tempStackView addArrangedSubview:layoutGuide];

                        }
            
            

        }

        [self.bgStackView addArrangedSubview:tempStackView];


    }];

}

@end
