#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "InspectionScheduleIpadProperty.h"
#import "ISIInspection.h"

@interface InspectionScheduleIpadPinPoint : NSObject <MKAnnotation> {
  ISIInspection *inspection;
}

+ (id)withInspection:(ISIInspection *) inspection;

- (id)initWithInspection:(InspectionScheduleIpadProperty *) inspection;

@property (nonatomic, assign) ISIInspection *inspection;

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

- (NSString *)title;
- (NSString *)subtitle;

@end
