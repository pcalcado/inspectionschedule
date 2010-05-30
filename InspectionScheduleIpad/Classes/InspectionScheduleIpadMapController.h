//
//  InspectionScheduleIpadMapController.h
//  InspectionScheduleIpad
//
//  Created by Caue Guerra on 30/05/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotation.h>
#import <MapKit/MKReverseGeocoder.h>

@interface InspectionScheduleIpadMapController : UIViewController<MKMapViewDelegate,MKReverseGeocoderDelegate> {
	MKMapView *mapView;
	MKReverseGeocoder *geoCoder;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;

@end
