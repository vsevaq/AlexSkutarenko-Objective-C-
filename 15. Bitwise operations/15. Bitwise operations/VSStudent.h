//
//  VSStudent.h
//  15. Bitwise operations
//
//  Created by MacBook Pro on 2/23/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    VSStudentSubjectTypeBiology         = 1 << 0,
    VSStudentSubjectTypeMath            = 1 << 1,
    VSStudentSubjectTypeDevelopment     = 1 << 2,
    VSStudentSubjectTypeEngineering     = 1 << 3,
    VSStudentSubjectTypeArt             = 1 << 4,
    VSStudentSubjectTypePhycology       = 1 << 5,
    VSStudentSubjectTypeAnatomy         = 1 << 6,
} VSStudentSubjectType;

@interface VSStudent : NSObject

@property (assign, nonatomic) VSStudentSubjectType subjectType;

/*
@property (assign, nonatomic) BOOL studiesBiology;
@property (assign, nonatomic) BOOL studiesMath;
@property (assign, nonatomic) BOOL studiesDevelopment;
@property (assign, nonatomic) BOOL studiesEngineering;
@property (assign, nonatomic) BOOL studiesArt;
@property (assign, nonatomic) BOOL studiesPhycology;
@property (assign, nonatomic) BOOL studiesAnatomy;
*/
@end

NS_ASSUME_NONNULL_END
