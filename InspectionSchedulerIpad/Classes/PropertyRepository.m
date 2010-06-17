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
	
	Property *p6 = [[Property alloc] init];
	p6.address = @"59b Birkley Rd, Manly, NSW 2095";
	p6.bedroom = 3;
	p6.carspace = 2;
	p6.price = 995;
	CLLocationCoordinate2D pC6;
	pC6.latitude = -33.792858;
	pC6.longitude = 151.280502;
	p6.coordinate = pC6;
	p6.inspectionStart = [NSDate dateWithString:@"2010-06-19 11:30:00 +1000"];
	p6.inspectionEnd = [NSDate dateWithString:@"2010-06-19 11:45:00 +1000"];
	
	Property *p7 = [[Property alloc] init];
	p7.address = @"B, 5 Marine Parade, Manly, NSW 2095";
	p7.bedroom = 2;
	p7.carspace = 1;
	p7.price = 480;
	CLLocationCoordinate2D pC7;
	pC7.latitude = -33.800939;
	pC7.longitude = 151.293647;
	p7.coordinate = pC7;
	p7.inspectionStart = [NSDate dateWithString:@"2010-06-19 11:30:00 +1000"];
	p7.inspectionEnd = [NSDate dateWithString:@"2010-06-19 11:45:00 +1000"];
	
	Property *p8 = [[Property alloc] init];
	p8.address = @"4/22 Malvern Avenue, Manly, NSW 2095";
	p8.bedroom = 1;
	p8.carspace = 1;
	p8.price = 370;
	CLLocationCoordinate2D pC8;
	pC8.latitude = -33.789346;
	pC8.longitude =151.286336;
	p8.coordinate = pC8;
	p8.inspectionStart = [NSDate dateWithString:@"2010-06-19 11:30:00 +1000"];
	p8.inspectionEnd = [NSDate dateWithString:@"2010-06-19 11:45:00 +1000"];
	
	Property *p9 = [[Property alloc] init];
	p9.address = @"17/26 Whistler St, Manly, NSW 2095";
	p9.bedroom = 1;
	p9.carspace = 1;
	p9.price = 385;
	CLLocationCoordinate2D pC9;
	pC9.latitude = -33.796254;
	pC9.longitude = 151.286792;
	p9.coordinate = pC9;
	p9.inspectionStart = [NSDate dateWithString:@"2010-06-19 11:30:00 +1000"];
	p9.inspectionEnd = [NSDate dateWithString:@"2010-06-19 11:45:00 +1000"];
	
	Property *p10 = [[Property alloc] init];
	p10.address = @"8/43-45 North Steyne, Manly, NSW 2095";
	p10.bedroom = 3;
	p10.carspace = 2;
	p10.price = 1600;
	CLLocationCoordinate2D pC10;
	pC10.latitude = -33.796589;
	pC10.longitude =151.287521;
	p10.coordinate = pC10;
	p10.inspectionStart = [NSDate dateWithString:@"2010-06-19 11:30:00 +1000"];
	p10.inspectionEnd = [NSDate dateWithString:@"2010-06-19 11:45:00 +1000"];
	
	Property *p11 = [[Property alloc] init];
	p11.address = @"731/25 Wentworth Street, Manly, NSW 2095";
	p11.bedroom = 3;
	p11.carspace = 2;
	p11.price = 1604;
	CLLocationCoordinate2D pC11;
	pC11.latitude = -33.798184;
	pC11.longitude =151.287789;
	p11.coordinate = pC5;
	p11.inspectionStart = [NSDate dateWithString:@"2010-06-19 11:30:00 +1000"];
	p11.inspectionEnd = [NSDate dateWithString:@"2010-06-19 11:45:00 +1000"];

	[allProperties addObject: p1];
	[allProperties addObject: p2];
	[allProperties addObject: p3];
	[allProperties addObject: p4];
	[allProperties addObject: p5];
	[allProperties addObject: p6];
	[allProperties addObject: p7];
	[allProperties addObject: p8];
	[allProperties addObject: p9];
	[allProperties addObject: p10];
	[allProperties addObject: p11];

	
	[p1 release];
	[p2 release];
	[p3 release];
	[p4 release];
	[p5 release];
	[p6 release];
	[p7 release];
	[p8 release];
	[p9 release];
	[p10 release];
	[p11 release];
	
	return allProperties;
}

@end
