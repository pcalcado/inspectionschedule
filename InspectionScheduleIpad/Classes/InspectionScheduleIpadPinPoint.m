#import "InspectionScheduleIpadPinPoint.h"

@implementation InspectionScheduleIpadPinPoint

@synthesize inspection;

+ (id)withInspection:(ISIInspection *) inspection {
    return [[[[self class] alloc] initWithInspection:inspection] autorelease];
  }

- (id)initWithInspection:(ISIInspection *) inspection {
  self = [super init];
  if(nil != self) {
    self.inspection = inspection;
  }
  return self;
}

-(CLLocationCoordinate2D) coordinate {
  return inspection.propertyToInspect.coordinate;
}

-(NSString *) title {
  return inspection.description;
}


-(NSString *) subtitle {
  return inspection.propertyToInspect.address;
}

@end
