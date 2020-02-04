//
//  VHParentClass.m
//  02 Methods
//
//  Created by MacBook Pro on 10/25/19.
//  Copyright © 2019 MacBookPro. All rights reserved.
//

#import "VHParentClass.h"

@implementation VHParentClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Instance of ParentClass is initialized");
    }
    return self;
}

+(void)whoAreYou {
    NSLog(@"I am the VHParentClass");
}

-(void)sayHello {
    NSLog(@"Parent says hello!");
}

-(void)say:(NSString *)string {
    NSLog(@"%@", string);
}

-(void)say:(NSString *)string1 and:(NSString *)string2 {
    NSLog(@"%@ %@", string1, string2);
}

-(NSString *)saySomething {
    NSString* string = [self saySomeNumberString];
    
    return string;
}


-(NSString *)saySomeNumberString {
    return [NSString stringWithFormat:@"%@", [NSDate date]];
}



@end
