#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotation.h>
#import <MapKit/MKReverseGeocoder.h>
#import "Property.h"

@interface HouseAnnotationView : MKAnnotationView
{
  Property *aProperty;
}

- (id)initWithAnnotation:(id <MKAnnotation>) annotation;

@property(nonatomic, retain) Property * aProperty;

@end


