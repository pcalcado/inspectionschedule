#import "MapViewController.h"
#import "PropertyRepository.h"
#import "InspectionInformationViewController.h"
#import "MapService.h"
#import "HouseAnnotationView.h"

@implementation MapViewController

@synthesize mapView;
@synthesize propertiesArray;

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
	NSString * suburb = @"Many, NSW";

	CLLocationCoordinate2D coordinate = [mapService getCoordinatesForLocation:suburb];
	NSLog(@"Lat: %f Lng: %f", coordinate.latitude, coordinate.longitude);
	mapView.region = MKCoordinateRegionMakeWithDistance(coordinate, 2000, 2000); 
	
	for (Property *prop in propertiesArray){
		[mapView addAnnotation: prop];
	}
}

- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>) aProperty{
	HouseAnnotationView *annView = [[HouseAnnotationView alloc] initWithProperty:aProperty];
	[annView addGestureRecognizer: [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showInspectionDetails:)]];
	
	return annView;
}

- (void) showInspectionDetails: (UIGestureRecognizer *)gestureRecognizer {
  HouseAnnotationView * tappedView = (HouseAnnotationView *)gestureRecognizer.view;

  InspectionInformationViewController* inspectionInformationController = [[InspectionInformationViewController alloc] withProperty:tappedView.aProperty];
  UIPopoverController* aPopover = [[UIPopoverController alloc]  initWithContentViewController:inspectionInformationController];
  aPopover.delegate = self;
	
	// Store the popover in a custom property for later use.
	popoverController = aPopover;

	[popoverController setPopoverContentSize:CGSizeMake(200,200) animated:YES];
	
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

@end
