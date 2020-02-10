//
//  VSPatient.h
//  07. Protocols
//
//  Created by MacBook Pro on 2/9/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol VSPatient <NSObject>

@required
@property (strong, nonatomic) NSString* name;

-(BOOL)areYouOk;
-(void)takePill;
-(void)makeShot;

@optional
- (NSString*) howIsYourFamily;
- (NSString*) howIsYourJob;

@end

NS_ASSUME_NONNULL_END
