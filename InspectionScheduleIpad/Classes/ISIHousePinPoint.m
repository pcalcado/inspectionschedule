#import "ISIHousePinPoint.h"


@implementation ISIHousePinPoint

- (id)initWithAnnotation:(id <MKAnnotation>)annotation
{
  self = [super initWithAnnotation:annotation reuseIdentifier:@"CustomId"];
    
  if (self)        
    {
      UIImage* theImage = [UIImage imageNamed:@"icon.png"];
        
      if (!theImage){
	return nil;
      }
      NSLog(@"Loaded...");        
      self.image = theImage;
    }   

  return self;
}
@end
