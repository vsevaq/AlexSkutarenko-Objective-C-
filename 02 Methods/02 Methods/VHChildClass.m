//
//  VHChildClass.m
//  02 Methods
//
//  Created by MacBook Pro on 10/25/19.
//  Copyright © 2019 MacBookPro. All rights reserved.
//

#import "VHChildClass.h"

@implementation VHChildClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Instant of ChildClass is initialized");
    }
    return self;
}

-(NSString *)saySomeNumberString {
    return @"SaySomething";
}

-(NSString *)saySomething {
    return [self saySomeNumberString];
}

@end
