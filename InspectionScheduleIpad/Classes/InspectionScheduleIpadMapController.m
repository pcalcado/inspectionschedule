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
  CLLocationCoordinate2D propCoordinate;
  propCoordinate.latitude = -33.801393;
  propCoordinate.longitude = 151.290353;
  property.coordinate=propCoordinate;
  [propertiesArray addObject: property];
  [property release];

  //now let's map from properties to annotations
  for (InspectionScheduleIpadProperty *prop in propertiesArray){
    InspectionScheduleIpadPinPoint *pinPoint = [[InspectionScheduleIpadPinPoint alloc] initWithProperty:prop];
    [mapView addAnnotation: pinPoint];
    [pinPoint release];
  }
}

- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>) annotation{
    MKPinAnnotationView *annView=[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"currentloc"];
    annView.pinColor = MKPinAnnotationColorGreen;
    annView.animatesDrop=TRUE;
    annView.canShowCallout = YES;
    annView.calloutOffset = CGPointMake(-5, 5);
    return annView;
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
