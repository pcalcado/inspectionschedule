//
//  inspectionschedule_ipadAppDelegate.m
//  inspectionschedule-ipad
//
//  Created by Phillip Calcado on 30/05/10.
//  Copyright ThoughtWorks Australia 2010. All rights reserved.
//

#import "inspectionschedule_ipadAppDelegate.h"
#import "inspectionschedule_ipadViewController.h"

@implementation inspectionschedule_ipadAppDelegate

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
