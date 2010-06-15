#import "PropertyRepository.h"
#import "Property.h"

@implementation PropertyRepository

- (NSArray *) retrieveProperties {
	NSMutableArray * allProperties = [[[NSMutableArray alloc] init] autorelease];
	
	Property *p1 = [[Property alloc] init];
	p1.address = @"7/29 Malvern Ave, Manly New South Wales 2095";
	p1.bedroom = 3;
	p1.carspace = 2;
	p1.price = 995;
	CLLocationCoordinate2D pC1;
	pC1.latitude = -33.789081;
	pC1.longitude = 151.285515;
	p1.coordinate = pC1;
	p1.inspectionStart = [NSDate dateWithString:@"2010-06-19 9:30:00 +1000"];
	p1.inspectionEnd = [NSDate dateWithString:@"2010-06-19 9:40:00 +1000"];
	
	Property *p2 = [[Property alloc] init];
	p2.address = @"22/122 Bower Street, Manly, NSW 2095";
	p2.bedroom = 2;
	p2.carspace = 1;
	p2.price = 700;
	CLLocationCoordinate2D pC2;
	pC2.latitude = -33.799976;
	pC2.longitude = 151.292081;
	p2.coordinate = pC2;
	p2.inspectionStart = [NSDate dateWithString:@"2010-06-19 10:45:00 +1000"];
	p2.inspectionEnd = [NSDate dateWithString:@"2010-06-19 11:00:00 +1000"];
	
	Property *p3 = [[Property alloc] init];
	p3.address = @"2/92 Bower Street, Manly, NSW 2095";
	p3.bedroom = 2;
	p3.carspace = 1;
	p3.price = 885;
	CLLocationCoordinate2D pC3;
	pC3.latitude = -33.800922;
	pC3.longitude = 151.293669;
	p3.coordinate = pC3;
	p3.inspectionStart = [NSDate dateWithString:@"2010-06-19 10:30:00 +1000"];
	p3.inspectionEnd = [NSDate dateWithString:@"2010-06-19 10:45:00 +1000"];
	
	Property *p4 = [[Property alloc] init];
	p4.address = @"13/2 Cerretti Crescent, Manly, NSW 2095";
	p4.bedroom = 1;
	p4.carspace = 0;
	p4.price = 460;
	CLLocationCoordinate2D pC4;
	pC4.latitude = -33.805022;
	pC4.longitude = 151.29472;
	p4.coordinate = pC4;
	p4.inspectionStart = [NSDate dateWithString:@"2010-06-19 11:00:00 +1000"];
	p4.inspectionEnd = [NSDate dateWithString:@"2010-06-19 11:20:00 +1000"];
	
	Property *p5 = [[Property alloc] init];
	p5.address = @"5/5 Wentworth Street, Manly, NSW 2095";
	p5.bedroom = 2;
	p5.carspace = 1;
	p5.price = 580;
	CLLocationCoordinate2D pC5;
	pC5.latitude = -33.799513;
	pC5.longitude =151.28618;
	p5.coordinate = pC5;
	p5.inspectionStart = [NSDate dateWithString:@"2010-06-19 11:30:00 +1000"];
	p5.inspectionEnd = [NSDate dateWithString:@"2010-06-19 11:45:00 +1000"];
	
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
