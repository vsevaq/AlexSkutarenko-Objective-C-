//
//  VSMan.h
//  05. HomeWork
//
//  Created by MacBook Pro on 2/6/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jumpers.h"
#import "Swimmers.h"
#import "Runners.h"


NS_ASSUME_NONNULL_BEGIN

@interface VSMan : NSObject <Jumpers, Swimmers, Runners>

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger height;
@property (assign, nonatomic) NSInteger weight;
@property (assign, nonatomic) BOOL  isMale;

-(void) moveMan;

@end

NS_ASSUME_NONNULL_END
