#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotation.h>
#import <MapKit/MKReverseGeocoder.h>
#import "Property.h"
#import "HouseAnnotationView.h"

@interface MapViewController : UIViewController<MKMapViewDelegate, UIPopoverControllerDelegate> {
	MKMapView *mapView;
	NSMutableArray *propertiesArray;
	
	UIPopoverController *popoverController;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@property (nonatomic, retain) NSMutableArray *propertiesArray;

@end
