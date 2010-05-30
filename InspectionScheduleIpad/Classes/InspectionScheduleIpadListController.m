    //
//  InspectionSchedulerIpadListController.m
//  InspectionScheduleIpad
//
//  Created by Caue Guerra on 30/05/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import "InspectionScheduleIpadListController.h"


@implementation InspectionScheduleIpadListController

- (void)viewDidLoad {
    [super viewDidLoad];
	propertiesArray = [[NSMutableArray alloc] init];
	InspectionScheduleIpadProperty *property = [[InspectionScheduleIpadProperty alloc] init];
	property.address = @"Manly St";
	[propertiesArray addObject: property];
	[property release];
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
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
									   reuseIdentifier:CellIdentifier] autorelease];
	}
	InspectionScheduleIpadProperty *property = [propertiesArray objectAtIndex:indexPath.row];
	cell.textLabel.text = property.address;
    return cell;
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
