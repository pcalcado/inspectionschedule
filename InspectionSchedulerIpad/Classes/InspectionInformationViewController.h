#import <UIKit/UIKit.h>
#import "Property.h"

@class InspectionFormViewController;

@interface InspectionInformationViewController : UIViewController {
	InspectionFormViewController *inspectionFormViewController;
	Property *selectedProperty;
}

@property (nonatomic, retain) IBOutlet InspectionFormViewController *inspectionFormViewController;
@property (nonatomic, retain) IBOutlet NSString *inpectionTimes;
@property (nonatomic, retain) IBOutlet NSString *address;
@property (nonatomic, retain) IBOutlet NSString *numberOfBedrooms;
@property (nonatomic, retain) IBOutlet NSString *numberOfCarSpaces;
@property (nonatomic, retain) IBOutlet NSString *price;
@property (nonatomic, retain) Property *selectedProperty;


-(id) initWithProperty:(Property *) propertySelected;

- (IBAction)doInspection;

@end
