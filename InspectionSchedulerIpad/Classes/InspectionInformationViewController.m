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
    inspectionTimeLabel.text = selectedProperty.inspectionAsString;
}

- (IBAction)doInspection {
	inspectionFormViewController = [[InspectionFormViewController alloc] initWithProperty:selectedProperty];
	inspectionFormViewController.modalPresentationStyle = UIModalPresentationFormSheet;
	[self presentModalViewController:self.inspectionFormViewController animated:YES];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)viewDidUnload {
    [super viewDidUnload];
}

@end
