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

//@property (nonatomic, retain) IBOutlet UITableViewCell *nibLoadedCell;
//@property (nonatomic, retain) IBOutlet UIToolbar *toolbar;
//@property (nonatomic, retain) id detailItem;
//@property (nonatomic, retain) IBOutlet UILabel *detailDescriptionLabel;
@property (nonatomic, retain) NSArray *propertiesArray;
//@property (nonatomic, retain) NSMutableArray *selectedPropertiesArray;
//@property (nonatomic, retain) IBOutlet MapViewController *mapViewController;

- (IBAction)map;

@end
