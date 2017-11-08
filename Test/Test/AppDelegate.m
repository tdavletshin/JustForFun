//
//  AppDelegate.m
//  Test
//
//  Created by user on 08.11.2017.
//  Copyright © 2017 user. All rights reserved.
//

#import "AppDelegate.h"
#import "Car.h"

//int gGlobalVariable = 0;
//extern int gGlobalVariable;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    Car* myCar = [[Car allocWithCounter] init];
    [myCar setAmountOfWheels:4 andAmountOfDoors:5 andModel:@"avensis"];
    [myCar changeGlobalVariable:911];
    int c = [myCar getValueOfGlobalVariable];
    NSLog(@"global = %d", c);
    printf("there is %d instances of Car class\n", [Car countOfInstances]);
    Car *car1, *car2, *car3;
    car1 = [[Car allocWithCounter] init];
    car2 = [[Car allocWithCounter] init];
    car3 = [[Car allocWithCounter] initWithAmountOfWheels:6];
    printf("there is %d instances of Car class\n", [Car countOfInstances]);
    NSLog(@"amount of wheels = %d\n", [car3 amountOfWheels]);
    
    NSArray *myArray = @[car3, car2, car1];
    
    for (Car* car in myArray)
    {
        [car setAmountOfWheels:333];
    }
    
    for (int i = 0; i < [myArray count]; i++)
    {
        NSLog(@"wheels in cycle = %d ", [myArray[i] amountOfWheels] );
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
