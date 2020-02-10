//
//  VSDancer.m
//  07. Protocols
//
//  Created by MacBook Pro on 2/9/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "VSDancer.h"

@implementation VSDancer

-(void)dance{
    
}

#pragma mark - ASPatient protocol -
-(BOOL)areYouOk{
    
    BOOL ok = arc4random() % 2;
    
    NSLog(@"Is dancer %@ OK? %@", self.name, ok ? @"YES" : @"No");
    return ok;
}

-(void)takePill{
    NSLog(@"Dancer %@ takes a pill", self.name);
}

-(void)makeShot{
    NSLog(@"Dancer %@ makes a shot", self.name);
}

@end
