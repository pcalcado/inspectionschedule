#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@class SBJSON;

@interface MapService : NSObject {
	@private
	SBJSON *json;
}

- (CLLocationCoordinate2D) getCoordinatesForLocation: (NSString *) location;

@end
