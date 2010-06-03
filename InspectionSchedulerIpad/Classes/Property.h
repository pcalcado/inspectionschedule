#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotation.h>
#import <MapKit/MKReverseGeocoder.h>

@interface Property : NSObject <MKAnnotation> {
	NSString *address;
	NSString *price;
	NSString *type;
	NSInteger *bedroom;
	NSInteger *bathroom;
	NSInteger *carspace;
	NSString *description;
	CLLocationCoordinate2D coordinate;
}

@property(nonatomic, copy) NSString *address;
@property(nonatomic, assign) NSInteger *carspace;
@property(nonatomic, assign) NSInteger *bedroom;
@property(nonatomic, assign) NSInteger *bathroom;
@property(nonatomic, copy) NSString *type;
@property(nonatomic, copy) NSString *price;
@property(nonatomic, copy) NSString *description;
@property(nonatomic, assign) CLLocationCoordinate2D coordinate;

@end
