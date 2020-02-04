//
//  AppDelegate.m
//  06.DataTypes
//
//  Created by MacBook Pro on 2/4/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "AppDelegate.h"
#import "VHStudent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    BOOL boolVar = YES;
    
    NSInteger intVar = 10;
    
    NSUInteger uIntVar = 100;
    
    CGFloat floatVar = 1.5f;
    
    double doubleVar = 2.5f;
    
    NSNumber* boolObject = [NSNumber numberWithBool:boolVar];
    NSNumber* intObject  = [NSNumber numberWithInteger:intVar];
    NSNumber* uIntObject = [NSNumber numberWithUnsignedInteger:uIntVar];
    NSNumber* floatObject = [NSNumber numberWithFloat:floatVar];
    NSNumber* doubleObject = [NSNumber numberWithDouble:doubleVar];
    
    NSArray* array = [NSArray arrayWithObjects:boolObject, intObject, uIntObject, floatObject, doubleObject, nil];
    
    /*
    NSLog(@"\nboolVar: %d\nintVar: %ld\nuIntVar: %lu\nfloatVar: %f\ndoubleVar: %f", boolVar, (long)intVar, (unsigned long)uIntVar, floatVar, doubleVar);
    NSLog(@"\n\nboolVar: %lu\nintVar: %ld\nuIntVar: %lu\nfloatVar: %lu\ndoubleVar: %lu", sizeof(boolVar), sizeof((long)intVar), sizeof((unsigned long)uIntVar), sizeof(floatVar), sizeof(doubleVar));
    
    VHStudent* studentA = [[VHStudent alloc] init];
    
    studentA.name = @"Best student";
    NSLog(@"StudentA name: %@", studentA.name);
    
    VHStudent* studentB = studentA;
    studentB.name = @"Bad Student";
    NSLog(@"StudentA name: %@", studentB.name);
    
    NSInteger a = 10;
    NSLog(@"a: %ld", (long)a);
    
    NSInteger b = a;
    b = 5;
    NSLog(@"a: %ld, b: %ld", (long)a, (long)b);
    
    NSInteger* c = &a;
    *c = 8;
    NSLog(@"a: %ld, b: %ld", (long)a, (long)b);
    
    NSInteger* test = 0;
    NSInteger result = [self test:a testPointer:&test];
    NSLog(@"result: %ld, test: %ld", (long)result, (long)test);
    */
    
    /*
    VHStudent* student = [[VHStudent alloc] init];
    [student setGender:VHGenderMale];
    */
    
    CGPoint point;
    point.x = 11;
    point.y = 12;
    point = CGPointMake(7, 7);
    
    CGSize  size;
    size.height = 123;
    size.width  = 234;
    
    CGRect  rect;
    rect.origin.x = 7;
    rect.origin.y = 7;
    rect = CGRectMake(3, 6, 12, 21);
    
    BOOL result = CGRectContainsPoint(rect, point);
    
    
    return YES;
}

- (int)test:(NSInteger)someVar testPointer:(NSInteger*)testPointer{
    *testPointer = 5;
    return someVar;
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
