#import "InspectionScheduleIpadMapController.h"


@implementation InspectionScheduleIpadMapController

@synthesize mapView;
@synthesize propertiesArray;

- (void)viewDidLoad {
	[super viewDidLoad];
	//shows manly
	CLLocationCoordinate2D coordinate;
	coordinate.latitude = -33.801393;
	coordinate.longitude = 151.290353;
	mapView.region = MKCoordinateRegionMakeWithDistance(coordinate, 2000, 2000); 

	//this should happen somewhere else
	propertiesArray = [[NSMutableArray alloc] init];
    InspectionScheduleIpadProperty *property = [[InspectionScheduleIpadProperty alloc] init];
    property.address = @"Manly St";
    [propertiesArray addObject: property];
    [property release];
	
	//now let's map from properties to annotations
	NSMutableArray *pinPointsArray = [[NSMutableArray alloc] init];
	for (InspectionScheduleIpadProperty *prop in propertiesArray){
		InspectionScheduleIpadPinPoint *pinPoint = [[InspectionScheduleIpadPinPoint alloc] initWithProperty:prop];
		[pinPointsArray addObject: pinPoint];
	}
	
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
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
