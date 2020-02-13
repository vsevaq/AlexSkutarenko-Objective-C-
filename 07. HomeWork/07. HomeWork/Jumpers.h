//
//  Jumpers.h
//  07. HomeWork
//
//  Created by MacBook Pro on 2/13/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Jumpers <NSObject>

@required
@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger jumpHeight;

-(void)jump;
-(void)runAndJump;


@optional
-(void)eat;


@end

NS_ASSUME_NONNULL_END
