#import <Foundation/Foundation.h>
#import "InspectionScheduleIpadProperty.h"

@interface ISIInspection : NSObject {
  InspectionScheduleIpadProperty *propertyToInspect;
  NSDate *start;
  NSDate *end;
}

@property(nonatomic, retain) InspectionScheduleIpadProperty *propertyToInspect;
@property(nonatomic, retain) NSDate *start;
@property(nonatomic, retain) NSDate *end;

- (NSString *) description;

@end
