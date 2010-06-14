#import "InspectionInformationViewController.h"
#import "InspectionFormViewController.h"

@implementation InspectionInformationViewController

@synthesize selectedProperty;

@synthesize addressLabel;
@synthesize numberOfBedroomsLabel;
@synthesize numberOfCarSpacesLabel;
@synthesize priceLabel;
@synthesize inspectionTimeLabel;

@synthesize inspectionFormViewController;

- (void)dealloc {
	[selectedProperty release];
	[inspectionFormViewController release];
	[super dealloc];
}

- (id)initWithProperty:(Property *) property {
	if(self = [super init]) {
		self.selectedProperty = property;
	}
	return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    addressLabel.text = selectedProperty.address;
    numberOfBedroomsLabel.text = [NSString stringWithFormat:@"%d", selectedProperty.bedroom];
    numberOfCarSpacesLabel.text = [NSString stringWithFormat:@"%d", selectedProperty.carspace];
    priceLabel.text = selectedProperty.priceAsString;
    inspectionTimeLabel.text = [self inspectionTimeFor:selectedProperty];
}

- (IBAction)doInspection {
	inspectionFormViewController = [[InspectionFormViewController alloc] init];
	inspectionFormViewController.modalPresentationStyle = UIModalPresentationFormSheet;
	[self presentModalViewController:self.inspectionFormViewController animated:YES];
}

- (NSString *) inspectionTimeFor:(Property *)property {
  NSString *start = [property.inspectionStart descriptionWithCalendarFormat:@"%H:%M" timeZone:nil locale:nil];
  NSString *end = [property.inspectionEnd descriptionWithCalendarFormat:@"%H:%M"  timeZone:nil locale:nil];
  return [NSString stringWithFormat:@"%@ - %@", start, end];
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

@end
