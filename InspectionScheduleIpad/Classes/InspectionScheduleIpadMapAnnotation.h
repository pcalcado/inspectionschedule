#import <Foundation/Foundation.h> 
#import <CoreLocation/CoreLocation.h> 
#import <MapKit/MapKit.h> 
#import <AddressBook/AddressBook.h>

@interface InspectionScheduleIpadMapAnnotation : NSObject<MKAnnotation> {
	CLLocationCoordinate2D _coordinate; 
	NSString *_title; 
	NSString *_subtitle;
	ABRecordRef _person;
}

+ (id)annotationWithCoordinate:(CLLocationCoordinate2D)coordinate; 
- (id)initWithCoordinate:(CLLocationCoordinate2D)coordinate;

@property (nonatomic, assign) CLLocationCoordinate2D coordinate; 
@property (nonatomic, assign) ABRecordRef person; 
@property (nonatomic, copy) NSString *title; 
@property (nonatomic, copy) NSString *subtitle;

@end