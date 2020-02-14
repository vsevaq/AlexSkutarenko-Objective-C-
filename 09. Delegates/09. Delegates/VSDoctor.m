//
//  VSDoctor.m
//  09. Delegates
//
//  Created by MacBook Pro on 2/13/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "VSDoctor.h"

@implementation VSDoctor

#pragma mark - VSPatientDelegate -
-(void)patientFeelsBad:(VSPatient*)patient{
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if (patient.temperature >= 37.f && patient.temperature <= 39.f) {
        [patient takePill];
    } else if (patient.temperature > 39.f) {
        [patient makeShot];
    } else {
        NSLog(@"patient %@ should rest", patient.name);
    }
}

-(void)patient:(VSPatient*)patinet hasQuestion:(NSString*)question{
    NSLog(@"Patient %@ has a question: %@", patinet.name, question);
}

@end
