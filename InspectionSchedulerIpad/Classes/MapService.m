#import "MapService.h"
#import "NSString+Extensions.h"
#import "NSString+SBJSON.h"
#import "WebService.h"

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
	coordinate.latitude =  -33.7971440;
	coordinate.longitude = 151.2880400;
	return coordinate;
}

@end

