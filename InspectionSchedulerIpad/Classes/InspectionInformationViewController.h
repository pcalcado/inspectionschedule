//
//  InspectionInformationController.h
//  InspectionSchedulerIpad
//
//  Created by Caue Guerra on 1/06/10.
//  Copyright 2010 ThoughtWorks. All rights reserved.
//

#import <UIKit/UIKit.h>

@class InspectionFormViewController;

@interface InspectionInformationViewController : UIViewController {
	InspectionFormViewController *inspectionFormViewController;
}

- (IBAction)doInspection;

@property (nonatomic, retain) IBOutlet InspectionFormViewController *inspectionFormViewController;

@end
