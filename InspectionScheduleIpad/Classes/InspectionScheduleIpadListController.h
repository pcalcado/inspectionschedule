//
//  InspectionSchedulerIpadListController.h
//  InspectionScheduleIpad
//
//  Created by Caue Guerra on 30/05/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InspectionScheduleIpadProperty.h"

@class InspectionScheduleIpadMapController;

@interface InspectionScheduleIpadListController : UIViewController<UITableViewDataSource, UITableViewDelegate> {
	InspectionScheduleIpadMapController *inspectionScheduleIpadMapController;
	InspectionScheduleIpadProperty *property;
	NSMutableArray *propertiesArray;
	UITableViewCell *nibLoadedCell;
}

@property (nonatomic, retain) IBOutlet UITableViewCell *nibLoadedCell;
@property(nonatomic, retain) IBOutlet InspectionScheduleIpadMapController *inspectionScheduleIpadMapController;

- (IBAction)map;

@end
