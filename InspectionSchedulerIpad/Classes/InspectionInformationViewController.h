#import <UIKit/UIKit.h>
#import "Property.h"

@class InspectionFormViewController;

@interface InspectionInformationViewController : UIViewController {
	InspectionFormViewController *inspectionFormViewController;
	Property *selectedProperty;
}

@property (nonatomic, retain) IBOutlet InspectionFormViewController *inspectionFormViewController;
@property (nonatomic, readonly) IBOutlet NSString *address;
@property (nonatomic, readonly) IBOutlet NSInteger *numberOfBedrooms;
@property (nonatomic, readonly) IBOutlet NSInteger *numberOfCarSpaces;
@property (nonatomic, readonly) IBOutlet NSString *price;
@property (nonatomic, retain) Property *selectedProperty;


-(id) initWithProperty:(Property *) propertySelected;

- (IBAction)doInspection;

@end
