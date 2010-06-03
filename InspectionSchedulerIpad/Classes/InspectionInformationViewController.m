#import "InspectionInformationViewController.h"
#import "InspectionFormViewController.h"

@implementation InspectionInformationViewController

@synthesize selectedProperty;
@synthesize inspectionFormViewController;

- (id)withProperty:(Property *) selectedProperty {
  self = [super init];
  self.selectedProperty = selectedProperty;
  return self;
}

- (IBAction)doInspection {
	self.inspectionFormViewController = [[InspectionFormViewController alloc] init];
	self.inspectionFormViewController.modalPresentationStyle = UIModalPresentationFormSheet;
	[self presentModalViewController:self.inspectionFormViewController animated:YES];
}

- (NSString *) address {
  return selectedProperty.address;
}
- (NSString *) numberOfBedrooms {
  return selectedProperty.bedroom;
}
- (NSString *) numberOfCarSpaces {
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


- (void)dealloc {
    [super dealloc];
}


@end
