//
//  InspectionScheduleIpadViewController.h
//  InspectionScheduleIpad
//
//  Created by Caue Guerra on 30/05/10.
//  Copyright ThoughtWorks 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class InspectionScheduleIpadListController;

@interface InspectionScheduleIpadViewController : UIViewController {
	InspectionScheduleIpadListController *inspectionScheduleIpadListController;
}

@property(nonatomic, retain) IBOutlet InspectionScheduleIpadListController *inspectionScheduleIpadListController;

- (IBAction)list;

@end

