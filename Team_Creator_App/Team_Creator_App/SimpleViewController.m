#import "SimpleViewController.h"

@implementation SimpleViewController

/** predefined method: initialization method of UIViewController */
- (id) initWithNibName:(NSString *) nibNameOrNil
                bundle:(NSBundle *) nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Simple";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_simple"];
    }
    return self;
}

/** predefined method: defines the "main layout" */
- (void)viewDidLoad
{
    // First of all: calling viewDidLoad of the super class
    [super viewDidLoad];
    
    // Additional setup after loading the view
    // ---------------------------------------
    
    // 1) Main Background
    self.view.backgroundColor = [UIColor yellowColor];
    
    // 2) welcomeLabel
        UILabel *welcomeLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 200, 44)];
        welcomeLabel.backgroundColor = [UIColor clearColor];
        welcomeLabel.text = @"Hello, welcome to this boring app";
    [self.view addSubview:welcomeLabel];
    
    // 3) greenButton (RoundedRect)
        self.greenButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.greenButton.frame = CGRectMake(120, 200, 100, 44);
        [self.greenButton setTitle:@"Make it green!" forState:UIControlStateNormal];
        // button action: [ViewController changeBackgroundColor:greenButton]
        [self.greenButton addTarget:self
                          action:@selector(changeBackgroundColor:)
                          forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.greenButton];
    
    // 4) blueButton (RoundedRect)
        self.blueButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.blueButton.frame = CGRectMake(120, 100, 80, 44);
        [self.blueButton setTitle:@"Make it blue!" forState:UIControlStateNormal];
        // button action: [ViewController changeBackgroundColor:greenButton]
        [self.blueButton addTarget:self
                         action:@selector(changeBackgroundColor:)
                         forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.blueButton];
}

/** predefined method: Called first time the view property accesed*/
- (void) loadView
{
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    self.view = view;
}

/** predefined method */
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/** predefined method (UIResponder) for touch events */
- (void) touchesBegan:(NSSet *)touches
            withEvent:(UIEvent *)event
{
    NSLog(@"Started touching the screen");
}

/** predefined method (UIResponder) for touch events */
- (void) touchesMoved:(NSSet *)touches
            withEvent:(UIEvent *)event
{
    NSLog(@"Touche moved");
}

/** predefined method (UIResponder) for touch events */
- (void) touchesEnded:(NSSet *)touches
            withEvent:(UIEvent *)event
{
    NSLog(@"Touche Ended");
}

// -----------------------------------------------------------------------------

- (void) changeBackgroundColor:(id) sender
{
    NSLog(@"Button pressed, sender: %@", sender);
    
    if ([sender isEqual:self.greenButton]) {
        // greenButton touched inside
        self.view.backgroundColor = [UIColor greenColor];
    } else {
        // blueButton touched inside
        self.view.backgroundColor = [UIColor blueColor];
    }
}

@end
