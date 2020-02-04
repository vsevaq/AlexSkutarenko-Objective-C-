//
//  VHBoxer.m
//  03. PropertiesTest
//
//  Created by MacBook Pro on 10/25/19.
//  Copyright © 2019 MacBookPro. All rights reserved.
//

#import "VHBoxer.h"

//внутрення проперти(privat)
@interface VHBoxer()

@property (assign, nonatomic) NSInteger nameCount;

@end


@implementation VHBoxer
@synthesize name = _name;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameCount = 0;
        //and other properties
    }
    return self;
}

- (void)setName:(NSString *)name {
    self.nameCount += 1;
    NSLog(@"Setter setName is called %ld", (long)self.nameCount);
    
    _name = name;
}

- (NSString *)name {
    return _name;
}

- (NSInteger)age {
    NSLog(@"Age getter is caled ");
    return _age;
}

-(NSInteger)howOldAreYou {
    return self.age;
}

@end
