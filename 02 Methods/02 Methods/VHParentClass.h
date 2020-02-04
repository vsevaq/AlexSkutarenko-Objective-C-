//
//  VHParentClass.h
//  02 Methods
//
//  Created by MacBook Pro on 10/25/19.
//  Copyright © 2019 MacBookPro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface VHParentClass : NSObject

+(void)whoAreYou;

-(void)sayHello;
-(void)say:(NSString *)string;
-(void)say:(NSString *)string1 and:(NSString *)string2;

-(NSString *)saySomething;
-(NSString *)saySomeNumberString;

@end

NS_ASSUME_NONNULL_END
