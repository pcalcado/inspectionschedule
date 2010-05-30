#import <Foundation/Foundation.h> 
#import <CoreLocation/CoreLocation.h> 
#import <MapKit/MapKit.h> 
#import "InspectionScheduleIpadProperty.h"

@interface InspectionScheduleIpadMapAnnotation : NSObject<MKAnnotation> {
	InspectionScheduleIpadProperty _property;
	NSString *_title; 
	NSString *_subtitle;
}

@property (nonatomic, assign) InspectionScheduleIpadProperty property; 
@property (nonatomic, copy) NSString *title; 
@property (nonatomic, copy) NSString *subtitle;

@end