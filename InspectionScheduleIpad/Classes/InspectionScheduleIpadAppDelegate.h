//
//  InspectionScheduleIpadAppDelegate.h
//  InspectionScheduleIpad
//
//  Created by Caue Guerra on 30/05/10.
//  Copyright ThoughtWorks 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class InspectionScheduleIpadViewController;

@interface InspectionScheduleIpadAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    InspectionScheduleIpadViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet InspectionScheduleIpadViewController *viewController;

@end

