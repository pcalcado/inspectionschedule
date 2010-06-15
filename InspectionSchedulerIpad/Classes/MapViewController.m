#import "MapViewController.h"
#import "PropertyRepository.h"
#import "InspectionInformationViewController.h"
#import "MapService.h"
#import "HouseAnnotationView.h"
#import "DetailViewController.h"
#import "Error.h"

@implementation MapViewController

@synthesize mapView;
@synthesize propertiesArray;
@synthesize tableController;

NSComparisonResult fixedOrderSort(id property1, id property2, void *context) {
	return [[property1 inspectionStart] compare: [property2 inspectionStart]];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	if(self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
		mapService = [[MapService alloc] init];
	}
	return self;
}

- (void)dealloc {
	[mapService release];
	[super dealloc];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	//TODO: this should get the suburb property from the trip object and look it up
	NSString *suburb = @"Manly,NSW";

	CLLocationCoordinate2D coordinate = [mapService coordinatesForLocation:suburb];
	NSLog(@"Lat: %f Lng: %f", coordinate.latitude, coordinate.longitude);
	mapView.region = MKCoordinateRegionMakeWithDistance(coordinate, 2000, 2000); 
	
	for (Property *prop in [self createInspectionTrip:propertiesArray]){
		[mapView addAnnotation: prop];
	}
}

- (NSArray *) createInspectionTrip:(NSArray *)properties {
  NSLog(@"Sorting props");
	NSArray *sortedList = [properties sortedArrayUsingFunction: fixedOrderSort context:NULL];

  int count = 1;
  for (Property *prop in sortedList){
    prop.inspectionOrder  = count++;
  }
  NSLog(@"Sorted props");
  return sortedList;
}

- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>) aProperty{
  if([aProperty isMemberOfClass:[Property class]]) {
    HouseAnnotationView *annView = [[HouseAnnotationView alloc] initWithProperty:aProperty];
    [annView addGestureRecognizer: [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showInspectionDetails:)]];	
    return annView;
  } else {
    return nil;
  }
}

- (void) showInspectionDetails: (UIGestureRecognizer *)gestureRecognizer {
	HouseAnnotationView * tappedView = (HouseAnnotationView *)gestureRecognizer.view;

	InspectionInformationViewController* inspectionInformationController = [[InspectionInformationViewController alloc] initWithProperty:tappedView.aProperty];
	UIPopoverController* aPopover = [[UIPopoverController alloc]  initWithContentViewController:inspectionInformationController];
	aPopover.delegate = self;
	
	// Store the popover in a custom property for later use.
	popoverController = aPopover;

	[popoverController setPopoverContentSize:CGSizeMake(230,230) animated:YES];
	
	[popoverController presentPopoverFromRect:[gestureRecognizer.view convertRect:gestureRecognizer.view.bounds toView:mapView] inView:mapView
					 permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
	[inspectionInformationController  release];
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

- (IBAction)back {
	[self presentModalViewController:tableController animated:YES];
}

@end
