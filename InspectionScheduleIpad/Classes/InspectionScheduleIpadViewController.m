//
//  InspectionScheduleIpadViewController.m
//  InspectionScheduleIpad
//
//  Created by Caue Guerra on 30/05/10.
//  Copyright ThoughtWorks 2010. All rights reserved.
//

#import "InspectionScheduleIpadViewController.h"
#import "InspectionScheduleIpadMapController.h"
#import "InspectionScheduleIpadListController.h"

@implementation InspectionScheduleIpadViewController
@synthesize inspectionScheduleIpadMapController;
@synthesize inspectionScheduleIpadListController;

- (IBAction)map {
	[self presentModalViewController:self.inspectionScheduleIpadMapController animated:YES];
}

- (IBAction)list {
	[self presentModalViewController:self.inspectionScheduleIpadListController animated:YES];
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
