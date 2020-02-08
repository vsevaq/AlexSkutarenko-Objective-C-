//
//  VSAnimal.h
//  05. HomeWork
//
//  Created by MacBook Pro on 2/8/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface VSAnimal : NSObject

@property (weak, nonatomic) NSString* type;
@property (weak, nonatomic) NSString* color;
@property (assign, nonatomic) NSInteger weight;

-(void) moving;

@end

NS_ASSUME_NONNULL_END
