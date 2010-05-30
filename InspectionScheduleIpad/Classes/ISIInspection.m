#import "ISIInspection.h"

@implementation ISIInspection

@synthesize propertyToInspect;
@synthesize start;
@synthesize end;

- (NSString *) description {
  NSString *starting = [start descriptionWithCalendarFormat:@"%H:%M"];
  NSString *ending = [end descriptionWithCalendarFormat:@"%H:%M"];
  return [start stringByAppendingString:[@" - " stringByAppendingString:end]];  
}

@end
