#import <UIKit/UIKit.h>
#import "Property.h"


@interface InspectionFormViewController : UIViewController {
  Property *selectedProperty;
  UITextView *notes;
}

@property (nonatomic, retain) IBOutlet UITextView *notes;
@property (nonatomic, retain) Property *selectedProperty;

-(IBAction) dismiss;

@end
