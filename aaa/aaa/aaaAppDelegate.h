//
//  aaaAppDelegate.h
//  aaa
//
//  Created by Wang, Jian on 6/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class aaaViewController;

@interface aaaAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet aaaViewController *viewController;

@end
