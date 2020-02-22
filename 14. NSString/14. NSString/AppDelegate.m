//
//  AppDelegate.m
//  14. NSString
//
//  Created by MacBook Pro on 2/22/20.
//  Copyright © 2020 MacBookPro. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    /*
    NSString* string1 = @"String 1";
    NSString* string2 = @"String 2";
    
    NSArray* arr = [NSArray arrayWithObjects:string1, string2, nil];
    
    for (NSString* str in arr) {
        if ([str isEqualToString:@"String 1"]){
            NSLog(@"equal, and index: %ld", [arr indexOfObject:str]);
        }
    }
    */
    
    /*
    NSString* string = @"Hello world";
    
    NSLog(@"%@", string);

    NSRange range = [string rangeOfString:@"world" options:NSCaseInsensitiveSearch | NSBackwardsSearch];
    
    if (range.location != NSNotFound){
        NSLog(@"range: %@", NSStringFromRange(range));
    } else {
        NSLog(@"not found");
    }
    */
    
    NSString* text = @"The NSString class declares the programmatic interface for an object that manages immutable strings. (An immutable string is a text string that is defined when it is created and subsequently cannot be changed. An immutable string is implemented as an array of Unicode characters (in other words, a text string). To create and manage a string that can be changed after it has been created, use NSMutableString.)The NSString class has two primitive methods—length and characterAtIndex:—that provide the basis for all other methods in its interface. The length method returns the total number of Unicode characters in the string. characterAtIndex: gives access to each character in the string by index, with index values starting at 0. NSString declares methods for finding and comparing strings. It also declares methods for reading numeric values from strings, for combining strings in various ways, and for converting a string to different forms (such as encoding and case changes). The Application Kit also uses NSParagraphStyle and its subclass NSMutableParagraphStyle to encapsulate the paragraph or ruler attributes used by the NSAttributedString classes. Additionally, methods to support string drawing are described in NSString Additions, found in the Application Kit. NSString is “toll-free bridged” with its Core Foundation counterpart, CFString. What this fact means is that the Core Foundation type is interchangeable in function or method calls with the bridged Foundation object. This means that in an API where you see an NSString * parameter, you can pass in a CFStringRef, and in an API where you see a CFStringRef parameter, you can pass in an NSString instance. This fact also applies to your concrete subclasses of NSString. See “Integrating Carbon and Cocoa in Your Application” for more information on toll-free bridging.";
    
    //text = [text substringToIndex:10];
    //text = [text substringFromIndex:10];
    //text = [text substringWithRange:NSMakeRange(10, 10)];
    
    /*
    NSRange range = [text rangeOfString:@"To create"];
    NSLog(@"range.length: %ld", (long)range.length);
    if (range.location != NSNotFound){
        text = [text substringToIndex:range.location];
    }
    
    NSLog(@"Text: %@", text);
    NSLog(@"The 'text' string length: %ld", (long)text.length);
    */
    
    while (YES) {
        NSRange range = [text rangeOfString:@"NSString" options:<#(NSStringCompareOptions)#> range:<#(NSRange)#>];
    }
    
    NSLog(@"Text: %@", text);
    
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
