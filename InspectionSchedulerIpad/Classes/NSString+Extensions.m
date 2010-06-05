#import "NSString+Extensions.h"

@implementation NSString (Extensions)

- (NSString *) urlEncode {
	NSString *encodedString = (NSString *) CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)self, NULL, CFSTR(":/?#[]@!$&'()*+,;="), kCFStringEncodingUTF8);
	return [encodedString autorelease];
}

@end
