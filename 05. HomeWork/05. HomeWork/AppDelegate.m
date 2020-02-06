//
//  AppDelegate.m
//  05. HomeWork
//
//  Created by MacBook Pro on 2/6/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "AppDelegate.h"
#import "VSMan.h"
#import "VSCyclist.h"
#import "VSRunner.h"
#import "VSSwimmer.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    VSMan* aMan = [[VSMan alloc] init];
    aMan.name = @"Vladimir";
    aMan.height = 176;
    aMan.weight = 85;
    aMan.isMale = YES;
    
    VSMan* aCyclist = [[VSMan alloc] init];
    aCyclist.name = @"Sagan";
    aCyclist.height = 184;
    aCyclist.weight = 80;
    aCyclist.isMale = YES;
    
    VSMan* aRunner = [[VSMan alloc] init];
    [aRunner setName:@"Bolt"];
    [aRunner setHeight:192];
    [aRunner setWeight:82];
    [aRunner setIsMale:YES];
    
    VSMan* aSwimmer = [[VSMan alloc] init];
    aSwimmer.name = @"Vitalii";
    aSwimmer.height = 197;
    aSwimmer.weight = 84;
    aSwimmer.isMale = YES;
    
    NSArray* arrayOfMan = [[NSArray alloc] initWithObjects:aMan, aCyclist, aRunner, aSwimmer, nil];
    
    for (VSMan* someMan in arrayOfMan) {
        NSLog(@"\n\nname: %@, hieght: %ld, weight: %ld, isMale: %d",
              someMan.name,
              (long)someMan.height,
              (long)someMan.weight,
              someMan.isMale);
        
        [someMan moveMan];
    }
    
    return YES;
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
