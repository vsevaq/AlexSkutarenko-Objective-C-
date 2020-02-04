//
//  AppDelegate.m
//  03. PropertiesTest
//
//  Created by MacBook Pro on 10/25/19.
//  Copyright © 2019 MacBookPro. All rights reserved.
//

#import "AppDelegate.h"
#import "VHBoxer.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    VHBoxer* boxer = [[VHBoxer alloc] init];
    
    /*
    boxer.name = @"Alvarez";
    boxer.age = 29;
    boxer.height = 180;
    boxer.weight = 80;
    */
    /*
    NSLog(@"name: %@", boxer.name);
    NSLog(@"age: %ld", (long)boxer.age);
    NSLog(@"height: %f", boxer.height);
    NSLog(@"weight: %f", boxer.weight);
    */
    
    
    
    [boxer setName:@"Alvarez"];
    [boxer setAge:29];
    [boxer setHeight:180];
    [boxer setWeight:80];
     
    NSLog(@"name: %@", [boxer name]);
    NSLog(@"age: %ld", [boxer age]);
    NSLog(@"height: %f", [boxer height]);
    NSLog(@"weight: %f", [boxer weight]);
    
    NSLog(@"Boxer age is: %ld", (long)[boxer howOldAreYou]);
    [boxer setName:@"Alvarez"];
    [boxer setName:@"Alvarez"];
    [boxer setName:@"Alvarez"];
    [boxer setName:@"Alvarez"];
    
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
