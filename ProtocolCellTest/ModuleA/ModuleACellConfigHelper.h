//
//  ModuleACellConfigHelper.h
//  ProtocolCellTest
//
//  Created by Klaus on 2019/3/29.
//  Copyright © 2019年 Klaus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KTTableViewCell00.h"
#import "KTTableViewCell01.h"
#import "KTTableViewCell02.h"
#import "KTTableViewCell03.h"


@class KTModel;
@protocol ModuleACellConfigPropotol <NSObject>
- (void)configCellWithModel:(KTModel *)model;
@end

@interface ModuleACellConfigHelper : NSObject
@end

@interface KTTableViewCell00 (ModuleA) <ModuleACellConfigPropotol>

@end

@interface KTTableViewCell01 (ModuleA) <ModuleACellConfigPropotol>

@end


@interface KTTableViewCell02 (ModuleA) <ModuleACellConfigPropotol>

@end

@interface KTTableViewCell03 (ModuleA) <ModuleACellConfigPropotol>

@end


