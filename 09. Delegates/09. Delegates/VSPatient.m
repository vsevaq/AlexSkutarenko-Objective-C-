//
//  VSPatient.m
//  09. Delegates
//
//  Created by MacBook Pro on 2/13/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "VSPatient.h"

@implementation VSPatient

-(BOOL)HowAreYou{
    BOOL iFeelGood = arc4random() % 2;
    
    if (!iFeelGood){
        [self.delegate patientFeelsBad:self];
    }
    
    return iFeelGood;
}

-(void)takePill{
    NSLog(@"%@ take a pill", self.name);
}

-(void)makeShot{
    NSLog(@"%@ make a shot", self.name);
}

@end
