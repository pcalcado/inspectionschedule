#import "HouseAnnotationView.h"

@implementation HouseAnnotationView

@synthesize aProperty;

- (id)initWithAnnotation:(id <MKAnnotation>)annotation {
	self = [super initWithAnnotation:annotation reuseIdentifier:@"Pin"];
	
	self.frame = CGRectMake(0, 0, 200, 200);
	self.backgroundColor = [UIColor whiteColor];
	
	if (self != nil) {
		self.image  = [UIImage imageNamed:@"icon_house.png"];
        
		CGPoint notNear = CGPointMake(10000.0,10000.0);
		self.calloutOffset = notNear;
		self.canShowCallout = NO;
		self.calloutOffset = CGPointMake(-5, 5);
  	}

	aProperty = annotation;
	return self;
}

@end

