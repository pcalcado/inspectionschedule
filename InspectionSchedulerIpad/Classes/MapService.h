#import <CoreLocation/CoreLocation.h>

@class WebService;

@interface MapService : NSObject {
	@private
	WebService *webService;
}

- (id)initWithWebService:(WebService *)webService;
- (CLLocationCoordinate2D)coordinatesForLocation:(NSString *)location withError:(NSError **)error;

@end
