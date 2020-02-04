//
//  VHStudent.h
//  06.DataTypes
//
//  Created by MacBook Pro on 2/4/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    VHGenderMale,
    VHGenderFemale
} VHGender;

typedef NSInteger Vseva;

@interface VHStudent : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) VHGender gender;

@end

NS_ASSUME_NONNULL_END
