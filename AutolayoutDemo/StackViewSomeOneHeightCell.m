//
//  StackViewSomeOneHeightCell.m
//  AutolayoutDemo
//
//  Created by penghe on 2017/12/3.
//  Copyright © 2017年 WondersGroup. All rights reserved.
//

#import "StackViewSomeOneHeightCell.h"
@interface StackViewSomeOneHeightCell ()
@property (nonatomic, strong)  IBOutlet UILabel *label1;
@property (nonatomic, strong) IBOutlet UILabel *label2;
@property (nonatomic, strong) IBOutlet UILabel *label3;
@end
@implementation StackViewSomeOneHeightCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (void)configWithTexts:(NSArray<NSString *> *)cellTexts {
    // Check
    assert(cellTexts.count == 3);

    _label1.text = cellTexts[0];
    _label2.text = cellTexts[1];
    _label3.text = cellTexts[2];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
