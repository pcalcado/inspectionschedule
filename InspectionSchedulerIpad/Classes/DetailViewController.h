//
//  DetailViewController.h
//  InspectionSchedulerIpad
//
//  Created by Caue Guerra on 31/05/10.
//  Copyright ThoughtWorks 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Property.h"

@class MapViewController;

@interface DetailViewController : UIViewController <UIPopoverControllerDelegate, UISplitViewControllerDelegate, UITableViewDataSource, UITableViewDelegate> {
    MapViewController *mapViewController;
	
    UIPopoverController *popoverController;
    UIToolbar *toolbar;
    
    id detailItem;
    UILabel *detailDescriptionLabel;
	
	Property *property;
	NSMutableArray *propertiesArray;
	NSMutableArray *selectedPropertiesArray;
	UITableViewCell *nibLoadedCell;
}

@property (nonatomic, retain) IBOutlet UITableViewCell *nibLoadedCell;

@property (nonatomic, retain) IBOutlet UIToolbar *toolbar;

@property (nonatomic, retain) id detailItem;
@property (nonatomic, retain) IBOutlet UILabel *detailDescriptionLabel;

@property (nonatomic, retain) NSMutableArray *propertiesArray;
@property (nonatomic, retain) NSMutableArray *selectedPropertiesArray;
@property (nonatomic, retain) IBOutlet MapViewController *mapViewController;

- (IBAction)map;

@end
