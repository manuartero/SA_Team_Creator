#import <UIKit/UIKit.h>

@interface SimpleViewController : UIViewController

/** Method called when greenButton or blueButton is touched
 *  Changes the background color of the screen
 *
 * @param sender (id) sender of the action
 */
- (void) changeBackgroundColor:(id) sender;

// welcomeLabel is not a property
@property (weak, nonatomic) UIButton *greenButton;
@property (weak, nonatomic) UIButton *blueButton;

@end
