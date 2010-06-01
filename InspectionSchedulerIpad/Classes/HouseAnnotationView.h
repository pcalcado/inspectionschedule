//
//  HousePinPoint.h
//  InspectionSchedulerIpad
//
//  Created by Caue Guerra on 1/06/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotation.h>
#import <MapKit/MKReverseGeocoder.h>


@interface HouseAnnotationView : MKAnnotationView
{
}

- (id)initWithAnnotation:(id <MKAnnotation>) annotation;

@end


