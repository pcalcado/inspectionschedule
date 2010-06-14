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

- (CLLocationCoordinate2D)coordinatesForLocation:(NSString *)location  {
	CLLocationCoordinate2D coordinate;
	//	NSString *googleApiUrl = [NSString stringWithFormat:@"http://maps.google.com/maps/api/geocode/json?sensor=false&region=au&address=%@", location];
	//	NSLog(googleApiUrl);
	//	NSURL *url = [NSURL URLWithString:googleApiUrl];

	//	NSDictionary *result = [[webService responseBodyForUrl:url] JSONValue];
	//	NSString *status = [result valueForKey:@"status"];
	//	if (![status isEqualToString:@"OK"]) {
	  //TODO: put erro handling back 
	//	  NSLog([NSString stringWithFormat:@"Error retrieving coordinates for location [%@]: Google maps API returned status [%@]", location, status]);
	//		return coordinate;
	//	}
	
	//	NSDictionary *resultLocation = [[result valueForKeyPath:@"results.geometry.location"] objectAtIndex:0];
	coordinate.latitude =  -33.7971440;
	coordinate.longitude = 151.2880400;
	return coordinate;
}

@end

