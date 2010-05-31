//
//  Inspection.m
//  InspectionSchedulerIpad
//
//  Created by Caue Guerra on 1/06/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import "Inspection.h"

@implementation Inspection

@synthesize propertyToInspect;
@synthesize start;
@synthesize end;

- (NSString *) description {
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setDateFormat:@"HH:mm"];
	
	NSString *starting = [formatter stringFromDate:start];
	NSString *ending =  [formatter stringFromDate:end];
	return [starting stringByAppendingString:[@" - " stringByAppendingString:ending]];  
}

@end

