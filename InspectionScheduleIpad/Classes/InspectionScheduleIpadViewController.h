//
//  InspectionScheduleIpadViewController.h
//  InspectionScheduleIpad
//
//  Created by Caue Guerra on 30/05/10.
//  Copyright ThoughtWorks 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class InspectionScheduleIpadMapController;

@interface InspectionScheduleIpadViewController : UIViewController {
	InspectionScheduleIpadMapController *inspectionScheduleIpadMapController;
}

@property(nonatomic, retain) IBOutlet InspectionScheduleIpadMapController *inspectionScheduleIpadMapController;

- (IBAction)map;

@end

