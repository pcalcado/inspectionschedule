#import "Property.h"

@implementation Property

@synthesize address;
@synthesize coordinate;
@synthesize price;
@synthesize carspace;
@synthesize bedroom;
@synthesize bathroom;
@synthesize inspectionStart;
@synthesize inspectionEnd;
@synthesize inspectionOrder;

- (void) dealloc {
	[address release];
	[price release];
	[inspectionStart release];
	[inspectionEnd release];
	[super dealloc];
}

-(NSString *) priceAsString{
  return [NSString stringWithFormat:@"$%d.00", price];
}

-(NSString *) inspectionAsString{
  NSString *start = [inspectionStart descriptionWithCalendarFormat:@"%H:%M" timeZone:nil locale:nil];
  NSString *end = [inspectionEnd descriptionWithCalendarFormat:@"%H:%M"  timeZone:nil locale:nil];
  return [NSString stringWithFormat:@"%@ - %@", start, end];
}

@end
