@class MapViewController;
@class Property;

@interface DetailViewController : UIViewController <UIPopoverControllerDelegate, UISplitViewControllerDelegate, UITableViewDataSource, UITableViewDelegate> {
	@private
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

- (IBAction)map;

@end
