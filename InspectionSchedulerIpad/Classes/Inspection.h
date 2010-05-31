//
//  Inspection.h
//  InspectionSchedulerIpad
//
//  Created by Caue Guerra on 1/06/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Property.h"

@interface Inspection : NSObject {
	Property *propertyToInspect;
	NSDate *start;
	NSDate *end;
}

@property(nonatomic, retain) Property *propertyToInspect;
@property(nonatomic, retain) NSDate *start;
@property(nonatomic, retain) NSDate *end;

- (NSString *) description;

@end

