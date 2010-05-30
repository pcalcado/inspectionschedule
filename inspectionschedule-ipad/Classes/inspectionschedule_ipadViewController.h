//
//  inspectionschedule_ipadViewController.h
//  inspectionschedule-ipad
//
//  Created by Phillip Calcado on 30/05/10.
//  Copyright ThoughtWorks Australia 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface inspectionschedule_ipadViewController : UIViewController <MKMapViewDelegate>{
	IBOutlet MKMapView *mapView;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;

@end

