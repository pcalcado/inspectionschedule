#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "InspectionScheduleIpadProperty.h"

@interface InspectionScheduleIpadPinPoint : NSObject <MKAnnotation> {
  InspectionScheduleIpadProperty *_aProperty;
}

+ (id)withProperty:(InspectionScheduleIpadProperty *) aProperty;

- (id)initWithProperty:(InspectionScheduleIpadProperty *) aProperty;

@property (nonatomic, assign) InspectionScheduleIpadProperty *aProperty;

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

- (NSString *)title;
- (NSString *)subtitle;

@end
