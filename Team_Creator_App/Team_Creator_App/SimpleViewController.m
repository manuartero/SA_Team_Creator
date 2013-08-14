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
    self.view.backgroundColor = [UIColor blueColor];
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

- (IBAction) changeBackgroundColor: (id)sender
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
