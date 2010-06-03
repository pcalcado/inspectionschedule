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
@synthesize inspectionStart;
@synthesize inspectionEnd;

- (void) dealloc {
	[address release];
	[type release];
	[price release];
	[description release];
	[inspectionStart release];
	[inspectionEnd release];
	[super dealloc];
}

@end

