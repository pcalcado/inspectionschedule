#import "InspectionFormViewController.h"


@implementation InspectionFormViewController
@synthesize notes;
@synthesize selectedProperty;

- (id)initWithProperty:(Property *) property {
	if(self = [super init]) {
		self.selectedProperty = property;
	}
	return self;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Restoring Notes:");
    NSLog(selectedProperty.notes);
    NSLog(@"Was:");
    NSLog(notes.text);
    notes.text = selectedProperty.notes;
    NSLog(@"Is:");
    NSLog(notes.text);
}

- (void)viewDidUnload {
    [super viewDidUnload];
}


- (void)dealloc {
    [super dealloc];
}


-(IBAction) dismiss{
  NSLog(@"Writing Notes:");
  NSLog(self.notes.text);
  selectedProperty.notes = self.notes.text;
  [self dismissModalViewControllerAnimated:YES];
}
@end
