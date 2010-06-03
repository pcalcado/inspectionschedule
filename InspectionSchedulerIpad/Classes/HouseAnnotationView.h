#import <MapKit/MapKit.h>

@class Property;

@interface HouseAnnotationView : MKAnnotationView
{
	@private
	Property *aProperty;
}

- (id)initWithProperty:(Property *)property;

@property(nonatomic, retain) Property *aProperty;

@end


