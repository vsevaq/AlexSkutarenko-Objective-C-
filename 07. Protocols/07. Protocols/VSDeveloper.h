//
//  VSDeveloper.h
//  07. Protocols
//
//  Created by MacBook Pro on 2/9/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSPatient.h"

NS_ASSUME_NONNULL_BEGIN

@interface VSDeveloper : NSObject <VSPatient>

@property (assign, nonatomic) float experience;
@property (strong, nonatomic) NSString* name;

-(void)work;

@end

NS_ASSUME_NONNULL_END
