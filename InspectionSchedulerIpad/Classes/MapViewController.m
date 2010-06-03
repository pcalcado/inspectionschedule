#import "MapViewController.h"
#import "PropertyRepository.h"
#import "InspectionInformationViewController.h"
#import "Inspection.h"

@interface MapViewController ()
@property (nonatomic, retain) UIPopoverController *popoverController;
@end

@implementation MapViewController

@synthesize mapView;
@synthesize propertiesArray;

- (void)viewDidLoad {
	[super viewDidLoad];
	
	//shows manly 
	//TODO: this should show all properties
	CLLocationCoordinate2D coordinate;
	coordinate.latitude = -33.801393;
	coordinate.longitude = 151.290353;
	mapView.region = MKCoordinateRegionMakeWithDistance(coordinate, 2000, 2000); 
	
	//TEMPORARY while we still send props and not insps from list to here
	NSMutableArray *inspectionList = [[NSMutableArray alloc] init];
	for (Property *prop in propertiesArray){
		Inspection *i = [[Inspection alloc] init];
		i.propertyToInspect = prop;
		i.start = [NSDate dateWithTimeIntervalSinceNow:60*50*24*1];
		i.end = [NSDate dateWithTimeIntervalSinceNow:60*60*24*1];
		[inspectionList addObject:i];
	}
	
	//now let's map from inspections to annotations
	for (Inspection *i in inspectionList){
		[mapView addAnnotation: i.propertyToInspect];
	}
}

- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>) aProperty{
	HouseAnnotationView *annView = [[HouseAnnotationView alloc] initWithAnnotation:aProperty];
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


- (void)dealloc {
    [super dealloc];
}


@end
