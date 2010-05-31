//
//  PinPoint.m
//  InspectionSchedulerIpad
//
//  Created by Caue Guerra on 1/06/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import "PinPoint.h"

@implementation PinPoint

@synthesize inspection;

+ (id)withInspection:(Inspection *) inspection {
    return [[[[self class] alloc] initWithInspection:inspection] autorelease];
}

- (id)initWithInspection:(Inspection *) inspection {
	self = [super init];
	if(nil != self) {
		self.inspection = inspection;
	}
	return self;
}

-(CLLocationCoordinate2D) coordinate {
	return inspection.propertyToInspect.coordinate;
}

-(NSString *) title {
	return inspection.description;
}


-(NSString *) subtitle {
	return inspection.propertyToInspect.address;
}

@end
