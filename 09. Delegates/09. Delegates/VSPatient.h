//
//  VSPatient.h
//  09. Delegates
//
//  Created by MacBook Pro on 2/13/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol VSPatientDelegate;

@interface VSPatient : NSObject

//strong - для обычных объектов
@property (strong, nonatomic) NSString* name;
//assing - для примитивных типов(float, int, double, struct)
@property (assign, nonatomic) float temperature;
//проперты на Delegate и DataSource всегда должно быть weak. Графические объекты - weak
//id - это уже указатель на NSObject
@property (weak, nonatomic) id <VSPatientDelegate> delegate;

-(BOOL)HowAreYou;
-(void)takePill;
-(void)makeShot;

@end



@protocol VSPatientDelegate <NSObject>

//методы начинают свое название как и название VSPatientDelegate - patient
-(void)patientFeelsBad:(VSPatient*)patient;
-(void)patient:(VSPatient*)patinet hasQuestion:(NSString*)question;

@end

NS_ASSUME_NONNULL_END
