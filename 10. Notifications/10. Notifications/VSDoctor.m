//
//  VSDoctor.m
//  10. Notifications
//
//  Created by MacBook Pro on 2/17/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "VSDoctor.h"
#import "VSGovernment.h"

@implementation VSDoctor

#pragma mark - Initialization

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSNotificationCenter* notCenter = [NSNotificationCenter defaultCenter];
        
        [notCenter addObserver:self
                      selector:@selector(salaryChangedNotification:)
                          name:VSGovernmentSalaryDidChangeNotification
                        object:nil];
        
        [notCenter addObserver:self
                      selector:@selector(averagePriceChangedNotification:)
                          name:VSGovernmentAveragePriceDidChangeNotification
                        object:nil];
        /*
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(salaryChangedNotification)
                                                     name:VSGovernmentTaxLevelDidChangeNotification
                                                   object:nil];
         */
        
    }
    return self;
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Notifications

-(void)salaryChangedNotification:(NSNotification*)notification{
    NSNumber* value = [notification.userInfo objectForKey:VSGovernmentSalaryUserInfoKey];
    
    float salary = [value floatValue];
    
    if (salary < self.salary) {
        NSLog(@"Doctors are NOT happy");
    } else {
        NSLog(@"Doctor are HAPPY");
    }
    
    self.salary = salary;
}

-(void)averagePriceChangedNotification:(NSNotification*)notification{
    
}

@end
