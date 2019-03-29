//
//  KTTableViewCell02.m
//  ProtocolCellTest
//
//  Created by Klaus on 2019/3/29.
//  Copyright © 2019年 Klaus. All rights reserved.
//

#import "KTTableViewCell02.h"

@implementation KTTableViewCell02


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}


- (void)configShowViewWithTitle02:(NSString *)title {
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
