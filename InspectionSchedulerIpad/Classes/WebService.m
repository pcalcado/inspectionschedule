#import "WebService.h"


@implementation WebService

- (NSString *)responseBodyForUrl:(NSURL *)url {
	return [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:NULL];
}

@end
