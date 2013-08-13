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
    // ---------------------------------------
    
    // 1) Main Background
    self.view.backgroundColor = [UIColor blueColor];
    
    // 2) profileImage
        // Create a view for displaying an image
        UIImageView *profileImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Profile"]];
        // Determines how a view lays out its content
        [profileImageView setContentMode:UIViewContentModeScaleAspectFit];
        // The frame rectangle describres the location ans size in its supeView
        profileImageView.frame = self.view.frame;
    [self.view addSubview:profileImageView];
    
    // 3) TODO
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
