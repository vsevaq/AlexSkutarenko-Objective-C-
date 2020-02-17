//
//  VSGovernment.m
//  10. Notifications
//
//  Created by MacBook Pro on 2/15/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "VSGovernment.h"

NSString* const VSGovernmentTaxLevelDidChangeNotification = @"VSGovernmentTaxLevelDidChangeNotification";
NSString* const VSGovernmentSalaryDidChangeNotification = @"VSGovernmentSalaryDidChangeNotification";
NSString* const VSGovernmentPensionDidChangeNotification = @"VSGovernmentPensionDidChangeNotification";
NSString* const VSGovernmentAveragePriceDidChangeNotification = @"VSGovernmentAveragePriceDidChangeNotification";

NSString* const VSGovernmentTaxLevelUserInfoKey = @"VSGovernmentTaxLevelUserInfoKey";
NSString* const VSGovernmentSalaryUserInfoKey = @"VSGovernmentSalaryUserInfoKey";
NSString* const VSGovernmentPensionUserInfoKey = @"VSGovernmentPensionUserInfoKey";
NSString* const VSGovernmentAveragePriceUserInfoKey = @"VSGovernmentAveragePriceUserInfoKey";

@implementation VSGovernment

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.taxLevel = 5.f;
        self.salary = 1000;
        self.pension = 500;
        self.averagePrice = 10.f;
    }
    return self;
}

-(void)setTaxLevel:(float)taxLevel{
    _taxLevel = taxLevel;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:taxLevel] forKey:VSGovernmentTaxLevelUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:VSGovernmentTaxLevelDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

-(void)setSalary:(float)salary{
    _salary = salary;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary] forKey:VSGovernmentSalaryUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:VSGovernmentSalaryDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

-(void)setPension:(float)pension{
    _pension = pension;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension] forKey:VSGovernmentPensionUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:VSGovernmentPensionDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

-(void)setAveragePrice:(float)averagePrice{
    _averagePrice = averagePrice;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice] forKey:VSGovernmentAveragePriceUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:VSGovernmentAveragePriceDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

@end
