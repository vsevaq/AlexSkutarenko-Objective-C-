//
//  VSCyclist.h
//  05. HomeWork
//
//  Created by MacBook Pro on 2/6/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "VSMan.h"
#import "Swimmers.h"

NS_ASSUME_NONNULL_BEGIN

@interface VSCyclist : VSMan <Swimmers>

@property (assign, nonatomic) NSInteger swimmingSpeed;

@end

NS_ASSUME_NONNULL_END
