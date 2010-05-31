//
//  Property.m
//  InspectionSchedulerIpad
//
//  Created by Caue Guerra on 1/06/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import "Property.h"


@implementation Property

@synthesize address;
@synthesize type;
@synthesize description;
@synthesize coordinate;

- (void) dealloc {
	self.address = nil;
	[super dealloc];
}

@end

