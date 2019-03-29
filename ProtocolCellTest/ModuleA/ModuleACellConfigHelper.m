//
//  ModuleACellConfigHelper.m
//  ProtocolCellTest
//
//  Created by Klaus on 2019/3/29.
//  Copyright © 2019年 Klaus. All rights reserved.
//

#import "ModuleACellConfigHelper.h"
#import "KTModel.h"

@implementation ModuleACellConfigHelper

@end


@implementation KTTableViewCell00 (ModuleA)

- (void)configCellWithModel:(KTModel *)model {
    [self configShowViewWithTitle00:model.title];
}

@end

@implementation KTTableViewCell01 (ModuleA)

- (void)configCellWithModel:(KTModel *)model {
    [self configShowViewWithTitle01:model.title];
}

@end

@implementation KTTableViewCell02 (ModuleA)

- (void)configCellWithModel:(KTModel *)model {
    [self configShowViewWithTitle02:model.title];
}

@end

@implementation KTTableViewCell03 (ModuleA)

- (void)configCellWithModel:(KTModel *)model {
    [self configShowViewWithTitle03:model.title];
}

@end
