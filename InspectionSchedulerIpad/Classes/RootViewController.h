//
//  RootViewController.h
//  InspectionSchedulerIpad
//
//  Created by Caue Guerra on 31/05/10.
//  Copyright ThoughtWorks 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface RootViewController : UIViewController <UIPopoverControllerDelegate, UISplitViewControllerDelegate> {
    DetailViewController *detailViewController;
}

@property (nonatomic, retain) IBOutlet DetailViewController *detailViewController;

@end
