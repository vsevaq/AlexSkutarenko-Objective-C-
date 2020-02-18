//
//  AppDelegate.m
//  12. Blocks
//
//  Created by MacBook Pro on 2/18/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "AppDelegate.h"
#import "VSObject.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //1
    //[self testMethod];
    void (^testBlock)(void);
    testBlock = ^{
        NSLog(@"Test block");
    };
    testBlock();
    
    
    //2
    //[self testMethodWithParams:@"testMethodWithParams" andIntValue:198];
    void (^testBlockWithParams)(NSString*, NSInteger);
    testBlockWithParams = ^(NSString* someString, NSInteger intValue) {
        NSLog(@"testBlockWithParams: %@, andIntValue: %ld", someString, intValue);
    };
    testBlockWithParams(@"BlockWithParams", 197);
    
    
    //3
    //NSString* result = [self testMethodWithReturnValueAndParams:@"testMethodWithReturnValueAndParams" andIntValue:192];
    //NSLog(@"%@", result);
    NSString* (^testBlockWithReturnValueAndParams)(NSString*, NSInteger) = ^(NSString* someString, NSInteger intValue) {
        return [NSString stringWithFormat:@"testBlockWithReturnValueAndParams: %@, andIntValue: %ld", someString, (long)intValue];
    };
    NSString* stringResult = testBlockWithReturnValueAndParams(@"TestBlockWithReturnValueAndParams", 196);
    NSLog(@"Result of BlockWithReturnValueAndParams: %@", stringResult);
    //-----------------------------------------------
    
    
    //изменения переменных в БЛОКЕ
    __block NSString* testString = @"How is it possible";
    __block NSInteger i = 0;
    void(^testBlock2)(void);
    testBlock2 = ^{
        NSLog(@"Test Block 2");
        i = i + 1;
        testString = [NSString stringWithFormat:@"How is it possible %ld", (long)i];
        NSLog(@"%@", testString);
    };
    testBlock2();
    testBlock2();
    testBlock2();
    testBlock2();
    //-----------------------------------------------
    
    
    [self testBlocksMethod:^{
        NSLog(@"BLOCK!!!");
    }];
    
    VSObject* obj = [[VSObject alloc] init];
    obj.name = @"Test block";
    
    return YES;
}

-(void)testMethod{
    NSLog(@"test method");
}

-(void)testMethodWithParams:(NSString*)someString andIntValue:(NSInteger)intValue{
    NSLog(@"testMethodWithParams: %@, andIntValue: %ld", someString, intValue);
}

-(NSString*)testMethodWithReturnValueAndParams:(NSString*)someString andIntValue:(NSInteger)intValue{
    return [NSString stringWithFormat:@"testMethodWithReturnValueAndParams: %@ andIntValue: %ld", someString, intValue];
}

-(void)testBlocksMethod:(void (^)(void))testBlock{
    NSLog(@"testBlocksMethod");
    testBlock();
    testBlock();
    testBlock();
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
