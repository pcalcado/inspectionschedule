#import "InspectionSchedulerIpadAppDelegate.h"


#import "RootViewController.h"
#import "DetailViewController.h"


@implementation InspectionSchedulerIpadAppDelegate

@synthesize window, splitViewController, rootViewController, detailViewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    
    // Add the split view controller's view to the window and display.
    [window addSubview:splitViewController.view];
    [window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Save data if appropriate
}

- (void)dealloc {
    [splitViewController release];
    [window release];
	[rootViewController release];
	[detailViewController release];
    [super dealloc];
}


@end

