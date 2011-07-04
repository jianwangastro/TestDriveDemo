//
//  iphoneproject002AppDelegate.m
//  iphoneproject002
//
//  Created by Monkeys! on 6/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iphoneproject002AppDelegate.h"

#import "iphoneproject002ViewController.h"

@implementation iphoneproject002AppDelegate


@synthesize window=_window;

@synthesize viewController=_viewController;

// 
@synthesize facebook;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
     
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    // beging facebook
    facebook = [[Facebook alloc] initWithAppId:@"129892330417099"];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    //if ([defaults objectForKey:@"FBAccessTokenKey"] 
    //    && [defaults objectForKey:@"FBExpirationDateKey"]) {
    //    facebook.accessToken = [defaults objectForKey:@"FBAccessTokenKey"];
    //   facebook.expirationDate = [defaults objectForKey:@"FBExpirationDateKey"];
    //}
    
    if ([defaults objectForKey:@"96586fae5e6561831e09c91f3229d696"] 
    && [defaults objectForKey:@"FBExpirationDateKey"]) {
        facebook.accessToken = [defaults objectForKey:@"96586fae5e6561831e09c91f3229d696"];
        facebook.expirationDate = [defaults objectForKey:@"FBExpirationDateKey"];
    }    
    
    if (![facebook isSessionValid]) {
        NSArray* permissions =  [[NSArray arrayWithObjects:@"user_about_me",
                                  @"user_birthday",@"user_events",
                                  @"email", @"read_stream", @"user_events",nil] retain];
        [facebook authorize:permissions delegate:self];
    }

    // end facebook
    return YES;
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    
    return [facebook handleOpenURL:url]; 
}



- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}



- (void)fbDidLogin {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:[facebook accessToken] forKey:@"96586fae5e6561831e09c91f3229d696"];
    [defaults setObject:[facebook expirationDate] forKey:@"FBExpirationDateKey"];
    

    
    [defaults synchronize];
    
}


- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}




@end
