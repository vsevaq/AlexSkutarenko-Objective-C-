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
#import "VSPerson.h"
//---Student level
#import "VSAnimal.h"
#import "VSCat.h"
#import "VSBird.h"
#import "VSFish.h"

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
    
    VSCyclist* aCyclist = [[VSCyclist alloc] init];
    aCyclist.name = @"Sagan";
    aCyclist.height = 184;
    aCyclist.weight = 80;
    aCyclist.isMale = YES;
    
    VSRunner* aRunner = [[VSRunner alloc] init];
    [aRunner setName:@"Bolt"];
    [aRunner setHeight:192];
    [aRunner setWeight:82];
    [aRunner setIsMale:YES];
    
    VSSwimmer* aSwimmer = [[VSSwimmer alloc] init];
    aSwimmer.name = @"Vitalii";
    aSwimmer.height = 197;
    aSwimmer.weight = 84;
    aSwimmer.isMale = YES;
    
    VSPerson* aPersone = [[VSPerson alloc] init];
    aPersone.name = @"Strong person";
    aPersone.height = 197;
    aPersone.weight = 90;
    aPersone.isMale = YES;
    aPersone.lastName = @"Trump";
    aPersone.country = @"USA";
    aPersone.birthday = @"14.06.1946";
    
    NSArray* arrayOfMan = [[NSArray alloc] initWithObjects:aMan, aCyclist, aRunner, aSwimmer, aPersone, nil];
    
    for (VSMan* someMan in arrayOfMan) {
        if (someMan == aMan) {
            NSLog(@"\n\nname: %@, height: %ld, weight: %ld, isMale: %d", someMan.name, (long)someMan.height, (long)someMan.weight, someMan.isMale);
            NSLog(@" lastName: %@, country: %@, birthday: %@", aPersone.lastName, aPersone.country, aPersone.birthday);
        }
        if (someMan == aPersone){
            [aMan moveMan];
            [aPersone moveMan];
        }
        
        NSLog(@"\n\nname: %@, hieght: %ld, weight: %ld, isMale: %d", someMan.name, (long)someMan.height, (long)someMan.weight, someMan.isMale);
        
        [someMan moveMan];
    }
    
    NSLog(@"\n\n\n-------------------Student level----------------\n");
    for (NSInteger i = (arrayOfMan.count) - 1; i >= 0; i--) {
        VSMan* pers = [arrayOfMan objectAtIndex:i];
        
        if ([pers isKindOfClass:[VSPerson class]]){
            VSPerson* anyPersone = (VSPerson*)pers;
            NSLog(@"\nbirthday: %@, country: %@, lastName: %@", anyPersone.birthday, anyPersone.country, anyPersone.lastName);
        } else {
            NSLog(@"\nisMale: %d, weight: %ld, height: %ld, name: %@", pers.isMale, (long)pers.weight, (long)pers.height, pers.name);
        }
    }
    
    NSLog(@"\n\n\n--------------------Master Level----------------\n");
    VSAnimal* someAnimal = [[VSAnimal alloc] init];
    [someAnimal setType:@"animale"];
    [someAnimal setColor:@"red"];
    [someAnimal setWeight:100];
    
    VSCat* aLion = [[VSCat alloc] init];
    aLion.type = @"catFamily";
    aLion.color = @"yellow";
    aLion.weight = 150;
    
    VSBird* aBird = [[VSBird alloc] init];
    [aBird setType:@"Air"];
    [aBird setColor:@"Gray"];
    [aBird setWeight:10];
    
    VSFish* aFish = [[VSFish alloc] init];
    aFish.type = @"Water";
    aFish.color = @"Blue";
    aFish.weight = 120;
    
    NSArray* all = [[NSArray alloc] initWithObjects:aMan, aCyclist, aRunner, aSwimmer, aPersone, someAnimal, aLion, aBird, aFish, nil];
    
    for (NSObject* obj in all) {
        if ([obj isKindOfClass:[VSMan class]]){
            VSMan* hum = (VSMan*)obj;
            NSLog(@"\nThis is a Human class");
            NSLog(@"\nname: %@, height: %ld, weight: %ld ,isMail: %d", hum.name, (long)hum.height, (long)hum.weight, hum.isMale);
            [hum moveMan];
        }
        
        if ([obj isKindOfClass:[VSAnimal class]]){
            VSAnimal* animal = (VSAnimal*)obj;
            NSLog(@"\nThis is an Animal class");
            NSLog(@"\ntype: %@, color: %@, weight: %ld", animal.type, animal.color, (long)animal.weight);
            [animal moving];
        }
    }
    
    NSLog(@"\n\n\n--------------------Master Level----------------------------\n");
    
    NSArray* peopleArray = [[NSArray alloc] initWithObjects:aMan, aCyclist, aRunner, aSwimmer, aPersone, nil];
    NSArray* animalArray = [[NSArray alloc] initWithObjects:someAnimal, aLion, aBird, aFish, nil];
    
    for (NSUInteger i = 0; i <= (peopleArray.count - 1); i++) {
        if (peopleArray[i] != nil) {
            VSMan* human = (VSMan*)peopleArray[i];
            NSLog(@"\nname: %@, height: %ld, weight: %ld", human.name, (long)human.height, (long)human.weight);
        }
        
         
        if (animalArray[i] != nil){
            VSAnimal* animal = (VSAnimal*)animalArray[i];
            NSLog(@"\ntype: %@, color: %@, weight: %ld", animal.type, animal.color, animal.weight);
        }
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
