#include "Error.h"

@implementation Error

NSString * const ISIErrorDomain = @"com.thoughtworks.inspectionscheduleripad.error";

- (Error *)initWithCode:(int)code description:(NSString *)description {
	NSDictionary *userInfo = [[NSDictionary alloc] initWithObjectsAndKeys:description, NSLocalizedDescriptionKey, nil];
	self = [super initWithDomain:ISIErrorDomain code:code userInfo:userInfo];
	[userInfo release];
	return self;
}

+ (Error *)errorWithCode:(int)code description:(NSString *)description {
	return [[[Error alloc] initWithCode:code description:description] autorelease];
}

@end