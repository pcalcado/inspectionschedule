@class DetailViewController;

@interface RootViewController : UIViewController {
	@private
	DetailViewController *detailViewController;
}

@property(nonatomic, retain) DetailViewController *detailViewController;

@end
