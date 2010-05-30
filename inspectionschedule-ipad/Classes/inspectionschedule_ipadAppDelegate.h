//
//  inspectionschedule_ipadAppDelegate.h
//  inspectionschedule-ipad
//
//  Created by Phillip Calcado on 30/05/10.
//  Copyright ThoughtWorks Australia 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class inspectionschedule_ipadViewController;

@interface inspectionschedule_ipadAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    inspectionschedule_ipadViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet inspectionschedule_ipadViewController *viewController;

@end

