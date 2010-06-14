#import "UnitTest.h"
#import "MapService.h"
#import "WebService.h"
#import "SBJsonParser.h"
#import "Error.h"

@interface MapServiceTest : SenTestCase {
	id webService;
	MapService *mapService;
}

@end


@implementation MapServiceTest

- (void)setUp {
	webService = [OCMockObject mockForClass:[WebService class]];
	mapService = [[MapService alloc] initWithWebService:webService];
}

- (void)testShouldExtractCoordinatesFromSuccessfulResponse {
	NSURL *expectedUrl = [NSURL URLWithString:@"http://maps.google.com/maps/api/geocode/json?sensor=false&region=au&address=Some%20Location"];
	NSString *response = @"{\"status\": \"OK\", \"results\": [{\"geometry\": {\"location\": {\"lat\": 123.456, \"lng\": -987.76543210}}}]}";

	[[[webService stub] andReturn:response] responseBodyForUrl:expectedUrl];
	
	Error *error = nil;
	CLLocationCoordinate2D coordinate = [mapService coordinatesForLocation:@"Some Location"];// withError:&error];
	  
	assertThat(error, nilValue());
	assertThatDouble(coordinate.latitude,  closeTo(123.456, 1E-10));
	assertThatDouble(coordinate.longitude, closeTo(-987.76543210, 1E-10));
}

- (void)testShouldRaiseErrorIfStatusIsNotOK {
	[[[webService stub] andReturn:@"{\"status\": \"Not OK\""] responseBodyForUrl:[OCMArg any]];
	
	Error *error = nil;
	[mapService coordinatesForLocation:@"location"];// withError:&error];
	
	assertThat(error, notNilValue());
	assertThat(error.domain, is(ISIErrorDomain));
	assertThatInt(error.code, equalToInt(ISIErrorCannotGetCoordinate));
}

@end
