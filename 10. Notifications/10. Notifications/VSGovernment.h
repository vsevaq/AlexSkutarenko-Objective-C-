//
//  VSGovernment.h
//  10. Notifications
//
//  Created by MacBook Pro on 2/15/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//Опеределяем Notification
extern NSString* const VSGovernmentTaxLevelDidChangeNotification;
extern NSString* const VSGovernmentSalaryDidChangeNotification;
extern NSString* const VSGovernmentPensionDidChangeNotification;
extern NSString* const VSGovernmentAveragePriceDidChangeNotification;

extern NSString* const VSGovernmentTaxLevelUserInfoKey;
extern NSString* const VSGovernmentSalaryUserInfoKey;
extern NSString* const VSGovernmentPensionUserInfoKey;
extern NSString* const VSGovernmentAveragePriceUserInfoKey;

@interface VSGovernment : NSObject

@property (assign, nonatomic) float taxLevel;
@property (assign, nonatomic) float salary;
@property (assign, nonatomic) float pension;
@property (assign, nonatomic) float averagePrice;

@end

NS_ASSUME_NONNULL_END
