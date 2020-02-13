//
//  Runners.h
//  07. HomeWork
//
//  Created by MacBook Pro on 2/13/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Runners <NSObject>

@required
@property (weak, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger runningSpeed;

-(void)run;
-(void)longRun;


@optional
-(void)eat;


@end

NS_ASSUME_NONNULL_END
