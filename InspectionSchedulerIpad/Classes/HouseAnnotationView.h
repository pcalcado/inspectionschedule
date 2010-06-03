#import <MapKit/MapKit.h>

@class Property;

@interface HouseAnnotationView : MKAnnotationView
{
	@private
	Property *aProperty;
}

- (id)initWithAnnotation:(id <MKAnnotation>) annotation;

@property(nonatomic, retain) Property * aProperty;

@end


