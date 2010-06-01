//
//  HousePinPoint.m
//  InspectionSchedulerIpad
//
//  Created by Caue Guerra on 1/06/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import "HouseAnnotationView.h"

@implementation HouseAnnotationView

- (id)initWithAnnotation:(id <MKAnnotation>)annotation {
	self = [super initWithAnnotation:annotation reuseIdentifier:@"Pin"];
	
	self.frame = CGRectMake(0, 0, 200, 200);
	self.backgroundColor = [UIColor whiteColor];
	
	if (self != nil) {
		self.image  = [UIImage imageNamed:@"houseIcon.png"];
        
		CGPoint notNear = CGPointMake(10000.0,10000.0);
		self.calloutOffset = notNear;
		self.canShowCallout = NO;
		self.calloutOffset = CGPointMake(-5, 5);
  	}
	return self;
}

@end

