//
//  MapViewController.h
//  InspectionSchedulerIpad
//
//  Created by Caue Guerra on 1/06/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotation.h>
#import <MapKit/MKReverseGeocoder.h>
#import "Property.h"
#import "PinPoint.h"
#import "HousePinPoint.h"


@interface MapViewController : UIViewController<MKMapViewDelegate> {
	MKMapView *mapView;
	NSMutableArray *propertiesArray;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@property (nonatomic, retain) NSMutableArray *propertiesArray;

@end
