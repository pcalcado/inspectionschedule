#import <MapKit/MapKit.h>

@class MapService;

@interface MapViewController : UIViewController<MKMapViewDelegate, UIPopoverControllerDelegate> {
	MKMapView *mapView;
	NSMutableArray *propertiesArray;
	UIPopoverController *popoverController;
	MapService *mapService;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@property (nonatomic, retain) NSMutableArray *propertiesArray;

@end
