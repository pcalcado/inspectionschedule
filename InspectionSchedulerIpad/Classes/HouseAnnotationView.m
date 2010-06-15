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
    NSLog(@"n");
    NSLog(@"%d -> %d", property.inspectionOrder, order);
    switch(order) {
    case 1: houseWithProperNumber = [UIImage imageNamed:@"icon_house_1.png"]; break;
    case 2: houseWithProperNumber = [UIImage imageNamed:@"icon_house_2.png"]; break;
    case 3: houseWithProperNumber = [UIImage imageNamed:@"icon_house_3.png"]; break;
    case 4: houseWithProperNumber = [UIImage imageNamed:@"icon_house_4.png"]; break;
    case 5: houseWithProperNumber = [UIImage imageNamed:@"icon_house_5.png"]; break;
    case 6: houseWithProperNumber = [UIImage imageNamed:@"icon_house_6.png"]; break;
    }
    self.image  = houseWithProperNumber;
    //    NSLog(@"uh?");


    self.canShowCallout = NO;
    self.aProperty = property;
  }
  return self;
}

@end

