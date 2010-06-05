#import "InspectionInformationViewController.h"
#import "InspectionFormViewController.h"

@implementation InspectionInformationViewController

@synthesize selectedProperty;
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

- (IBAction)doInspection {
	inspectionFormViewController = [[InspectionFormViewController alloc] init];
	inspectionFormViewController.modalPresentationStyle = UIModalPresentationFormSheet;
	[self presentModalViewController:self.inspectionFormViewController animated:YES];
}

- (NSString *) address {
  return selectedProperty.address;
}
- (NSInteger *) numberOfBedrooms {
  return selectedProperty.bedroom;
}
- (NSInteger *) numberOfCarSpaces {
  return selectedProperty.carspace;
}
- (NSString *) price {
	return selectedProperty.price;
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
