//
//  PinPoint.h
//  InspectionSchedulerIpad
//
//  Created by Caue Guerra on 1/06/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "Property.h"
#import "Inspection.h"

@interface PinPoint : NSObject <MKAnnotation> {
	Inspection *inspection;
}

+ (id)withInspection:(Inspection *) inspection;

- (id)initWithInspection:(Property *) inspection;

@property (nonatomic, assign) Inspection *inspection;

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

- (NSString *)title;
- (NSString *)subtitle;

@end
