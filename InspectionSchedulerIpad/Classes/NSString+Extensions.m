#import "NSString+Extensions.h"

@implementation NSString (Extensions)

- (NSString *) urlEncode {
	return [self stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

@end
