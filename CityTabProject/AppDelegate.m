//
//  AppDelegate.m
//  CityTabProject
//
//  Created by etudiant on 24/01/2016.
//  Copyright © 2016 iia.antoinetrouve. All rights reserved.
//

#import "AppDelegate.h"
#import "City.h"
#import "CityTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
{
    NSMutableArray* cities;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    cities = [NSMutableArray arrayWithCapacity:20];
    
    //create data to test application
    City *paris = [City new];
    paris.name = @"Paris";
    paris.region = @"Isle of France";
    paris.country = @"France";
    paris.nbHab = 1200000;
    [cities addObject:paris];

    City *ny = [City new];
    ny.name = @"New-York";
    ny.region = @"New-York";
    ny.country = @"United States";
    ny.nbHab = 18000000;
    [cities addObject:ny];
    
    
    City *london = [City new];
    london.name = @"London";
    london.region = @"Great London";
    london.country = @"England";
    london.nbHab = 45000000;
    [cities addObject:london];
    
    City *laval = [City new];
    laval.name = @"Laval";
    laval.region = @"Loire's country";
    laval.country = @"France";
    laval.nbHab = 60000;
    [cities addObject:laval];
    
    //integrates data into cityViewController which is linked with TableView.
    CityTableViewController* ctvc = [CityTableViewController new];
    ctvc.cities = cities;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
