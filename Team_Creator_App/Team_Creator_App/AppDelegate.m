#import "AppDelegate.h"

@implementation AppDelegate

/** Predefined Method: "main" method which will be called when de app is launched */
- (BOOL)          application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /*
        Hand writting code not necesary if storyboard used
        --------------------------------------------------
     
        // 1) initialize the window
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame:viewRect];
    
        // 2) initialize the views controllers
    self.tabBarController = [[UITabBarController alloc] init];
    
    UIViewController *simpleViewController = [[SimpleViewController alloc] init];
    simpleViewController.title = @"Simple";
    simpleViewController.tabBarItem.image = [UIImage imageNamed:@"tab_icon_simple"];
    
    UIViewController *profileViewController = [[ProfileViewController alloc] init];
    profileViewController.title = @"Profile";
    profileViewController.tabBarItem.image = [UIImage imageNamed:@"tab_icon_profile"];
    
        // 3) Add viewControllers to the tabBar, and default to first
    [self.tabBarController setViewControllers:@[simpleViewController, profileViewController]];
     
        // 4) setting the main controller as the tabBarController
    self.window.rootViewController = self.tabBarController;
    
        // 5) Making the window listening touch and no-touch events
    [self.window makeKeyAndVisible];
        */
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state.
    // This can occur for certain types of temporary interruptions
    // (such as an incoming phone call or SMS message) or when the user quits
    // the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers,
    // and throttle down OpenGL ES frame rates.
    // Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers,
    // and store enough application state information to restore your application to its
    // current state in case it is terminated later.
    // If your application supports background execution,
    // this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state;
    // here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the app was inactive.
    // If the application was previously in the background,
    // optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate.
    // See also applicationDidEnterBackground:.
}

@end
