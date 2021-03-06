//
//  VSPerson.h
//  05. HomeWork
//
//  Created by MacBook Pro on 2/7/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "VSMan.h"
#import "Swimmers.h"
#import "Runners.h"

NS_ASSUME_NONNULL_BEGIN

@interface VSPerson : VSMan <Swimmers, Runners>

@property (weak, nonatomic) NSString* lastName;
@property (weak, nonatomic) NSString* country;
@property (weak, nonatomic) NSString* birthday;

@end

NS_ASSUME_NONNULL_END
