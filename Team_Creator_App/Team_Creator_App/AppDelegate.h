#import <UIKit/UIKit.h>
#import "SimpleViewController.h"
#import "ProfileViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

// view controllers
@property (strong, nonatomic) UITabBarController *tabBarController;
@property (strong, nonatomic) SimpleViewController *simpleViewController;
@property (strong, nonatomic) ProfileViewController *profileViewController;
// main window
@property (strong, nonatomic) UIWindow *window;

@end

