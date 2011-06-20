//
//  iphoneproject002AppDelegate.h
//  iphoneproject002
//
//  Created by Monkeys! on 6/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBConnect.h"

@class iphoneproject002ViewController;

//@interface iphoneproject002AppDelegate : NSObject <UIApplicationDelegate> {
@interface iphoneproject002AppDelegate : NSObject 
<UIApplicationDelegate, FBSessionDelegate>{
    Facebook *facebook;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet iphoneproject002ViewController *viewController;

// facebook part
@property (nonatomic, retain) Facebook *facebook;



@end
