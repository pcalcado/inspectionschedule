#import "HouseAnnotationView.h"
#import "Property.h"

@implementation HouseAnnotationView

@synthesize aProperty;

- (void)dealloc {
	[aProperty release];
	[super dealloc];
}

- (id)initWithProperty:(Property *)property {
	if(self = [super initWithAnnotation:property reuseIdentifier:@"Pin"]) {
		self.frame = CGRectMake(0, 0, 200, 200);
		self.backgroundColor = [UIColor whiteColor];
		self.image  = [UIImage imageNamed:@"icon_house.png"];
		self.canShowCallout = NO;

		self.aProperty = property;
  	}
	return self;
}

@end

