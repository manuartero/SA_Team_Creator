#import <UIKit/UIKit.h>

@interface SimpleViewController : UIViewController

/** Method called when greenButton or blueButton is touched
 *  Changes the background color of the screen
 *
 * @param sender (id) sender of the action
 * @return action (IBAction)
 */
- (IBAction) changeBackgroundColor:(id) sender;

@property (strong, nonatomic) IBOutlet UILabel  *welcomeLabel;
@property (strong, nonatomic) IBOutlet UIButton *greenButton;
@property (strong, nonatomic) IBOutlet UIButton *blueButton;

@end
