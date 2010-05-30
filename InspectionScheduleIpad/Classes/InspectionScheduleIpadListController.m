#import "InspectionScheduleIpadListController.h"
#import "InspectionScheduleIpadMapController.h"
#import "ISIPropertyRepository.h"

@implementation InspectionScheduleIpadListController

@synthesize inspectionScheduleIpadMapController;
@synthesize propertiesArray;
@synthesize selectedPropertiesArray;

- (IBAction)map {
	self.inspectionScheduleIpadMapController.propertiesArray = self.selectedPropertiesArray;
	[self presentModalViewController:self.inspectionScheduleIpadMapController animated:YES];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	//this should happen somewhere else
	propertiesArray = [[[ISIPropertyRepository alloc] init] retrieveProperties];
	selectedPropertiesArray = [[NSMutableArray alloc] init];
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
    [[NSBundle mainBundle] loadNibNamed:@"InspectionScheduleIpadPropertyTableCell" owner:self options:NULL];
    cell = nibLoadedCell;
  }
  InspectionScheduleIpadProperty *property = [propertiesArray objectAtIndex:indexPath.row];
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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
  return YES;
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}


- (void)viewDidUnload {
  [super viewDidUnload];
}


- (void)dealloc {
  [super dealloc];
}


@end
