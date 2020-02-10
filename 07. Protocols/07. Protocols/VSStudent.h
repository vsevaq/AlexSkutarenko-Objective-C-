//
//  VSStudent.h
//  07. Protocols
//
//  Created by MacBook Pro on 2/9/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSPatient.h"

NS_ASSUME_NONNULL_BEGIN

@interface VSStudent : NSObject <VSPatient>

@property (strong, nonatomic) NSString* universityName;
@property (strong, nonatomic) NSString* name;

-(void)study;

@end

NS_ASSUME_NONNULL_END
