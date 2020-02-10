//
//  VSDeveloper.m
//  07. Protocols
//
//  Created by MacBook Pro on 2/9/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "VSDeveloper.h"

@implementation VSDeveloper

-(void)work{
    
}

#pragma mark - ASPatient protocol -
-(BOOL)areYouOk{
    
    BOOL ok = arc4random() % 2;
    
    NSLog(@"Is developer %@ OK? %@", self.name, ok ? @"YES" : @"No");
    return ok;
}

-(void)takePill{
    NSLog(@"Developer %@ takes a pill", self.name);
}

-(void)makeShot{
    NSLog(@"Developer %@ makes a shot", self.name);
}

-(NSString*)howIsYourJob{
    return @"My job is awesome!";
}

@end
