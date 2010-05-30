//
//  InspectionScheduleIpadAppDelegate.m
//  InspectionScheduleIpad
//
//  Created by Caue Guerra on 30/05/10.
//  Copyright ThoughtWorks 2010. All rights reserved.
//

#import "InspectionScheduleIpadAppDelegate.h"
#import "InspectionScheduleIpadViewController.h"

@implementation InspectionScheduleIpadAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];

	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
