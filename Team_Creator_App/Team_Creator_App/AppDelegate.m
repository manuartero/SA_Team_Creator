#import "AppDelegate.h"

@implementation AppDelegate

/** Predefined Method: "main" method which will be called when de app is launched */
- (BOOL)          application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // initialize the window
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame:viewRect];
    
    // initialize the views controllers
    self.tabBarController = [[UITabBarController alloc] init];
    self.simpleViewController = [[SimpleViewController alloc] init];
    /*
     self.simpleViewController.title = @"Simple";
     self.simpleViewController.tabBarItem.image = [UIImage imageNamed:@"tab_icon_simple"];
     */
    self.profileViewController = [[ProfileViewController alloc] init];
    /*
     self.profileViewController.title = @"Profile";
     self.profileViewController.tabBarItem.image = [UIImage imageNamed:@"tab_icon_profile"];
     */
    
    // Add viewControllers to the tabBar, and default to first
    [self.tabBarController setViewControllers:@[self.simpleViewController, self.profileViewController]];
     
     // setting the main controller as the tabBarController
     self.window.rootViewController = self.tabBarController;
     // Making the window listening touch and no-touch events
     [self.window makeKeyAndVisible];
     
     return YES;
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
