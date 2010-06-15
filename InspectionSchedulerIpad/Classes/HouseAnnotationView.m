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
    
    UIImage *houseWithProperNumber = nil;
    int order = (int)property.inspectionOrder;
    NSString *image = [NSString stringWithFormat:@"icon_house_%d.png", order];
    NSLog(@"Loading image %@", image);
    houseWithProperNumber = [UIImage imageNamed:image];
    self.image  = houseWithProperNumber;

    self.canShowCallout = NO;
    self.aProperty = property;
  }
  return self;
}

@end

