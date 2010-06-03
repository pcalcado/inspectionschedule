#import <MapKit/MKAnnotation.h>

@interface Property : NSObject <MKAnnotation> {
	@private
	NSString *address;
	NSString *price;
	NSString *type;
	NSInteger *bedroom;
	NSInteger *bathroom;
	NSInteger *carspace;
	NSString *description;
	NSDate *inspectionStart;
	NSDate *inspectionEnd;
	CLLocationCoordinate2D coordinate;
}

@property(nonatomic, copy) NSString *address;
@property(nonatomic, assign) NSInteger *carspace;
@property(nonatomic, assign) NSInteger *bedroom;
@property(nonatomic, assign) NSInteger *bathroom;
@property(nonatomic, copy) NSString *type;
@property(nonatomic, copy) NSString *price;
@property(nonatomic, copy) NSString *description;
@property(nonatomic, copy) NSDate *inspectionStart;
@property(nonatomic, copy) NSDate *inspectionEnd;

@property(nonatomic, assign) CLLocationCoordinate2D coordinate;

@end
