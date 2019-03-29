//
//  KTTableViewCell03.m
//  ProtocolCellTest
//
//  Created by Klaus on 2019/3/29.
//  Copyright © 2019年 Klaus. All rights reserved.
//

#import "KTTableViewCell03.h"

@implementation KTTableViewCell03


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor greenColor];
    }
    return self;
}


- (void)configShowViewWithTitle03:(NSString *)title {
    self.textLabel.text = title;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
