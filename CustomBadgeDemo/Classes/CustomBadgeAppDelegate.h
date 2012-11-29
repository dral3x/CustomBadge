//
//  CustomBadgeAppDelegate.h
//  CustomBadge
//


#import <UIKit/UIKit.h>

@class CustomBadgeDemoViewController;

@interface CustomBadgeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CustomBadgeDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CustomBadgeDemoViewController *viewController;

@end

