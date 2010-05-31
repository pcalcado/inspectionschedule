//
//  DetailViewController.m
//  InspectionSchedulerIpad
//
//  Created by Caue Guerra on 31/05/10.
//  Copyright ThoughtWorks 2010. All rights reserved.
//

#import "DetailViewController.h"
#import "RootViewController.h"
#import "MapViewController.h"
#import "PropertyRepository.h"

@interface DetailViewController ()
@property (nonatomic, retain) UIPopoverController *popoverController;
- (void)configureView;
@end

@implementation DetailViewController

@synthesize toolbar, popoverController, detailItem, detailDescriptionLabel;
@synthesize mapViewController;
@synthesize propertiesArray;
@synthesize selectedPropertiesArray;

- (IBAction)map {
	self.mapViewController = [[MapViewController alloc] init];
	self.mapViewController.propertiesArray = self.selectedPropertiesArray;
	[self presentModalViewController:self.mapViewController animated:YES];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	//this should happen somewhere else
	propertiesArray = [[[PropertyRepository alloc] init] retrieveProperties];
	selectedPropertiesArray = [[NSMutableArray alloc] init];
}

/*
 When setting the detail item, update the view and dismiss the popover controller if it's showing.
 */
- (void)setDetailItem:(id)newDetailItem {
    if (detailItem != newDetailItem) {
        [detailItem release];
        detailItem = [newDetailItem retain];
        
        // Update the view.
        [self configureView];
    }

    if (popoverController != nil) {
        [popoverController dismissPopoverAnimated:YES];
    }        
}


- (void)configureView {
    // Update the user interface for the detail item.
    detailDescriptionLabel.text = [detailItem description];   
}

- (void)splitViewController: (UISplitViewController*)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem*)barButtonItem forPopoverController: (UIPopoverController*)pc {
    
    barButtonItem.title = @"Root List";
    NSMutableArray *items = [[toolbar items] mutableCopy];
    [items insertObject:barButtonItem atIndex:0];
    [toolbar setItems:items animated:YES];
    [items release];
    self.popoverController = pc;
}


// Called when the view is shown again in the split view, invalidating the button and popover controller.
- (void)splitViewController: (UISplitViewController*)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem {
    
    NSMutableArray *items = [[toolbar items] mutableCopy];
    [items removeObjectAtIndex:0];
    [toolbar setItems:items animated:YES];
    [items release];
    self.popoverController = nil;
}

// Ensure that the view controller supports rotation and that the split view can therefore show in both portrait and landscape.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [propertiesArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *CellIdentifier = @"Cell"; 
	UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
		[[NSBundle mainBundle] loadNibNamed:@"InspectionTableCellView" owner:self options:NULL];
		cell = nibLoadedCell;
	}
	Property *property = [propertiesArray objectAtIndex:indexPath.row];
	UILabel *addressLabel = (UILabel*) [cell viewWithTag:1];
	addressLabel.text = property.address;
	UILabel *typeLabel = (UILabel*) [cell viewWithTag:2];
	typeLabel.text = property.type;
	UILabel *descriptionLabel = (UILabel*) [cell viewWithTag:3];
	descriptionLabel.text = property.description;
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
	if (cell.accessoryType == UITableViewCellAccessoryCheckmark) {
		cell.accessoryType = UITableViewCellAccessoryNone;
		[selectedPropertiesArray removeObject: [propertiesArray objectAtIndex:indexPath.row]];	  
	} else {
		cell.accessoryType = UITableViewCellAccessoryCheckmark;
		[selectedPropertiesArray addObject: [propertiesArray objectAtIndex:indexPath.row]];
	}
}

- (void)viewDidUnload {
    self.popoverController = nil;
}

- (void)dealloc {
    [popoverController release];
    [toolbar release];
    
    [detailItem release];
    [detailDescriptionLabel release];
    [super dealloc];
}

@end
