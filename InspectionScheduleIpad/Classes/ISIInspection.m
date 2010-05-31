#import "ISIInspection.h"

@implementation ISIInspection

@synthesize propertyToInspect;
@synthesize start;
@synthesize end;

- (NSString *) description {
  NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
  [formatter setDateFormat:@"HH:mm"];
        
  NSString *starting = [formatter stringFromDate:start];
  NSString *ending =  [formatter stringFromDate:end];
  return [starting stringByAppendingString:[@" - " stringByAppendingString:ending]];  
}

@end
