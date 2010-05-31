//
//  HousePinPoint.m
//  InspectionSchedulerIpad
//
//  Created by Caue Guerra on 1/06/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import "HousePinPoint.h"

@implementation HousePinPoint

- (id)initWithAnnotation:(id <MKAnnotation>)annotation {
	self = [super initWithAnnotation:annotation reuseIdentifier:@"Pin"];
	if (self != nil) {
		self.image  = [UIImage imageNamed:@"icon.png"];
        
		CGPoint notNear = CGPointMake(10000.0,10000.0);
		self.calloutOffset = notNear;
		self.canShowCallout = YES;
		self.calloutOffset = CGPointMake(-5, 5);
		
		
		UIButton* rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
		[rightButton addTarget:self
						action:@selector(showInspectionDetails:)
			  forControlEvents:UIControlEventTouchUpInside];
		self.rightCalloutAccessoryView = rightButton;
  	}
	return self;
	
	
}


- (void) showInspectionDetails: (id) sender {
}

@end

