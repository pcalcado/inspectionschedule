#import "HouseAnnotationView.h"

@implementation HouseAnnotationView

@synthesize aProperty;

- (void)dealloc {
	[aProperty release];
	[super dealloc];
}

- (id)initWithAnnotation:(id <MKAnnotation>)annotation {
	if(self = [super initWithAnnotation:annotation reuseIdentifier:@"Pin"]) {
		self.frame = CGRectMake(0, 0, 200, 200);
		self.backgroundColor = [UIColor whiteColor];
		self.image  = [UIImage imageNamed:@"icon_house.png"];
		self.canShowCallout = NO;

		self.aProperty = annotation;
  	}
	return self;
}

@end

