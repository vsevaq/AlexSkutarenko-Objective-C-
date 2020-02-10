//
//  VSStudent.m
//  07. Protocols
//
//  Created by MacBook Pro on 2/9/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "VSStudent.h"

@implementation VSStudent

-(void)study{
    
}

#pragma mark - ASPatient protocol -
-(BOOL)areYouOk{
    
    BOOL ok = arc4random() % 2;
    
    NSLog(@"Is student %@ OK? %@", self.name, ok ? @"YES" : @"No");
    return ok;
}

-(void)takePill{
    NSLog(@"Student %@ takes a pill", self.name);
}

-(void)makeShot{
    NSLog(@"Student %@ makes a shot", self.name);
}

-(NSString*)howIsYourFamily{
    return @"My family is doing well!";
}

@end
