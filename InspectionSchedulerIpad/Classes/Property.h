#import <MapKit/MKAnnotation.h>

@interface Property : NSObject <MKAnnotation> {
	@private
	NSString *address;
	NSInteger *price;
	NSString *type;
	NSInteger *bedroom;
	NSInteger *bathroom;
	NSInteger *carspace;
	NSString *description;
	NSDate *inspectionStart;
	NSDate *inspectionEnd;
	int inspectionOrder;
	CLLocationCoordinate2D coordinate;
}

@property(nonatomic, copy) NSString *address;
@property(nonatomic, assign) NSInteger *carspace;
@property(nonatomic, assign) NSInteger *bedroom;
@property(nonatomic, assign) NSInteger *bathroom;
@property(nonatomic, copy) NSString *type;
@property(nonatomic, assign) NSInteger *price;
@property(nonatomic, copy) NSString *description;
@property(nonatomic, copy) NSDate *inspectionStart;
@property(nonatomic, copy) NSDate *inspectionEnd;
@property(nonatomic, assign) int inspectionOrder;
@property(nonatomic, assign) CLLocationCoordinate2D coordinate;
@property(nonatomic, copy) NSString *priceAsString;

			     
@end
