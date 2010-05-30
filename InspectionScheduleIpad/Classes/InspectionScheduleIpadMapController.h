#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotation.h>
#import <MapKit/MKReverseGeocoder.h>
#import "InspectionScheduleIpadProperty.h"
#import "InspectionScheduleIpadPinPoint.h"

@interface InspectionScheduleIpadMapController : UIViewController<MKMapViewDelegate,MKReverseGeocoderDelegate> {
	MKMapView *mapView;
	NSMutableArray *propertiesArray;
	MKReverseGeocoder *geoCoder;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@property (nonatomic, retain) NSMutableArray *propertiesArray;

@end
