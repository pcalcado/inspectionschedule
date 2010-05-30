#import "InspectionScheduleIpadProperty.h"


@implementation InspectionScheduleIpadProperty

@synthesize address;
@synthesize type;
@synthesize description;
@synthesize coordinate;

- (void) dealloc {
	self.address = nil;
	[super dealloc];
}

@end
