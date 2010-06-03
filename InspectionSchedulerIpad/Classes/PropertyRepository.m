#import "PropertyRepository.h"
#import "Property.h"

@implementation PropertyRepository

- (NSArray *) retrieveProperties {
	NSMutableArray * allProperties = [[[NSMutableArray alloc] init] autorelease];
	
	Property *p1 = [[Property alloc] init];
	p1.address = @"7/29 Malvern Ave, Manly New South Wales 2095";
	CLLocationCoordinate2D pC1;
	pC1.latitude = -33.789081;
	pC1.longitude = 151.285515;
	p1.coordinate = pC1;
	
	Property *p2 = [[Property alloc] init];
	p2.address = @"22/122 Bower Street, Manly, NSW 2095";
	CLLocationCoordinate2D pC2;
	pC2.latitude = -33.799976;
	pC2.longitude = 151.292081;
	p2.coordinate = pC2;
	
	Property *p3 = [[Property alloc] init];
	p3.address = @"2/92 Bower Street, Manly, NSW 2095";
	CLLocationCoordinate2D pC3;
	pC3.latitude = -33.800922;
	pC3.longitude = 151.293669;
	p3.coordinate = pC3;
	
	Property *p4 = [[Property alloc] init];
	p4.address = @"13/2 Cerretti Crescent, Manly, NSW 2095";
	CLLocationCoordinate2D pC4;
	pC4.latitude = -33.805022;
	pC4.longitude = 151.29472;
	p4.coordinate = pC4;
	
	Property *p5 = [[Property alloc] init];
	p4.address = @"5/5 Wentworth Street, Manly, NSW 2095";
	CLLocationCoordinate2D pC5;
	pC5.latitude = -33.799513;
	pC5.longitude =151.28618;
	p5.coordinate = pC5;
	
	[allProperties addObject: p1];
	[allProperties addObject: p2];
	[allProperties addObject: p3];
	[allProperties addObject: p4];
	[allProperties addObject: p5];
	
	[p1 release];
	[p2 release];
	[p3 release];
	[p4 release];
	[p5 release];
	
	return allProperties;
}

@end
