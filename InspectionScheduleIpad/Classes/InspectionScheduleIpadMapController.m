    //
//  InspectionScheduleIpadMapController.m
//  InspectionScheduleIpad
//
//  Created by Caue Guerra on 30/05/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import "InspectionScheduleIpadMapController.h"


@implementation InspectionScheduleIpadMapController

@synthesize mapView;

- (void)setCurrentLocation:(CLLocation *)location { 
	MKCoordinateRegion region = {{0.0f, 0.0f}, {0.0f, 0.0f}}; 
	region.center = location.coordinate; 
	region.span.longitudeDelta = 0.15f; 
	region.span.latitudeDelta = 0.15f;
	[self.mapView setRegion:region animated:YES];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	//shows manly
	CLLocationCoordinate2D coordinate;
	coordinate.latitude = -33.801393;
	coordinate.longitude = 151.290353;
	mapView.region = MKCoordinateRegionMakeWithDistance(coordinate, 2000, 2000); 
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
