#import <UIKit/UIKit.h>
#import "Property.h"

@class InspectionFormViewController;

@interface InspectionInformationViewController : UIViewController {
	InspectionFormViewController *inspectionFormViewController;
	Property *selectedProperty;
	UILabel *addressLabel;
	UILabel *numberOfBedroomsLabel;
	UILabel *numberOfCarSpacesLabel;
	UILabel *priceLabel;
	UILabel *inspectionTimeLabel;
}

@property (nonatomic, retain) IBOutlet InspectionFormViewController *inspectionFormViewController;
@property (nonatomic, readonly) IBOutlet UILabel *addressLabel;
@property (nonatomic, readonly) IBOutlet UILabel *numberOfBedroomsLabel;
@property (nonatomic, readonly) IBOutlet UILabel *numberOfCarSpacesLabel;
@property (nonatomic, readonly) IBOutlet UILabel *priceLabel;
@property (nonatomic, readonly) IBOutlet UILabel *inspectionTimeLabel;
@property (nonatomic, retain) Property *selectedProperty;

-(id) initWithProperty:(Property *) propertySelected;

- (IBAction)doInspection;

@end
