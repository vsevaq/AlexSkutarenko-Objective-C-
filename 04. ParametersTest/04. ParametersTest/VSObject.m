//
//  VSObject.m
//  4. ParametersTest
//
//  Created by MacBook Pro on 12/26/19.
//  Copyright © 2019 MacBookPro. All rights reserved.
//

#import "VSObject.h"

@implementation VSObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Object is created");
    }
    return self;
}

-(void) dealloc {
    NSLog(@"object is deallocated");
}

-(id) copyWithZone:(NSZone *)zone {
    return [[VSObject alloc] init];
}

@end
