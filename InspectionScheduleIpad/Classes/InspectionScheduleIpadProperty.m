//
//  Property.m
//  InspectionScheduleIpad
//
//  Created by Caue Guerra on 30/05/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import "InspectionScheduleIpadProperty.h"


@implementation InspectionScheduleIpadProperty

@synthesize address;
@synthesize type;
@synthesize description;

- (void) dealloc {
	self.address = nil;
	[super dealloc];
}

@end
