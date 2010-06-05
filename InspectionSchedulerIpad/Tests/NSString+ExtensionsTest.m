#import "NSString+Extensions.h"
#import "UnitTest.h"

@interface NSString_ExtensionsTest : SenTestCase {
	
}

@end


@implementation NSString_ExtensionsTest

- (void)testShouldNotEncodeUnreservedCharacters {
	NSString *unreservedCharacters = @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.~";
	
	assertThat([unreservedCharacters urlEncode], is(unreservedCharacters));
}

- (void)testShouldEncodeReservedCharacters {
	NSString *reservedCharacters = @"!*'();:@&=+$,/?#[]";
	NSString *percentEncodingsOfReservedCharacters = [@"%21 %2A %27 %28 %29 %3B %3A %40 %26 %3D %2B %24 %2C %2F %3F %23 %5B %5D" stringByReplacingOccurrencesOfString:@" " withString:@""];
	
	assertThat([reservedCharacters urlEncode], is(percentEncodingsOfReservedCharacters));
}

- (void)testShouldEncodeDisallowedCharacters {
	NSString *someDisallowedCharacters = @" \\ê字";
	NSString *percentEncodingsOfSomeDisallowedCharacters = [@"%20 %5C %C3%AA %E5%AD%97" stringByReplacingOccurrencesOfString:@" " withString:@""];
	
	assertThat([someDisallowedCharacters urlEncode], is(percentEncodingsOfSomeDisallowedCharacters));
}

@end
