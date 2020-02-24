//
//  VSStudent.m
//  15. Bitwise operations
//
//  Created by MacBook Pro on 2/23/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "VSStudent.h"

@implementation VSStudent


/*
-(NSString*)description{
    return [NSString stringWithFormat:@"Student studies:\n"
                                        "bilogy: %@\n"
                                        "math: %@\n"
                                        "Development: %@\n"
                                        "Engenering: %@\n"
                                        "Art: %@\n"
                                        "Phycology: %@\n"
                                        "Anatomy: %@\n",
                                        self.studiesBiology ? @"YES" : @"NO",
                                        self.studiesMath ? @"YES" : @"NO",
                                        self.studiesDevelopment ? @"YES" : @"NO",
                                        self.studiesEngineering ? @"YES" : @"NO",
                                        self.studiesArt ? @"YES" : @"NO",
                                        self.studiesPhycology ? @"YES" : @"NO",
                                        self.studiesAnatomy ? @"YES" : @"NO"];
    
}
*/

-(NSString*)answerByType:(VSStudentSubjectType)type{
    return self.subjectType ? @"YES" : @"NO";
}

-(NSString*)description{
    return [NSString stringWithFormat:@"Student studies:\n"
            "bilogy: %@\n"
            "math: %@\n"
            "Development: %@\n"
            "Engenering: %@\n"
            "Art: %@\n"
            "Phycology: %@\n"
            "Anatomy: %@\n",
            [self answerByType:VSStudentSubjectTypeBiology],
            [self answerByType:VSStudentSubjectTypeMath],
            [self answerByType:VSStudentSubjectTypeDevelopment],
            [self answerByType:VSStudentSubjectTypeEngineering],
            [self answerByType:VSStudentSubjectTypeArt],
            [self answerByType:VSStudentSubjectTypePhycology],
            [self answerByType:VSStudentSubjectTypeAnatomy]];
    
}

@end
