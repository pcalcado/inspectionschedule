#import "InspectionScheduleIpadMapAnnotation.h"


@implementation InspectionScheduleIpadMapAnnotation

@synthesize property = _property;
@synthesize coordinate = _coordinate; 
@synthesize title = _title; 
@synthesize subtitle = _subtitle;

+ (id)annotationWithCoordinate:(CLLocationCoordinate2D)coordinate { 
	return [[[[self class] alloc] initWithCoordinate:coordinate] autorelease];
}

- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate { 
	self = [super init]; if(nil != self) {
		self.coordinate = coordinate; return self;
	}
}

@end
