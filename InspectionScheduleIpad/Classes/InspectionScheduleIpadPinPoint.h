#import <Foundation/Foundation.h>
#import "InspectionScheduleIpadProperty.h"

@interface InspectionScheduleIpadPinPoint : NSObject {
  InspectionScheduleIpadProperty *_aProperty;
}

+ (id)withProperty:(InspectionScheduleIpadProperty *) aProperty;

- (id)initWithProperty:(InspectionScheduleIpadProperty *) aProperty;

@property (nonatomic, assign) InspectionScheduleIpadProperty *aProperty;

@end
