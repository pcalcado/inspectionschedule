#import "InspectionScheduleIpadMapController.h"
#import "ISIPropertyRepository.h"


@implementation InspectionScheduleIpadMapController

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
  for (InspectionScheduleIpadProperty *prop in propertiesArray){
    ISIInspection *i = [[ISIInspection alloc] init];
    i.propertyToInspect = prop;
    i.start = [NSDate dateWithTimeIntervalSinceNow:60*50*24*1];
    i.end = [NSDate dateWithTimeIntervalSinceNow:60*60*24*1];
    [inspectionList addObject:i];
  }

  //now let's map from inspections to annotations
  for (ISIInspection *i in inspectionList){
    InspectionScheduleIpadPinPoint *pinPoint = [InspectionScheduleIpadPinPoint withInspection:i];
    [mapView addAnnotation: pinPoint];
    [pinPoint release];
  }
}

- (MKAnnotationView *) mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>) annotation{
    ISIHousePinPoint *annView=[[ISIHousePinPoint alloc] initWithAnnotation:annotation];
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
