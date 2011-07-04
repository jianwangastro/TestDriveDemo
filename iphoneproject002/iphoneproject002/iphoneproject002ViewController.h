//
//  iphoneproject002ViewController.h
//  iphoneproject002
//
//  Created by Monkeys! on 6/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBConnect.h"
#import <MapKit/MapKit.h>


@interface iphoneproject002ViewController : UIViewController {
    MKMapView *mapview;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapview;

-(IBAction)setMap:(id)sender;
-(IBAction)getLocatoion;
-(IBAction)switchView:(id)sender;
-(IBAction)switchSetting:(id)sender;

@end
