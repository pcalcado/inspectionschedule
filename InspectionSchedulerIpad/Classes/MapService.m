#import "MapService.h"
#import "NSString+Extensions.h"
#import "SBJSON.h"

@implementation MapService

- (id)init {
    if(self = [super init]) {
		json = [[SBJSON alloc] init];
    }
	return self;
}

- (void)dealloc {
	[json release];
	[super dealloc];
}

- (CLLocationCoordinate2D)getCoordinatesForLocation: (NSString *) location {
	NSURL *url = [NSURL URLWithString: [@"http://maps.google.com/maps/api/geocode/json?sensor=false&region=au&address=" stringByAppendingString:[location urlEncode]]];
	NSString *jsonString = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:NULL];
    NSLog(@"JSON: %@", jsonString);
	NSDictionary *response = [json objectWithString: jsonString];
	NSLog(@"Response status: %@", [response objectForKey:@"status"]);
	
	NSDictionary *coordinateDictionary = [[[[response objectForKey:@"results"] objectAtIndex:0] objectForKey:@"geometry"] objectForKey:@"location"];
    CLLocationCoordinate2D coordinate;
	coordinate.latitude = [[coordinateDictionary objectForKey:@"lat"] doubleValue];
	coordinate.longitude = [[coordinateDictionary objectForKey:@"lng"] doubleValue];
	NSLog(@"Coordinate Lat: %f Lng: %f", coordinate.latitude, coordinate.longitude);
	return coordinate;
}

@end

