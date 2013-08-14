#import "ProfileViewController.h"

@implementation ProfileViewController

/** predefined method: initialization method of UIViewController */
- (id) initWithNibName:(NSString *) nibNameOrNil
                bundle:(NSBundle *) nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Profile";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_profile"];
    }
    return self;
}

/** predefined method: defines the "main layout" */
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Additional setup after loading the view
    self.view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
