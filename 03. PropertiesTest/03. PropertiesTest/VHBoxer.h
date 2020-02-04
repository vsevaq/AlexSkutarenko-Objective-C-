//
//  VHBoxer.h
//  03. PropertiesTest
//
//  Created by MacBook Pro on 10/25/19.
//  Copyright © 2019 MacBookPro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface VHBoxer : NSObject

//объекты(ссылкы) используем strong, примитивные типа assign
@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) float height;
@property (assign, nonatomic) float weight;

-(NSInteger)howOldAreYou;

@end

NS_ASSUME_NONNULL_END
