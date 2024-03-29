//
//  DBSAppDelegate.m
//  iDevice Info
//
//  Created by Patrick Mcconnell on 1/9/13.
//  Copyright (c) 2013 Dogboy Studios. All rights reserved.
//

#import "DBSAppDelegate.h"


@interface DBSAppDelegate()

@end

static DBSAppDelegate *sharedInstance;

@implementation DBSAppDelegate

+(DBSAppDelegate *)sharedAppDelegate
{
  return sharedInstance;
}

- (id)init {
  if (sharedInstance) {
    NSLog(@"Error you are creating a second App Controller");
  }
  self = [super init];
  sharedInstance = self;
  
  return self;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  _deviceController = [[DeviceController alloc]init];

  if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
    UISplitViewController *splitVC = (UISplitViewController *)self.window.rootViewController;
    UINavigationController *navCon = splitVC.viewControllers[1];
    splitVC.delegate = navCon.viewControllers[0];
  }

  
//  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//  // Override point for customization after application launch.
//  self.window.backgroundColor = [UIColor whiteColor];
//  [self.window makeKeyAndVisible];
  return YES;
}

- (NSUInteger)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window{
    
    NSUInteger orientations = UIInterfaceOrientationMaskPortrait;
    
    if(self.window.rootViewController){
        UIViewController *presentedViewController ;
        if ([self.window.rootViewController isKindOfClass:([UINavigationController class])])
        {
            presentedViewController = [[(UINavigationController *)self.window.rootViewController viewControllers] lastObject];
        }
        else if ([self.window.rootViewController isKindOfClass:[UITabBarController class]]){
            UITabBarController *controller = (UITabBarController*)self.window.rootViewController;
            
            id selectedController =  [controller presentedViewController];
            
            if (!selectedController) {
                selectedController = [controller selectedViewController];
            }
            
            if ([selectedController isKindOfClass:([UINavigationController class])])
            {
                presentedViewController = [[(UINavigationController *)selectedController viewControllers] lastObject];
            }
            else{
                presentedViewController = selectedController;
            }
        }
        else
        {
            presentedViewController = self.window.rootViewController;
        }
        
        if ([presentedViewController respondsToSelector:@selector(supportedInterfaceOrientations)]) {
            orientations = [presentedViewController supportedInterfaceOrientations];
        }
    }
    
    return orientations;
}


- (void)applicationWillResignActive:(UIApplication *)application
{
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
