@class MapViewController;
@class Property;

@interface DetailViewController : UIViewController <UIPopoverControllerDelegate, UISplitViewControllerDelegate, UITableViewDataSource, UITableViewDelegate> {
	MapViewController *mapViewController;
	UIPopoverController *popoverController;
	UIToolbar *toolbar;
	id detailItem;
	UILabel *detailDescriptionLabel;
	NSArray *propertiesArray;
	NSMutableArray *selectedPropertiesArray;
	UITableViewCell *nibLoadedCell;
}

@property (nonatomic, retain) NSArray *propertiesArray;
@property (nonatomic, retain) NSArray *selectedPropertiesArray;
@property (nonatomic, retain) MapViewController *mapViewController;

- (IBAction)map;

@end
