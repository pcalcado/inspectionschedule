#import "Property.h"

@implementation Property

@synthesize address;
@synthesize type;
@synthesize description;
@synthesize coordinate;
@synthesize price;
@synthesize carspace;
@synthesize bedroom;
@synthesize bathroom;

- (void) dealloc {
	self.address = nil;
	[super dealloc];
}

@end

