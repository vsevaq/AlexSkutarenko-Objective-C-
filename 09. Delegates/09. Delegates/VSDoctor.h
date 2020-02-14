//
//  VSDoctor.h
//  09. Delegates
//
//  Created by MacBook Pro on 2/13/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VSPatient.h"

NS_ASSUME_NONNULL_BEGIN

@interface VSDoctor : NSObject <VSPatientDelegate>

@end

NS_ASSUME_NONNULL_END
