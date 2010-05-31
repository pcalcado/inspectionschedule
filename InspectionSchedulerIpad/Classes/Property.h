//
//  Property.h
//  InspectionSchedulerIpad
//
//  Created by Caue Guerra on 1/06/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotation.h>
#import <MapKit/MKReverseGeocoder.h>

@interface Property : NSObject {
	NSString *address;
	NSString *price;
	NSString *type;
	NSInteger *bedroom;
	NSInteger *bathroom;
	NSInteger *carspace;
	NSString *description;
	CLLocationCoordinate2D coordinate;
}

@property(nonatomic, copy) NSString *address;
@property(nonatomic, copy) NSString *type;
@property(nonatomic, copy) NSString *description;
@property(nonatomic, assign) CLLocationCoordinate2D coordinate;

@end
