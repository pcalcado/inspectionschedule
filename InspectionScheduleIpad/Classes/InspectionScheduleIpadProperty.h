//
//  Property.h
//  InspectionScheduleIpad
//
//  Created by Caue Guerra on 30/05/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface InspectionScheduleIpadProperty : NSObject {
	NSString *address;
	NSString *price;
	NSString *type;
	NSInteger *bedroom;
	NSInteger *bathroom;
	NSInteger *carspace;
	NSString *description;
}

@property(nonatomic, copy) NSString *address;
@property(nonatomic, copy) NSString *type;
@property(nonatomic, copy) NSString *description;

@end
