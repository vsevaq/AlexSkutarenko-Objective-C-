//
//  AppDelegate.m
//  11. Selectors
//
//  Created by MacBook Pro on 2/17/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "AppDelegate.h"
#import "VSObject.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    VSObject* obj = [[VSObject alloc] init];
    
    SEL selector1 = @selector(testMethod);
    SEL selector2 = @selector(testMethod:);
    SEL selector3 = @selector(testMethod:and:);
    
    [self performSelector:selector1];
    [obj performSelector:selector1];
    
    NSString* secret = [obj performSelector:@selector(superSecretText)];
    NSLog(@"secret: %@", secret);
    [self performSelector:selector2 withObject:@"Hi testMethod 2"];
    [self performSelector:selector3 withObject:@"What's up bor?" withObject:@"Let's go to train"];
    [self performSelector:selector1 withObject:nil afterDelay:5.f];
    
    //[self performSelector:@selector(testMethodWithIntParametr:) withObject:[NSNumber numberWithInt:11]];
    
    NSString* a = NSStringFromSelector(selector1);
    SEL sel = NSSelectorFromString(a);
    
    return YES;
}

-(void)testMethod{
    NSLog(@"testMethod");
}

-(void)testMethod:(NSString*)someString{
    NSLog(@"testMethod: %@", someString);
}

-(void)testMethod:(NSString*)someString1 and:(NSString*)someString2{
    NSLog(@"testMethod: %@ and: %@", someString1, someString2);
}

-(void)testMethodWithIntParametr:(NSInteger)intValue{
    NSLog(@"testMethodWithIntParametr: %ld", (long)intValue);
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
