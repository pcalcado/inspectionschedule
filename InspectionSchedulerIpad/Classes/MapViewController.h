#import <MapKit/MapKit.h>
@class DetailViewController;
@class MapService;

@interface MapViewController : UIViewController<MKMapViewDelegate, UIPopoverControllerDelegate> {
	MKMapView *mapView;
	DetailViewController *detailViewController;
	NSMutableArray *propertiesArray;
	UIPopoverController *popoverController;
	MapService *mapService;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@property (nonatomic, retain) NSMutableArray *propertiesArray;
- (IBAction)back;

@end
