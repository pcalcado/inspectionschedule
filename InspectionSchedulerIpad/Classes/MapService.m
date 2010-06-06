#import "MapService.h"
#import "NSString+Extensions.h"
#import "NSString+SBJSON.h"
#import "WebService.h"
#import "Error.h"

@implementation MapService

- (id)initWithWebService:(WebService *)aWebService {
	if (self = [super init]) {
		webService = [aWebService retain];
	}
	return self;
}

- (void)dealloc {
	[webService release];
	[super dealloc];
}

- (CLLocationCoordinate2D)coordinatesForLocation:(NSString *)location withError:(NSError **)error {
	CLLocationCoordinate2D coordinate;
	NSString *encodedLocation = [location urlEncode];
	NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://maps.google.com/maps/api/geocode/json?sensor=false&region=au&address=%@", encodedLocation]];

	NSDictionary *result = [[webService responseBodyForUrl:url] JSONValue];
	NSString *status = [result valueForKey:@"status"];
	if (![status isEqualToString:@"OK"]) {
		*error = [Error errorWithCode:ISIErrorCannotGetCoordinate description:[NSString stringWithFormat:@"Error retrieving coordinates for location [%@]: Google maps API returned status [%@]", location, status]];
		return coordinate;
	}
	
	NSDictionary *resultLocation = [[result valueForKeyPath:@"results.geometry.location"] objectAtIndex:0];
	coordinate.latitude = [[resultLocation valueForKey:@"lat"] doubleValue];
	coordinate.longitude = [[resultLocation valueForKey:@"lng"] doubleValue];
	return coordinate;
}

@end

